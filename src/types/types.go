// Типы используемые в приложении
package types

import (
	"lib/database/mysql"
	"lib/logs"
	"lib/mailer"
)

//// Типы данных БД

// Пользователь
type Users struct {
	User_Id uint64 // Идентификатор
	Name    string // Фио
}

// Продажи
type Sales struct {
	Order_Id    uint64  // Id Заказа
	User_Id     uint64  // Id Пользователя
	OrderAmount float32 // Количество заказов
}

//// Служебные типы

// Тип данных управляющего канала экспорта данных из БД в csv
type ChanelControlConfig struct {
	Err              error // ошибка
	ConntectId       int8  // id коннекта к БД
	CountRecordUsers int   // количество записей пользователей
	CountRecordSales int   // количество записей продаж
}

// Конфигурация приложения
type Config struct {
	Main  Main                     // Главная конфигурация
	Logs  logs.Cfglogs             // Настройка лог службы
	Mysql map[int8]*mysql.CfgMysql // Настройки mysql
	Mail  mailer.CfgMailer         // Настройки почты
}

// Главная конфигурация приложения
type Main struct {
	Path         string // Абсолютный путь до приложения
	DocumentRoot string // Абсолютный путь к документам приложении
	Arhiv        string // Абсолютный путь к архивам приложения
	MailTo       string // Кому отправляем отчет
	MailToName   string // Кому отправляем отчет
}
