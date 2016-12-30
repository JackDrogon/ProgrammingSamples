import std.stdio, std.conv;

int main(string[] args)
{
	args = args[1 .. $];
	while (args.length >= 2) {
		if (to!int(args[0]) != to!int(args[$-1])) {
			writeln("not palindrome");
			return 1;
		}
		args = args[1 .. $-1];
	}
	writeln("palindrome");

	return 0;
}
