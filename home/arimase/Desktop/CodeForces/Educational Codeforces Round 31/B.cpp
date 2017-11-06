#include <iostream>

using namespace std;

int main() {
	int n, m;
	cin >> n >> m;

	for (int i = 1; i <= n; i++) {
		int x; cin >> x;
		m -= (86400 - x);
		if (m <= 0) {
			cout << i << endl;
			break;
		}
	}

	return 0;
}
