#include <iostream>
#include <string>

using namespace std;

string str1, str2, str0;

int n, m;

void DP(int l1, int r1, int l2, int r2) {
	if (l1 > r1 || l2 > r2)
		return;

	int mi = l2;
	for (int &i = mi; i < r2; i++)
		if (str1[l1] == str2[i])
			break;

	DP(l1 + 1, l1 + mi - l2, l2, mi - 1);
	DP(r1 + mi - r2 + 1, r1, mi + 1, r2);

	str0[m++] = str1[l1];
}

int main() {
	while (cin >> str1 >> str2) {
		n = str1.length();
		str0.resize(n);
		m = 0;

		DP(0, n - 1, 0, n - 1);
		cout << str0 << endl;
	}

	return 0;
}
