#include <iostream>
#include <string>
#include <cstring>

using namespace std;

const int MAXN = 1005;

int n, t1, t2, v[MAXN], s1[MAXN], s2[MAXN];

string str;

int order(char x) {
	if (x == '(')
		return -1;
	if (x == '+' || x == '-')
		return 0;
	if (x == '*' || x == '/')
		return 1;
}

int CNT, ls[MAXN], rs[MAXN], pos[MAXN], de[MAXN],
    maxD, maxW[MAXN], p[MAXN][MAXN];

void Build(int y, int z) {
	pos[CNT] = y, de[CNT] = z;

	maxD = max(maxD, z);

	if (s2[CNT] >= 'a' && s2[CNT] <= 'z')
		ls[CNT] = rs[CNT] = -1;
	else {
		int x = CNT;
		rs[x] = --CNT, Build(2 * y + 1, z + 1);
		ls[x] = --CNT, Build(2 * y + 0, z + 1);
	}
}

void Print (int u, int off) {
	p[2 * de[u]][off + pos[u] * (2 << maxD - de[u])] = s2[u];

	maxW[2 * de[u]] = max(maxW[2 * de[u]], off + pos[u] * (2 << maxD - de[u]));

	if (s2[u] >= 'a' && s2[u] <= 'z')
		return;
	else {
		p[2 * de[u] + 1][off + 1 + pos[u] * (2 << maxD - de[u])] = '\\';
		p[2 * de[u] + 1][off - 1 + pos[u] * (2 << maxD - de[u])] = '/';
		Print(ls[u], off - (1 << maxD - de[u] - 1));
		Print(rs[u], off - (1 << maxD - de[u] - 1));
	}
}

int Cal(int u) { 
	if (s2[u] >= 'a' && s2[u] <= 'z')
		return v[s2[u]];
	int x = Cal(ls[u]), y = Cal(rs[u]);

	switch (s2[u]) {
		case '+':
			return x + y;
		case '-':
			return x - y;
		case '*':
			return x * y;
		case '/':
			return x / y;
	}
}

int main() {
	cin >> str;
	str = '(' + str + ')';
	n = str.length();

	for (int i = 0; i < n; i++) {
		if (str[i] >= 'a' && str[i] <= 'z')
			s2[t2++] = str[i];
		else if (str[i] == '(') 
			s1[t1++] = str[i];
		else if (str[i] == ')') {
			while (s1[t1 - 1] != '(')
				s2[t2++] = s1[--t1];
			t1--;
		}
		else {
			while (t1 && order(s1[t1 - 1]) >= order(str[i]))
				s2[t2++] = s1[--t1];
			s1[t1++] = str[i];
		}
	}

	for (int i = 0; i < t2; i++)
		cout << (char) s2[i];
	cout << endl;

	CNT = t2 - 1, Build(0, 0);

	memset(p, ' ', sizeof p);
	Print(t2 - 1, (1 << maxD) - 1);

	for (int i = 0; i <= 2 * maxD; i++) {
		for (int j = 0; j <= (i % 2 ? maxW[i - 1] + 1 : maxW[i]); j++)
			cout << (char) p[i][j];
		cout << endl;
	}

	int m;
	cin >> m;

	for (int i = 0; i < m; i++) {
		char s[10];
		cin >> s;
		int x;
		cin >> x;

		v[s[0]] = x;
	}
	cout << Cal(t2 - 1) << endl;

	return 0;
}
