#include <iostream>
#include <memory>

#include "spdlog/fmt/ostr.h"

#include "spdlog/spdlog.h"
namespace spd = spdlog;

int main(int, char *[])
{
	try {
		// Console logger with color
		auto console = spd::stdout_color_mt("console");
		console->info("Welcome to spdlog!");
		console->error("Some error message with arg{}..", 1);

		// Formatting examples
		console->warn("Easy padding in numbers like {:08d}", 12);
		console->critical("Support for int: {0:d};  hex: {0:x};  oct: "
				  "{0:o}; bin: {0:b}",
				  42);
		console->info("Support for floats {:03.2f}", 1.23456);
		console->info("Positional args are {1} {0}..", "too",
			      "supported");
		console->info("{:<30}", "left aligned");

		spd::get("console")->info("loggers can be retrieved from a "
					  "global registry using the "
					  "spdlog::get(logger_name) function");
		// Create basic file logger (not rotated)
	} catch (const spd::spdlog_ex &ex) {
		// Exceptions will only be thrown upon failed logger or sink
		// construction (not during logging)
		std::cout << "Log init failed: " << ex.what() << std::endl;
		return 1;
	}
}
