#include <cassert>

#include <boost/di.hpp>
namespace di = boost::di;

struct ctor {
	explicit ctor(int i) : i_(i) {}
	int i_;
};

struct aggregate {
	double d;
};

struct example {
	example(aggregate a, const ctor &c)
	{
		assert(87.0 == a.d);
		assert(42 == c.i_);
	};
};

int main()
{
	const auto injector =
	    di::make_injector(di::bind<int>.to(42), di::bind<double>.to(87.0));

	injector.create<example>();
}
