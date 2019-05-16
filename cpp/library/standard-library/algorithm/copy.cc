template <class InIt, class OutIt>
OutIt copy(InIt first1, InIt last1, OutIt destination)
{
	while (first1 != last1) {
		*destination = *first1;
		++first1;
		++destination;
	}
	return destination;
}
