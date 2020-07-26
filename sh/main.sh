#!/bin/bash

set -euo pipefail

LED_PIN=23

gpio export $LED_PIN out

trap 'gpio unexport $LED_PIN' SIGINT

while true
do
  gpio -g write $LED_PIN 1
  sleep 1
  gpio -g write $LED_PIN 0
  sleep 1
done

