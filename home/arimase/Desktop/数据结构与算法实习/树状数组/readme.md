### 数据结构与算法实习 树状数组
****
#### Apple Tree
> There is an apple tree outside of kaka's house. Every autumn, a lot of apples will grow in the tree. Kaka likes apple very much, so he has been carefully nurturing the big apple tree.

> The tree has Nforks which are connected by branches. Kaka numbers the forks by 1 to Nand the root is always numbered by 1. Apples will grow on the forks and two apple won't grow on the same fork. kaka wants to know how many apples are there in a sub-tree, for his study of the produce ability of the apple tree.

> The trouble is that a new apple may grow on an empty fork some time and kaka may pick an apple from the tree for his dessert. Can you help kaka?

##### 对问题的分析设计过程
这道题是算法竞赛中十分经典的节点修改，子树求和的问题。考虑到一棵子树中所有节点的DFS序号连续，将问题变化为单点修改，区间查询的问题。
##### 程序中用到的数据结构和算法
> 数据结构

本题涉及到了两种数据结构，一种是用来储存树的结构，一种是用来维护区间和的结构。由于本题中树的每个节点都可能有复数个儿子，故采用链式前向星来储存这棵树。此外我们可以采用树状数组来维护前缀和，通过两次查询作差来得到区间和。
> 算法

具体的，我们从根开始深度优先搜索（DFS），通过访问每个节点的顺序给所有节点重新编号并记录在$dfn[]$中，同时将以每个节点为根的子树大小记录在$size[]$中。则有以下结论：每个节点及其子树中的节点的DFS序号和$[dfn,dfn+size-1]$一一对应。

则对节点的修改可以转化为对数列中位置在$dfn$的数字的修改，对子树的查询可以转化为对数列中区间$[dfn,dfn+size-1]$的和的查询。
##### 程序的运行情况
> 随便写写的树状数组

![Picture](http://img2.ph.126.net/txi_IcawHXMV8CCCAaAUcg==/1272548369727776933.png)
> 卡了卡常数的树状数组

![Picture](http://img1.ph.126.net/-kIP6jdtL-cinZlKaRXWvQ==/6632660958048047809.png)
##### 在实习过程中得到的经验和体会
* 树结构的DFS序列的连续性是一种很重要的性质
* 卡常数真有趣~~（目前为止是OpenJudge上最快的）~~

#### 代码
> 树状数组

```C++
#include <iostream>
#include <cstring>

using namespace std;

const int MAXN = 1000000;

struct Edge {
	int v, next;
} e[MAXN];

int edgeCnt, dfnCnt, head[MAXN], _size[MAXN], 
    sum[MAXN], ex[MAXN], dfn[MAXN];

void EInsert(int x, int y) {
	e[edgeCnt] = (Edge) {y, head[x]};
	head[x] = edgeCnt++;
}

void DFS(int x, int fa) {
	_size[x] = 1, dfn[x] = ++dfnCnt;

	for (int i = head[x]; ~i; i = e[i].next) {
		int v = e[i].v;
		if (v != fa) {
			DFS(v, x);
			_size[x] += _size[v];
		}
	}
}

int Query(int x) {
	int ans = 0;
	for (; x; x -= x & -x)
		ans += sum[x];
	return ans;
}

void Insert(int x, int y) {
	for (; x < MAXN; x += x & -x)
		sum[x] += y;
}

int main() {
	int n; scanf("%d", &n);

	memset(head, -1, sizeof head);

	for (int i = 0; i < n - 1; i++) {
		int u; scanf("%d", &u);
		int v; scanf("%d", &v);

		EInsert(u, v), EInsert(v, u);
	}

	DFS(1, 0);

	for (int i = 1; i <= n; i++)
		ex[i] = 1, Insert(i, 1);

	int m; scanf("%d", &m);

	for (int i = 0; i < m; i++) {
		char s[10]; scanf("%s", s);

		int x; scanf("%d", &x);

		if (s[0] == 'Q') {
			int ans = Query(dfn[x] + _size[x] - 1);
			printf("%d\n", ans - Query(dfn[x] - 1));
		}

		if (s[0] == 'C') {
			if (ex[x] == 0) {
				ex[x] = 1;
				Insert(dfn[x], 1);
			}
			else {
				ex[x] = 0;
				Insert(dfn[x], -1);
			}
		}
	}

	return 0;
}
```