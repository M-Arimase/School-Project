#include <cstdio>
#include <cstdlib>

using namespace std;

const int MAXN = 5000000;

typedef long long LL;

int nodeTotel = 1, val[MAXN];

struct TreeNode{
	LL sum, add;
       	int l, r;
	TreeNode *ls, *rs;

	TreeNode() {
		sum = add = 0;
	}

	void update() {
		sum = ls->sum + rs->sum;
		sum = sum + (r - l + 1) * add;
	}

	void download() {
		ls->add += add;
		rs->add += add;
	       	ls->sum += (ls->r - ls->l + 1) * add;
	       	rs->sum += (rs->r - rs->l + 1) * add;

		add = 0;
	}
} node[MAXN], *root, *null;

void init() {
	null = &node[0];

	null->ls = null->rs = null;
}

TreeNode *treeBuild(int l, int r) {
	TreeNode *curr = &node[nodeTotel++];

	curr->ls = curr->rs = null;
	curr->l = l, curr->r = r;

	int mid = l + (r - l) / 2;

	if (l == r)
		curr->sum = val[mid];
	else {
		curr->ls = treeBuild(l, mid);
		curr->rs = treeBuild(mid + 1, r);

		curr->update();
	}

	return curr;
}

void treeAdd(TreeNode *curr, int L, int R, int x) {
	int l = curr->l, r = curr->r;

	curr->download();

	if (l >= L && r <= R) {
		curr->add = x;
		curr->sum += (r - l + 1) * x;
	}
	else {
		int mid = l + (r - l) / 2;

		if (L <= mid)
			treeAdd(curr->ls, L, R, x);
		if (R >= mid + 1)
			treeAdd(curr->rs, L, R, x);

		curr->update();
	}
}

LL treeQuery(TreeNode *curr, int L, int R) {
	int l = curr->l, r = curr->r;

	curr->download();

	LL ans = 0;

	if (l >= L && r <= R)
		ans = curr->sum;
	else {
		int mid = l + (r - l) / 2;

		if (L <= mid)
			ans += treeQuery(curr->ls, L, R);
		if (R >= mid + 1)
			ans += treeQuery(curr->rs, L, R);
	}

	return ans;
}

int main() {
	freopen("1.in", "r", stdin);

	init();

	int n; scanf("%d", &n);
	int m; scanf("%d", &m);

	for (int i = 1; i <= n; i++)
		scanf("%d", &val[i]);

	root = treeBuild(1, n);

	for (int i = 1; i <= m; i++) {
		char ope[10]; scanf("%s", ope);

		int l; scanf("%d", &l);
		int r; scanf("%d", &r);

		if (ope[0] == 'C') {
			int x; scanf("%d", &x);
			treeAdd(root, l, r, x);
		}
		if (ope[0] == 'Q')
			printf("%lld\n", treeQuery(root, l, r));
	}

	return 0;
}
