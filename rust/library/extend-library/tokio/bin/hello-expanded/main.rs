fn main() {
    tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .unwrap()
        .block_on(async {
            // 注意这里block_on，里面是异步代码
            println!("Hello world");
        })
}
