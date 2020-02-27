#include <iostream>
#include <memory>
#include <utility>
#include <vector>
using namespace std;

class Stooge
{
public:
	virtual ~Stooge() {}
	virtual void slap_stick() = 0;

	// Factory Method
	static unique_ptr<Stooge> make_stooge(int choice);
};

class Larry : public Stooge
{
public:
	void slap_stick() { cout << "Larry: poke eyes\n"; }
};
class Moe : public Stooge
{
public:
	void slap_stick() { cout << "Moe: slap head\n"; }
};
class Curly : public Stooge
{
public:
	void slap_stick() { cout << "Curly: suffer abuse\n"; }
};

unique_ptr<Stooge> Stooge::make_stooge(int choice)
{
	if (choice == 1) {
		return make_unique<Larry>();
	} else if (choice == 2) {
		return make_unique<Moe>();
	} else {
		return make_unique<Curly>();
	}
}

int main()
{
	vector<unique_ptr<Stooge>> roles;
	int choice;
	while (true) {
		cout << "Larry(1) Moe(2) Curly(3) Go(0): ";
		cin >> choice;
		if (choice == 0) {
			break;
		}
		roles.push_back(Stooge::make_stooge(choice));
	}
	for (size_t i = 0; i < roles.size(); i++) {
		roles[i]->slap_stick();
	}

	return 0;
}
