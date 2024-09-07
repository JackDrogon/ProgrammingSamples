#include <generator>
#include <iostream>

template <typename T> struct Tree {
	T value;
	Tree *left{}, *right{};

	std::generator<const T &> traverse_inorder() const
	{
		if (left)
			for (const T &x : left->traverse_inorder())
				co_yield x;

		co_yield value;
		if (right)
			for (const T &x : right->traverse_inorder())
				co_yield x;
	}
};

int main()
{
	Tree<char> tree[]
	    // clang-format off
	{
								    {'D', tree + 1, tree + 2},
			//                                            │
			//            ┌───────────────┴────────────────┐
			//            │                                │
				     {'B', tree + 3, tree + 4},       {'F', tree + 5, tree + 6},
			//            │                                │
			//  ┌─────────┴─────────────┐      ┌───────────┴─────────────┐
			//  │                       │      │                         │
			  {'A'},                  {'C'}, {'E'},                    {'G'}
	};
	// clang-format on
	for (char x : tree->traverse_inorder())
		std::cout << x << ' ';
	std::cout << '\n';
}
