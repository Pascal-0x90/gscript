package time

import (
	"time"
	gotime "time"
)

// GetUnix fetches the current unixtime
func GetUnix() int {
	return int(gotime.Now().Unix())
}

func DoSleep(seconds int) {
	time.Sleep(time.Duration(seconds) * time.Second)
}
