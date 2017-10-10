#include <cstdio>
#include <string>
#include <iostream>

using namespace std;

bool JudgePalindrome(string STR) {
	bool FLAG = true;

	for (int i = 0; i < STR.length(); i++) 
		if (STR[i] != STR[STR.length() - i - 1])
			FLAG = false;

	return FLAG;
}

int main() {
	string STR;

	cin >> STR;

	cout << JudgePalindrome(STR) << endl;

	return 0;
}
