#include <cstdio>
#include <algorithm>

using namespace std;

const int MAXN = 100010;

int a[MAXN], s[MAXN];

void insert(int x) {
	for (; x < MAXN; x += x & -x)
		s[x] += 1;
}

int sum(int x) {
	int ans = 0;
	for (; x > 0; x -= x & -x)
		ans += s[x];
	return ans;
}

int main() {
	int n;
       	long long ans = 0;

	scanf("%d", &n);
	for (int i = 0; i < n; i++) {
		scanf("%d", &a[i]);
		ans += sum(a[i] - 1);
		insert(a[i]);
	}
	printf("%lld\n", ans);

	return 0;
}
