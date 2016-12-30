import std.stdio, std.string, std.algorithm;

void main(string[] args)
{
	ulong[string] dictionary;
	foreach (line; stdin.byLine()) {
		foreach (word; splitter(strip(line))) {
			if (word in dictionary) continue;
			auto newID = dictionary.length;
			dictionary[word.idup] = newID;
			writeln(newID, '\t', word);
		}
	}
}
