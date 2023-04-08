#include <exception>
#include <functional>
#include <future>
#include <iostream>
#include <stdexcept>
#include <string>
#include <thread>
#include <utility>

static void doSomething(std::promise<std::string> &p)
{
	try {
		// read character and throw exception if 'x'
		std::cout << "read char ('x' for exception): ";
		char c = std::cin.get();
		if (c == 'x') {
			throw std::runtime_error(std::string("char ") + c +
						 " read");
		}
		std::string s = std::string("char ") + c + " processed";
		p.set_value_at_thread_exit(std::move(s)); // store result
	} catch (...) {
		p.set_exception_at_thread_exit(
		    std::current_exception()); // store exception
	}
}

int main()
{
	try {
		// create a promise to store the outcome
		std::promise<std::string> p;
		// create a future to process the outcome
		std::future<std::string> f(p.get_future());
		// start a thread using the promise to store the outcome
		std::thread t(doSomething, std::ref(p));
		t.detach();
		//...

		// process the outcome
		std::cout << "result: " << f.get() << std::endl;
	} catch (const std::exception &e) {
		std::cerr << "EXCEPTION: " << e.what() << std::endl;
	} catch (...) {
		std::cerr << "EXCEPTION " << std::endl;
	}
}
