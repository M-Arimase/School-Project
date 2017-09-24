#include <math.h>
#include <iostream>

using namespace std;

const float PI = 3.1415926f;
const float FLOAT_EPS = 1e-4;

class Vector3f {
public:
	float x, y, z;

	Vector3f(float x = 0.0, float y = 0.0, float z = 0.0)
		: x(x), y(y), z(z) {
	}

	Vector3f operator * (const float lambda) const {
		return Vector3f(x * lambda, y * lambda, z * lambda);
	}

	Vector3f operator + (const Vector3f & tempVector3f) const {
		return Vector3f(x + tempVector3f.x, y + tempVector3f.y,
			z + tempVector3f.z);
	}
	
	Vector3f operator - (const Vector3f & tempVector3f) const {
		return Vector3f(x - tempVector3f.x, y - tempVector3f.y,
			z - tempVector3f.z);
	}

	Vector3f operator ^ (const Vector3f & tempVector3f) const {
		return Vector3f(y * tempVector3f.z - z * tempVector3f.y,
			z * tempVector3f.x - x * tempVector3f.z,
			x * tempVector3f.y - y * tempVector3f.x);
	}

	float operator * (const Vector3f & tempVector3f) const {
		return x * tempVector3f.x + y * tempVector3f.y + 
			z * tempVector3f.z;
	}

	bool operator == (const Vector3f & tempVector3f) {
		if (fabs(x - tempVector3f.x) > FLOAT_EPS)
			return false;

		if (fabs(y - tempVector3f.y) > FLOAT_EPS)
			return false;

		if (fabs(z - tempVector3f.z) > FLOAT_EPS)
			return false;

		return true;

	}

	Vector3f & operator = (const Vector3f & tempVector3f) {
		x = tempVector3f.x;
		y = tempVector3f.y;
		z = tempVector3f.z;

		return (*this);
	}

	Vector3f(const Vector3f & tempVector3f) {
		x = tempVector3f.x;
		y = tempVector3f.y;
		z = tempVector3f.z;
	}

	~Vector3f() {
	}

	float Modulus() {
		return sqrt(x * x + y * y + z * z);
	}

	Vector3f & Unitization() {
		float modulus = Modulus();
		x /= modulus;
		y /= modulus;
		z /= modulus;

		return (*this);
	}

	friend ostream & operator << (ostream & out, const Vector3f & vec) {
		return out << vec.x << " " << vec.y << " " << vec.z;
	}
};

class Sphere {
public:
	Vector3f center;

	float radius;

	Sphere(Vector3f center = Vector3f(), float radius = 0.0)
		: center(center), radius(radius) {
	}
};

class Ray {
public:
	Vector3f start, dir;

	Ray(Vector3f start = Vector3f(), Vector3f dir = Vector3f())
	       	: start(start), dir(dir) {
	}
};

class Point {
public:
	Vector3f position, normal;

	Point(Vector3f position = Vector3f(), Vector3f normal = Vector3f())
	       	: position(position), normal(normal) {
	}

	bool operator != (const Point & tempPoint) {
		return (position == tempPoint.position) == false;
	}
};

float RandomF(float _min, float _max) {
	return 1.0f * rand() / RAND_MAX * (_max - _min) + _min;
}
