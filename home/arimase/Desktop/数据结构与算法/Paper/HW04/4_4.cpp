#include <cstring>
#include <iostream>

void test1(){
	char str[10];

	char* str1 = "0123456789"; 
	strcpy(str, str1); 
	std::cout<<str<<'\n'; 

}

void test2(){
	char str[10], str1[10]; 
	for (int i=0; i<10; i++){
		str1[i] = 'a'; 
	}
	strcpy(str, str1); 
	std::cout<<str<<'\n'; 

}

void test3(char* str1){
	char str[10];
	if (strlen(str1)<=10)
		strcpy(str, str1); 
	std::cout<<str<<'\n'; 
}

int main() {
	test2();
}
