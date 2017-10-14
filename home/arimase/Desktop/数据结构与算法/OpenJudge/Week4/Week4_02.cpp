#include <iostream>

using namespace std;

string str1, str2;

const int MAXN = 1000000;

int main() {
	while (cin >> str1 >> str2) {
		int n = str1.length();
		int m = str2.length();
		int i = 0, j = 0;

		for (; j < m; j++) 
			if (i < n && str1[i] == str2[j])
				i++;

		cout << (i == n ? "Yes" : "No") << endl;
	}

	return 0;
}
