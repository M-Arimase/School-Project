#include <bits/stdc++.h>

using namespace std;

typedef int ELEM;

struct ListNode {
	ELEM data;
	ListNode *next;

	ListNode (ELEM data, ListNode *next) : data(data), next(next) {
	}
};

typedef ListNode * ListPtr;

void Func(ListPtr head_A, ListPtr tail_A, ListPtr head_B, ListPtr tail_B) {
	ListPtr head_C = NULL, tail_C = NULL;

	ListPtr curr_A = head_A, curr_B = head_B;

	while (curr_A != NULL && curr_B != NULL) {
		if (curr_A -> data == curr_B -> data) {
			ELEM data = curr_A -> data;

			if (head_C == NULL)
				head_C = tail_C = new ListNode(data, NULL);
			else if (tail_C -> data != data) {
				tail_C -> next = new ListNode(data, NULL);
				tail_C = tail_C -> next;
			}

			curr_A = curr_A -> next;
			curr_B = curr_B -> next;
		}
		else if (curr_A -> data < curr_B -> data)
			curr_A = curr_A -> next;
		else if (curr_B -> data < curr_A -> data)
			curr_B = curr_B -> next;
	}
}

int main() {
	return 0;
}
