import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinDigitalOutput;
import com.pi4j.io.gpio.PinState;
import com.pi4j.io.gpio.RaspiPin;

public class Ltika {

  public static void main(String[] args) throws InterruptedException {
    final GpioController gpio = GpioFactory.getInstance();
    final GpioPinDigitalOutput pin = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_04, "LED", PinState.LOW);
    pin.setShutdownOptions(true, PinState.LOW);

    Runtime.getRuntime().addShutdownHook(new Thread(
      () ->  gpio.shutdown()
    ));

    while (true) {
      pin.toggle();
      Thread.sleep(1000);
    }
  }

}

