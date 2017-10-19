#include <cstring>
#include <iostream>
#include <sstream>

using namespace std;

const int MAXN = 1000010;

char BUF[MAXN];

int CNT, val[MAXN], son[MAXN];

struct Edge {
        int v, next;
} e[MAXN];

int eCNT, head[MAXN];

void Insert(int u, int v) {
        e[eCNT] = (Edge){v, head[u]};
        head[u] = eCNT++;
}

void DFS(int u) {
        for (int i = head[u]; ~i; i = e[i].next)
                DFS(e[i].v);
        cout << (char)u << " ";
}

int main() {
        int n; cin >> n;
	cin.get();

        for (int i = 0; i < n; i++) {
		cin.getline(BUF, MAXN);

                stringstream SS(BUF);

		CNT = 0;

                while (SS >> BUF) {
                        val[CNT] = BUF[0];
                        SS >> son[CNT++];
                }

                memset(head, -1, sizeof head);

                for (int i = CNT - 1, j = CNT - 1; i >= 0; i--) {
                        for (int k = 0; k < son[i]; k++, j--)
                                Insert(val[i], val[j]);
                }
                DFS(val[0]);
        }

        return 0;
}
