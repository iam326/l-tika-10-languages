const Gpio = require('onoff').Gpio;
const LED_PIN = new Gpio(23, 'out');

process.on('SIGINT', () => {
  LED_PIN.unexport();
  process.exit();
});

setInterval(() => {
  LED_PIN.writeSync(LED_PIN.readSync() === 0 ? 1 : 0);
}, 1000);

