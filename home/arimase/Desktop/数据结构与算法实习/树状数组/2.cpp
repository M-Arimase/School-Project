#include <iostream>
#include <cstring>

using namespace std;

const int MAXN = 1000000;

struct Edge {
	int v, next;
} e[MAXN];

int edgeCnt, dfnCnt, head[MAXN], _size[MAXN], 
    sum[MAXN], ex[MAXN], dfn[MAXN];

void EInsert(int x, int y) {
	e[edgeCnt] = (Edge) {y, head[x]};
	head[x] = edgeCnt++;
}

void DFS(int x, int fa) {
	_size[x] = 1, dfn[x] = ++dfnCnt;

	for (int i = head[x]; ~i; i = e[i].next) {
		int v = e[i].v;
		if (v != fa) {
			DFS(v, x);
			_size[x] += _size[v];
		}
	}
}

int Query(int x) {
	int ans = 0;
	for (; x; x -= x & -x)
		ans += sum[x];
	return ans;
}

void Insert(int x, int y) {
	for (; x < MAXN; x += x & -x)
		sum[x] += y;
}

int main() {
	int n; scanf("%d", &n);

	memset(head, -1, sizeof head);

	for (int i = 0; i < n - 1; i++) {
		int u; scanf("%d", &u);
		int v; scanf("%d", &v);

		EInsert(u, v), EInsert(v, u);
	}

	DFS(1, 0);

	for (int i = 1; i <= n; i++)
		ex[i] = 1, Insert(i, 1);

	int m; scanf("%d", &m);

	for (int i = 0; i < m; i++) {
		char s[10]; scanf("%s", s);

		int x; scanf("%d", &x);

		if (s[0] == 'Q') {
			int ans = Query(dfn[x] + _size[x] - 1);
			printf("%d\n", ans - Query(dfn[x] - 1));
		}

		if (s[0] == 'C') {
			if (ex[x] == 0) {
				ex[x] = 1;
				Insert(dfn[x], 1);
			}
			else {
				ex[x] = 0;
				Insert(dfn[x], -1);
			}
		}
	}

	return 0;
}
