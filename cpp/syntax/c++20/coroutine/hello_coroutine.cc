#include <coroutine>
#include <iostream>

struct HelloCoroutine {
	struct HelloPromise {
		HelloCoroutine get_return_object()
		{
			return std::coroutine_handle<
			    HelloPromise>::from_promise(*this);
		}

		std::suspend_never initial_suspend() { return {}; }

		// 在 final_suspend() 挂起了协程，所以要手动 destroy
		std::suspend_always final_suspend() noexcept { return {}; }

		void unhandled_exception() {}
	};

	using promise_type = HelloPromise;
	HelloCoroutine(std::coroutine_handle<HelloPromise> handle_arg)
	    : handle(handle_arg)
	{
	}

	std::coroutine_handle<HelloPromise> handle;
};

HelloCoroutine hello()
{
	std::cout << "Hello " << std::endl;
	co_await std::suspend_always{};
	std::cout << "World!" << std::endl;
}

int main()
{
	HelloCoroutine coro = hello();

	std::cout << "calling resume" << std::endl;
	coro.handle.resume();

	std::cout << "destroy" << std::endl;
	coro.handle.destroy();

	return 0;
}
