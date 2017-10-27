#include <algorithm>
#include <cstdio>
#include <iostream>
#include <vector>

const int MAXN = 1000005;
const int INF = 0x7FFFFFFF;

struct Edge {
        int v, w, next;

} e[MAXN];

int n, k, cnt, ans, head[MAXN], root, sum, maxSon[MAXN], sizeTree[MAXN],
    del[MAXN], node, tree, value[MAXN], size[MAXN], max[MAXN], son[MAXN][2],
    fa[MAXN];

void Maintain(int u) {
        size[u] = 1, max[u] = value[u];
        for (int i = 0; i < 2; i++) {
                size[u] += size[son[u][i]];
                max[u] = std::max(max[u], max[son[u][i]]);
                fa[son[u][i]] = u;
        }
}

int Dir(int u) { return u == son[fa[u]][1]; }

void Init(int u, int p, int x) {
        size[u] = 1, value[u] = max[u] = x;
        fa[u] = p, son[u][0] = son[u][1] = 0;
}

void Rotate(int u) {
        int d = Dir(u), p = fa[u];
        son[p][d] = son[u][d ^ 1], son[u][d ^ 1] = p;
        son[fa[p]][Dir(p)] = u, fa[u] = fa[p];
        Maintain(p), Maintain(u);
}

void Splay(int u) {
        tree = u;
        while (fa[u]) {
                int p = fa[u];
                if (!fa[p])
                        Rotate(u);
                else if (Dir(u) == Dir(p))
                        Rotate(p), Rotate(u);
                else
                        Rotate(u), Rotate(u);
        }
}

int Insert(int &u, int p, int x) {
        if (!u) {
                u = node++, Init(u, p, x);
                return u;
        } else {
                if (x < value[u])
                        return Insert(son[u][0], u, x);
                else
                        return Insert(son[u][1], u, x);
        }
}

int Find(int u, int x) {
        if (x < value[u]) {
                return x >= max[son[u][0]] ? u : Find(son[u][0], x);
        } else
                return Find(son[u][1], x);
}

int Func(int x) {
        Splay(Find(tree, x));
        return size[son[tree][0]];
}

void EdgeInsert(int u, int v, int w) {
        e[cnt] = (Edge){v, w, head[u]}, head[u] = cnt++;
}

void FindRoot(int u, int p) {
        sizeTree[u] = 1, maxSon[u] = 0;

        for (int i = head[u]; ~i; i = e[i].next) {
                int v = e[i].v;
                if (del[v] == 0 && v != p) {
                        FindRoot(v, u), sizeTree[u] += sizeTree[v];
                        maxSon[u] = std::max(maxSon[u], sizeTree[v]);
                }
        }
        maxSon[u] = std::max(maxSon[u], sum - sizeTree[u]);
        if (maxSon[u] < maxSon[root])
                root = u;
}

std::vector<int> len;

void DFS(int u, int p, int w) {
        len.push_back(w);

        for (int i = head[u]; ~i; i = e[i].next) {
                int v = e[i].v;
                if (del[v] == 0 && v != p)
                        DFS(v, u, w + e[i].w);
        }
}

void Solve(int u) {
        del[u] = 1, tree = 0;

        Insert(tree, 0, INF), Insert(tree, 0, 0);

        for (int i = head[u]; ~i; i = e[i].next) {
                int v = e[i].v;
                if (del[v] == 0)
                        DFS(e[i].v, u, e[i].w);

                for (int j = 0; j < len.size(); j++)
                        ans += Func(k - len[j]);
                for (int j = 0; j < len.size(); j++)
                        Splay(Insert(tree, 0, len[j]));

                len.clear();
        }

        for (int i = head[u]; ~i; i = e[i].next) {
                int v = e[i].v;
                if (del[v] == 0) {
                        root = 0, sum = sizeTree[v];
                        FindRoot(v, u), Solve(root);
                }
        }
}

void Init() {
        for (int i = 0; i <= n; i++)
                head[i] = -1, del[i] = 0;
        ans = cnt = 0, node = 1;

        value[0] = max[0] = -INF;
}

int main() {
        while (std::cin >> n >> k && (n || k)) {
                Init();

                for (int i = 0; i < n - 1; i++) {
                        int u, v, w;
                        scanf("%d%d%d", &u, &v, &w);

                        EdgeInsert(u, v, w), EdgeInsert(v, u, w);
                }

                root = 0, sum = maxSon[0] = n;
                FindRoot(1, 0), Solve(root);

                std::cout << ans << std::endl;
        }

        return 0;
}
