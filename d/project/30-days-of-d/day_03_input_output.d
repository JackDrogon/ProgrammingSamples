import std.stdio;
import std.path;
import std.file;
import std.string;

class CowInterrogator {
	static string get_name()
	{
		write("What is your name? ");
		return readln();
	}

	static bool get_cow_lover()
	{
		write("Do you like cows? [y|n] ");
		auto ans = strip(readln());
		if (ans == "y") {
			return true;
		} else if (ans == "n") {
			return false;
		}

		writeln("You should have entered 'y' or 'n'.");
		return false;
	}

	static void interrogate()
	{
		auto name = strip(get_name());
		if (get_cow_lover()) {
			writeln("Great! Here's a cow for you " ~ name ~ " :");
			write(cow_art());
		} else {
			writeln("That's a shame, " ~ name ~ ".");
		}
	}

	static string cow_art()
	{
		/* auto path = buildPath(".", "support/cow.txt"); */
		// std.file.read -> void []
		return std.file.readText("./support/cow.txt");
		// TODO: add "Error: cow.txt file not found"
	}

	unittest {
		// test "checks if cow_art returns string from support/cow.txt" do
		assert(strip(cow_art())[0] == '(');
	}
}

void main()
{
	/* CowInterrogator cow_interrogator; */
	/* cow_interrogator.cow_art(); */
	CowInterrogator.interrogate();
}
