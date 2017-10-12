#include <bits/stdc++.h>

using namespace std;

int n = 10;

int A[10] = {6, 5, 5, 4, 4, 4, 2, 2, 1, 0};

void Func(int *A, int & n) {
	if (n >= 1) {
		int ptr = 0;

		for (int i = 0; i < n; i++)
			if (i == 0 || A[i] != A[i - 1])
				A[ptr++] = A[i]; 
		
		n = ptr;
	}
}

int main() {
	Func(A, n);

	for (int i = 0; i < n; i++)
		cout << A[i] << " ";

	cout << endl;

	return 0;
}
