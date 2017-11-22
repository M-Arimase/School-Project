#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <deque>
#include <queue>

using namespace std;

const int MAXN = 600;

char BUF[MAXN];

int myCount, somap[MAXN][MAXN], sosum[MAXN][MAXN], isFull[MAXN * MAXN * 10],
    son[MAXN * MAXN * 10][4];

int IsFull(int x1, int y1, int x2, int y2) {
        int sum = sosum[x2][y2] + sosum[x1 - 1][y1 - 1] - sosum[x1 - 1][y2] -
                  sosum[x2][y1 - 1];
        if (sum == 0)
                return -1;
        else if (sum == (x2 - x1 + 1) * (y2 - y1 + 1))
                return 1;
        else
                return 0;
}

int MakeTree(int x1, int y1, int x2, int y2) {
        int index = ++myCount;
        if ((isFull[index] = IsFull(x1, y1, x2, y2)))
                return index;

        int xm = (x1 + x2) / 2, ym = (y1 + y2) / 2;

        son[index][0] = MakeTree(x1, y1, xm, ym);
        son[index][1] = MakeTree(x1, ym + 1, xm, y2);
        son[index][2] = MakeTree(xm + 1, y1, x2, ym);
        son[index][3] = MakeTree(xm + 1, ym + 1, x2, y2);
        return index;
}

queue<int> Q;
deque<int> D;
void Solve() {
        int n, root;
        scanf("%d", &n);

        for (int i = 1; i <= n; i++) {
                for (int j = 1; j <= n; j++) {
                        scanf("%d", &somap[i][j]);
                        sosum[i][j] = sosum[i][j - 1] + somap[i][j];
                }
                for (int j = 1; j <= n; j++)
                        sosum[i][j] += sosum[i - 1][j];
        }
        myCount = 0;
        root = MakeTree(1, 1, n, n);

        Q.push(root), D.clear();
        while (!Q.empty()) {
                int u = Q.front();
                Q.pop();
                if (isFull[u] == 0)
                        D.push_back(1);
                else if (isFull[u] == 1)
                        D.push_back(0), D.push_back(1);
                else
                        D.push_back(0), D.push_back(0);

                if (isFull[u] == 0) {
                        for (int i = 0; i < 4; i++)
                                Q.push(son[u][i]);
                }
        }

        while (D.size() % 4 != 0)
                D.push_front(0);
        for (int i = 0; i < D.size(); i += 4) {
                int x = 0;
                for (int j = 0; j < 4; j++)
                        x = x * 2 + D[i + j];
                printf("%X", x);
        }
        printf("\n");
}

int main() {
        int T;
        scanf("%d", &T);

        while (T--)
                Solve();

        return 0;
}
