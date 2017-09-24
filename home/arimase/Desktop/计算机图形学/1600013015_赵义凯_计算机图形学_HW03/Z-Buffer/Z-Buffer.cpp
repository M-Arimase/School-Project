#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>

#include "Data_Structure.h"

using namespace std;

const int val[5][5] = {
	1, 2, 4, 2, 1, 2, 5, 6, 5, 2, 4, 6, 8, 6, 4, 2, 5, 6, 5, 2, 1, 2, 4, 2, 1,
}, SUM = 88;

const int maxX = 600, maxY = 800, maxP = 10;

Scene scene(maxX, maxY);

Polygon3D polygon3D[maxP];
Polygon2D polygon2D[maxP];

int polygonCount, zBuffer[maxX * 5][maxY * 5];
Color color[maxX * 5][maxY * 5];

void Z_Buffer_Algorithm() {
	for (int p = 0; p < polygonCount; p++)
		for (int i = 0; i < maxY; i++) 
			for (int k = 0; k < 5; k++) {
				double yCurr = i + 0.1 + k * 0.2;

				for (int j = 0; j < maxX; j++)
					for (int l = 0; l < 5; l++) {
						double xCurr = j + 0.1 + l * 0.2;

						Point2D currPoint(xCurr, yCurr);

						if (polygon2D[p].Include(currPoint)) {
							double nCurr = polygon3D[p].getN(currPoint);

							if (nCurr > zBuffer[j * 5 + l][i * 5 + k]) {
								zBuffer[j * 5 + l][i * 5 + k] = nCurr;
								color[j * 5 + l][i * 5 + k] = polygon3D[p].color;
							}

						}
					}
			}

	for (int i = 0; i < maxX; i++)
		for (int j = 0; j < maxY; j++) {
			Color currColor;

			for (int k = 0; k < 5; k++)
				for (int l = 0; l < 5; l++) 
					currColor = currColor + color[i * 5 + k][j * 5 + l] * val[k][l];
			scene.color[i][j] = currColor / SUM;

			scene.color[i][j].red = round(scene.color[i][j].red);
			scene.color[i][j].green = round(scene.color[i][j].green);
			scene.color[i][j].blue = round(scene.color[i][j].blue);
		}
}

void InitPPM() {
	freopen("test.ppm", "w", stdout);

	cout << "P3" << endl;
	cout << maxY << " " << maxX << endl;
	cout << "255" << endl;
}

void Render() {
	for (int i = 0; i < maxX; i++)
		for (int j = 0; j < maxY; j++)
			cout << scene.color[i][j];
}

void ScanPolygon() {
	freopen("sample.in", "r", stdin);

	cin >> polygonCount;

	for (int i = 0; i < polygonCount; i++) {
		cin >> polygon3D[i];
		polygon2D[i] = polygon3D[i];
	}
}

int main() {
	InitPPM();

	ScanPolygon();

	Z_Buffer_Algorithm();

	Render();

	return 0;
}

