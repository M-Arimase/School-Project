#include <bits/stdc++.h>

using namespace std;

typedef unsigned float_bits;

void int_i2b(int x) {
	bitset<32> z = x;

	for (int i = 31; i > 30; i--)
		cout << z[i];
	cout << "  ";

	for (int i = 30; i > 22; i--)
		cout << z[i];
	cout << "  ";

	for (int i = 22; i > -1; i--)
		cout << z[i];
	cout << endl;

	return;
}

float_bits float_negate(float_bits f) {
	unsigned exp  = f >> 23 & 0x0000FF;
	unsigned frac = f       & 0x7FFFFF;

	if (exp == 0xFF && frac != 0x00)
		return f;
	else
		return f ^ 0x80000000;
}

int main() {
	for (unsigned x = 0; x != 0xFFFFFFFF; x++) {
		float y = 0 - *(float *) &x;

		unsigned w = float_negate(x);
		unsigned v = *(unsigned *) &w;

		if (v != w)
			cout << y << " " << v << " " << w << "   FALSE!" << endl;
		if (x % 100000000 == 0)
			cout << x / 100000000 << "  TRUE!" << endl;
	}

	return 0;
}
