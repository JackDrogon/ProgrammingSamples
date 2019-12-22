#include <histedit.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
	EditLine *el = el_init(argv[0], stdin, stdout, stderr);
	return (el == NULL);
}
