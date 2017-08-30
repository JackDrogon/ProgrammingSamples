#include <g3log/g3log.hpp>
#include <g3log/logworker.hpp>

int main(int argc, char *argv[])
{
	((void) argc);
	using namespace g3;

	const std::string path_to_log_file = "./log";

	auto worker = g3::LogWorker::createLogWorker();
	auto handle = worker->addDefaultLogger(argv[0], path_to_log_file);
	g3::initializeLogging(worker.get());

	LOG(INFO) << "streaming API is as easy as ABC or " << 123;

	return 0;
}
