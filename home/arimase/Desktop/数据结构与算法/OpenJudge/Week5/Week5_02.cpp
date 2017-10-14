#include <iostream>

using namespace std;

const int MAXN = 1000;

int fa[MAXN], ls[MAXN], rs[MAXN];

void MAIN() {
	int n; cin >> n;
	int m; cin >> m;

	for (int i = 0, j; i < n; i++) {
		cin >> j >> ls[j] >> rs[j];
		
		if (~ls[j])
			fa[ls[j]] = j;
		if (~rs[j])
			fa[rs[j]] = j;
	}

	for (int i = 0; i < m; i++) {
		int type; cin >> type;

		if (type == 1) {
			int x; cin >> x;
			int y; cin >> y;

			int fx = fa[x], fy = fa[y];

			if (fx == fy)
				swap(ls[fx], rs[fy]);
			else {
				fa[x] = fy;
				fa[y] = fx;

				if (x == ls[fx])
					ls[fx] = y;
				else
					rs[fx] = y;

				if (y == ls[fy])
					ls[fy] = x;
				else
					rs[fy] = x;
			}
		}

		if (type == 2) {
			int x; cin >> x;

			while (~ls[x])
				x = ls[x];
			cout << x << endl;
		}
	}
}

int main() {
	int CASE; cin >> CASE;

	while (CASE--)
		MAIN();

	return 0;
}
