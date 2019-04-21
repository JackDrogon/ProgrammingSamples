#include <iostream>
#include <boost/tokenizer.hpp>
#include <string>

int main()
{
	std::string str = ";;Hello|world||-foo--bar;yow;baz|";

	typedef boost::tokenizer<boost::char_separator<char> >
		tokenizer;
	boost::char_separator<char> sep("-;", "|", boost::keep_empty_tokens);
	tokenizer tokens(str, sep);

	// <> <> <Hello> <|> <world> <|> <> <|> <> <foo> <> <bar> <yow> <baz>
	// <|> <>
	for (auto &token : tokens) {
		std::cout << "<" << token << "> ";
	}
	std::cout << "\n";

	return EXIT_SUCCESS;
}
