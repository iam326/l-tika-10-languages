use std::error::Error;
use std::thread;
use std::time::Duration;
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;

use ctrlc;
use rppal::gpio::Gpio;

const GPIO_LED: u8 = 23;

fn main() -> Result<(), Box<dyn Error>> {
    let mut pin = Gpio::new()?.get(GPIO_LED)?.into_output();
    pin.set_reset_on_drop(true);

    let running = Arc::new(AtomicBool::new(true));
    let r = running.clone();
    ctrlc::set_handler(move || {
        r.store(false, Ordering::SeqCst);
    }).expect("Error setting Ctrl-C handler");

    while running.load(Ordering::SeqCst) { 
        pin.set_high();
        thread::sleep(Duration::from_millis(1000));
        pin.set_low();
        thread::sleep(Duration::from_millis(1000));
    }

    Ok(())
}
