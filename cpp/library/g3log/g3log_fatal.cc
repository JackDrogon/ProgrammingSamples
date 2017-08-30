#include <g3log/g3log.hpp>
#include <g3log/logworker.hpp>
int main()
{
	using namespace g3;
	auto worker = LogWorker::createLogWorker();
	worker->addDefaultLogger("test", "log");
	g3::initializeLogging(worker.get());
	LOG(DEBUG) << "Hello World";
	LOG(FATAL) << "FATAL For crash log";
	return 0;
}
