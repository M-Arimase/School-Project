#include <iostream>
#include <cstring>
#include <queue>

using namespace std;

const int MAXN = 1000010;

int val[MAXN], out[MAXN];

char BUF[MAXN];

struct Edge {
        int v, next;
} e[MAXN];

int eCNT, head[MAXN], ls[MAXN], rs[MAXN], fa[MAXN];

void Insert(int u, int v) {
        e[eCNT] = (Edge){v, head[u]};
        head[u] = eCNT++;
}

void Build_1(int &u) {
	if (out[u] == '1')
		return;

	int x = u;
	ls[x] = ++u, Build_1(u);
	rs[x] = ++u, Build_1(u);
}

void Build_2(int u) {
	if (val[u] != '$' && fa[u])
		Insert(fa[u], u);

	if (out[u] == '1')
		return;

	fa[ls[u]] = u;
	Build_2(ls[u]);

	fa[rs[u]] = fa[u];
	Build_2(rs[u]);
}

queue<int> Q;

void Build_3(int u) {
	Q.push(u);
	while (!Q.empty()) {
		u = Q.front(); Q.pop();

		cout << (char) val[u] << " ";

		for (int i = head[u]; ~i; i = e[i].next)
			Q.push(e[i].v);
	}
}

int main() {
	int n, m; cin >> n;

	for (int i = 1; i <= n ; i++) {
		cin >> BUF;
		val[i] = BUF[0], out[i] = BUF[1];
	}

	memset(head, -1, sizeof head);
	m = 1, Build_1(m);
	m = 1, Build_2(m);
	m = 1, Build_3(m);

	return 0;
}
