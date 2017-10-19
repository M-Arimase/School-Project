#include <iostream>
#include <ctime>

using namespace std;

int main() {
	freopen("sample.in", "w", stdout);

	srand(time(0));
	
	const int n = 4, m = 3, x = 600, y = 800, z = 200;

	cout << n << endl << endl;

	for (int i = 0; i < n; i++) {
		cout << m << endl;

		for (int j = 0; j < m; j++) {
			int u = rand() % x,
			    v = rand() % y,
			    n = rand() % z;

			cout << n << " " << u << " " << v << endl;
		}
		
		{
			int r = rand() % 256,
			    g = rand() % 256,
			    b = rand() % 256;

			cout << r << " " << g << " " << b << endl;
		}

		cout << endl;
	}

	return 0;
}
