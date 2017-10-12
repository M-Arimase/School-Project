### 数据结构与算法 第二章 线性表习题
#### 2.1
> 请说明下面程序段的作用。其中，L 是一个单链表，结点有数据域 data 和指针域 next。 

```C++
pre = L -> next; 
if (pre) { 
	while (pre -> next) { 
		p = pre->next; 
		if (p-> data >= pre-> data) { 
			pre = p; 
		} 
		else { 
			return false; 
		} 
	} 
	return true; 
} 
else return false; 
```
这段程序判断链表中的元素是否按照不严格升序排列。如果链表中存在至少一个元素，并且这些元素满足不严格升序关系，那么函数返回真；否则返回假。
***
#### 2.2
> 2.2 已知一顺序表 A有n个元素，其元素值递减有序排列，编写一个算法删除顺序表中多余的值相同的元素。（伪代码就行，要求：空间复杂度为O(1)，分析代码的时间复杂度）

```C++
void Func(int *A, int & n) {
	if (n >= 1) {
		int ptr = 0;

		for (int i = 0; i < n; i++)
			if (i == 0 || A[i] != A[i - 1])
				A[ptr++] = A[i]; 
                
		n = ptr;
	}
}
```
只有一个循环，时间复杂度$O(n)$。
***
#### 2.3
> 2.3 已知两个单链表 A 和 B 分别表示两个集合，其元素递增排列，编写算法求出 A 和 B 的交集 C，要求 C 同样以元素递增的单链表形式存储。（伪代码就行，要求：分析代码的时间复杂度和空间复杂度） 

```C++
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
```

单链表$C$的长度不会超过单链表$A$或者单链表$B$的长度，而循环体至多循环$lenght(A)+lenght(B)-length(C)$次。时间复杂度$O(lenght(A)+length(B))$，空间复杂度$O(min(length(A), length(B)))$。
***