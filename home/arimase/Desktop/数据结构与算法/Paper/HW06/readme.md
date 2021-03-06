## 数据结构与算法
### 第六章 习题
***
#### `1`
> 使用重量权衡合并规则与路径压缩，对下列从0到15之间的数的等价对进行归并。在初始情况下，集合中的每个元素分别在独立的等价类中。当两棵树规模同样大时，使结点数值较大的根结点作为值较小的根结点的子结点。

父节点下表|-1|0|0|0|0|0|0|6
--|--
结点值|0|1|2|3|4|5|6|7
节点的下标|0|1|2|3|4|5|6|7
||||||||
父节点下表|0|0|0|9|0|0|12|0
结点值|8|9|10|11|12|13|14|15
节点的下标|8|9|10|11|12|13|14|15
***
#### `2`
> 画出此表示法所表示的森林所对应的二叉树，并将其转换为森林，并画出森林图。

![](http://img2.ph.126.net/CNgSJ4fTTv7m4j-oQUGAHw==/6632526817632199499.jpg)
> 画出(1)中所求出森林的带度数的后根次序表示法。

degree|0|1|1|1|0|0|3|0|0
--|--
info|F|E|D|B|C|G|A|H|I
***
#### `3`
> 一棵高度为h的满k叉树有如下性质：根结点所在层次为0；第h层上的结点都是叶子结点；其余各层上每个结点都有k棵非空子树，如果按层次自顶向下，同一层自左向右，顺序从1开始对全部结点进行编号，试问：
> 
> 各层的结点个数是多少?   

$SIZE(0)=1\quad SIZE(N)=K\times SIZE(N-1)=K^N$
> 编号为i的结点的第m个孩子结点（若存在）的编号是多少？

不妨假设编号为i的结点是第$N$层第$M$个结点$(M\in [\frac{K^N-1}{K-1},\frac{K^{N+1}-1}{K-1}])$，其编号为$\frac{K^N-1}{K-1}+M=i$，那么其第$m$个子结点就是第$N+1$层第$(M-1)\times K+m$个节点，编号为$\frac{K^{N+1}-1}{K-1}+(M-1)\times K+m=(i-1)\times K+m+1$
> 编号为i的结点有右兄弟的条件是什么？其右兄弟结点的编号是多少？

当且仅当$i$是其父结点第$K$个儿子或者$i$是根结点时没有右兄弟，此时$i\equiv1(mod\,K)$，故有右兄弟的条件为$i\not\equiv1(mod\,K)$，编号为$i+1$
