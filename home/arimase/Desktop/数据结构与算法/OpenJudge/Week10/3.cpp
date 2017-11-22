#include <iostream>
#include <algorithm>
#include <string>

using namespace std;

pair<int, int> s[1000];
string a[1000];

int main() {
	int n, m;

	cin >> n >> m;

	for (int i = 0; i < m; i++) {
		cin >> a[i];

		int l = a[i].length(), t = 0;
		for (int j = 0; j < l; j++)
			for (int k = j + 1; k < l; k++)
				t += (a[i][j] > a[i][k]);
		s[i] = make_pair(t, i);
	}
	sort(s, s + m);

	for (int i = 0; i < m; i++)
		cout << a[s[i].second] << endl;
	return 0;
}
