#include <iostream>
using namespace std;

class Info
{
public:
	Info() : Info(1) {}
	Info(int type) : Info(type, 'a') {}
	Info(char name) : Info(1, name) {}
	Info(Info &&info) : type_(std::move(info.type_)), name_(info.name_)
	{
		info.type_ = 0;
	}

	~Info()
	{
		cout << "Ctor, type: " << type_ << ", name " << name_ << endl;
	}

private:
	Info(int type, char name) : type_(type), name_(name) {}
	int type_;
	char name_;
};

Info Create() { return Info(); }

int main()
{
	// disable rvo by -fno-elide-constructors
	auto info = Info();
	return 0;
}
