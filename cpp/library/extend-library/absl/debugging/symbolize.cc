#include <absl/debugging/symbolize.h>
#include <absl/strings/str_format.h>

namespace
{
void func(int) __attribute__((noinline));
void func(int) {}

static void DumpPCAndSymbol(void *pc)
{
	char tmp[1024];
	const char *symbol = "(unknown)";
	if (absl::Symbolize(pc, tmp, sizeof(tmp))) {
		symbol = tmp;
	}

	absl::PrintF("%p  %s\n", pc, symbol);
}
} // namespace

int main(int argc, char **argv)
{
	// Initialize the Symbolizer
	absl::InitializeSymbolizer(argv[0]);

	// 0x10f139ed0  (anonymous namespace)::func()
	// TODO(Drogon): print with return type/ args
	DumpPCAndSymbol((void *)(&func));

	return 0;
}
