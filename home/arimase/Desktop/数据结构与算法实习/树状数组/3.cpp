#include <iostream>
#include <algorithm>
#include <tuple>
#include <cstring>

using namespace std;

const int MAXN = 1000000;

int sum[MAXN], ans[MAXN];

struct Point {
	int u, v, idx;

	bool operator < (Point & x) {
		return v > x.v || v == x.v && u < x.u;
	}
} p[MAXN];

void Insert(int x) {
	for (; x < MAXN; x += x & -x)
		sum[x]++;
}

int Query(int x) {
	int res = 0;
	for (; x; x -= x & -x)
		res += sum[x];
	return res;
}

int main() {
	int n; 
	while (scanf("%d", &n) && n) {
		memset(sum, 0, sizeof sum);

		for (int i = 0; i < n; i++) {
			int u; scanf("%d", &u);
			int v; scanf("%d", &v);
			p[i] = (Point) {u + 1, v + 1, i};
		}
		
		sort(p, p + n);

		for (int i = 0, j; i < n; i = j) {
			for (j = i + 1; j < n && p[j].u == p[i].u &&
					p[j].v == p[i].v; j++);

			for (int k = i; k < j; k++)
				ans[p[k].idx] = Query(p[k].u);
			for (int k = i; k < j; k++)
				Insert(p[k].u);
		}

		for (int i = 0; i < n; i++)
			printf("%d ", ans[i]);
		printf("\n");
	}

	return 0;
}
