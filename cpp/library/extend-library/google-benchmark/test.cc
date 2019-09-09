#include <iostream>
#include <vector>
using namespace std;

vector<vector<int64_t>> args_;
int64_t range_multiplier_ = 8;

template <typename T>
typename std::vector<T>::iterator AddPowers(std::vector<T> *dst, T lo, T hi,
					    int mult)
{

	size_t start_offset = dst->size();

	static const T kmax = std::numeric_limits<T>::max();

	// Space out the values in multiples of "mult"
	for (T i = 1; i <= hi; i *= mult) {
		if (i >= lo) {
			dst->push_back(i);
		}
		// Break the loop here since multiplying by
		// 'mult' would move outside of the range of T
		if (i > kmax / mult)
			break;
	}

	return dst->begin() + start_offset;
}

template <typename T>
void AddNegatedPowers(std::vector<T> *dst, T lo, T hi, int mult)
{
	// We negate lo and hi so we require that they cannot be equal to 'min'.

	// Add positive powers, then negate and reverse.
	// Casts necessary since small integers get promoted
	// to 'int' when negating.
	const auto lo_complement = static_cast<T>(-lo);
	const auto hi_complement = static_cast<T>(-hi);

	const auto it = AddPowers(dst, hi_complement, lo_complement, mult);

	std::for_each(it, dst->end(), [](T &t) { t *= -1; });
	std::reverse(it, dst->end());
}

template <typename T> void AddRange(std::vector<T> *dst, T lo, T hi, int mult)
{
	static_assert(std::is_integral<T>::value && std::is_signed<T>::value,
		      "Args type must be a signed integer");

	// Add "lo"
	dst->push_back(lo);

	// Handle lo == hi as a special case, so we then know
	// lo < hi and so it is safe to add 1 to lo and subtract 1
	// from hi without falling outside of the range of T.
	if (lo == hi)
		return;

	// Ensure that lo_inner <= hi_inner below.
	if (lo + 1 == hi) {
		dst->push_back(hi);
		return;
	}

	// Add all powers of 'mult' in the range [lo+1, hi-1] (inclusive).
	const auto lo_inner = static_cast<T>(lo + 1);
	const auto hi_inner = static_cast<T>(hi - 1);

	// Insert negative values
	if (lo_inner < 0) {
		AddNegatedPowers(dst, lo_inner, std::min(hi_inner, T{-1}),
				 mult);
	}

	// Treat 0 as a special case (see discussion on #762).
	if (lo <= 0 && hi >= 0) {
		dst->push_back(0);
	}

	// Insert positive values
	if (hi_inner > 0) {
		AddPowers(dst, std::max(lo_inner, T{1}), hi_inner, mult);
	}

	// Add "hi" (if different from last value).
	if (hi != dst->back()) {
		dst->push_back(hi);
	}
}

void Ranges(const std::vector<std::pair<int64_t, int64_t>> &ranges)
{
	// CHECK(ArgsCnt() == -1 || ArgsCnt() ==
	// static_cast<int>(ranges.size()));
	std::vector<std::vector<int64_t>> arglists(ranges.size());
	std::size_t total = 1;
	for (std::size_t i = 0; i < ranges.size(); i++) {
		AddRange(&arglists[i], ranges[i].first, ranges[i].second,
			 range_multiplier_);
		total *= arglists[i].size();
	}
	cout << "Total: " << total << endl;

	std::vector<std::size_t> ctr(arglists.size(), 0);

	for (std::size_t i = 0; i < total; i++) {
		std::vector<int64_t> tmp;
		tmp.reserve(arglists.size());

		for (std::size_t j = 0; j < arglists.size(); j++) {
			tmp.push_back(arglists[j].at(ctr[j]));
			cout << "j: " << j << ", crt[" << j << "]"
			     << ": " << ctr[j] << ", " << tmp.back() << endl;
		}

		args_.push_back(std::move(tmp));
		cout << i << " -----------" << endl;

		for (std::size_t j = 0; j < arglists.size(); j++) {
			if (ctr[j] + 1 < arglists[j].size()) {
				++ctr[j];
				break;
			}
			ctr[j] = 0;
		}
	}
}

int main(int argc, char *argv[])
{
	Ranges({{1 << 10, 8 << 10}, {128, 512}, {10, 100}});
	for (auto &args : args_) {
		for (auto &arg : args) {
			cout << arg << " ";
		}
		cout << endl;
	}
	cout << "Total: " << args_.size() << endl;
	return 0;
}
