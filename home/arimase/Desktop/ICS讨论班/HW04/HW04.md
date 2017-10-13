### ICS第四次书面作业
***
#### `3.68`
```C++
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
```
$$ A=9\quad B=5 $$
***
#### `3.69`
```C++
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
```
$$ CNT=7 $$
***
#### `3.70`
- A

> 以下字段的偏移量是多少（以字节为单位）：

$e1.p$|$e1.y$|$e2.x$|$e2.next$
-|-
$0$|$8$|$0$|$8$

- B

> 这个结构体总共需要多少字节？

$$ 16Byte $$

- C

```C++
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
```