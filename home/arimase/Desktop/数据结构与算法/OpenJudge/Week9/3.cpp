#include <iostream>
#include <cstdio>

using namespace std;

const int MAXN = 1000005;

int in[MAXN << 1];

int main() {
	int n, m;
	cin >> n >> m;

	for (int i = 0, x; i < n; i++) {
		scanf("%d", &x);
		in[x + MAXN] += 1;
	}

	int ans = 0;
	if (m != 0) {
		for (int i = -1000000; i <= 1000000; i++)
			if (i - m + MAXN >= 0 && i - m + MAXN < 2 * MAXN)
				ans += (in[i + MAXN] != 0) * (in[i - m + MAXN] != 0);
	}
	else {
		for (int i = -1000000; i <= 1000000; i++)
			ans += (in[i + MAXN] >= 2);
	}
	cout << ans << endl;

	return 0;
}
