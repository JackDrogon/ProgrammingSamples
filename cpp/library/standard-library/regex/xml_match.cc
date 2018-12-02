#include <iostream>
#include <regex>
using namespace std;

void out(bool b) { cout << (b ? "found" : "not found") << endl; }

namespace xml_match
{
void default_syntax()
{
	// find XML/HTML-tagged value (using default syntax):
	std::cout << "---------------" << __PRETTY_FUNCTION__
		  << "---------------------" << std::endl;
	std::string raw_regex_string = R"(<.*>.*</.*>)";
	std::cout << "Raw Regex String: " << raw_regex_string << std::endl;

	regex re(raw_regex_string);
	bool found = regex_match("<tag>value</tag>", // data
				 re);		     // regular expression
	out(found);
}

void group_ref_syntax()
{
	// find XML/HTML-tagged value (tags before and after the value must
	// match):
	std::cout << "---------------" << __PRETTY_FUNCTION__
		  << "---------------------" << std::endl;
	std::string raw_regex_string = R"(<(.*)>.*</\1>)";
	std::cout << "Raw Regex String: " << raw_regex_string << std::endl;

	regex re(raw_regex_string);
	bool found = regex_match("<tag>value</tag>", // data
				 re);		     // regular expression
	out(found);
}

void grep_syntax()
{
	// find XML/HTML-tagged value (tags before and after the value must
	// match):
	std::cout << "---------------" << __PRETTY_FUNCTION__
		  << "---------------------" << std::endl;
	std::string raw_regex_string = R"(<\(.*\)>.*</\1>)";
	std::cout << "Raw Regex String: " << raw_regex_string << std::endl;

	regex re(raw_regex_string, regex_constants::grep);
	bool found = regex_match("<tag>value</tag>", // data
				 re);		     // regular expression
	out(found);
}

void run()
{
	default_syntax();
	group_ref_syntax();
	grep_syntax();
}
} // namespace xml_match

int main()
{
	xml_match::run();
	return 0;
}
