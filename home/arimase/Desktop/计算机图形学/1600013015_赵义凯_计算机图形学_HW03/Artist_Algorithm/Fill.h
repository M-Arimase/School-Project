#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>

#include "Data_Structure.h"

using namespace std;

namespace Fill {

	const int val[5][5] = {
		1, 2, 4, 2, 1, 2, 5, 6, 5, 2, 4, 6, 8, 6, 4, 2, 5, 6, 5, 2, 1, 2, 4, 2, 1,
	}, SUM = 88;

	const double eps = 1e-6, Pi = 4 * atan(1);

	int maxX, maxY;

	void SetSize(int x, int y) {
		maxX = x;
		maxY = y;
	}

	void ScanningLineFill(Scene scene, Polygon2D polygon) {
		int maxP = polygon.vertexCount;

		Point2D p[maxP];

		Edge edge[maxP];

		bool **inBlock;

		inBlock = new bool* [maxX * 5];
		for (int i = 0; i < maxX * 5; i++)
			inBlock[i] = new bool [maxY * 5];

		for (int i = 0; i < maxP; i++)
			p[i] = polygon.vertexSequence[i];

		for (int i = 0; i < maxP; i++) {
			Point2D a = p[i], b = p[(i + 1) % maxP];

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

		sort(edge, edge + maxP, [] (Edge a, Edge b) { return a.yMin < b.yMin; });

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

				scene.color[i][j] = polygon.color * nCurr / SUM + 
					scene.color[i][j] * (SUM - nCurr) / SUM;
			}
	}
} 
