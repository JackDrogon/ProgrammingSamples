#include <iostream>
#include <string>
#include <regex>

static std::string fnames[] = {"foo.txt", "bar.txt", "baz.dat", "zoidberg"};

namespace simple
{
void run() // regex_match
{
	// Simple regular expression matching
	std::cout << "---------------" << __PRETTY_FUNCTION__
		  << "---------------------" << std::endl;
	std::string raw_regex_string = "[a-z]+\\.txt";
	std::cout << "Raw Regex String: " << raw_regex_string << std::endl;

	std::regex txt_regex(raw_regex_string);

	for (const auto &fname : fnames) {
		std::cout << fname << ": " << std::regex_match(fname, txt_regex)
			  << '\n';
	}
}
} // namespace simple

namespace base_match
{
void run() // regex_match && base_match
{
	// Extraction of a sub-match
	std::cout << "---------------" << __PRETTY_FUNCTION__
		  << "---------------------" << std::endl;
	std::string raw_regex_string = "([a-z]+)\\.txt";
	std::cout << "Raw Regex String: " << raw_regex_string << std::endl;

	std::regex base_regex(raw_regex_string);
	std::smatch base_match;

	for (const auto &fname : fnames) {
		if (std::regex_match(fname, base_match, base_regex)) {
			// The first sub_match is the whole string; the next
			// sub_match is the first parenthesized expression.
			if (base_match.size() == 2) {
				std::ssub_match base_sub_match = base_match[1];
				std::string base = base_sub_match.str();
				std::cout << fname << " has a base of " << base
					  << '\n';
			}
		}
	}
}
} // namespace base_match

namespace submatch
{
void run()
{
	// Extraction of several sub-matches
	std::cout << "---------------" << __PRETTY_FUNCTION__
		  << "---------------------" << std::endl;
	std::string raw_regex_string = "([a-z]+)\\.([a-z]+)";
	std::cout << "Raw Regex String: " << raw_regex_string << std::endl;

	std::regex pieces_regex(raw_regex_string);
	std::smatch pieces_match;

	for (const auto &fname : fnames) {
		if (std::regex_match(fname, pieces_match, pieces_regex)) {
			std::cout << fname << '\n';
			for (size_t i = 0; i < pieces_match.size(); ++i) {
				std::ssub_match sub_match = pieces_match[i];
				std::string piece = sub_match.str();
				std::cout << "  submatch " << i << ": " << piece
					  << '\n';
			}
		}
	}
}
	} // namespace submatch

int main()
{
	simple::run();
	base_match::run();
	submatch::run();
}
