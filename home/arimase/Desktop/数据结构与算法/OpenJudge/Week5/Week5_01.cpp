#include <iostream>
#include <sstream>
#include <cstdio>

using namespace std;

const int MAXN = 1000000;

char BUF[MAXN];

int n, CNT, A0[MAXN], A1[MAXN], A2[MAXN];

void Rebuild(int l1, int r1, int l2, int r2) {
	if (l1 > r1 || l2 > r2)
		return;

	int mid;

	for (mid = l1; mid <= r1; mid++)
		if (A1[mid] == A2[r2])
			break;

	A0[CNT++] = A1[mid];

	Rebuild(l1, mid - 1, l2, l2 + mid - 1 - l1);
	Rebuild(mid + 1, r1, r2 + mid - r1, r2 - 1);
}

int main() {
	istringstream SS;

	{
		SS.clear();
		cin.getline(BUF, MAXN);
		SS.str(BUF);
		n = 0;
		while (SS >> A1[n++]);
	}

	{
		SS.clear();
		cin.getline(BUF, MAXN);
		SS.str(BUF);
		n = 0;
		while (SS >> A2[n++]);
	}

	n--;

	Rebuild(0, n - 1, 0, n - 1);

	for (int i = 0; i < n; i++)
		cout << A0[i] << " ";
	cout << endl;

	return 0;
}
