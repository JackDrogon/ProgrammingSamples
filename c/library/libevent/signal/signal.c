#include <event2/event.h>

#include <signal.h>


static int called = 2;

static void signal_cb(evutil_socket_t fd, short event, void *arg)
{
	(void) fd; (void) event; (void) arg;
	struct event *signal = arg;

	printf("%s: got signal %d\n", __func__, event_get_signal(signal));

	if (called == 1)
		event_del(signal);

	--called;
}

int main()
{
	printf("Stop after receive %d times singnal!\n", called);

	struct event *signal_int;
	struct event_base* base;

	/* Initalize the event library */
	base = event_base_new();

	/* Initalize one event */
	signal_int = evsignal_new(base, SIGINT, signal_cb, event_self_cbarg());

	event_add(signal_int, NULL);

	event_base_dispatch(base);
	event_base_free(base);

	return (0);
}
