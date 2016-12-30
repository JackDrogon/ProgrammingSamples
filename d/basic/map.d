import std.stdio;

void main(string[] args) {
	auto coffeePrices = [
		"french vanilla" : 8.75,
		"java" : 7.99,
		"french roast" : 7.49
	];
	foreach (kind, price; coffeePrices) {
		writefln("%s costs $%s per pound", kind, price);
	}
}
