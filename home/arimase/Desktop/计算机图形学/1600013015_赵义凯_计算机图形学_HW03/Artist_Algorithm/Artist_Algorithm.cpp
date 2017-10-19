#include <iostream>
#include "Fill.h"

using namespace std;

const int maxX = 600, maxY = 800, maxP = 1000;

Scene scene(maxX, maxY);

void InitPPM() {
	freopen("test.ppm", "w", stdout);

	cout << "P3" << endl;
	cout << maxY << " " << maxX << endl;
	cout << "255" << endl;

	Fill::SetSize(maxX, maxY);
}

void Render() {
	for (int i = 0; i < maxX; i++)
		for (int j = 0; j < maxY; j++)
			cout << scene.color[i][j];
}

Polygon3D polygon3D[maxP];

Polygon2D polygon2D[maxP];

int polygonCount;

void ReSort(Polygon3D * begin, Polygon3D * end) {
	if (end - begin == 1)
		return;

	sort(begin, end);

beforeLoop:
	for (auto ptr = begin + 1; ptr != end; ptr++)
		if (ptr -> nMin < begin -> nMax) {
			if (begin -> SimpleInterSect(*ptr) == false)
				continue;

			if (ptr -> Locate(*begin) == 1)
				continue;

			if (begin -> Locate(*ptr) == -1)
				continue;

			if (begin -> InterSect(*ptr) != 1)
				continue;
			else {
				swap(*begin, *ptr);
				goto beforeLoop;
			}
		}

	sort(begin + 1, end);
}


void ScanPolygon() {
	freopen("sample.in", "r", stdin);

	cin >> polygonCount;

	for (int i = 0; i < polygonCount; i++)
		cin >> polygon3D[i];

	ReSort(polygon3D, polygon3D + polygonCount);

	for (int i = 0; i < polygonCount; i++) {
		polygon2D[i] = polygon3D[i];

		Fill::ScanningLineFill(scene, polygon2D[i]);
	}
}

int main() {
	InitPPM();

	ScanPolygon();

	Render();

	Render();

	return 0;
}
