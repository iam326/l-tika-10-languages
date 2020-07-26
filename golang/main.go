package main

import (
  "time"

  "gobot.io/x/gobot"
  "gobot.io/x/gobot/drivers/gpio"
  "gobot.io/x/gobot/platforms/raspi"
)

func main() {
  r := raspi.NewAdaptor()
  led := gpio.NewLedDriver(r, "16")

  work := func() {
   gobot.Every(1 * time.Second, func() {
    led.Toggle()
   })
  }

  robot := gobot.NewRobot("ltika",
    []gobot.Connection{r},
    []gobot.Device{led},
    work,
  )

  robot.Start()
}

