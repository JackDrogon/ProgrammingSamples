#include <iostream>
using namespace std;

#include <gflags/gflags.h>

DEFINE_int32(port, 9090, "server port");

int main(int argc, char** argv)
{
	gflags::ParseCommandLineFlags(&argc, &argv, true);

	cout << "port: " << FLAGS_port << endl;

	gflags::ShutDownCommandLineFlags();
	return 0;
}
