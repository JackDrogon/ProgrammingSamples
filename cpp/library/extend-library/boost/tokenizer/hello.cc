#include <boost/tokenizer.hpp>
#include <iostream>
#include <string>

int main()
{
	std::string s = "This is,  a test";
	boost::tokenizer<> tok(s);
	for (auto token : tok) {
		std::cout << "Token: <" << token << ">\n";
	}
}
