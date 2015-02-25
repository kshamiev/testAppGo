// Прикладной функционал приложения
package app

import (
	"archive/zip"
	"bytes"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"types"

	"config"
	"lib"
	"lib/database"
	"lib/logs"
	"lib/mailer"
)

var (
	fpUsers *os.File
	fpSales *os.File
)

// Инициализация приложения
//	- error ошибка операции
func Init() (err error) {

	defer func() {
		if err != nil {
			logs.Base.Error(999, err)
		}
	}()

	if err = os.MkdirAll(config.Config.Main.Arhiv, 0700); err != nil {
		return
	}

	if fpUsers, err = os.OpenFile(config.Config.Main.DocumentRoot+`/users.csv`, os.O_CREATE|os.O_WRONLY, 0600); err != nil {
		return
	}

	if fpSales, err = os.OpenFile(config.Config.Main.DocumentRoot+`/sales.csv`, os.O_CREATE|os.O_WRONLY, 0600); err != nil {
		return
	}

	return
}

// Экспорт из БД в csv
//	+ chanelControl chan<- bool Канал для контроля выполнения и завершения работы функции.
//	- connectId int8 идентификатор коннекта к БД экспорт которой осуществляется
func ExportGo(chanelControl chan<- types.ChanelControlConfig, connectId int8) {
	var control = types.ChanelControlConfig{
		Err:        nil,
		ConntectId: connectId,
	}

	// коннект к БД
	var db database.DbFace
	if db, control.Err = database.NewDb(1, connectId); control.Err != nil {
		chanelControl <- control
		return
	}

	// экспорт пользователей
	var usersList = make([]*types.Users, 0)
	if control.Err = db.SelectSlice(&usersList, `SELECT * FROM users`); control.Err != nil {
		chanelControl <- control
		return
	}
	for i := range usersList {
		csv := fmt.Sprintf("%d;%s\n", usersList[i].User_Id, usersList[i].Name)
		fpUsers.WriteString(csv)
	}
	control.CountRecordUsers = len(usersList)
	usersList = nil

	// экспорт продаж
	var salesList = make([]*types.Sales, 0)
	if control.Err = db.SelectSlice(&salesList, `SELECT * FROM sales`); control.Err != nil {
		chanelControl <- control
		return
	}
	for i := range salesList {
		csv := fmt.Sprintf("%d;%d;%f\n", salesList[i].Order_Id, salesList[i].User_Id, salesList[i].OrderAmount)
		fpSales.WriteString(csv)
	}
	control.CountRecordSales = len(salesList)
	salesList = nil

	// закончили
	db.Free()
	chanelControl <- control
}

// Архивирование экспортированных данных.
//	- error ошибка операции
func Arhiv() (err error) {

	defer func() {
		if err != nil {
			logs.Base.Error(999, err)
		}
	}()

	// закрываем файлы
	if err = fpUsers.Close(); err != nil {
		return
	}
	if err = fpSales.Close(); err != nil {
		return
	}

	// Архивируем
	var data []byte
	var f io.Writer
	// Create a buffer to write our archive to.
	buf := new(bytes.Buffer)
	// Create a new zip archive.
	w := zip.NewWriter(buf)

	// пользователи
	f, err = w.Create(`users.csv`)
	if err != nil {
		return
	}
	if data, err = ioutil.ReadFile(config.Config.Main.DocumentRoot + `/users.csv`); err != nil {
		return
	}
	_, err = f.Write([]byte(data))
	if err != nil {
		return
	}

	// продажи
	f, err = w.Create(`sales.csv`)
	if err != nil {
		return
	}
	if data, err = ioutil.ReadFile(config.Config.Main.DocumentRoot + `/sales.csv`); err != nil {
		return
	}
	_, err = f.Write([]byte(data))
	if err != nil {
		return
	}

	// Make sure to check the error on Close.
	err = w.Close()
	if err != nil {
		return
	}

	path := config.Config.Main.Arhiv + `/arhiv_` + lib.Time.LabelFile() + `.zip`
	return ioutil.WriteFile(path, buf.Bytes(), 0600)
}

// Отправка отчета по экспорту данных
//	- error ошибка операции
func SendReport(userCount, salesCount int) (err error) {
	var msg = mailer.NewMessageTpl(`Отчет экспорта из БД в cvs`, config.Config.Main.DocumentRoot+`/mail/report`)
	msg.To(config.Config.Main.MailTo, config.Config.Main.MailToName)
	msg.Variables[`userCount`] = userCount
	msg.Variables[`salesCount`] = salesCount
	if _, err = msg.Send(); err != nil {
		logs.Base.Error(999, err)
		return
	}
	return
}
