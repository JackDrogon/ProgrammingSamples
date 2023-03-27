use raft::*;
use std::thread;
struct Node {
    // 持有一个 RawNode 实例
    raft_group: Option<RawNode<MemStorage>>,
    // 接收其他节点发来的 Raft 消息
    my_mailbox: Receiver<Message>,
    // 发送 Raft 消息给其他节点
    mailboxes: HashMap<u64, Sender<Message>>,
}
fn main() {
    let mut t = Instant::now();
    // 在 Node 实例上运行一个循环，周期性地处理 Raft 消息、tick 和 Ready。
    loop {
        thread::sleep(Duration::from_millis(10));
        while let Ok(msg) = node.my_mailbox.try_recv() {
            // 处理收到的 Raft 消息
            node.step(msg);
        }
        let raft_group = node.raft_group.as_mut().unwrap();
        if t.elapsed() >= Duration::from_millis(100) {
            raft_group.tick();
            t = Instant::now();
        }
        // 处理 Raft 产生的 Ready，并将处理进度更新回 Raft 中
        let mut ready = raft_group.ready();
        persist(ready.entries()); // 处理刚刚收到的 Raft Log
        send_all(ready.messages); // 将 Raft 产生的消息发送给其他节点
        handle_committed_entries(ready.committed_entries.take());
        raft_group.advance(ready);
    }
}
