### ICS第二次书面作业
***
#### `3.60`
```C++
long loop(long x, int n) {
	long result = 0;

	long mask;

	for (mask = 1; mask; mask <<= n) {
		result |= x & mask;
	}

	return result;
}
```
***
#### `3.62`
```C++
typedef enum {MODE_A, MODE_B, MODE_C, MODE_D, MODE_E} mode_t;

long switch3(long *p1, long *p2, mode_t action) {
	long result = 0;

	switch(action) {
		case MODE_A:
			result = *p2;
			*p2 = *p1;
			break;

		case MODE_B:
			result = *p1 & *p2;
			*p1 = result;
			break;

		case MODE_C:
			*p1 = 59;
			result = *p2;
			break;

		case MODE_D:
			*p1 = *p2;
			result = 27;
			break;

		case MODE_E:
			result = 27;
			break;

		default:
			result = 12;
			break;
	}

	return result;
}
```
***
#### `3.64`
- A

```C++
#define R 7

#define S 5

#define T 13

long A[R][S][T];

long store_ele(long i, long j, long k, long *dest) {
	*dest = A[i][j][k];
	return sizeof(A);
}
```
- B

$$ T\quad D[R][S][T] $$
$$ \&D[i][j][k]=x_A+L(S\bullet T\bullet i+T\bullet j+k) $$
***