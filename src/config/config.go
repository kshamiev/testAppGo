// Конфигурация приложения
package config

import (
	"os"
	"path/filepath"

	"lib/database/mysql"
	"lib/logs"
	"lib/mailer"
	"types"
)

// Конфигурация приложения
var Config *types.Config

// Инициализация конфигурации
func Init() (err error) {
	Config = new(types.Config)
	//var dir string

	// Главная конфигурация
	if Config.Main.Path, err = os.Getwd(); err != nil {
		return
	}
	Config.Main.Path = filepath.Dir(Config.Main.Path)
	Config.Main.DocumentRoot = Config.Main.Path + `/www`
	Config.Main.Arhiv = Config.Main.DocumentRoot + `/arhiv`
	Config.Main.MailTo = `konstanta75@mail.ru`
	Config.Main.MailToName = `Шариков Полиграф Полиграфович`
	os.Chdir(Config.Main.Path)

	// Библиотека logs
	Config.Logs.Debug = true
	Config.Logs.DebugDetail = 0
	Config.Logs.Level = 6
	Config.Logs.Journal = true
	Config.Logs.Database = true
	Config.Logs.Mode = `file`
	Config.Logs.File = Config.Main.Path + `/log/application.log`
	Config.Logs.Lang = `ru-ru`
	Config.Logs.Size = 5
	Config.Logs.Separator = ` `
	logs.Init(&Config.Logs)

	// Библиотека mysql
	Config.Mysql = make(map[int8]*mysql.CfgMysql)
	var db *mysql.CfgMysql
	db = new(mysql.CfgMysql)
	db.Login = `root`
	db.Password = `root`
	db.Name = `testAppRu`
	Config.Mysql[0] = db
	db = new(mysql.CfgMysql)
	db.Login = `root`
	db.Password = `root`
	db.Name = `testAppEn`
	Config.Mysql[1] = db
	db = new(mysql.CfgMysql)
	db.Login = `root`
	db.Password = `root`
	db.Name = `testAppDe`
	Config.Mysql[2] = db
	db = new(mysql.CfgMysql)
	db.Login = `root`
	db.Password = `root`
	db.Name = `testAppFr`
	Config.Mysql[3] = db
	db = new(mysql.CfgMysql)
	db.Login = `root`
	db.Password = `root`
	db.Name = `testAppCn`
	Config.Mysql[4] = db
	mysql.InitMysql(Config.Mysql)

	// Библиотека отправки почты mailer
	Config.Mail.Mailer = `Mac OS X Mail 7.0 (1805)`
	Config.Mail.Server = `mail.shamiev.ru`
	Config.Mail.Port = 25
	Config.Mail.Mode = `tcp`
	Config.Mail.Login = `konstantin@shamiev.ru`
	Config.Mail.Password = `xxx`
	Config.Mail.FromAddress = `konstantin@shamiev.ru`
	Config.Mail.FromName = `Название проекта`
	mailer.Init(&Config.Mail)

	//
	return
}
