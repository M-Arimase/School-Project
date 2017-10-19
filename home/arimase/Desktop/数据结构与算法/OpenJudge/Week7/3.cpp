#include <cstring>
#include <iostream>
#include <sstream>

using namespace std;

const int MAXN = 1000010;

int fa[MAXN];

int Find(int u) {
	return u == fa[u] ? u : fa[u] = Find(fa[u]);
}

void Merge(int u, int v) {
	int fu = Find(u), fv = Find(v);

	if (fu != fv)
		fa[fu] = fv;
}

int main() {
	ios::sync_with_stdio(false);

	int CASE; cin >> CASE;

	for (int T = 1; T <= CASE; T++) {
		int n; cin >> n;
		int m; cin >> m;

		for (int i = 1; i <= 2 * n; fa[i] = i, i++);

		int FLAG = 1;
		for (int i = 1; i <= m; i++) {
			int u; cin >> u;
			int v; cin >> v;

			int fu = Find(u), pu = Find(u + n);
			int fv = Find(v), pv = Find(v + n);

			if (fu == fv || pu == pv) 
				FLAG = 0;
			else
				Merge(u, v + n), Merge(u + n, v);
		}

		cout << "Scenario #" << T << ":" << endl;

		if (FLAG == 0)
			cout << "Suspicious bugs found!" << endl;
		else
			cout << "No suspicious bugs found!" << endl;
		cout << endl;
	}
}
