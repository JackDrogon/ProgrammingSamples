#include <glog/logging.h>

int main(int argc, char *argv[])
{
	// Initialize Google's logging library.
	FLAGS_log_dir = '.';
	google::InitGoogleLogging(argv[0]);

	for (int i = 0; i < 1000000; ++i) {
		LOG(INFO) << "Found " << i << " cookies";
	}
}
