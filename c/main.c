#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <wiringPi.h>

#define LED_PIN 4

int end = 0;

void abort_handler(int signal);

int main(void) {
  wiringPiSetup();
  pinMode(LED_PIN, OUTPUT);

  if (signal(SIGINT, abort_handler) == SIG_ERR) {
    exit(1);
  }

  while (!end) {
    digitalWrite(LED_PIN, HIGH);
    delay(1000);
    digitalWrite(LED_PIN, LOW);
    delay(1000);
  }

  return 0;
}

void abort_handler(int signal) {
  end = 1;
}

