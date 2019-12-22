#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

static pthread_key_t pid_key; //线程存储变量，用于一个线程内部的全局变量
static pthread_once_t once =
    PTHREAD_ONCE_INIT; // pthread_once的回调函数, 一般用于一次性初始化

void once_run(void)
{
	int ret = 0;
	static int times = 1;

	ret = pthread_key_create(&pid_key, NULL);
	if (ret == 0) {
		printf("private key create success, by %u\n", pthread_self());
	}

	printf("The %d time run\n", times);
	times++;
}

void *child(void *arg)
{
	pthread_t tid = pthread_self();

	printf("Thread %u is run!\n", tid);
	pthread_once(&once, once_run);
	pthread_setspecific(pid_key, tid); //设置私有值

	while (1) {
		printf("child:%d, private key:%d\n", pthread_self(),
		       (int)pthread_getspecific(pid_key));
		sleep(1);
	}
	printf("Thread %u is quit!\n", tid);

	return 0;
}

int main()
{
	pthread_t tid1, tid2;

	pthread_create(&tid1, NULL, child, NULL);
	pthread_create(&tid2, NULL, child, NULL);

	pthread_join(tid1, NULL);
	pthread_join(tid2, NULL);

	printf("all exit!\n");
	return 0;
}
