#include <stdio.h>

void foo(void) {
	printf("hello foo!\n");
	printf("this function has (void) inputs!\n");
}

int main() {
	foo();
	return 0;
}

