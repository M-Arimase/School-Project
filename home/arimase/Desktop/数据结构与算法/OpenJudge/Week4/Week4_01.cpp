#include <iostream>
#include <string>
#include <map>
#include <sstream>
#include <cstring>

using namespace std;

string baseNumber[100] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty", "", "", "", "", "", "", "", "", "", "thirty", "", "", "", "", "", "", "", "", "", "forty", "", "", "", "", "", "", "", "", "", "fifty", "", "", "", "", "", "", "", "", "", "sixty", "", "", "", "", "", "", "", "", "", "seventy", "", "", "", "", "", "", "", "", "", "eighty", "", "", "", "", "", "", "", "", "", "ninety", "", "", "", "", "", "", "", "", ""};

map<string, int> baseString;

void init() {
	for (int i = 0; i < 99; i++)
		baseString[baseNumber[i]] = i;
}

const int MAXN = 1000000;

char BUF0[MAXN], BUF1[MAXN];

int main() {
	init();

	while (cin.getline(BUF0, MAXN)) {
		if (strlen(BUF0) == 0)
			break;

		int ANS1 = 0, ANS2 = 0, NEGA = 1;

		istringstream ISS(BUF0);

		while (ISS >> BUF1) {
			string BUF2 = BUF1;

			if (BUF2 == "negative")
				NEGA = -NEGA;
			else if (BUF2 == "million") {
				ANS2 += ANS1 * 1000000;
				ANS1 = 0;
			}
			else if (BUF2 == "thousand") {
				ANS2 += ANS1 * 1000;
				ANS1 = 0;
			}
			else if (BUF2 == "hundred")
				ANS1 *= 100;
			else
				ANS1 += baseString[BUF2];
		}

		cout << NEGA * (ANS2 + ANS1) << endl;
	}
}
