#include <iostream>
#include <cmath>

using namespace std;

int Test(int x) {
	int y = log(x);

	return y;
}


int main() {
	cout << Test(120) << endl;

	return 0;
}
