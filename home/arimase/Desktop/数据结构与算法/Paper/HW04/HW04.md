### 数据结构与算法 第四章 字符串
***
#### 1. 回文字符串
> 判断一个字符串s是否为回文字符串（即正读和倒读相同）。请简要说明实现算法，并指出时间复杂度和空间复杂度。

```C++
bool JudgePalindrome(string STR) {
	bool FLAG = true;

	for (int i = 0; i < STR.length(); i++) 
		if (STR[i] != STR[STR.length() - i - 1])
			FLAG = false;

	return FLAG;
}
```
时间复杂度$O(N)$ 额外的空间复杂度$O(1)$
***
#### 2. 求出下列模式串的next值
> 模式串 t=’abcdaabcddaba’；

	next[] = {-1, 0, 0, 0, 0, 1, 1, 2, 3, 4, 0, 1, 2, 1};
> 模式串s=’XYYXYZXZXYYXZ’

	next[] = {-1, 0, 0, 0, 1, 2, 0, 1, 0, 1, 2, 3, 4, 0};
****
#### 3. 反转字符串
> 已知一个字符串A，由字母数字和“.”组成，存储在定长的数组中。我们需要将该字符串以“.”为分界位置，反转该字符串。例如：portal.pku.edu.cn，转化成cn.edu.pku.portal。设计一个算法，并分析算法的时间复杂度和空间复杂度。

```C++
void ReverseString(string& A) {
	auto Swap = [&] (int l, int r) {
		for (int i = 0; i < (r - l) / 2; i++)
			swap(A[l + i], A[r - 1 - i]);
	};

	Swap(0, A.length());

	for (int i = 0, j = 0; j <= A.length(); j++)
		if (j == A.length() || A[j] == '.')
			Swap(i, j), i = j + 1;
}
```
时间复杂度$O(N)$ 额外的空间复杂度$O(1)$
***
#### 4. 找出下列程序的错误，并解释它为什么是错的。
```C++
void test1(){
	char str[10];
	char* str1 = “0123456789”; 
	strcpy(str, str1); 
	std::cout<<str<<’\n’; 
}
```
$str$数组大小为$10$，复制操作会把$str+10$的位置变成$0$,影响别的数据。
```C++
void test2(){
	char str[10], str1[10]; 
	for (int i=0; i<10; i++){
		str1[i] = ‘a’; 
	}
	strcpy(str, str1); 
	std::cout<<str<<’\n’; 
}
```
$str1$数组大小为$10$，字符串缺少末尾的$\backslash 0$,复制和输出的时候都会有问题。
```C++
void test3(char* str1){
	char str[10];
	if (strlen(str1)<=10)
		strcpy(str, str1); 
	std::cout<<str<<’\n’; 
}
```
$str$数组大小为$10$，若$str1$有效长度为$10$，则复制操作会把$str+10$的位置变成$0$,影响别的数据。
***
#### 5. 删除字符
> 删除字符串中的“b”和“ac”，需要满足如下的条件：
 
>1)	字符串只能遍历一次

>2)	不能够使用额外的空间，即O(1)的空间。

>例如：acbac   ==>  ""；ababac  ==>  aa；bbbbd   ==>  d；aaccac   ==>  “”
请设计算法，得到输出的字符串。

```C++
void DeleteChar(string& A) {
	int i = 0;

	for (int j = 0; j < A.length(); j++) {
		if (A[j] == 'b')
			continue;
		if (j != A.length() - 1 && A.substr(j, 2) == "ac")
			continue;
		if (j != 0 && A.substr(j - 1, 2) == "ac")
			continue;

		A[i++] = A[j];
	}

	A.resize(i);
}
```