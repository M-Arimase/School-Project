#include <iostream>
#include <string>

using namespace std;

const int MAXN = 1000010;

struct Char {
        int Rank[2], idx;

        bool operator!=(const Char &x) {
                return Rank[0] != x.Rank[0] || Rank[1] != x.Rank[1];
        }
} x[MAXN], y[MAXN];

int n, num[MAXN], Rank[MAXN], Sa[MAXN], Hight[MAXN], c[MAXN];

void SA() {
        for (int i = 0; i < MAXN; i++)
                c[i] = 0;
        for (int i = 0; i < n; i++)
                c[num[i]] += 1;
        for (int i = 1; i < MAXN; i++)
                c[i] += c[i - 1];
        for (int i = n - 1; i >= 0; i--)
                Rank[i] = c[num[i] - 1];

        for (int k = 1; k <= n; k <<= 1) {
                for (int i = 0; i < n; i++) {
                        x[i].Rank[0] = Rank[i], x[i].idx = i;
                        x[i].Rank[1] = i + k >= n ? 0 : Rank[i + k] + 1;
                }

                for (int m = 1; m >= 0; m--) {
                        for (int i = 0; i <= n; i++)
                                c[i] = 0;
                        for (int i = 0; i < n; i++)
                                c[x[i].Rank[m]] += 1;
                        for (int i = 1; i <= n; i++)
                                c[i] += c[i - 1];
                        for (int i = n - 1; i >= 0; i--)
                                y[--c[x[i].Rank[m]]] = x[i];
                        for (int i = 0; i < n; i++)
                                x[i] = y[i];
                }

                for (int i = 0; i < n; i++)
                        Rank[x[i].idx] =
                            i ? Rank[x[i - 1].idx] + (x[i] != x[i - 1]) : 0;
        }

        for (int i = 0; i < n; i++)
                Sa[Rank[i]] = i;

        for (int i = 0, H = 0; i < n; i++, H -= H != 0) {
                for (; Rank[i] && num[i + H] == num[Sa[Rank[i] - 1] + H]; H++)
                        ;
                Hight[Rank[i]] = Rank[i] ? H : 0;
        }
}

int ans1, ans2, cnt[MAXN], in[MAXN], qL, qR, nL, q[MAXN];

int main() {
	ios::sync_with_stdio(false);

	int T; cin >> T;

	while (T--) {
		int k; cin >> k;

		ans1 = ans2 = n = 0;
		for (int i = 0; i < k; i++) {
			string S; cin >> S;
			for (int j = 0; j < S.length(); j++)
				in[n] = i, num[n++] = S[j];
			in[n] = -1, num[n++] = 128 + i, cnt[i] = 0;
		}

		SA();

		qL = qR = nL = 0;
		for (int i = 0, tmp = 0; i < n; i++) {
			if (cnt[in[Sa[i]]] == 0)
				tmp++;
			cnt[in[Sa[i]]]++;

			while (cnt[in[Sa[nL]]] > 1)
				cnt[in[Sa[nL]]]--, nL++;

			while (qL < qR && q[qL] <= nL)
				qL++;
			while (qL < qR && Hight[q[qR - 1]] > Hight[i])
				qR--;
			q[qR++] = i;

			if (tmp == k && Hight[q[qL]] > ans1)
				ans1 = Hight[q[qL]], ans2 = Sa[i];
		}

		if (ans1 < 3)
			cout << "no significant commonalities" << endl;
		else {
			for (int i = 0; i < ans1; i++)
				cout << (char) num[ans2 + i];
			cout << endl;
		}
	}

        return 0;
}
