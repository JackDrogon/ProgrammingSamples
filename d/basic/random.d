import std.random;

void main(string[] args)
{
	auto array = new double[uniform(1, 128)];
	//foreach (i; 0 .. array.length) {
	//	array[i] = uniform(0.0, 1.0);
	//}

	foreach (ref element; array) {
		element = uniform(0.0, 1.0);
	}
}
