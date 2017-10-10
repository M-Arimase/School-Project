#include <iostream>
#include <string>

using namespace std;

void DeleteChar(string& A) {
	int i = 0;

	for (int j = 0; j < A.length(); j++) {
		if (A[j] == 'b')
			continue;
		if (j != A.length() - 1 && A.substr(j, 2) == "ac")
			continue;
		if (j != 0 && A.substr(j - 1, 2) == "ac")
			continue;

		A[i++] = A[j];
	}

	A.resize(i);
}

int main() {
	string A;

	cin >> A;

	DeleteChar(A);

	cout << A << endl;

	return 0;
}
