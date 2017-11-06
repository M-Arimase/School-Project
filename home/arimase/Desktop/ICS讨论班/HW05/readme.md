### ICS第四次书面作业
***
#### `4.47`
> C语言描述

```C
long Array[4] = {3, 1, 4, 2};

void bubble_a(long *data, long count) {
        long *i, *last;
        for (last = data + count - 1; last > data; last--) {
                for (i = data; i < last; i++)
                        if (*(i + 1) < *i) {
                                long t = *(i + 1);
				*(i + 1) = *i;
				*i = t;
                        }
        }
}

int test_a(long *data, long count) {
        long *i;
	for (i = data; i < data + count - 1; i++)
		if (*(i + 1) < *i)
			return 0;
	return 1;
}

int main() {
	bubble_a(Array, 4);

	test_a(Array, 4);
}
```
> Y86-32语言描述

```
	.pos 0
init:	irmovl Stack, %esp
	irmovl Stack, %ebp
	call Main
	halt	

	.align 4
Array:
	.long 0x0004
	.long 0x0003
	.long 0x0002
	.long 0x0001
	.long 0x0008
	.long 0x0007
	.long 0x0006
	.long 0x0005

Main:	pushl %ebp	
	rrmovl %esp, %ebp

	irmovl Array, %edi
	irmovl $8, %esi
	call Bubble_a

	irmovl Array, %edi
	irmovl $8, %esi
	call Test_a

	rrmovl %ebp, %esp
	popl %ebp
	ret

Bubble_a:
	pushl %ebp
	rrmovl %esp, %ebp

	irmovl $4, %ebx
	addl %esi, %esi
	addl %esi, %esi
	addl %edi, %esi
	subl %ebx, %esi

	jmp Bubble_Label_1

Bubble_Label_5:
	irmovl $4, %ebx
	addl %ebx, %eax

Bubble_Label_3:
	rrmovl %eax, %ebx
	subl %esi, %ebx
	jge Bubble_Label_4

	mrmovl $4(%eax), %edx
	mrmovl (%eax), %ecx

	rrmovl %edx, %ebx
	subl %ecx, %ebx
	jge Bubble_Label_5

	rmmovl %ecx, $4(%eax)
	rmmovl %edx, (%eax)
	jmp Bubble_Label_5

Bubble_Label_4:
	irmovl $4, %ebx
	subl %ebx, %esi

Bubble_Label_1:
	rrmovl %esi, %ebx
	subl %edi, %ebx
	jle Bubble_Label_2

	rrmovl %edi, %eax
	jmp Bubble_Label_3
	
Bubble_Label_2:
	rrmovl %ebp, %esp
	popl %ebp
	ret

Test_a:
	pushl %ebp
	rrmovl %esp, %ebp

	rrmovl %edi, %eax

	irmovl $4, %ebx
	addl %esi, %esi
	addl %esi, %esi
	addl %edi, %esi
	subl %ebx, %esi

Test_Label_4:
	rrmovl %esi, %ebx
	subl %eax, %ebx
	jle Test_Label_1

	mrmovl $4(%eax), %edx
	mrmovl (%eax), %ecx

	rrmovl %edx, %ebx
	subl %ecx, %ebx
	jl Test_Label_3

	irmovl $4, %ebx
	addl %ebx, %eax
	jmp Test_Label_4

Test_Label_1:
	irmovl $1, %eax
	jmp Test_Label_2

Test_Label_3:
	irmovl $0, %eax
	jmp Test_Label_2

Test_Label_2:
	rrmovl %ebp, %esp
	popl %ebp
	ret

	.pos 0x1000
Stack:
```
***
#### `4.56`
> HCL语言描述

```
## What address should instruction be fetched at
int f_pc = [
	# Mispredicted branch.  Fetch at incremented PC
	M_icode == IJXX && M_ifun != 0 && M_valE < M_valA && !M_Cnd : M_valA;
	M_icode == IJXX && M_ifun != 0 && M_valE >= M_valA && M_Cnd : M_valE;
	# Completion of RET instruction.
	W_icode == IRET : W_valM;
	# Default: Use predicted value of PC
	1 : F_predPC;
];

# Predict next value of PC
int f_predPC = [
	# BBTFNT: This is where you'll change the branch prediction rule
	f_icode == ICALL || f_icode == IJXX && (f_ifun == 0 || f_valC < f_valP) : f_valC;
	1 : f_valP;
];

## Select input A to ALU
int aluA = [
	E_icode in { IRRMOVL, IOPL } : E_valA;
	E_icode in { IIRMOVL, IRMMOVL, IMRMOVL, IJXX } : E_valC;
	E_icode in { ICALL, IPUSHL } : -4;
	E_icode in { IRET, IPOPL } : 4;
	# Other instructions don't need ALU
];

## Select input B to ALU
int aluB = [
	E_icode in { IRMMOVL, IMRMOVL, IOPL, ICALL, 
		     IPUSHL, IRET, IPOPL } : E_valB;
	E_icode in { IRRMOVL, IIRMOVL, IJXX } : 0;
	# Other instructions don't need ALU
];

bool D_bubble =
	# Mispredicted branch
	(E_icode == IJXX && E_ifun != 0 && e_valE < E_valA && !e_Cnd) || 
	(E_icode == IJXX && E_ifun != 0 && e_valE >= E_valA && e_Cnd) ||
	# BBTFNT: This condition will change
	# Stalling at fetch while ret passes through pipeline
	# but not condition for a load/use hazard
	!(E_icode in { IMRMOVL, IPOPL } && E_dstM in { d_srcA, d_srcB }) &&
	  IRET in { D_icode, E_icode, M_icode };
      
bool E_bubble =
	# Mispredicted branch
	(E_icode == IJXX && E_ifun != 0 && e_valE < E_valA && !e_Cnd) || 
	(E_icode == IJXX && E_ifun != 0 && e_valE >= E_valA && e_Cnd) ||
	# BBTFNT: This condition will change
	# Conditions for a load/use hazard
	E_icode in { IMRMOVL, IPOPL } &&
	 E_dstM in { d_srcA, d_srcB};
```
***
#### `5.13`
> A

![](http://img0.ph.126.net/FqtbNUZCBY2PN_rF-SZ-Bw==/6632328905539130244.jpg)

> B

$inf(CPE)=3.0$ 这是因为浮点加法在关键路径上，而浮点加法需要$3$个时钟周期

> C

$inf(CPE)=1.0$ 这是因为整数加法单元和加载单元都有两个以上，所有操作都可以进入流水线

> D

这是因为浮点乘法不存在数据依赖，可以进入流水线；而浮点加法在关键路径上，需要$3$个时钟周期

***
#### `5.14`
> A

这是因为加载单元只有两个，每个时钟周期最多取出两个数据；内积至少需要$2\times N$个数据，故最少需要$N$个时钟周期

> B

```C
void inner(vec_ptr u, vec_ptr v, data_t *dest) {
        long i;
        long length = vec_lenght(u);
        long limit = length - 5;
        data_t *udata = get_vec_start(u);
        data_t *vdata = get_vec_start(v);
        data_t sum = (data_t)0;

        for (i = 0; i < limit; i += 6) {
                sum = sum + udata[i] * vdata[i];
                sum = sum + udata[i + 1] * vdata[i + 1];
                sum = sum + udata[i + 2] * vdata[i + 2];
                sum = sum + udata[i + 3] * vdata[i + 3];
                sum = sum + udata[i + 4] * vdata[i + 4];
                sum = sum + udata[i + 5] * vdata[i + 5];
        }

        for (; i < lenght; i++)
                sum = sum + udata[i] * vdata[i];
        *dest = sum;
}
```
这是因为浮点加法在关键路径上，而浮点加法需要$3$个时钟周期
***