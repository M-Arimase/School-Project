#include <bits/stdc++.h>
#include "MyMath.h"

using namespace std;

const int MAX_SIZE = 2560;
const int MAX_SHPERE = 4;
const int MAX_LIGHT = 2;

const Vector3f eye(0.0f, 0.0f, 2.0f);

Vector3f color[MAX_SIZE][MAX_SIZE];

void InitPPM() {
	freopen("test.ppm", "w", stdout);

	cout << "P3" << endl;
	cout << MAX_SIZE << " " << MAX_SIZE << endl;
	cout << 255 << endl;
}

void BuildPPM() {
	for (int i = MAX_SIZE - 1; i >= 0; i--)
		for (int j = 0; j < MAX_SIZE; j++) {
			color[j][i].x = floor(min(color[j][i].x, 1.0f) * 255);
			color[j][i].y = floor(min(color[j][i].y, 1.0f) * 255);
			color[j][i].z = floor(min(color[j][i].z, 1.0f) * 255);

			cout << color[j][i] << " ";
		}
}

Sphere sphere[MAX_SHPERE];

Vector3f light[MAX_LIGHT];

void SceneInit() {
	sphere[0] = Sphere(Vector3f(0.8f, 0.3f, -1.0f), 0.3);

	sphere[1] = Sphere(Vector3f(0.8f, -0.4f, -1.0f), 0.2);

	sphere[2] = Sphere(Vector3f(-0.7f, 0.0f, -3.0f), 1.2);

	sphere[3] = Sphere(Vector3f(-0.9f, -0.6f, -1.0f), 0.4);

	light[0] = Vector3f(2.5f, 0.0f, 1.0f);

	light[1] = Vector3f(0.0f, 2.5f, 1.0f);
}

Point Cross(Ray ray) {
	vector<Point> cross;

	for (int i = 0; i < MAX_SHPERE; i++) {
		Sphere & sph = sphere[i];

		Vector3f middle = ray.dir * ((sph.center - ray.start) * ray.dir) + ray.start;

		float dis = (sph.center - middle).Modulus();

		if (dis >= sph.radius)
			continue;
		else {
			Vector3f delta = ray.dir * sqrt(pow(sph.radius, 2.0) - pow(dis, 2.0));

			if ((middle - delta - sph.center) * ray.dir < FLOAT_EPS)
				cross.push_back(Point(middle - delta, ((middle - delta) - sph.center).Unitization()));
			else
				cross.push_back(Point(middle - delta, (sph.center - (middle - delta)).Unitization()));

			if ((middle + delta - sph.center) * ray.dir < FLOAT_EPS)
				cross.push_back(Point(middle + delta, ((middle + delta) - sph.center).Unitization()));
			else
				cross.push_back(Point(middle + delta, (sph.center - (middle + delta)).Unitization()));
		}
	}

	sort(cross.begin(), cross.end(), [=] (auto & a, auto & b) {
			return (a.position - ray.start) * ray.dir < (b.position - ray.start) * ray.dir; });

	for (auto & tempPoint : cross)
		if ((tempPoint.position - ray.start) * ray.dir > FLOAT_EPS)
			return tempPoint;

	return Point(Vector3f(0.0, 0.0, 1.0), Vector3f());
}

Vector3f NaiveRay(Point cross) {
	const float IA = 0.4;
	const float IP = 1.0;
	const Vector3f LIGHT(0.9f, 0.9f, 1.0f);

	const float KA = 0.4;
	const float KD = 0.2;
	const float KS = 0.2;

	float lambda = IA * KA;

	for (int i = 0; i < MAX_LIGHT; i++) {
		Ray ray(light[i], (cross.position - light[i]).Unitization());

		if (Cross(ray) != cross) 
			continue;

		Vector3f L = (light[i] - cross.position).Unitization();
		Vector3f N = cross.normal;
		Vector3f H = (L + (eye - cross.position).Unitization()).Unitization();

		lambda += IP * (KD * (L * N) + KS * pow(H * N, 8.0));
	}

	return LIGHT * lambda;
}

Ray FuncRay_S(Ray ray, Point cross) {
	Vector3f dir = ray.dir - cross.normal * (ray.dir * cross.normal) * 2.0;
	return Ray(cross.position, dir);
}

Ray FuncRay_T(Ray ray, Point cross) {
	Vector3f dir = ray.dir;
	return Ray(cross.position, dir);
}

void RayTracing(Ray ray, float weight, Vector3f & color) {
	const float MIN_WEIGHT = 0.01;
	const float WS = 0.5, KS = 0.2;
	const float WT = 0.5, KT = 0.4;

	if (weight < MIN_WEIGHT)
		color = Vector3f();
	else {
		Point cross = Cross(ray);

		if (cross.position.z > FLOAT_EPS)
			color = Vector3f();
		else {
			Ray rayS = FuncRay_S(ray, cross);
			Ray rayT = FuncRay_T(ray, cross);

			Vector3f IL = NaiveRay(cross), IS, IT;
			
			RayTracing(rayS, weight * WS, IS);
			RayTracing(rayT, weight * WT, IT);

			color = IL + IS * KS + IT * KT;
		}
	}
}

void Render() {

	for (int i = 0; i < MAX_SIZE; i++)
		for (int j = 0; j < MAX_SIZE; j++) {
			float x = (i - MAX_SIZE * 0.5) / (MAX_SIZE * 0.5);
			float y = (j - MAX_SIZE * 0.5) / (MAX_SIZE * 0.5);

			Vector3f position(x, y, 0.0);

			Ray ray(eye, (position - eye).Unitization());

			RayTracing(ray, 1.0f, color[i][j]);
		}
}

int main() {
	InitPPM();

	SceneInit();

	Render();

	BuildPPM();

	return 0;
}
