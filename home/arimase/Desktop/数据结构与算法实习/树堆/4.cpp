#include <cstdio>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

const int MAXN = 1000010;

tree<pair<int, int>, null_type, less<pair<int, int>>, rb_tree_tag,
     tree_order_statistics_node_update>
    T;

int value[MAXN];

int main() {
        int n, m;
        scanf("%d%d", &n, &m);

        for (int i = 0; i < n; i++)
                scanf("%d", value + i);

        for (int i = 0, j = 0; i < m; i++) {
                int x;
                scanf("%d", &x);
                for (; j < x; j++)
                        T.insert(make_pair(value[j], j));
                printf("%d\n", T.find_by_order(i)->first);
        }

        return 0;
}
