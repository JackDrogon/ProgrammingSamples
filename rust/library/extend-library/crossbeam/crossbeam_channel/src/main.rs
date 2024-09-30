use std::thread;

// send fibonacci sequence into channel
fn fibonacci(sender: crossbeam_channel::Sender<u64>) {
    let mut a = 0;
    let mut b = 1;

    while sender.send(a).is_ok() {
        let tmp = a;
        a = b;
        b = tmp + b;
    }
}

fn main() {
    // cli first argument is the number of fibonacci sequence to generate
    let n = std::env::args()
        .nth(1)
        .and_then(|x| x.parse().ok())
        .unwrap_or(10);

    let (sender, receiver) = crossbeam_channel::bounded(0);

    // spawn a thread to send fibonacci sequence
    thread::spawn(move || {
        fibonacci(sender);
    });

    // receive fibonacci sequence from channel
    for i in receiver.iter().take(n) {
        println!("{}", i);
    }
}
