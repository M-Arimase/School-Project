#include <iostream>
#include <cmath>

using namespace std;

class Color {
	public:
		double red, green, blue;

		Color(double red = 0, int green = 0, int blue = 0) :
			red(red), green(green), blue(blue) {
			}

		friend ostream & operator << (ostream & out, Color temp) {
			out << temp.red << " " << temp.green << " " << temp.blue << " ";

			return out;
		}

		friend istream & operator >> (istream & in, Color & temp) {
			in >> temp.red >> temp.green >> temp.blue;

			return in;
		}

		Color operator / (const double alpha) {
			return Color(red / alpha, green / alpha, blue / alpha);
		}

		Color operator * (const double alpha) {
			return Color(red * alpha, green * alpha, blue * alpha);
		}

		Color operator + (const Color temp) {
			return Color(red + temp.red, green + temp.green, blue + temp.blue);
		}
};

class Scene {
	public:
		int maxX, maxY;

		Color **color;

		Scene(int maxX, int maxY) : maxX(maxX), maxY(maxY) {
			color = new Color* [maxX];

			for (int i = 0; i < maxX; i++)
				color[i] = new Color [maxY];
		}
};

class Point3D {
	public:
		double n, u, v;

		Point3D(double n = 0, double u = 0, double v = 0) : n(n), u(u), v(v) {
		}

		friend istream & operator >> (istream & in, Point3D & temp) {
			in >> temp.n >> temp.u >> temp.v;

			return in;
		}

		friend double operator * (Point3D a, Point3D b) {
			return a.n * b.n + a.u * b.u + a.v * b.v;
		}

		friend Point3D operator - (Point3D a, Point3D b) {
		       	return Point3D(a.n - b.n, a.u - b.u, a.v - b.v);
		}

		friend Point3D operator ^ (Point3D a, Point3D b) {
			return Point3D(a.u * b.v - a.v * b.u, a.v * b.n - a.n * b.v, a.n * b.u - a.u * b.n);
		}
};

class Point2D {
	public:
		double x, y;

		Point2D(double x = 0, double y = 0) : x(x), y(y) {
		}

		friend double operator * (Point2D a, Point2D b) {
			return a.x * b.x + a.y * b.y;
		}

		friend Point2D operator - (Point2D a, Point2D b) {
		       	return Point2D(a.x - b.x, a.y - b.y);
		}

		friend double operator ^ (Point2D a, Point2D b) {
			return a.x * b.y - a.y * b.x;
		}

		friend double mod(Point2D a) {
			return sqrt(a * a * 1.0);
		}

		friend double theta(Point2D a, Point2D b) {
			double csin = (a ^ b) / mod(a) / mod(b);
			double ccos = (a * b) / mod(a) / mod(b);
			return atan2(csin, ccos);
		}

		friend istream & operator >> (istream & in, Point2D & temp) {
			in >> temp.x >> temp.y;

			return in;
		}
};

class Edge {
	public:
		double xCurr, yMin, yMax, delta = 0;

		bool alive = true;

		friend bool operator < (const Edge& a, const Edge& b) {
			return a.xCurr < b.xCurr;
		}
};

class Polygon3D {
	public:
		int vertexCount;
		double nMin, nMax, uMin, uMax, vMin, vMax;

		Color color;

		Point3D *vertexSequence;

		Polygon3D() {
			vertexCount = 0;

			nMin = 0x7FFFFFFF;
			nMax = 0x80000000;

			uMin = 0x7FFFFFFF;
			uMax = 0x80000000;

			vMin = 0x7FFFFFFF;
			vMax = 0x80000000;
		}

		friend istream & operator >> (istream & in, Polygon3D & temp) {
			in >> temp.vertexCount;

			temp.vertexSequence = new Point3D[temp.vertexCount];

			for (int i = 0; i < temp.vertexCount; i++) {
				in >> temp.vertexSequence[i];

				if (temp.vertexSequence[i].n > temp.nMax)
					temp.nMax = temp.vertexSequence[i].n;
				if (temp.vertexSequence[i].n < temp.nMin)
					temp.nMin = temp.vertexSequence[i].n;

				if (temp.vertexSequence[i].u > temp.uMax)
					temp.uMax = temp.vertexSequence[i].u;
				if (temp.vertexSequence[i].u < temp.uMin)
					temp.uMin = temp.vertexSequence[i].u;

				if (temp.vertexSequence[i].v > temp.vMax)
					temp.vMax = temp.vertexSequence[i].v;
				if (temp.vertexSequence[i].v < temp.vMin)
					temp.vMin = temp.vertexSequence[i].v;
			}

			in >> temp.color;

			return in;
		}
	
		bool operator < (const Polygon3D & temp) {
			return nMin < temp.nMin;
		}

		double getN(Point2D temp) {
			Point3D a = vertexSequence[1] - vertexSequence[0],
				b = vertexSequence[2] - vertexSequence[1], c = a ^ b;

			double tempN;

			if (c.n == 0)
				tempN = vertexSequence[1].n;
			else
				tempN = (c.u * (vertexSequence[1].u - temp.x) + 
						c.v * (vertexSequence[1].v - temp.y)) / 
					c.n + vertexSequence[1].n;

			return tempN;
		}
};

class Polygon2D {
	public:
		int vertexCount;

		Color color;

		Point2D *vertexSequence;

		Polygon2D() {
			vertexCount = 0;

			vertexSequence = nullptr;
		}

		friend istream & operator >> (istream & in, Polygon2D & temp) {
			in >> temp.vertexCount;

			temp.vertexSequence = new Point2D[temp.vertexCount];

			for (int i = 0; i < temp.vertexCount; i++)
				in >> temp.vertexSequence[i];

			in >> temp.color;

			return in;
		}

		Polygon2D & operator = (const Polygon3D & temp) {
			vertexCount = temp.vertexCount;

			color = temp.color;
			vertexSequence = new Point2D[vertexCount];

			for (int i = 0; i < temp.vertexCount; i++) {
				vertexSequence[i].x = temp.vertexSequence[i].u;
				vertexSequence[i].y = temp.vertexSequence[i].v;
			}
		}


		bool Include(const Point2D & temp) const {
			double thetaAround = 0;

			for (int i = 0; i < vertexCount; i++) {
				thetaAround += theta(vertexSequence[i] - temp, 
						vertexSequence[(i + 1) % vertexCount] - temp);
			}

			if (fabs(thetaAround) < 1e-8)
				return false;
			else
				return true;
		}
}; 
