package main

import (
	"fmt"
	"os"

	"app"
	"config"
	"lib/database"
	"lib/logs"
	"types"
)

func main() {
	var err error
	if err = appRun(); err != nil {
		os.Exit(1)
	}
	os.Exit(0)
}

func appRun() (err error) {

	// Конфигурация и инициализация библиотек
	if err = config.Init(); err != nil {
		fmt.Println(err.Error())
		return
	}

	// Запуск и остановка службы логирования
	logs.GoStart()
	defer logs.GoClose()
	defer logs.Base.Info(0, "Application Done")
	logs.Base.Info(0, "Application Start")

	// Checking availability of databases
	if err = database.CheckConnect(); err != nil {
		return
	}

	// Инициализация приложения
	if err = app.Init(); err != nil {
		return
	}

	// Запуск паралельного экспорта
	var chanelControl = make(chan types.ChanelControlConfig)
	for i := range config.Config.Mysql {
		go app.ExportGo(chanelControl, i)
	}

	// Контроль выполнения паралельного экспорта
	var exportGoCnt = len(config.Config.Mysql)
	var userCount, salesCount int
	for control := range chanelControl {
		userCount += control.CountRecordUsers
		salesCount += control.CountRecordSales
		logs.Base.Info(0, "End work export Id: %d", control.ConntectId)
		exportGoCnt--
		if exportGoCnt == 0 {
			close(chanelControl)
		}
	}

	// Архивирование
	if err = app.Arhiv(); err != nil {
		return
	}

	// Отправка отчета
	err = app.SendReport(userCount, salesCount)

	return
}
