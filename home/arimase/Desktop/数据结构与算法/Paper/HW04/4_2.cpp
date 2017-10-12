#include <iostream>
#include <cstring>

using namespace std;

char STR[20];

int n, kmpNext[20];

void KMP() {
	kmpNext[0] = -1;

	for (int i = 0, j = -1; i < n; i++, j++) {
		while (j != -1 && STR[j] != STR[i])
			j = kmpNext[j];
		if (STR[i + 1] == STR[j + 1])
			kmpNext[i + 1] = kmpNext[j + 1];
		else
			kmpNext[i + 1] = j + 1;
	}
}

int main() {
	cin >> STR;

	n = strlen(STR);

	KMP();

	for (int i = 0; i <= n; i++)
		cout << kmpNext[i] << " ";
	cout << endl;

	return 0;
}
