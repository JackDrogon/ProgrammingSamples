#include <stdint.h>
#include <stdio.h>
#include <sys/time.h>
typedef _BitInt(256) int256;
void print_int256(int256 x) {
  uint64_t ws[4];
  ws[3] = x >> 192;
  ws[2] = (x >> 128) & 0xFFFFFFFFFFFFFFFF;
  ws[1] = (x >> 64) & 0xFFFFFFFFFFFFFFFF;
  ws[0] = (x >> 0) & 0xFFFFFFFFFFFFFFFF;
  printf("\t%lx-%lx-%lx-%lx\n", ws[0], ws[1], ws[2], ws[3]);
}
int256 seq(int64_t n) {
  int256 fi, f1, f2, f3;
  f1 = 2;
  f2 = 3;
  for (int64_t i = 2; i <= n; i++) {
    fi = f1 * f2;
    {
      printf("%ld = ", i);
      print_int256(fi);
    }
    if (fi == 0) {
      printf("fi is zero: %ld\n", i);
      f2 = 3;
      fi = 6;
    }
    f1 = f2;
    f2 = fi;
  }
  return f2;
}
int main() {
	int256 x = seq(20);
	print_int256(x);
	return 0;
}
