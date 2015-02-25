// Интернационализация.
//
// Реализация интерактивного перевода текстовых данных на нужный язык.
package i18n

import (
	"fmt"
)

// Коды модулей. Для формирования ункиального глобального кода сообщения
// Заполняется в момент инициализации модулей при старте приложения
var ModuleCode = map[string]int{
	`base`: 100,
}

// Сообщения всех уровней на разных языках
// Заполняется в момент инициализации модулей при старте приложения
var Messages = map[string]map[int]string{
	`ru-ru`: {
		100100: `Тестовое сообщение с параметром: [%s]`,
		100800: `Отсутсвует конфигурация Mysql № [%d]`,
		100801: `Ошибка компиляции запроса [%s] : %v`,
		100802: `Ошибка выполнения запроса [%s] : %v`,
		100803: `Ошибочное поле в запросе для загрузки из БД: [%s] [%s]`,
		100804: `Ошибочное свойство для загрузки из БД: [%s] [%s]`,
		100805: `Объект не найден в БД [%s]`,
		100806: `Невозможно соединиться с БД Mysql конфиг № [%d] : %v`,
		100807: `Объект принимающий данные должен быть срезом 'mysql.SelectSlice': [%s] [%s]`,
		100808: `Ключевое поле (свойство) [%s] отсутствует в структуре [%s]`,
		100809: `Ошибка выполнения пакетного запроса (QueryByte)`,
		100810: `Ошибка получения запроса по индексу [%s]`,
		100811: `Использование БД отключено либо не реализовано [core.Config.Main.UseDb = %d]`,
		100812: `Неопределенный тип хранения данных 'mysql.SelectData' [%s]`,
		100813: `Объект принимающий данные должен быть хешом 'mysql.SelectMap': [%s] [%s]`,
		100814: `Проверка работоспособности с БД mysql завершилась с ошибкой: %v`,
		100999: `%v`,
	},
	`en-en`: {
		100100: `Test message with a parameter: [%s]`,
	},
}

// Перевод сообщений
// + moduleName string имя модуля
// + lang string язык
// + codeLocal int локальный код сообщения в рамках модуля
// + params ...interface{} параметры вставляемые в переводимое сообщение
// - int глобальный уникальный код сообщения для вывода в логи или клиенту
// - string сформированное сообщение на нужном языке
func Message(moduleName, lang string, codeLocal int, params ...interface{}) (code int, message string) {
	var ok bool
	// определение кода
	if codeLocal == 0 {
		code = 100000
	} else if _, ok = ModuleCode[moduleName]; ok == true {
		code = ModuleCode[moduleName]*1000 + codeLocal
	} else {
		code = -1
	}
	// определение сообщения
	if message, ok = Messages[lang][code]; ok == true {
		message = fmt.Sprintf(message, params...)
	} else if 0 < len(params) {
		if s, ok := params[0].(string); ok == true {
			message = fmt.Sprintf(s, params[1:]...)
		}
	}
	return
}

// Текстовые данные на разных языках под текстовыми ключами
var Data = make(map[string]map[string]string)

// Перевод по ключевому слову
// + lang string язык
// + key string текстовой ключ
// + params ...interface{} параметры вставляемые в перевод
// - string сформированный перевод на нужном языке
func Translation(lang, key string, params ...interface{}) (message string) {
	var ok bool
	if message, ok = Data[lang][key]; ok == true {
		message = fmt.Sprintf(message, params...)
	} else if 0 < len(params) {
		if s, ok := params[0].(string); ok == true {
			message = fmt.Sprintf(s, params[1:]...)
		}
	}
	return
}

//
