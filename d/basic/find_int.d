bool find(int[] haystack, int needle)
{
	foreach (v; haystack) {
		if (v == needle) return true;
	}
	return false;
}
