#include <iostream>
#include <string>

using namespace std;

string Str;

int Stack_OP[1000005], Stack_NU[1000005];

int Order(char x) {
	if (x == '(')
		return 0;
	if (x == '+' || x == '-')
		return 1;
	if (x == '*' || x == '/')
		return 2;

}

int Opera(int y, int x, char s) {
	if (s == '+')
		return x + y;
	if (s == '-')
		return x - y;
	if (s == '*')
		return x * y;
	if (s == '/')
		return x / y;
}

int main() {
	int T; cin >> T;

	while (T--) {
		cin >> Str;

		Str = "(" + Str + ")";

		int n = Str.length();

		int top_OP = 0;
		int top_NU = 0;

		for (int i = 0; i < n; i++) {
			if (Str[i] >= '0' && Str[i] <= '9') {
				int num = 0;

				while (Str[i] >= '0' && Str[i] <= '9') {
					num = num * 10 + Str[i] - '0';
					i = i + 1;
				}

				Stack_NU[++top_NU] = num;
				i = i - 1;

				continue;
			}

			if (Str[i] == '(') {
				Stack_OP[++top_OP] = '(';
				continue;
			}
			
			if (Str[i] == ')') {
				char op;

				do {
					op = Stack_OP[top_OP--];

					if (op != '(') {
						int fi = Stack_NU[top_NU--];
						int se = Stack_NU[top_NU--];
						int re = Opera(fi, se, op);
						Stack_NU[++top_NU] = re;
					}
				} while (op != '(');

				continue;
			}

			{
				while (Order(Str[i]) <= Order(Stack_OP[top_OP])) {
					int fi  = Stack_NU[top_NU--];
					int se  = Stack_NU[top_NU--];
					char op = Stack_OP[top_OP--];
					int re  = Opera(fi, se, op);

					Stack_NU[++top_NU] = re;
				}

				Stack_OP[++top_OP] = Str[i];
			}
		}

		cout << Stack_NU[top_NU] << endl;
	}

	return 0;
}
