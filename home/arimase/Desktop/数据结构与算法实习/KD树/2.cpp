#include <algorithm>
#include <cmath>
#include <cstdio>
#include <cstring>
#include <iostream>
#include <queue>

using namespace std;

const int MAXN = 1000010;

struct Point {
        double vec[5], dmin[5], dmax[5];

} P[MAXN], Q[MAXN];

int n, K, t, sort_index, root, ls[MAXN], rs[MAXN];

bool operator<(const Point &a, const Point &b) {
        return a.vec[sort_index] < b.vec[sort_index];
}

int MakeTree(int L, int R, int k) {
        int M = (L + R) / 2;

        sort_index = k;
        nth_element(P + L, P + M, P + R + 1);

        if (L != R) {
                if (M != L)
                        ls[M] = MakeTree(L, M - 1, (k + 1) % K);
                if (M != R)
                        rs[M] = MakeTree(M + 1, R, (k + 1) % K);

                for (int i = 0; i < K; i++) {
                        if (ls[M] != -1) {
                                P[M].dmax[i] =
                                    max(P[M].dmax[i], P[ls[M]].dmax[i]);
                                P[M].dmin[i] =
                                    min(P[M].dmin[i], P[ls[M]].dmin[i]);
                        }
                        if (rs[M] != -1) {
                                P[M].dmax[i] =
                                    max(P[M].dmax[i], P[rs[M]].dmax[i]);
                                P[M].dmin[i] =
                                    min(P[M].dmin[i], P[rs[M]].dmin[i]);
                        }
                }
        }
        return M;
}

priority_queue<pair<double, int>, vector<pair<double, int>>,
               less<pair<double, int>>>
    priQ;

double preDist(Point cur, Point u) {
        double ans = 0.0;

        for (int i = 0; i < K; i++) {
                if (cur.vec[i] > u.dmax[i])
                        ans +=
                            (cur.vec[i] - u.dmax[i]) * (cur.vec[i] - u.dmax[i]);
                if (cur.vec[i] < u.dmin[i])
                        ans +=
                            (u.dmin[i] - cur.vec[i]) * (u.dmin[i] - cur.vec[i]);
        }
        return pow(ans, 0.5);
}

void TryInsert(Point cur, Point u, int index, int m) {
        double dist = 0.0;
        for (int i = 0; i < K; i++)
                dist += (u.vec[i] - cur.vec[i]) * (u.vec[i] - cur.vec[i]);
        dist = pow(dist, 0.5);

        if (priQ.size() < m)
                priQ.push(make_pair(dist, index));
        else if (priQ.top().first > dist) {
                priQ.pop();
                priQ.push(make_pair(dist, index));
        }
}

void QueryTree(int u, Point cur, int m, int k) {
        if (u == -1 ||
            priQ.size() == m && preDist(cur, P[u]) > priQ.top().first)
                return;

        TryInsert(cur, P[u], u, m);

        double dist_l = ls[u] == -1 ? 1e9 : preDist(cur, P[ls[u]]);
        double dist_r = rs[u] == -1 ? 1e9 : preDist(cur, P[rs[u]]);

        if (dist_l < dist_r) {
                QueryTree(ls[u], cur, m, (k + 1) % K);
                QueryTree(rs[u], cur, m, (k + 1) % K);

        } else {
                QueryTree(rs[u], cur, m, (k + 1) % K);
                QueryTree(ls[u], cur, m, (k + 1) % K);
        }
}

void Solve(Point cur, int m) {
        QueryTree(root, cur, m, 0);

        int tmp = m;
        while (!priQ.empty())
                Q[--tmp] = P[priQ.top().second], priQ.pop();

        for (int i = 0; i < m; printf("\n"), i++)
                for (int j = 0; j < K; j++)
                        printf("%.0f ", Q[i].vec[j]);
}

int main() {
        while (scanf("%d%d", &n, &K) == 2) {
                for (int i = 0; i < n; i++)
                        for (int j = 0; j < K; j++) {
                                scanf("%lf", &P[i].vec[j]);
                                P[i].dmax[j] = P[i].dmin[j] = P[i].vec[j];
                        }

                memset(ls, -1, sizeof ls);
                memset(rs, -1, sizeof rs);
                root = MakeTree(0, n - 1, 0);

                scanf("%d", &t);

                for (int i = 0; i < t; i++) {
                        Point tmp;
                        for (int j = 0; j < K; j++)
                                scanf("%lf", &tmp.vec[j]);

                        int m;
                        scanf("%d", &m);

                        printf("the closest %d points are:\n", m);
                        Solve(tmp, m);
                }
        }

        return 0;
}
