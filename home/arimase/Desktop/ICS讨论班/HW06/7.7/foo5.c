#include <stdio.h>

void f(void);

int y = 12512;
int x = 15213;

int main() {
	f();
	printf("x = 0x%x y = 0x%x \n", x, y);
	return 0;
}
