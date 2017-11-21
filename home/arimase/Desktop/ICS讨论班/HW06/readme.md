### ICS第四次书面作业
***
#### `7.6`
符号|条目|模块|类型|节
--|--
buf|是|m.o|外部符号|.data
bufp0|是|swap.o|全局符号|.data
bufp1|是|swap.o|局部符号|.data
count|是|swap.o|局部符号|.bss
temp|否|||
incr|是|swap.o|局部符号|.text
swap|是|swap.o|全局符号|.text
***
#### `7.7`
```C
static double x;

void f() {
	x = -0.0;
}
```
***
#### `7.12`
> A

	(0x4004f8)+(-4)-(0x4004e0+0xa)=0xa

> B

	(0x400500)+(-4)-(0x4004d0+0xa)=0x22

***
#### `7.13`
> A

libc.a|libm.a
--|--
1579|471

> B

可执行的代码是相同的

> C
```
	linux-vdso.so.1 =>  (0x00007ffd199d1000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f2851b7b000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f28517b1000)
	/lib64/ld-linux-x86-64.so.2 (0x00005594bfecf000)
```


***