#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <locale.h>

static inline void _isalnum()
{
	unsigned char c = '\xdf'; // German letter ß in ISO-8859-1

	printf("isalnum('\\xdf') in default C locale returned %d\n", !!isalnum(c));

	setlocale(LC_CTYPE, "de_DE.iso88591");
	printf("isalnum('\\xdf') in ISO-8859-1 locale returned %d\n", !!isalnum(c));
}

static inline void _atof()
{
	printf("%g\n", atof("  -0.0000000123junk"));
	printf("%g\n", atof("0.012"));
	printf("%g\n", atof("15e16"));
	printf("%g\n", atof("-0x1afp-2"));
	printf("%g\n", atof("inF"));
	printf("%g\n", atof("Nan"));
}

int main(int argc, char *argv[])
{
	_isalnum();
	_atof();
	return 0;
}
