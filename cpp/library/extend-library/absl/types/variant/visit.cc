#include <absl/types/variant.h>
#include <iostream>
#include <string>
// #include <variant>
using namespace std;

// using variant = absl::variant;
// using visit = absl::visit;
using namespace absl;

struct Checker {
  Checker(int, int num_arg) : type("int"), num(num_arg) {}
  Checker(string, int num_arg) : type("string"), num(num_arg) {}

  std::string type;
  int num;
};

using Type = variant<int, std::string>;

struct Visitor {
  template <typename T> Checker operator()(const T &i) const {
    // cout << "The variant's value is: " << i << endl;
    return Checker(i, num);
  }

  int num;
};

int main() {
  Type t = 10;
  Visitor visitor;
  // auto x1 = visit(visitor, t, 9);
  auto x1 = visit(visitor, t);
  cout << x1.type << ", " << x1.num << endl;

  t = "Hello";
  visitor.num = 10;
  auto x2 = visit(visitor, t);
  cout << x2.type << ", " << x2.num << endl;

  return 0;
}
