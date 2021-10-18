#include <absl/flags/flag.h>
#include <absl/flags/parse.h>

ABSL_FLAG(bool, big_menu, false, "big menu");

int main(int argc, char *argv[]) { absl::ParseCommandLine(argc, argv); }
