#include <iostream>
#include <map>
#include <cstring>
#include <string>
#include <queue>

using namespace std;

const int MAXN = 100010;

struct Edge {
	int v, w, next;
} e[MAXN];

int eCNT, head[MAXN];

map<string, int> Curr;
map<int, string> Prev;

void Insert(int u, int v, int w) {
	e[eCNT] = (Edge) {v, w, head[u]};
	head[u] = eCNT++;
}

int n, m, k, dis[MAXN], inq[MAXN], preu[MAXN], prew[MAXN];

queue<int> Q;

void SPFA(int u) {
	for (int i = 0; i < n; i++)
		dis[i] = -1;
	dis[u] = 0, preu[u] = u, Q.push(u);

	while (!Q.empty()) {
		int u = Q.front(); Q.pop();

		for (int i = head[u]; ~i; i = e[i].next) {
			int v = e[i].v;
			if (dis[v] == -1 || dis[v] > dis[u] + e[i].w) {
				dis[v] = dis[u] + e[i].w;
				if (!inq[v])
					inq[v] = 1, Q.push(v);
				preu[v] = u, prew[v] = e[i].w;
			}
		}
		inq[u] = 0;
	}
}

void DFS(int v) {
	int u = preu[v];
	if (u != v)
		DFS(u), cout << "->(" << prew[v] << ")->";
	cout << Prev[v];
}

void Query(int u, int v) {
	SPFA(u), DFS(v);
}

int main() {
	cin >> n;
	for (int i = 0; i < n; i++)
		cin >> Prev[i], Curr[Prev[i]] = i;
	memset(head, -1, sizeof head);

	cin >> m;
	for (int i = 0; i < m; i++) {
		string u; cin >> u;
		string v; cin >> v;

		int w; cin >> w;
		Insert(Curr[u], Curr[v], w);
		Insert(Curr[v], Curr[u], w);
	}

	cin >> k;
	for (int i = 0; i < k; i++) {
		string u; cin >> u;
		string v; cin >> v;

		Query(Curr[u], Curr[v]);
		cout << endl;
	}

	return 0;
}
