#include <algorithm>
#include <cstdio>

using namespace std;

int s[100000];

void QuickSelect(int L, int R, int K) {
	if (L >= R)
		return;

        int M = L + (R - L) / 3, Const = s[M];

        int l = L, r = R;
	while (l <= r) {
                for (; l <= R && s[l] < Const; l++)
                        ;
                for (; r >= L && s[r] > Const; r--)
                        ;

		if (l <= r)
			swap(s[l], s[r]), l++, r--;
        }

	if (K <= r - L) 
		QuickSelect(L, r, K);
	if (K >= l - L)
		QuickSelect(l, R, K - l + L);
}

int main() {
        int n;
        scanf("%d", &n);

        for (int i = 0; i < n; i++)
                scanf("%d", s + i);
        QuickSelect(0, n - 1, n / 2);

        printf("%d\n", s[n / 2]);
        return 0;
}
