// Запуск теста
// SET GOPATH=C:\Work\sungora
// go test -v lib/logs
// go test -v -bench . lib/logs
package logs_test

import (
	"os"
	"path/filepath"
	"testing"

	"lib/logs"
)

// Тестирование работы логирования
func TestLog(t *testing.T) {

	var cfglogs = new(logs.Cfglogs)
	cfglogs.Debug = true
	cfglogs.DebugDetail = 0
	cfglogs.Level = 6
	cfglogs.Mode = `file`
	cfglogs.Lang = `ru-ru`

	cfglogs.File, _ = os.Getwd()
	cfglogs.File = filepath.Dir(cfglogs.File)
	cfglogs.File = filepath.Dir(cfglogs.File)
	cfglogs.File = filepath.Dir(cfglogs.File) + `/log`
	os.MkdirAll(cfglogs.File, 0777)
	cfglogs.File += `/logs_test.log`

	logs.Init(cfglogs)
	logs.GoStart(nil)

	logs.Base.Info(0, `путь до файл лога %s`, cfglogs.File)
	logs.Base.Info(100, `Message Info`)
	logs.Base.Notice(100, `Message Notice`)
	logs.Base.Warning(100, `Message Warning`)
	logs.Base.Error(100, `Message Error`)
	logs.Base.Critical(100, `Message Critical`)
	logs.Base.Fatal(100, `Message Fatal`)
	logs.Base.Database(100, `Message Database`)
	logs.Base.Journal(100, `Message Journal`)

	var flag = logs.GoClose()
	if flag == false {
		t.Fatal(`Ошибка остановки службы логирования`)
	}
}

/*
func BenchmarkBlank(b *testing.B) {
	b.StopTimer()
	var dataSlice []*Users
	for i := 0; i < 1000000; i++ {
		var u = &Users{
			Id:    i,
			Login: `login` + strconv.Itoa(int(i)),
		}
		dataSlice = append(dataSlice, u)
	}
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		for i := 0; i < 1000000; i++ {
			if dataSlice[i].Login == `tttt` && dataSlice[i].Id > 0 {
				i++
				fmt.Println()
			}
		}
		//time.Sleep(time.Microsecond * 1000)
	}
}

func BenchmarkBlank2(b *testing.B) {
	b.StopTimer()
	var dataSlice []*Users
	for i := 0; i < 100; i++ {
		var u = &Users{
			Id:    i,
			Login: `login` + strconv.Itoa(int(i)),
		}
		dataSlice = append(dataSlice, u)
	}
	//fmt.Println(dataSlice[457854].Login)
	fn := func(n int) bool {
		return dataSlice[n].Login >= `Login80`
	}
	lib.Slice.SortingSliceAsc(dataSlice, `Login`)

	b.StartTimer()
	for i := 0; i < b.N; i++ {
		j := sort.Search(len(dataSlice), fn)
		if j < len(dataSlice) && dataSlice[j].Login == `Login80` {
			//b.Log("FOUND", dataSlice[i].Login)
			fmt.Println(`FOUND Login457854`)
		}
		//time.Sleep(time.Microsecond * 1000)
	}
}

type Users struct {
	Id           int       // Id
	Users_Id     uint64    // Пользователь
	Login        string    `json:"login"`    // Логин пользователя
	Password     string    `json:"password"` // Пароль пользователя (SHA256)
	PasswordR    string    `db:"-"`          // Пароль пользователя (SHA256) (повторно)
	Email        string    `json:"email"`    // Email
	LastName     string    // Фамилия
	Name         string    // Имя
	MiddleName   string    // Отчество
	IsAccess     bool      // Доступ разрешен
	IsCondition  bool      // Условия пользователя
	IsActivated  bool      // Активированный Email
	DateOnline   time.Time // Дата последнего посещения
	Date         time.Time // Дата регистрации
	Del          bool      // Запись удалена
	Hash         string    // Контрольная сумма для синхронизации (SHA256)
	Token        string    // Кука активации и идентификации
	CaptchaValue string    `db:"-" json:"captchaValue"`
	CaptchaHash  string    `db:"-" json:"captchaHash"`
	Language     string    `db:"-" json:"language"`
}
*/
