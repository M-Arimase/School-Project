#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <cstring>
#include <vector>
#include <algorithm>

using namespace std;

const int maxX = 1080, maxY = 1920, maxP = 100;
const int LineW = 2;
const int xMax = 500, xMin = 0, yMax = 500, yMin = 0;
//const int xMax = maxX, xMin = 0, yMax = maxY, yMin = 0;

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


void Cohen_SutherLand(Point& a, Point& b) {
	int aOrder = 0, bOrder = 0;

	if (a.x < xMin)
		aOrder |= (1 << 0);
	if (a.x > xMax)
		aOrder |= (1 << 1);
	if (a.y < yMin)
		aOrder |= (1 << 2);
	if (a.y > yMax)
		aOrder |= (1 << 3);

	if (b.x < xMin)
		bOrder |= (1 << 0);
	if (b.x > xMax)
		bOrder |= (1 << 1);
	if (b.y < yMin)
		bOrder |= (1 << 2);
	if (b.y > yMax)
		bOrder |= (1 << 3);

	if ((aOrder & bOrder) != 0) {
		a = Point(-1, -1);
		b = Point(-1, -1);
		return;
	}

	if ((aOrder | bOrder) == 0)
		return;

	if (aOrder != 0) {
		if ((aOrder & (1 << 0)) != 0) {
			a.y = a.y + (b.y - a.y) / (b.x - a.x) * (xMin - a.x);
			a.x = xMin;
			Cohen_SutherLand(a, b);
		}
		else if ((aOrder & (1 << 1)) != 0) {
			a.y = a.y + (b.y - a.y) / (b.x - a.x) * (xMax - a.x);
			a.x = xMax;
			Cohen_SutherLand(a, b);
		}
		else if ((aOrder & (1 << 2)) != 0) {
			a.x = a.x + (b.x - a.x) / (b.y - a.y) * (yMin - a.y);
			a.y = yMin;
			Cohen_SutherLand(a, b);
		}
		else if ((aOrder & (1 << 3)) != 0) {
			a.x = a.x + (b.x - a.x) / (b.y - a.y) * (yMax - a.y);
			a.y = yMax;
			Cohen_SutherLand(a, b);
		}
	}
	else if (bOrder != 0) {
		if ((bOrder & (1 << 0)) != 0) {
			b.y = b.y + (a.y - b.y) / (a.x - b.x) * (xMin - b.x);
			b.x = xMin;
			Cohen_SutherLand(a, b);
		}
		else if ((bOrder & (1 << 1)) != 0) {
			b.y = b.y + (a.y - b.y) / (a.x - b.x) * (xMax - b.x);
			b.x = xMax;
			Cohen_SutherLand(a, b);
		}
		else if ((bOrder & (1 << 2)) != 0) {
			b.x = b.x + (a.x - b.x) / (a.y - b.y) * (yMin - b.y);
			b.y = yMin;
			Cohen_SutherLand(a, b);
		}
		else if ((bOrder & (1 << 3)) != 0) {
			b.x = b.x + (a.x - b.x) / (a.y - b.y) * (yMax - b.y);
			b.y = yMax;
			Cohen_SutherLand(a, b);
		}
	}

	return;
}

void LiangYoudong_Barsky(Point& a, Point& b) {
	if (a.x == b.x) {
		if (a.y >= b.y)
			swap(a, b);

		if (a.x > xMax || b.x < xMin) {
			a = Point(-1, -1);
			b = Point(-1, -1);
		}
		else if (a.y > yMax || a.y < yMin) {
			a = Point(-1, -1);
			b = Point(-1, -1);
		}
		else {
			a.y = max(a.y, (double) yMin);
			b.y = min(b.y, (double) yMax);
		}

		return;
	}

	if (a.y == b.y) {
		if (a.x >= b.x)
			swap(a, b);

		if (a.x > xMax || b.x < xMin) {
			a = Point(-1, -1);
			b = Point(-1, -1);
		}
		else if (a.y > yMax || a.y < yMin) {
			a = Point(-1, -1);
			b = Point(-1, -1);
		}
		else {
			a.x = max(a.x, (double) xMin);
			b.x = min(b.x, (double) xMax);
		}

		return;
	}

	double t_xMin = (xMin - a.x) / (b.x - a.x),
	       t_xMax = (xMax - a.x) / (b.x - a.x),
	       t_yMin = (yMin - a.y) / (b.y - a.y),
	       t_yMax = (yMax - a.y) / (b.y - a.y);

	if (t_yMin > t_yMax)
		swap(t_yMin, t_yMax);
	if (t_xMin > t_xMax)
		swap(t_xMin, t_xMax);

	double t_Begin = max(0.0, max(t_xMin, t_yMin)),
	       t_End = min(1.0, min(t_xMax, t_yMax));

	if (t_Begin >= t_End) {
		a = Point(-1, -1);
		b = Point(-1, -1);
	}
	else {
		Point aTemp = a, bTemp = b;
		
		a.x = aTemp.x + t_Begin * (bTemp.x - aTemp.x);
		a.y = aTemp.y + t_Begin * (bTemp.y - aTemp.y);

		b.x = aTemp.x + t_End * (bTemp.x - aTemp.x);
		b.y = aTemp.y + t_End * (bTemp.y - aTemp.y);
	}

	return;
}

const int val[5][5] = {
	1, 2, 4, 2, 1,
	2, 5, 6, 5, 2,
	4, 6, 8, 6, 4,
	2, 5, 6, 5, 2,
	1, 2, 4, 2, 1,
}, SUM = 88;

Point p[2 * maxP];

bool inBlock[maxX * 5][maxY * 5];

struct Edge {
	double xCurr, yMin, yMax, delta = 0;
	bool alive = true;

	Edge(double yMin, double yMax, double xCurr, double delta) : 
		xCurr(xCurr), yMin(yMin), yMax(yMax), delta(delta) {
	}
	Edge() {
	}
} edge[4 * maxP];

bool operator < (const Edge& a, const Edge& b) {
	return a.xCurr < b.xCurr;
}

void scanningLineFill() {
	freopen("test_s.pgm", "w", stdout);
	cout << "P2" << endl;
	cout << yMax - yMin << " " << xMax - xMin << endl;
	cout << "255" << endl;

	for (int q =  0; q < maxP; q++) {
		Point a = p[2 * q], b = p[2 * q + 1];

		Cohen_SutherLand(a, b);

//		LiangYoudong_Barsky(a, b);

		if (a.y > b.y)
			swap(a, b);

		int edgeCount = 0;

		if (a.y == b.y) {
			edge[0] = Edge(a.y, a.y + LineW, a.x, 0);
			edge[1] = Edge(b.y, b.y + LineW, b.x, 0);

			edgeCount = 2;
		}
		else if (a.x == b.x) {
			edge[0] = Edge(a.y, b.y, a.x, 0);
			edge[1] = Edge(a.y, b.y, b.x + LineW, 0);

			edgeCount = 2;
		}
		else {
			edge[0] = Edge(a.y, b.y, a.x, (b.x - a.x) / (b.y - a.y));

			double deltaX = (b.y - a.y) / mod(b - a) * LineW,
			       deltaY = (a.x - b.x) / mod(b - a) * LineW;

			edge[1] = Edge(a.y + deltaY, b.y + deltaY, a.x + deltaX, (b.x - a.x) / (b.y - a.y));
			edge[2] = Edge(deltaY > 0 ? a.y : a.y + deltaY, deltaY > 0 ? a.y + deltaY : a.y, 
					deltaY > 0 ? a.x : a.x + deltaX, -1 * (b.y - a.y) / (b.x - a.x));
			edge[3] = Edge(deltaY > 0 ? b.y : b.y + deltaY, deltaY > 0 ? b.y + deltaY : b.y,
				       	deltaY > 0 ? b.x : b.x + deltaX, -1 * (b.y - a.y) / (b.x - a.x));

			edgeCount = 4;
		}
		
		sort(edge, edge + edgeCount, [] (Edge a, Edge b) {
				return a.yMin < b.yMin;
				});

		vector<Edge> aliveEdge;
		int edgeCurr = 0;

		for (int i = yMin; i < yMax; i++) 
			for (int k = 0; k < 5; k++) {
				double yCurr = i + 0.1 + k * 0.2;

				for (int j = 0; j < aliveEdge.size(); j++)
					if (aliveEdge[j].yMax <= yCurr)
						aliveEdge[j].alive = false;
		
				for (int j = 0; j < aliveEdge.size(); j++)
					aliveEdge[j].xCurr += 0.2 * aliveEdge[j].delta;

				while (edgeCurr < edgeCount && edge[edgeCurr].yMin <= yCurr) {
					Edge tempEdge = edge[edgeCurr];
					tempEdge.xCurr += (yCurr - edge[edgeCurr++].yMin) * tempEdge.delta;
					aliveEdge.push_back(tempEdge);
				}

				sort(aliveEdge.begin(), aliveEdge.end());

				if (aliveEdge.begin() != aliveEdge.end()) {
					int pointCurr = 0, inLine = 0, tempMin = xMax, tempMax = xMin;

					for (int j = 0; j < aliveEdge.size(); j++)
						if (aliveEdge[j].alive == true) {
							tempMin = min(tempMin, (int) floor(aliveEdge[j].xCurr) - 1);
							tempMax = max(tempMax, (int) ceil (aliveEdge[j].xCurr) + 1);
					}

					for (int j = tempMin; j < tempMax; j++)
						for (int l = 0; l < 5; l++) {
							double xCurr = j + 0.1 + l * 0.2;
							while (pointCurr < aliveEdge.size() && 
									aliveEdge[pointCurr].xCurr <= xCurr)
								if (aliveEdge[pointCurr++].alive == true)
									inLine ^= 1;
							inBlock[j * 5 + l][i * 5 + k] |= inLine;
						}
				}
			}
	}
	
	for (int i = xMin; i < xMax; i++)
		for (int j = yMin; j < yMax; j++) {
			int nCurr = 0;
			for (int k = 0; k < 5; k++)
				for (int l = 0; l < 5; l++)
					if (inBlock[i * 5 + k][j * 5 + l])
						nCurr += val[k][l];
			num[i][j] = 255 * nCurr / SUM;
		}

	for (int i = xMin; i < xMax; i++)
		for (int j = yMin; j < yMax; j++)
			cout << num[i][j] << " ";
}

int main() {
//	srand(time(NULL));

	for (int i = 0; i < 2 * maxP; i++) {
		int x = rand() % maxX, y = rand() % maxY;
		p[i] = Point(x, y);
	}

	scanningLineFill();

	return 0;
}
