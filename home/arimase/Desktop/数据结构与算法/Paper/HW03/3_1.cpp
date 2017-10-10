#include <stack>
#include <cstdio>

using namespace std;

void PUSH(stack<int>& ST, int x) {
	ST.push(x);
}

void POP(stack<int>& ST, int& x) {
	x = ST.top();
	ST.pop();
}

bool Sempty(stack<int>& ST) {
	return ST.empty();
}

struct Queue{
	stack<int> S1, S2;

	void enqueue(int x) {
		PUSH(S1, x);
	}

	void dequeue(int& x) {
		if (Sempty(S2))
			while(!Sempty(S1)) {
				int y;
				POP(S1, y);
				PUSH(S2, y);
			}

		POP(S2, x);
	}

	bool queue_empty() {
		return Sempty(S1) && Sempty(S2);
	}
};

int main() {
	return 0;
}
