#include <iostream>
#include <algorithm>

using namespace std;

const int MAXN = 1000010;

int x, fa[MAXN], block[MAXN];

int Find(int x) {
	return x == fa[x] ? x : fa[x] = Find(fa[x]);
}

void Merge(int x, int y) {
	fa[Find(x)] = Find(y);
}

int main() {
	int n; cin >> n;

	for (int i = 1; i <= n; i++)
		fa[i] = i;
	for (int i = 1; i <= n; i++) {
		int x; cin >> x;
		Merge(i, x);
	}
	for (int i = 1; i <= n; i++) 
		block[Find(i)] += 1;
	sort(block + 1, block + n + 1, greater<int>());

	long long ans = 0;
	for (int i = 1; i <= n; i++)
		ans += 1ll * block[i] * block[i];
	ans += 2ll * block[1] * block[2];
	cout << ans << endl;

	return 0;
}
