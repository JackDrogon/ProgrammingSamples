#define CATCH_CONFIG_MAIN
#define CATCH_CONFIG_ENABLE_BENCHMARKING
#include <catch2/catch.hpp>

uint64_t fibonacci(uint64_t n)
{
	return n < 2 ? 1 : fibonacci(n - 1) + fibonacci(n - 2);
}

TEST_CASE("Fibonacci")
{
	CHECK(fibonacci(0) == 1);
	CHECK(fibonacci(5) == 8);

	BENCHMARK("Fibonacci 20") { return fibonacci(20); };
	BENCHMARK("Fibonacci 21") { return fibonacci(21); };
	BENCHMARK("Fibonacci 22") { return fibonacci(22); };
	BENCHMARK("Fibonacci 23") { return fibonacci(23); };
	BENCHMARK("Fibonacci 24") { return fibonacci(24); };
	BENCHMARK("Fibonacci 25") { return fibonacci(25); };
}
