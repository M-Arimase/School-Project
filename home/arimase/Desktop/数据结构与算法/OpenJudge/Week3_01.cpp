#include <iostream>
#include <cstring>
#include <cctype>

using namespace std;

char Str[100005];

int main() {
	int T; cin >> T;
	cin.get();

	while (T--) {
		cin.getline(Str, 100001);

		int n = strlen(Str);

		for (int i = 0; i < n; i++) {
			if (Str[i] >= 'a' && Str[i] <= 'z')
				Str[i] = 'a' + (Str[i] - 'a' + 1) % 26;
			if (Str[i] >= 'A' && Str[i] <= 'Z')
				Str[i] = 'A' + (Str[i] - 'A' + 1) % 26;
		}

		cout << Str << endl;
	}

	return 0;
}
