#include <algorithm>
#include <iostream>

using namespace std;

const int MAXN = 50000;

int sum[MAXN], ans[MAXN];
pair<int, int> p[MAXN];

void Insert(int x) {
        for (; x < MAXN; x += x & -x)
                sum[x]++;
}

int Query(int x) {
        int res = 0;
        for (; x; x -= x & -x)
                res += sum[x];
        return res;
}

int main() {
        int n;
        scanf("%d", &n);

        for (int i = 0; i < n; i++) {
                scanf("%d%d", &p[i].first, &p[i].second);
                p[i].first += 1;
                p[i].second += 1;
        }

        sort(p, p + n);

        for (int i = 0; i < n; i++) {
                ans[Query(p[i].second)]++;
                Insert(p[i].second);
        }

        for (int i = 0; i < n; i++)
                printf("%d\n", ans[i]);

        return 0;
}
