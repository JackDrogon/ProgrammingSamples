#include <iostream>
using namespace std;

#include "gflags/gflags.h"

DEFINE_bool(verbose, false, "Display program name before message");
DEFINE_string(message, "Hello world!", "Message to print");

static bool is_non_empty_message(const char *flagname, const std::string &value)
{
	return !value.empty();
}
DEFINE_validator(message, &is_non_empty_message);

int main(int argc, char *argv[])
{
	gflags::SetUsageMessage("some usage message");
	gflags::SetVersionString("1.0.0");
	gflags::ParseCommandLineFlags(&argc, &argv, true);

	if (FLAGS_verbose) {
		cout << gflags::ProgramInvocationShortName() << ": ";
	}
	cout << FLAGS_message << endl;

	gflags::ShutDownCommandLineFlags();

	return 0;
}
