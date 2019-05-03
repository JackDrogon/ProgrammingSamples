# Libevent API


## EventLoop

### Create a new eventloop
```c
struct event_base* base;
struct event_base *event_base_new(void);
```

### Eventloop dispatch
```c
event_base_dispatch(base);
```

### Delete EventLoop
```c
event_base_free(base);
```


## Signal

### Create a signal
```c
static void signal_cb(evutil_socket_t fd, short event, void *arg);
struct event *signal_int;

/* Initalize one event */
signal_int = evsignal_new(base, SIGINT, signal_cb, event_self_cbarg());
```

### Add a signal
```c
event_add(signal_int, NULL);
```

### Del a signal
```c
static void signal_cb(evutil_socket_t fd, short event, void *arg) {
	struct event *signal = arg;
    
    event_get_signal(signal))
    event_del(signal);
}
```

### Get signal event
```
event_get_signal(signal))
```
