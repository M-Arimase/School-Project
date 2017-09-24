#include <GL/freeglut.h>
#include <iostream>
#include <algorithm>
#include "MyMath.h"
#include <vector>

using namespace std;

#define MY_CURVE_NONE 0x0000
#define MY_CURVE_BEZIER 0x0001
#define MY_CURVE_BSPLINE 0x0002
#define MY_CURVE_LINE 0x0004
#define MY_CURVE_POINT 0x0008

const float FLOAT_STEP = 1e-4f;

const int MAXN = 0x1000;
const int INT_EPS = 10;

int currentWidth = 640, currentHeight = 640, curveSelect = MY_CURVE_NONE, BsplineOrder = 4;

vector<Vector2f> vertexArray;
Vector2f *controlVertex;

float BsplineT[MAXN];

void DrawBezier(float lambda) {
	vector<Vector2f> drawVertex(vertexArray);

	for (int i = 1; i < drawVertex.size(); i++)
		for (int j = 0; j < drawVertex.size() - i; j++)
			drawVertex[j] = drawVertex[j] * (1 - lambda) + drawVertex[j + 1] * lambda;
	
	glVertex3f(drawVertex[0].x, drawVertex[0].y, 0.0);
}

void DrawBspline(int curr, float lambda) {
	vector<Vector2f> drawVertex(vertexArray);

	for (int i = 1; i < BsplineOrder; i++)
		for (int j = curr; j > curr - BsplineOrder + i; j--) {
			float realLambda = (lambda - BsplineT[j]) / (BsplineT[j + BsplineOrder - i] - BsplineT[j]);
			drawVertex[j] = drawVertex[j] * realLambda + drawVertex[j - 1] * (1 - realLambda);
		}
	
	glVertex3f(drawVertex[curr].x, drawVertex[curr].y, 0.0);
}

void RenderScene() {
	glClearColor(0.0, 0.0, 0.0, 0.0);

	glClear(GL_COLOR_BUFFER_BIT);

	glPointSize(7.0f);
	glLineWidth(1.0f);

	if (curveSelect & MY_CURVE_BEZIER && vertexArray.size() >= 1) {
		glColor3f(1.0, 0.0, 0.5);

		glBegin(GL_LINE_STRIP);
		for (float lambda = 0.0; lambda <= 1.0; lambda += FLOAT_STEP)
			DrawBezier(lambda);
		glEnd();
	}

	if (curveSelect & MY_CURVE_BSPLINE && vertexArray.size() >= BsplineOrder) {
		glColor3f(1.0, 0.5, 0.0);

		glBegin(GL_LINE_STRIP);
		for (int i = BsplineOrder - 1; i < vertexArray.size(); i++)
			for (float lambda = BsplineT[i]; lambda <= BsplineT[i + 1]; lambda += FLOAT_STEP)
				DrawBspline(i, lambda);
		glEnd();
	}

	if (curveSelect & MY_CURVE_LINE && vertexArray.size() >= 2) {
		glColor3f(0.0, 1.0, 1.0);

		glBegin(GL_LINE_STRIP);
		for (auto vertex : vertexArray)
			glVertex3f(vertex.x, vertex.y, 0.0);
		glEnd();
	}

	if (curveSelect & MY_CURVE_POINT && vertexArray.size() >= 1) {
		glColor3f(1.0, 0.0, 0.0);

		glBegin(GL_POINTS);
		for (auto vertex : vertexArray)
			glVertex3f(vertex.x, vertex.y, 0.0);
		glEnd();
	}

	glutSwapBuffers();
}

void CreateMenu(int curveType) {
	curveSelect ^= curveType;
}

void MyCurveInit(int curveType) {
	for (int i = 0; i < MAXN; BsplineT[i++] = 1.0f * i);
	curveSelect = curveType;

	glutCreateMenu(CreateMenu);
	
	glutAddMenuEntry("   Draw     Bezier   ", MY_CURVE_BEZIER);
	glutAddMenuEntry("   Draw   B-Spline   ", MY_CURVE_BSPLINE);
	glutAddMenuEntry("   Draw       Line   ", MY_CURVE_LINE);
	glutAddMenuEntry("   Draw      Point   ", MY_CURVE_POINT);

	glutAttachMenu(GLUT_RIGHT_BUTTON);
}

void ReshapeWindow(int w, int h) {
	currentWidth = w, currentHeight = h;

	glViewport(0, 0, w, h);

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();

	gluPerspective(2 * atan(h / (640 * 3.0)) / PI * 180, 1.0 * w / h, 0.5, 18);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	gluLookAt(0.0, 0.0, 3.0, 0.0, 0.0, 0.0, 0.0f, 1.0f, 0.0);
}

void MousePress(int button, int state, int x, int y) {
	x = max(min(x, currentWidth - INT_EPS), INT_EPS);
	y = max(min(y, currentHeight - INT_EPS), INT_EPS);

	float xFloat = (x - currentWidth * 0.5f) / 320;
	float yFloat = (currentHeight * 0.5f - y) / 320;

	Vector2f currVertex = Vector2f(xFloat, yFloat);

	for (auto vertex = vertexArray.begin(); vertex != vertexArray.end(); vertex++) {
		if ((*vertex - currVertex).Modulus() <= FLOAT_EPS) {
			if (button == GLUT_LEFT_BUTTON && state == GLUT_DOWN)
				controlVertex = &(*vertex);
			if (button == GLUT_LEFT_BUTTON && state == GLUT_UP)
				controlVertex = nullptr;
			return;
		}

		if (vertex != vertexArray.begin() && currVertex.Between(*(vertex - 1), *vertex)) {
			if (button == GLUT_LEFT_BUTTON && state == GLUT_DOWN)
				vertexArray.insert(vertex, currVertex);
			return;
		}
	}

	if (button == GLUT_LEFT_BUTTON && state == GLUT_DOWN)
		vertexArray.push_back(currVertex);
}

void KeyBoardPress(unsigned char key, int x, int y) {
	x = max(min(x, currentWidth - INT_EPS), INT_EPS);
	y = max(min(y, currentHeight - INT_EPS), INT_EPS);

	float xFloat = (x - currentWidth * 0.5f) / 320;
	float yFloat = (currentHeight * 0.5f - y) / 320;

	Vector2f currVertex = Vector2f(xFloat, yFloat);

	for (auto vertex = vertexArray.begin(); vertex != vertexArray.end(); vertex++) {
		if ((*vertex - currVertex).Modulus() <= FLOAT_EPS) {
			if (key == '\b')
				vertexArray.erase(vertex);
			return;
		}
	}
}

void MouseMove(int x, int y) {
	x = max(min(x, currentWidth - INT_EPS), INT_EPS);
	y = max(min(y, currentHeight - INT_EPS), INT_EPS);

	float xFloat = (x - currentWidth * 0.5f) / 320;
	float yFloat = (currentHeight * 0.5f - y) / 320;

	Vector2f currVertex = Vector2f(xFloat, yFloat);

	if (controlVertex != nullptr)
		*controlVertex = currVertex;
}

int main(int argc, char** argv) {
	glutInit(&argc, argv);

	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA);

	glutInitWindowPosition(200, 300);

	glutInitWindowSize(640, 640);

	glutCreateWindow("OpenGL");

	glEnable(GL_POINT_SMOOTH);

	glEnable(GL_LINE_SMOOTH);
	
	glutDisplayFunc(RenderScene);

	glutIdleFunc(RenderScene);

	glutReshapeFunc(ReshapeWindow);

	glutMouseFunc(MousePress);

	glutMotionFunc(MouseMove);

	glutKeyboardFunc(KeyBoardPress);

	MyCurveInit(MY_CURVE_BEZIER | MY_CURVE_BSPLINE | MY_CURVE_LINE | MY_CURVE_POINT);

	glutMainLoop();
}