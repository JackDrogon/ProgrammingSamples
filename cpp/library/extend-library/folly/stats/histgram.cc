#include <folly/stats/Histogram.h>

#include <iostream>
using namespace std;

int main()
{
	folly::Histogram<int64_t> latencies(100, 0, 5000);
	auto numBuckets = latencies.getNumBuckets();
	cout << "Below min: " << latencies.getBucketByIndex(0).count << "\n";
	for (unsigned int n = 1; n < numBuckets - 1; ++n) {
		cout << latencies.getBucketMin(n) << "-"
		     << latencies.getBucketMax(n) << ": "
		     << latencies.getBucketByIndex(n).count << "\n";
	}
	cout << "Above max: "
	     << latencies.getBucketByIndex(numBuckets - 1).count << "\n";

	int64_t median = latencies.getPercentileEstimate(0.5);

	return 0;
}
