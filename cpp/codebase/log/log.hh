#pragma once

// spdlog helper

#include <spdlog/async.h>
#include <spdlog/sinks/basic_file_sink.h>
#include <spdlog/spdlog.h>

namespace archimedes::log
{

inline std::shared_ptr<spdlog::logger> g_logger = spdlog::default_logger();

} // namespace archimedes::log

#define TRACE(...) SPDLOG_LOGGER_TRACE(archimedes::log::g_logger, __VA_ARGS__)
#define DEBUG(...) SPDLOG_LOGGER_DEBUG(archimedes::log::g_logger, __VA_ARGS__)
#define INFO(...) SPDLOG_LOGGER_INFO(archimedes::log::g_logger, __VA_ARGS__)
#define WARN(...) SPDLOG_LOGGER_WARN(archimedes::log::g_logger, __VA_ARGS__)
#define ERROR(...) SPDLOG_LOGGER_ERROR(archimedes::log::g_logger, __VA_ARGS__)
#define CRITICAL(...)                                                          \
	SPDLOG_LOGGER_CRITICAL(archimedes::log::g_logger, __VA_ARGS__)
#define FATAL(...)                                                             \
	do {                                                                   \
		CRITICAL(__VA_ARGS__);                                         \
		spdlog::apply_all(                                             \
		    [&](std::shared_ptr<spdlog::logger> l) { l->flush(); });   \
		abort();                                                       \
	} while (0)
