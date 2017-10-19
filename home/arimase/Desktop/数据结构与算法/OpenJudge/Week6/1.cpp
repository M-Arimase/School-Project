#include <cstdio>
#include <queue>

using namespace std;

const int MAXN = 1005;

int CNT, v[MAXN], ls[MAXN], rs[MAXN], deep[MAXN];

typedef pair<int, int> PII;

PII t[MAXN];

priority_queue<PII, vector<PII>, greater<PII> > q;

void DFS(int u, int d) {
	if (u == 0)
		return;

	deep[u] = d;
	DFS(ls[u], d + 1);
	DFS(rs[u], d + 1);
}

int main() {
	int n; scanf("%d", &n);

	for (int i = 0; i < n; i++) {
		scanf("%d", &v[i]);
		q.push(make_pair(v[i], ++CNT));
	}

	while (!q.empty()) {
		PII u = q.top(); q.pop();
		if (q.empty())
			break;
		PII v = q.top(); q.pop();

		q.push(make_pair(u.first + v.first, ++CNT));

		ls[CNT] = u.second;
		rs[CNT] = v.second;
	}

	DFS(CNT, 0);

	int ans = 0;
	for (int i = 1; i <= n; i++)
		ans += deep[i] * v[i - 1];
	printf("%d\n", ans);

	return 0;
}
