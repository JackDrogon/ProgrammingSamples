#include <iostream>
#include <map>
using namespace std;

template <typename Key, typename Value, typename F>
void find_and_update(std::map<Key, Value> &m, Key key, F f)
{
	if (auto it = m.find(key); it != m.end()) {
		it->second = f(it->first);
	}
}

/*
if (T0 x = ... ; condition(x)) {
	// x is in scope here.
} else if (T1 y = ... ; condition(y)) {
	// x and y are in scope here.
} else {
	// x and y are in scope here.
}
*/

/*
if (init; cond)
  statement1;
else
  statement2;

=======>>>

{
  init;
  if (cond)
    statement1;
  else
    statement2;
}
*/
