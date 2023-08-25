#include <bitset>
#include <iostream>
using namespace std;

static const unsigned __write_entered_ =
    1U << (sizeof(unsigned) * __CHAR_BIT__ - 1);
static const unsigned __n_readers_ = ~__write_entered_;

#define PRINT(name) print(#name, name)

auto print(const char *name, unsigned value) {
  cout << name << ": " << bitset<sizeof(unsigned) * 8>(value) << endl;
}

int main() {
  unsigned __state_(0);

  PRINT(__write_entered_);
  PRINT(__n_readers_);

  // init
  {
    cout << "Before lock" << endl;
    PRINT(__state_);
  }

  // lock
  {
    __state_ |= __write_entered_;
    cout << "After lock" << endl;
    PRINT(__state_);
  }

  // unlock
  {
    __state_ = 0;
    cout << "After unlock" << endl;
    PRINT(__state_);
  }

  // lock shared
  {
    unsigned num_readers = (__state_ & __n_readers_) + 1;
    __state_ &= ~__n_readers_;
    __state_ |= num_readers;
    cout << "After lock shared" << endl;
    PRINT(num_readers);
    PRINT(__state_);
  }

  // unlock shared
  {
    unsigned num_readers = (__state_ & __n_readers_) - 1;
    __state_ &= ~__n_readers_;
    __state_ |= num_readers;
    cout << "After unlock shared" << endl;
    PRINT(num_readers);
    PRINT(__state_);
  }

  return 0;
}
