#include <stdio.h>

#define A 9
#define B 5

typedef struct {
	int x[A][B];
	long y;
} str1;

typedef struct {
	char array[B];
	int t;
	short s[A];
	long u;
} str2;

void setVal(str1 *p, str2 *q) {
	long v1 = q->t;
	long v2 = q->u;
	p->y = v1 + v2;
}

#define CNT 7

typedef struct {
	long idx;
	long x[4];
} a_struct;

typedef struct {
	int first;
	a_struct a[CNT];
	int last;

} b_struct;

void test(long i, b_struct *bp) {
	int n = bp->first + bp->last;
	a_struct *ap = &bp->a[i];
	ap->x[ap->idx] = n;
}

union ele {
	struct {
		long *p;
		long y;

	} e1;
	struct {
		long x;
		union ele *next;
	} e2;
};

void proc (union ele *up) {
	up->e2.x = *(up->e2.next->e1.p) - up->e2.next->e1.y;
}

int main() {
	printf("%d\n", sizeof(union ele));

	return 0;
}
