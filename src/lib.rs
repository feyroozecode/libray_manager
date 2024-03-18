use radio;
use std::fs::File;
use std::io::BufReader;
use std::thread;
use std::time::Duration;

fn play_once(file_name: &str) {
    let device = radio::default_output_device().unwrap(); // instantiate radio with the default speaker
    let file = File::open(file_name).unwrap(); //open filewith pass there name

    radio::play_once(&device, BufReader::new(file)).unwrap(); // play audio

    thread::sleep(Duration::from_millis(1500)); // wait 1.5 until stop playing
}

fn main() {
    println!("Salam Hi!");

    play_once("assets/beep.wav");
}
