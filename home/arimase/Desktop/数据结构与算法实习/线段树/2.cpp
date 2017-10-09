#include <cstdio>
#include <cstdlib>
#include <climits>

using namespace std;

const int MAXN = 5000000;

struct TreeNode {
	int totel;

	TreeNode *ls, *rs;
} node[MAXN], *tree[MAXN], *null;

int nodeTotel = 1;

TreeNode *treeInsert(TreeNode *prev, int l, int r, int val) {
	TreeNode *curr = &node[nodeTotel++];
	curr->ls = curr->rs = null;

	curr->totel = prev->totel + 1;

	if (l != r) {
		int mid = l + (r - l) / 2;

		if (val <= mid) {
			curr->ls = treeInsert(prev->ls, l, mid, val);
			curr->rs = prev->rs;
		}

		else {
			curr->ls = prev->ls;
			curr->rs = treeInsert(prev->rs, mid + 1, r, val);
		}
	}

	return curr;
}

int treeQuery(TreeNode *head, TreeNode *tail, int l, int r, int k) {
	int temp = tail->ls->totel - head->ls->totel,
	    mid = l + (r - l) / 2;

	if (l == r)
		return mid;

	if (k <= temp)
		return treeQuery(head->ls, tail->ls, l, mid, k);
	else
		return treeQuery(head->rs, tail->rs, mid + 1, r, k - temp);
}

void init() {
	null = &node[0];

	null->ls = null->rs = null;
	null->totel = 0;

	tree[0] = null;
}

const int INTMAX = 1000000000;

int main() {
	init();

	int n, m;
	scanf("%d %d", &n, &m);

	for (int i = 1; i <= n; i++) {
		int v;
		scanf("%d", &v);

		tree[i] = treeInsert(tree[i - 1], -INTMAX, INTMAX, v);
	}

	for (int i = 1; i <= m; i++) {
		int l, r, k, ans;
		scanf("%d%d%d", &l, &r, &k);

		ans = treeQuery(tree[l - 1], tree[r], -INTMAX, INTMAX, k);
		printf("%d\n", ans);
	}

	return 0;
}
