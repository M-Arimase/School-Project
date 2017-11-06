#include <iostream>
#include <algorithm>
#include <queue>

using namespace std;

const int MAXN = 1000010;

priority_queue<long long, vector<long long>, greater<long long> > Q;

int main() {
	int n; cin >> n;

	for (int i = 0; i < n; i++) {
		int value; cin >> value;
		Q.push(value);
	}
	if (n % 2 == 0)
		Q.push(0);

	long long ans = 0;
	while (!Q.empty()) {
		long long x = Q.top(); Q.pop();
		if (Q.empty())
			break;
		long long y = Q.top(); Q.pop();
		long long z = Q.top(); Q.pop();
		long long w = x + y + z;
		Q.push(w), ans += w;
	}
	cout << ans << endl;

	return 0;
}
