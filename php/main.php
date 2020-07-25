<?php
require_once "vendor/autoload.php";

use PiPHP\GPIO\GPIO;
use PiPHP\GPIO\Pin\PinInterface;

declare(ticks = 1);

pcntl_signal(SIGINT, "signal_handler");

$end = false;
$gpio = new GPIO();
$led_pin = $gpio->getOutputPin(23);

while (!$end) {
  $led_pin->setValue(PinInterface::VALUE_HIGH);
  sleep(1);
  $led_pin->setValue(PinInterface::VALUE_LOW);
  sleep(1);
}

$led_pin->unexport();

function signal_handler($signal) {
  global $end;
  switch($signal) {
    case SIGINT:
      $end = true;
      break;
    default:
      break;
  }
}

?>

