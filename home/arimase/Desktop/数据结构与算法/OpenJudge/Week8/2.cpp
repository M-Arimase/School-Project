#include <functional>
#include <iostream>
#include <algorithm>

using namespace std;

const int MAXN = 100010;

struct Edge {
        int u, v, w;
} e[MAXN];

char BUF[MAXN];

int CNT, fa[MAXN];

int main() {
        int n;
        cin >> n;

        for (int i = 1, u, v; i < n; i++) {
                cin >> BUF;
                u = BUF[0];

                int m;
                cin >> m;
                for (int j = 0; j < m; j++) {
                        cin >> BUF;
                        v = BUF[0];

                        int w;
                        cin >> w;

                        e[CNT++] = (Edge){u, v, w};
                }
        }

        for (int i = 'A'; i <= 'Z'; i++)
                fa[i] = i;

        function<int(int)> Find = [&](int x) {
                return x == fa[x] ? x : fa[x] = Find(fa[x]);
        };

        function<void(int, int)> Merge = [&](int x, int y) {
                fa[Find(x)] = Find(y);
        };

        sort(e, e + CNT, [](Edge a, Edge b) { return a.w < b.w; });

	int ANS = 0;
	for (int i = 0; i < CNT; i++) {
		int u = e[i].u, fu = Find(u);
		int v = e[i].v, fv = Find(v);

		if (fu != fv)
			ANS += e[i].w, Merge(u, v);
	}
	cout << ANS << endl;

        return 0;
}
