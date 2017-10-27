#include <algorithm>
#include <iostream>
#include <string>

using namespace std;

const int MAXN = 2000005;

char BUF[MAXN];

struct Node {
        string str;
        int value;

        bool operator<(const Node &x) const { return str < x.str; }

} node[MAXN];

struct Query {
        int value, index;

        Query() { value = -1; }

        bool operator<(const Query &x) const { return value < x.value; }

} query[MAXN];

void Build(int i, int l, int r) {
        if (l == r) {
                query[i].value = node[l].value;
                query[i].index = l;

        } else {
                int mid = (l + r) >> 1;

                Build(2 * i, l, mid), Build(2 * i + 1, mid + 1, r);

                query[i] = max(query[2 * i], query[2 * i + 1]);
        }
}

Query Ask(int i, int u, int v, int l, int r) {
        if (l >= u && r <= v)
                return query[i];
        else {
                int mid = (l + r) / 2;
                Query tmp;

                if (u <= mid)
                        tmp = max(tmp, Ask(2 * i, u, v, l, mid));
                if (v >= mid + 1)
                        tmp = max(tmp, Ask(2 * i + 1, u, v, mid + 1, r));
                return tmp;
        }
}

int n;

void Make(int l, int r) {
        Query tmp = Ask(1, l, r, 0, n - 1);
        int mid = tmp.index;

        cout << "(";
        if (l != mid)
                Make(l, mid - 1);

        cout << node[mid].str << "/" << node[mid].value;

        if (mid != r)
                Make(mid + 1, r);
        cout << ")";
}

int main() {
        while (cin >> n && n) {
                for (int i = 0; i < n; i++) {
                        getchar();
                        cin.getline(BUF, MAXN, '/'), node[i].str = BUF;
                        cin >> node[i].value;
                }
                sort(node, node + n);

                Build(1, 0, n - 1);

                Make(0, n - 1), cout << endl;
        }

        return 0;
}
