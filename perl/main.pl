#! /usr/bin/perl

use strict;
use warnings;

use RPi::WiringPi;
use RPi::Const qw(:all);

my $end = 0;
my $pi = RPi::WiringPi->new;

my $led_pin = $pi->pin(23);
$led_pin->mode(OUTPUT);

sub sigint_handler {
  $end = 1;
}
$SIG{'INT'} = 'sigint_handler';

while (!$end) {
  $led_pin->write(OFF);
  sleep(1);
  $led_pin->write(ON);
  sleep(1);
}

$pi->cleanup();

