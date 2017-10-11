#include <cstdio>
#include <cstdlib>

using namespace std;

const int MAXN = 1000000;

int val[MAXN], num[MAXN], sum[MAXN];

int Query(int c, int l, int r, int k) {
	int mid = (l + r) / 2;

	if (l == r)
		return mid;

	int curr = sum[2 * c];

	if (curr >= k)
		return Query(2 * c, l, mid, k);
	else
		return Query(2 * c + 1, mid + 1, r, k - curr);
}

void Insert(int c, int l, int r, int x) {
	int mid = (l + r) / 2;

	sum[c] -= 1;

	if (l == r)
		return;

	if (x <= mid)
		Insert(2 * c, l, mid, x);
	else
		Insert(2 * c + 1, mid + 1, r, x);
}

void Build(int c, int l, int r) {
	if (l == r)
		sum[c] = 1;
	else {
		int mid = (l + r) / 2;

		Build(2 * c, l , mid);
		Build(2 * c + 1, mid + 1, r);

		sum[c] = sum[2 * c] + sum[2 * c+ 1];
	}
}

int main(int argc, char** argv)  {
	int n; scanf("%d", &n);

	Build(1, 1, n);

	for (int i = 2; i <= n; i++)
		scanf("%d", &val[i]);

	for (int i = n; i >= 1; i--) {
		num[i] = Query(1, 1, n, val[i] + 1);
		Insert(1, 1, n, num[i]);
	}

	for (int i = 1; i <= n; i++)
		printf("%d\n", num[i]);

	return 0;
}
