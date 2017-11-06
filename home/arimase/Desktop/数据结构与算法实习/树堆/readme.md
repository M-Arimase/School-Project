### 数据结构与算法实习
****
#### A Simple Problem with Integers
> Give a tree with n vertices,each edge has a length(positive integer less than 1001).
Define dist(u,v)=The min distance between node u and v.
> 
> Give an integer k,for every pair (u,v) of vertices is called valid if and only if dist(u,v) not exceed k.
> 
> Write a program that will count how many pairs which are valid for a given tree. 

##### 对问题的分析设计过程
这道题目是关于符合条件的路径数量的询问，可以联想到使用点分治。在分治的过程中，我们需要查询通过根结点的满足条件的路径数量，我们可以使用平衡树维护前$I-1$棵子树的信息，并对一部分在前$I-1$棵树中，另一部分在第$I$棵树中的路径进行统计。
##### 程序中用到的数据结构和算法
* 点分治

点分治通过每次找到待查询的树的重心，即最大的子树最小的结点，以重心为根结点重构这棵树。对通过根结点的路径查询完成后，将根结点打上删除标记，并对子树进行递归的操作。

* 平衡树

这里使用了比较灵活的$splay$树，通过每次将操作的结点旋转为根结点来保证期望意义下的平衡性。

在具体的查询过程中，当我们处理根结点的第$I$棵子树时，我们用平衡树保存前$I-1$棵子树中所有结点到根结点的距离，并通过深度优先搜索将第$I$棵子树中所有结点到根结点的距离存在一个$vector$中，对于$vector$中的每一个值$X$我们查询$splay$中$\le K-X$的值有多少个，在处理完$vector$中每一个数值之后，将这些值全部都加入到$splay$中，并处理下一棵子树。

##### 程序的运行情况
![](C:\Users\Arimase\Desktop\微信图片_20171103110102.png)
##### 在实习过程中得到的经验和体会
* 这道题可以使用平衡树启发式合并来处理，统计通过根结点的信息的时候也可以用排序和双指针扫描的方法来处理，不过为了熟悉平衡树和点分治的实现，还是选择了一个编程复杂度较高的方法。

***
#### Black Box
> N (2 <= N <= 8,000) cows have unique brands in the range 1..N. In a spectacular display of poor judgment, they visited the neighborhood 'watering hole' and drank a few too many beers before dinner. When it was time to line up for their evening meal, they did not line up in the required ascending numerical order of their brands.
> 
> Regrettably, FJ does not have a way to sort them. Furthermore, he's not very good at observing problems. Instead of writing down each cow's brand, he determined a rather silly statistic: For each cow in line, he knows the number of cows that precede that cow in line that do, in fact, have smaller brands than that cow.
> 
> Given this data, tell FJ the exact ordering of the cows.

##### 对问题的分析设计过程
这道题可以抽象为带插入的第$K$大操作，可以用平衡树暴力维护。
##### 程序中用到的数据结构和算法
* 平衡树

通过加入
```C++	
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>
```
这两个头文件，并使用
```C++
using namespace __gnu_pbds;
```
这个命名空间，可以使用库中自带的支持查询第$K$大的平衡树。
##### 程序的运行情况
![](C:\Users\Arimase\Desktop\微信图片_20171103110105.png)
##### 在实习过程中得到的经验和体会
* 熟练使用$STL$可以提高编程效率
***
#### 代码
> Black Box

```C++
#include <cstdio>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

const int MAXN = 1000010;

tree<pair<int, int>, null_type, less<pair<int, int>>, rb_tree_tag,
     tree_order_statistics_node_update>
    T;

int value[MAXN];

int main() {
        int n, m;
        scanf("%d%d", &n, &m);

        for (int i = 0; i < n; i++)
                scanf("%d", value + i);

        for (int i = 0, j = 0; i < m; i++) {
                int x;
                scanf("%d", &x);
                for (; j < x; j++)
                        T.insert(make_pair(value[j], j));
                printf("%d\n", T.find_by_order(i)->first);
        }

        return 0;
}
```
> Tree

```C++
#include <algorithm>
#include <iostream>
#include <vector>
#include <cstdio>

const int MAXN = 100005;
const int INF = 0x7FFFFFFF;

struct Edge {
        int v, w, next;
} e[MAXN];

int n, k, cnt, ans, head[MAXN], root, sum, maxSon[MAXN], size[MAXN], del[MAXN];

struct SplayNode {
        int value, size, max;
        SplayNode *son[2], *fa;

        void Maintain() {
                size = 1, max = value;
                for (int i = 0; i < 2; i++) {
                        size += son[i]->size;
			max = std::max(max, son[i]->max);
                        son[i]->fa = this;
                }
        }

        int Dir() { return this == fa->son[1]; }
} * null, *newTree;

void Init(SplayNode *u, SplayNode *p, int x) {
        u->size = 1, u->value = x;
        u->fa = p, u->son[0] = u->son[1] = null;
}

void Rotate(SplayNode *u) {
        int d = u->Dir();
        SplayNode *p = u->fa;

        p->son[d] = u->son[d ^ 1], u->son[d ^ 1] = p;
        if (p->fa != null)
                p->fa->son[p->Dir()] = u;
        u->fa = p->fa;
        p->Maintain(), u->Maintain();
}

void Splay(SplayNode *u) {
        newTree = u;
        while (u->fa != null) {
                SplayNode *p = u->fa;
                if (p->fa == null)
                        Rotate(u);
                else if (u->Dir() == p->Dir())
                        Rotate(p), Rotate(u);
                else
                        Rotate(u), Rotate(u);
        }
}

SplayNode *Insert(SplayNode *&u, SplayNode *p, int x) {
        if (u == null) {
                u = new SplayNode(), Init(u, p, x);
                return u;
        } else {
                if (x < u->value)
                        return Insert(u->son[0], u, x);
                else
                        return Insert(u->son[1], u, x);
        }
}

SplayNode *Find(SplayNode *u, int x) {
	if (x < u->value) {
		if (x >= u->son[0]->max)
			return u;
		else
			return Find(u->son[0], x);
	}
	else
		return Find(u->son[1], x);
}

void Print(SplayNode *u) {
        if (u == null)
                return;

        std::cout << "(";
        Print(u->son[0]);
        std::cout << " " << u->value << ", " << u->size << " ";
        Print(u->son[1]);
        std::cout << ")";
}

int Func(int x) {
        SplayNode *tmp = Find(newTree, x);
        Splay(tmp);
        return tmp->son[0]->size;
}

void Insert(int u, int v, int w) {
        e[cnt] = (Edge){v, w, head[u]};
        head[u] = cnt++;
}

void FindRoot(int u, int p) {
        size[u] = 1, maxSon[u] = 0;

        for (int i = head[u]; ~i; i = e[i].next) {
                int v = e[i].v;
                if (del[v] == 0 && v != p) {
                        FindRoot(v, u), size[u] += size[v];
                        maxSon[u] = std::max(maxSon[u], size[v]);
                }
        }
        maxSon[u] = std::max(maxSon[u], sum - size[u]);
        if (maxSon[u] < maxSon[root])
                root = u;
}

std::vector<int> len;

void DFS(int u, int p, int w) {
        len.push_back(w);

        for (int i = head[u]; ~i; i = e[i].next) {
                int v = e[i].v;
                if (del[v] == 0 && v != p)
                        DFS(v, u, w + e[i].w);
        }
}

void Solve(int u) {
        del[u] = 1;

        newTree = null;

        Insert(newTree, null, INF);
        Insert(newTree, null, 0);

        for (int i = head[u]; ~i; i = e[i].next) {
                int v = e[i].v;
                if (del[v] == 0)
                        DFS(e[i].v, u, e[i].w);

                for (int j = 0; j < len.size(); j++)
                        ans += Func(k - len[j]);
                for (int j = 0; j < len.size(); j++)
                        Splay(Insert(newTree, null, len[j]));

                len.clear();
        }

        for (int i = head[u]; ~i; i = e[i].next) {
                int v = e[i].v;
                if (del[v] == 0) {
                        root = 0, sum = size[v];
                        FindRoot(v, u), Solve(root);
                }
        }
}

void Init() {
        for (int i = 0; i <= n; i++)
                head[i] = -1, del[i] = 0;
        ans = cnt = 0;

        null = new SplayNode();
        null->value = null->max = -INF;
	null->size = 0;
        null->son[0] = null->son[1] = null;
        null->fa = null;
}

int main() {
        while (std::cin >> n >> k && (n || k)) {
                Init();

                for (int i = 0; i < n - 1; i++) {
                        int u, v, w;
			scanf("%d%d%d", &u, &v, &w);

                        Insert(u, v, w);
                        Insert(v, u, w);
                }

                root = 0, sum = maxSon[0] = n;
                FindRoot(1, 0), Solve(root);

                std::cout << ans << std::endl;
        }

        return 0;
}
```