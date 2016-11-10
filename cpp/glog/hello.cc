#include <glog/logging.h>

int main(int argc, char *argv[])
{
	// Initialize Google's logging library.
	FLAGS_log_dir = '.';
	google::InitGoogleLogging(argv[0]);

	// ...
	LOG(INFO) << "Found " << 10 << " cookies";
}
