#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <cstring>
#include <vector>
#include <algorithm>

using namespace std;
const int maxX = 1080, maxY = 1920, maxP = 100; 
int num[maxX][maxY];

const double eps = 1e-6, Pi = 4 * atan(1);

struct Point {
	double x, y;

	Point(double x = 0, double y = 0) : x(x), y(y) {
	}
};

double operator * (Point a, Point b) {
	return a.x * b.x + a.y * b.y;
}

Point operator - (Point a, Point b) {
	return Point(a.x - b.x, a.y - b.y);
}

double operator ^ (Point a, Point b) {
	return a.x * b.y - a.y * b.x;
}

double mod(Point a) {
	return sqrt(a * a * 1.0);
}

double theta(Point a, Point b) {
	double csin = (a ^ b) / mod(a) / mod(b);
	double ccos = (a * b) / mod(a) / mod(b);
	return atan2(csin, ccos);
}

const int val[5][5] = {
	1, 2, 4, 2, 1,
	2, 5, 6, 5, 2,
	4, 6, 8, 6, 4,
	2, 5, 6, 5, 2,
	1, 2, 4, 2, 1,
}, SUM = 88;

Point p[maxP];

void naiveFill() {
	freopen("test_n.pgm", "w", stdout);
	cout << "P2" << endl;
	cout << maxY << " " << maxX << endl;
	cout << "255" << endl;

	for (int i = 0; i < maxX; i++, (cerr << i << endl))
		for (int j = 0; j < maxY; j++) {
			int res = 0;
			for (int k = 0; k < 5; k++)
				for (int l = 0; l < 5; l++) {
					Point temp(i + 0.1 + 0.2 * k, j + 0.1 + 0.2 * l);
					double the = 0;

					for (int m = 0; m < maxP; m++)
						the += theta(p[m] - temp, p[(m + 1) % maxP] - temp);

					if (fabs(fabs(the) - 2 * Pi) <= eps)
						res += val[k][l];	
				}
		//	num[i][j] = 255 * res / SUM;
			num[i][j] = 255 * (res > 0);
		}

	for (int i = 0; i < maxX; i++)
		for (int j = 0; j < maxY; j++)
			cout << num[i][j] << " ";
}

bool inBlock[maxX * 5][maxY * 5];

struct Edge {
	double xCurr, yMin, yMax, delta = 0;
	bool alive = true;
} edge[maxP];

bool operator < (const Edge& a, const Edge& b) {
	return a.xCurr < b.xCurr;
}

void scanningLineFill() {
	freopen("test_s.pgm", "w", stdout);
	cout << "P2" << endl;
	cout << maxY << " " << maxX << endl;
	cout << "255" << endl;

	for (int i =  0; i < maxP; i++) {
		Point a = p[i], b = p[(i + 1) % maxP];
		if (a.y > b.y)
			swap(a, b);

		edge[i].yMin = a.y;
		edge[i].yMax = b.y;
		edge[i].xCurr = a.x;
		if (a.y != b.y) 
			edge[i].delta = (b.x - a.x) / (b.y - a.y);
		else
			edge[i].alive = false;
	}

	sort(edge, edge + maxP, [] (Edge a, Edge b) {
			return a.yMin < b.yMin;
			});

	vector<Edge> aliveEdge;
	int edgeCurr = 0;

	for (int i = 0; i < maxY; i++) 
		for (int k = 0; k < 5; k++) {
			double yCurr = i + 0.1 + k * 0.2;

			for (int j = 0; j < aliveEdge.size(); j++)
				if (aliveEdge[j].yMax <= yCurr)
					aliveEdge[j].alive = false;
	
			for (int j = 0; j < aliveEdge.size(); j++)
				aliveEdge[j].xCurr += 0.2 * aliveEdge[j].delta;

			while (edgeCurr < maxP && edge[edgeCurr].yMin <= yCurr) {
				Edge tempEdge = edge[edgeCurr];
				tempEdge.xCurr += (yCurr - edge[edgeCurr++].yMin) * tempEdge.delta;
				aliveEdge.push_back(tempEdge);
			}

			sort(aliveEdge.begin(), aliveEdge.end());

			int pointCurr = 0, inLine = 0;
			for (int j = 0; j < maxX; j++)
				for (int l = 0; l < 5; l++) {
					double xCurr = j + 0.1 + l * 0.2;

					while (pointCurr < aliveEdge.size() && 
							aliveEdge[pointCurr].xCurr < xCurr)
						if (aliveEdge[pointCurr++].alive == true)
							inLine ^= 1;
					inBlock[j * 5 + l][i * 5 + k] = inLine;
				}
		}

	for (int i = 0; i < maxX; i++)
		for (int j = 0; j < maxY; j++) {
			int nCurr = 0;
			for (int k = 0; k < 5; k++)
				for (int l = 0; l < 5; l++)
					if (inBlock[i * 5 + k][j * 5 + l])
						nCurr += val[k][l];
			num[i][j] = 255 * nCurr / SUM;
		}

	for (int i = 0; i < maxX; i++)
		for (int j = 0; j < maxY; j++)
			cout << num[i][j] << " ";
}

int main() {
	srand(time(NULL));

	for (int i = 0; i < 2 * maxP; i++) {
		int x = rand() % (10 * maxX), y = rand() % (10 * maxY);
		p[i] = Point(x / 10.0, y / 10.0);
	}

	scanningLineFill();

//	naiveFill();

	return 0;
}
