#include <iostream>
#include <algorithm>
#include <cmath>

using namespace std;

const int MAXN = 100010;

struct Point {
	double x, y, z;

	friend Point operator - (const Point & a, const Point & b) {
		return (Point) {a.x - b.x, a.y - b.y, a.z - b.z};
	}

	double Modulus() const {
		return sqrt(x * x + y * y + z * z);
	}

	friend ostream & operator << (ostream & out, Point a) {
		out << "(" << a.x << "," << a.y << "," << a.z << ")";
		return out;
	}
} P[MAXN];

struct Query {
	double x;
	int a, b;

	friend bool operator < (const Query & a, const Query & b) {
		return b.x < a.x;
	}
} Q[MAXN];

int main() {
	int n;
	cin >> n;

	for (int i = 0; i < n; i++)
		cin >> P[i].x >> P[i].y >> P[i].z;

	for (int i = 0, cnt = 0; i < n; i++)
		for (int j = i + 1; j < n; j++, cnt++) {
			Q[cnt].x = (P[i] - P[j]).Modulus();
			Q[cnt].a = i, Q[cnt].b = j;
		}
	stable_sort(Q, Q + n * (n - 1) / 2);

	for (int i = 0; i< n * (n - 1) / 2; i++) {
		cout << P[Q[i].a] << "-" << P[Q[i].b] << "=";
		printf("%.2f\n", Q[i].x);
	}
	return 0;
}
