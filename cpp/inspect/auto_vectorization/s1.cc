void foo(int a[256], int b[256], int c[256])
{
	int i;

	for (i = 0; i < 256; i++) {
		a[i] = b[i] + c[i];
	}
}
