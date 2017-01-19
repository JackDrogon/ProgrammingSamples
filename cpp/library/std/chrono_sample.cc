#include <chrono>
#include <iostream>

int main()
{
	/*
	 * 1. duration
	 * 定义: std::chrono::duration<tick个数类型，tick精度> var(tick个数)
	 */
	// 6 * (1 / 100) s
	std::chrono::duration<long long, std::ratio<1, 100>> hz100(6);
	// 6 * (1 / 100 / 100) s
	std::chrono::duration<double, std::ratio<1, 1>> second(hz100);
	// 6 * (1 / 100 / (100 / 60)) s
	std::chrono::duration<double, std::ratio<1, 60>> hz60(second);
	// 6 * (1 / 100 / (100 / 1000)) s
	std::chrono::duration<long long, std::ratio<1, 1000>> millisecond(
	    hz100);
	std::cout << hz100.count() << " ticks" << std::endl;
	std::cout << second.count() << " ticks" << std::endl;
	std::cout << hz60.count() << " ticks" << std::endl;
	std::cout << millisecond.count() << " ticks" << std::endl;

	/*
	 * 2. time_point
	 * 定义: std::chrono::time_point<时钟类型, std::chrono::duration>
	 * var(std::
	 *         chrono::duration)
	 */
	std::chrono::time_point<
	    std::chrono::steady_clock,
	    std::chrono::duration<long long, std::ratio<1, 1000000000>>>
	tp_at_3ns(
	    std::chrono::duration<long long, std::ratio<1, 1000000000>>(3));

	std::chrono::time_point<
	    std::chrono::steady_clock,
	    std::chrono::duration<long long, std::ratio<1, 1000000000>>>
	tp_at_1us(std::chrono::duration<long long, std::ratio<1, 1000000>>(1));
	//对两个time_point求差，低精度自动转为高精度
	std::chrono::duration<long long, std::ratio<1, 1000000000>> diff =
	    tp_at_1us - tp_at_3ns;
	std::cout << "diff = " << diff.count() << " ns" << std::endl;

	/*
	 * 3. steady_clock
	 *
	 * std::chrono::steady_clock::now()返回的是:
	 *   std::chrono::time_point<std::chrono::steady_clock,
	 *     std::chrono::duration<long long, std::ratio<1, 1000000000>>>
	 * 这个也是std::chrono::time_point的默认值(ns), 所以一般直接写成如下即可
	 */
	std::chrono::steady_clock::time_point begin =
	    std::chrono::steady_clock::now();

	int i = 0;
	while (i < 20000) {
		i++;
	}
	std::chrono::steady_clock::time_point end =
	    std::chrono::steady_clock::now();

	std::chrono::duration<long long, std::ratio<1, 1000000000>> diff_in_ns =
	    end - begin;
	std::cout << "used: " << diff_in_ns.count() << " ns" << std::endl;
	/*
	 * 不能进行从高精度往低精度的转换, 以下三种编译不通过
	 * std::chrono::duration<long long, std::ratio<1, 1000000>> diff_in_us =
	 *   end - begin;
	 * std::chrono::duration<long long, std::ratio<1, 1000>> diff_in_ms =
	 *   end - begin;
	 * std::chrono::duration<long long, std::ratio<1, 1>> diff_in_s =
	 *   end - begin;
	 *
	 * 如果一定要转, 可以使用std::duration_cast<std::chrono::duration>,
	 * 如下:
	 */
	std::chrono::duration<long long, std::ratio<1, 1000000>> diff_in_us =
	    std::chrono::duration_cast<
		std::chrono::duration<long long, std::ratio<1, 1000000>>>(
		end - begin);

	std::cout << "loop 20k times used: " << diff_in_us.count() << " us"
		  << std::endl;

	/*
	 * system_clock
	 */
	std::chrono::system_clock::time_point today =
	    std::chrono::system_clock::now();

	std::chrono::duration<int, std::ratio<60 * 60 * 24, 1>> one_day(1);
	std::chrono::duration<int, std::ratio<1, 1>> one_second(1);

	std::chrono::system_clock::time_point today_plus_1s =
	    today + one_second;
	std::chrono::system_clock::time_point tomorrow = today + one_day;

	std::time_t tt;
	tt = std::chrono::system_clock::to_time_t(today);
	std::cout << "today is " << ctime(&tt);

	tt = std::chrono::system_clock::to_time_t(today_plus_1s);
	std::cout << "today plus one second is " << ctime(&tt);

	tt = std::chrono::system_clock::to_time_t(tomorrow);
	std::cout << "tomorrow plus one second is " << ctime(&tt);
	return 0;
}
