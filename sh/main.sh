#!/bin/bash

set -euo pipefail

LED_PIN=4

gpio mode $LED_PIN out

trap 'gpio mode $LED_PIN in' SIGINT

while true
do
  gpio write $LED_PIN 1
  sleep 1
  gpio write $LED_PIN 0
  sleep 1
done

