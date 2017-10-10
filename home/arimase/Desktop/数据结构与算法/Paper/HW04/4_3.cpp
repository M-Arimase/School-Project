#include <string>
#include <iostream>

using namespace std;

void ReverseString(string& A) {
	auto Swap = [&] (int l, int r) {
		for (int i = 0; i < (r - l) / 2; i++)
			swap(A[l + i], A[r - 1 - i]);
	};

	Swap(0, A.length());

	for (int i = 0, j = 0; j <= A.length(); j++)
		if (j == A.length() || A[j] == '.')
			Swap(i, j), i = j + 1;
}

int main() {
	string A;
	
	cin >> A;

	ReverseString(A);

	cout << A << endl;

	return 0;
}
