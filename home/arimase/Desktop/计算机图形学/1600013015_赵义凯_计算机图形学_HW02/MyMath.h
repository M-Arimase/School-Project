#pragma once
#include <math.h>
#include <iostream>

using std::cout;
using std::endl;

const float PI = 3.1415926f;
const float FLOAT_EPS = 2e-2f;

struct Vector2f {
	float x, y;

	Vector2f(float x = 0.0, float y = 0.0) : x(x), y(y) {
	}

	Vector2f operator * (const float lambda) {
		return Vector2f(x * lambda, y * lambda);
	}

	Vector2f operator + (const Vector2f & tempVector2f) {
		return Vector2f(x + tempVector2f.x, y + tempVector2f.y);
	}

	Vector2f operator - (const Vector2f & tempVector2f) {
		return Vector2f(x - tempVector2f.x, y - tempVector2f.y);
	}

	float Modulus() {
		return sqrt(x * x + y * y);
	}

	bool Between(const Vector2f & headVector2f, const Vector2f & tailVector2f) {
		if (x > headVector2f.x && x > tailVector2f.x || x < headVector2f.x && x < tailVector2f.x)
			return false;
		if (y > headVector2f.y && y > tailVector2f.y || y < headVector2f.y && y < tailVector2f.y)
			return false;

		if (abs((x - headVector2f.x) * (y - tailVector2f.y) - (y - headVector2f.y) * (x - tailVector2f.x)) > FLOAT_EPS)
			return false;
		return true;
	}
};