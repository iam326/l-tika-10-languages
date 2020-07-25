require 'bundler/setup'
require 'pi_piper'

led_pin = PiPiper::Pin.new :pin => 23, :direction => :out

begin

  loop do
    led_pin.on
    sleep 1
    led_pin.off
    sleep 1
  end

rescue Interrupt

  PiPiper::Platform.driver.unexport_pin(23)

end

