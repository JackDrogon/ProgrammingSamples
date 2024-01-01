#include "common/defer.hh"

#include <catch2/catch_all.hpp>
#include <catch2/catch_test_macros.hpp>

TEST_CASE("defer lambda")
{
	int n = 0;
	{
		defer[&n] { ++n; };
	}
	REQUIRE(n == 1);
}

TEST_CASE("defer scope_exit")
{

	int n = 0;
	{
		SCOPE_EXIT { ++n; };
	}
	REQUIRE(n == 1);
}

TEST_CASE("defer operator()")
{
	int n = 0;
	struct S {
		S(int &n) : n(n) {}

		void operator()() { ++n; }
		int &n;
	} s(n);

	{
		//! 这里是copy 所以下面的n不变，针对move和copy 进行重载 &&
		//! check callable, static_assert
		defer s; // not s(), s is callable
		defer S(n);
	}
	REQUIRE(n == 2);
}
