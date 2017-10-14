#include <iostream>
#include <string>

using namespace std;

const int MAXN = 1000000;

string STR[MAXN];

int CNT, ls[MAXN], rs[MAXN], deep[MAXN];

char v[MAXN];

void BUILD() {
	int x = CNT;
	v[x] = STR[x][deep[x]];

	if (v[x] == '*')
		return;

	if (deep[x] + 1 != deep[CNT + 1])
		ls[x] = rs[x] = -1;
	else {
		ls[x] = CNT + 1;
		++CNT, BUILD();

		if (deep[x] + 1 != deep[CNT + 1])
			rs[x] = -1;
		else {
			rs[x] = CNT + 1;
			++CNT, BUILD();
		}

	}
}

void A(int x) {
	if (x == -1 || v[x] == '*')
		return;

	cout << v[x];
	A(ls[x]);
	A(rs[x]);
}

void B(int x) {
	if (x == -1 || v[x] == '*')
		return;

	B(ls[x]);
	cout << v[x];
	B(rs[x]);
}

void C(int x) {
	if (x == -1 || v[x] == '*')
		return;

	C(ls[x]);
	C(rs[x]);
	cout << v[x];
}

void MAIN() {
	CNT = 0;
	while (cin >> STR[CNT++])
		if (STR[CNT - 1] == "0")
			break;

	for (int i = 0; i < CNT; i++)
		for (deep[i] = 0; STR[i][deep[i]] == '-'; deep[i]++);

	CNT = 0;
	BUILD();

	A(0); cout << endl;
	C(0); cout << endl;
	B(0); cout << endl;
}

int main() {
	int CASE; cin >> CASE;

	while (CASE--) {
		MAIN();
		if (CASE)
			cout << endl;
	}

	return 0;
}
