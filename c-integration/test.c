#include <stdio.h>
#include "lib.h"

int main() {
  printf("Size of int: %ld bytes\n", sizeof(int));
  printf("5 * 8 = %i\n", multiply(5, 8));

  return 0;
}
