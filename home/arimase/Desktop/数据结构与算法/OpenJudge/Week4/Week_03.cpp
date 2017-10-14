#include <iostream>

using namespace std;

string str;

const int MAXN = 1000000;

int n, fail[MAXN], CASE;

int main() {
	while (cin >> n >> str) {
		cout << "Test case #" << ++CASE << endl;

		fail[0] = -1;

		for (int i = 0; i < n; i++) {
			int j = fail[i];

			while (j >= 0 && str[j] != str[i])
				j = fail[j];
			fail[i + 1] = j + 1;

		}

		for (int i = 2; i <= n; i++)
			if (i % (i - fail[i]) == 0 && fail[i] > 0)
				cout << i << " " << i / (i - fail[i]) << endl;
		cout << endl;

	}

	return 0;

}
