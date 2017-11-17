#include <cstdio>
#include <cstring>
#include <algorithm>

using namespace std;

const int MAXN = 1000010;

char S[MAXN];

int fail[MAXN];

int main() {
	while (scanf("%s", S) && !(S[0] == '.' && S[1] == '\0')) {
		int N = strlen(S);

		fail[0] = -1;
		for (int i = 0, j = -1; i < N; ) {
			for (; j >= 0 && S[j] != S[i]; j = fail[j]);
			i += 1, j += 1, fail[i] = j;
		}
		printf("%d\n", N % (N - fail[N]) ? 1 : N / (N - fail[N]));
	}
	return 0;
}
