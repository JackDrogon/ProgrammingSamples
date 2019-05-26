#include <iostream>
#include <cstdint>
using namespace std;

#include <gflags/gflags.h>

static bool ValidatePort(const char* flagname, int32_t value) {
	if (value > 0 && value < 32768)   // value is ok
		return true;
	printf("Invalid value for --%s: %d\n", flagname, (int)value);
	return false;
}
DEFINE_int32(port, 1, "What port to listen on");
static bool dummy = gflags::RegisterFlagValidator(&FLAGS_port, &ValidatePort);


int main(int argc, char *argv[])
{
	gflags::SetUsageMessage("some usage message");
	gflags::ParseCommandLineFlags(&argc, &argv, true);
	return 0;
}
