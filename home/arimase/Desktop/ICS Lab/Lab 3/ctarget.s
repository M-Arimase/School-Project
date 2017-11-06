
ctarget：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400c68 <_init>:
  400c68:	48 83 ec 08          	sub    $0x8,%rsp
  400c6c:	48 8b 05 85 43 20 00 	mov    0x204385(%rip),%rax        # 604ff8 <_DYNAMIC+0x1e0>
  400c73:	48 85 c0             	test   %rax,%rax
  400c76:	74 05                	je     400c7d <_init+0x15>
  400c78:	e8 43 02 00 00       	callq  400ec0 <socket@plt+0x10>
  400c7d:	48 83 c4 08          	add    $0x8,%rsp
  400c81:	c3                   	retq   

Disassembly of section .plt:

0000000000400c90 <strcasecmp@plt-0x10>:
  400c90:	ff 35 72 43 20 00    	pushq  0x204372(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c96:	ff 25 74 43 20 00    	jmpq   *0x204374(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ca0 <strcasecmp@plt>:
  400ca0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400ca6:	68 00 00 00 00       	pushq  $0x0
  400cab:	e9 e0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cb0 <__errno_location@plt>:
  400cb0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400cb6:	68 01 00 00 00       	pushq  $0x1
  400cbb:	e9 d0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cc0 <srandom@plt>:
  400cc0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400cc6:	68 02 00 00 00       	pushq  $0x2
  400ccb:	e9 c0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cd0 <strncmp@plt>:
  400cd0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cd6:	68 03 00 00 00       	pushq  $0x3
  400cdb:	e9 b0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400ce0 <strcpy@plt>:
  400ce0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ce6:	68 04 00 00 00       	pushq  $0x4
  400ceb:	e9 a0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cf0 <puts@plt>:
  400cf0:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400cf6:	68 05 00 00 00       	pushq  $0x5
  400cfb:	e9 90 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d00 <write@plt>:
  400d00:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400d06:	68 06 00 00 00       	pushq  $0x6
  400d0b:	e9 80 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d10 <__stack_chk_fail@plt>:
  400d10:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d16:	68 07 00 00 00       	pushq  $0x7
  400d1b:	e9 70 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d20 <mmap@plt>:
  400d20:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d26:	68 08 00 00 00       	pushq  $0x8
  400d2b:	e9 60 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d30 <memset@plt>:
  400d30:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d36:	68 09 00 00 00       	pushq  $0x9
  400d3b:	e9 50 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d40 <alarm@plt>:
  400d40:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d46:	68 0a 00 00 00       	pushq  $0xa
  400d4b:	e9 40 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d50 <close@plt>:
  400d50:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d56:	68 0b 00 00 00       	pushq  $0xb
  400d5b:	e9 30 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d60 <read@plt>:
  400d60:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d66:	68 0c 00 00 00       	pushq  $0xc
  400d6b:	e9 20 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d70 <__libc_start_main@plt>:
  400d70:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d76:	68 0d 00 00 00       	pushq  $0xd
  400d7b:	e9 10 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d80 <signal@plt>:
  400d80:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d86:	68 0e 00 00 00       	pushq  $0xe
  400d8b:	e9 00 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d90 <gethostbyname@plt>:
  400d90:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d96:	68 0f 00 00 00       	pushq  $0xf
  400d9b:	e9 f0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400da0 <__memmove_chk@plt>:
  400da0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400da6:	68 10 00 00 00       	pushq  $0x10
  400dab:	e9 e0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400db0 <strtol@plt>:
  400db0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400db6:	68 11 00 00 00       	pushq  $0x11
  400dbb:	e9 d0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400dc0 <memcpy@plt>:
  400dc0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400dc6:	68 12 00 00 00       	pushq  $0x12
  400dcb:	e9 c0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400dd0 <time@plt>:
  400dd0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400dd6:	68 13 00 00 00       	pushq  $0x13
  400ddb:	e9 b0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400de0 <random@plt>:
  400de0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400de6:	68 14 00 00 00       	pushq  $0x14
  400deb:	e9 a0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400df0 <_IO_getc@plt>:
  400df0:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400df6:	68 15 00 00 00       	pushq  $0x15
  400dfb:	e9 90 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e00 <__isoc99_sscanf@plt>:
  400e00:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400e06:	68 16 00 00 00       	pushq  $0x16
  400e0b:	e9 80 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e10 <munmap@plt>:
  400e10:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e16:	68 17 00 00 00       	pushq  $0x17
  400e1b:	e9 70 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e20 <__printf_chk@plt>:
  400e20:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e26:	68 18 00 00 00       	pushq  $0x18
  400e2b:	e9 60 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e30 <fopen@plt>:
  400e30:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e36:	68 19 00 00 00       	pushq  $0x19
  400e3b:	e9 50 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e40 <getopt@plt>:
  400e40:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e46:	68 1a 00 00 00       	pushq  $0x1a
  400e4b:	e9 40 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e50 <strtoul@plt>:
  400e50:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e56:	68 1b 00 00 00       	pushq  $0x1b
  400e5b:	e9 30 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e60 <gethostname@plt>:
  400e60:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e66:	68 1c 00 00 00       	pushq  $0x1c
  400e6b:	e9 20 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e76:	68 1d 00 00 00       	pushq  $0x1d
  400e7b:	e9 10 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e86:	68 1e 00 00 00       	pushq  $0x1e
  400e8b:	e9 00 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e90 <__fprintf_chk@plt>:
  400e90:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e96:	68 1f 00 00 00       	pushq  $0x1f
  400e9b:	e9 f0 fd ff ff       	jmpq   400c90 <_init+0x28>

0000000000400ea0 <__sprintf_chk@plt>:
  400ea0:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400ea6:	68 20 00 00 00       	pushq  $0x20
  400eab:	e9 e0 fd ff ff       	jmpq   400c90 <_init+0x28>

0000000000400eb0 <socket@plt>:
  400eb0:	ff 25 6a 42 20 00    	jmpq   *0x20426a(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400eb6:	68 21 00 00 00       	pushq  $0x21
  400ebb:	e9 d0 fd ff ff       	jmpq   400c90 <_init+0x28>

Disassembly of section .plt.got:

0000000000400ec0 <.plt.got>:
  400ec0:	ff 25 32 41 20 00    	jmpq   *0x204132(%rip)        # 604ff8 <_DYNAMIC+0x1e0>
  400ec6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400ed0 <_start>:
  400ed0:	31 ed                	xor    %ebp,%ebp
  400ed2:	49 89 d1             	mov    %rdx,%r9
  400ed5:	5e                   	pop    %rsi
  400ed6:	48 89 e2             	mov    %rsp,%rdx
  400ed9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400edd:	50                   	push   %rax
  400ede:	54                   	push   %rsp
  400edf:	49 c7 c0 10 2f 40 00 	mov    $0x402f10,%r8
  400ee6:	48 c7 c1 a0 2e 40 00 	mov    $0x402ea0,%rcx
  400eed:	48 c7 c7 d5 11 40 00 	mov    $0x4011d5,%rdi
  400ef4:	e8 77 fe ff ff       	callq  400d70 <__libc_start_main@plt>
  400ef9:	f4                   	hlt    
  400efa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f00 <deregister_tm_clones>:
  400f00:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400f05:	55                   	push   %rbp
  400f06:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400f0c:	48 83 f8 0e          	cmp    $0xe,%rax
  400f10:	48 89 e5             	mov    %rsp,%rbp
  400f13:	76 1b                	jbe    400f30 <deregister_tm_clones+0x30>
  400f15:	b8 00 00 00 00       	mov    $0x0,%eax
  400f1a:	48 85 c0             	test   %rax,%rax
  400f1d:	74 11                	je     400f30 <deregister_tm_clones+0x30>
  400f1f:	5d                   	pop    %rbp
  400f20:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f25:	ff e0                	jmpq   *%rax
  400f27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f2e:	00 00 
  400f30:	5d                   	pop    %rbp
  400f31:	c3                   	retq   
  400f32:	0f 1f 40 00          	nopl   0x0(%rax)
  400f36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f3d:	00 00 00 

0000000000400f40 <register_tm_clones>:
  400f40:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f45:	55                   	push   %rbp
  400f46:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f4d:	48 c1 fe 03          	sar    $0x3,%rsi
  400f51:	48 89 e5             	mov    %rsp,%rbp
  400f54:	48 89 f0             	mov    %rsi,%rax
  400f57:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f5b:	48 01 c6             	add    %rax,%rsi
  400f5e:	48 d1 fe             	sar    %rsi
  400f61:	74 15                	je     400f78 <register_tm_clones+0x38>
  400f63:	b8 00 00 00 00       	mov    $0x0,%eax
  400f68:	48 85 c0             	test   %rax,%rax
  400f6b:	74 0b                	je     400f78 <register_tm_clones+0x38>
  400f6d:	5d                   	pop    %rbp
  400f6e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f73:	ff e0                	jmpq   *%rax
  400f75:	0f 1f 00             	nopl   (%rax)
  400f78:	5d                   	pop    %rbp
  400f79:	c3                   	retq   
  400f7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f80 <__do_global_dtors_aux>:
  400f80:	80 3d 61 45 20 00 00 	cmpb   $0x0,0x204561(%rip)        # 6054e8 <completed.7585>
  400f87:	75 11                	jne    400f9a <__do_global_dtors_aux+0x1a>
  400f89:	55                   	push   %rbp
  400f8a:	48 89 e5             	mov    %rsp,%rbp
  400f8d:	e8 6e ff ff ff       	callq  400f00 <deregister_tm_clones>
  400f92:	5d                   	pop    %rbp
  400f93:	c6 05 4e 45 20 00 01 	movb   $0x1,0x20454e(%rip)        # 6054e8 <completed.7585>
  400f9a:	f3 c3                	repz retq 
  400f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400fa0 <frame_dummy>:
  400fa0:	bf 10 4e 60 00       	mov    $0x604e10,%edi
  400fa5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400fa9:	75 05                	jne    400fb0 <frame_dummy+0x10>
  400fab:	eb 93                	jmp    400f40 <register_tm_clones>
  400fad:	0f 1f 00             	nopl   (%rax)
  400fb0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fb5:	48 85 c0             	test   %rax,%rax
  400fb8:	74 f1                	je     400fab <frame_dummy+0xb>
  400fba:	55                   	push   %rbp
  400fbb:	48 89 e5             	mov    %rsp,%rbp
  400fbe:	ff d0                	callq  *%rax
  400fc0:	5d                   	pop    %rbp
  400fc1:	e9 7a ff ff ff       	jmpq   400f40 <register_tm_clones>

0000000000400fc6 <usage>:
  400fc6:	48 83 ec 08          	sub    $0x8,%rsp
  400fca:	48 89 fa             	mov    %rdi,%rdx
  400fcd:	83 3d 54 45 20 00 00 	cmpl   $0x0,0x204554(%rip)        # 605528 <is_checker>
  400fd4:	74 3e                	je     401014 <usage+0x4e>
  400fd6:	be 28 2f 40 00       	mov    $0x402f28,%esi
  400fdb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fe5:	e8 36 fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fea:	bf 60 2f 40 00       	mov    $0x402f60,%edi
  400fef:	e8 fc fc ff ff       	callq  400cf0 <puts@plt>
  400ff4:	bf d8 30 40 00       	mov    $0x4030d8,%edi
  400ff9:	e8 f2 fc ff ff       	callq  400cf0 <puts@plt>
  400ffe:	bf 88 2f 40 00       	mov    $0x402f88,%edi
  401003:	e8 e8 fc ff ff       	callq  400cf0 <puts@plt>
  401008:	bf f2 30 40 00       	mov    $0x4030f2,%edi
  40100d:	e8 de fc ff ff       	callq  400cf0 <puts@plt>
  401012:	eb 32                	jmp    401046 <usage+0x80>
  401014:	be 0e 31 40 00       	mov    $0x40310e,%esi
  401019:	bf 01 00 00 00       	mov    $0x1,%edi
  40101e:	b8 00 00 00 00       	mov    $0x0,%eax
  401023:	e8 f8 fd ff ff       	callq  400e20 <__printf_chk@plt>
  401028:	bf b0 2f 40 00       	mov    $0x402fb0,%edi
  40102d:	e8 be fc ff ff       	callq  400cf0 <puts@plt>
  401032:	bf d8 2f 40 00       	mov    $0x402fd8,%edi
  401037:	e8 b4 fc ff ff       	callq  400cf0 <puts@plt>
  40103c:	bf 2c 31 40 00       	mov    $0x40312c,%edi
  401041:	e8 aa fc ff ff       	callq  400cf0 <puts@plt>
  401046:	bf 00 00 00 00       	mov    $0x0,%edi
  40104b:	e8 20 fe ff ff       	callq  400e70 <exit@plt>

0000000000401050 <initialize_target>:
  401050:	55                   	push   %rbp
  401051:	53                   	push   %rbx
  401052:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  401059:	89 f5                	mov    %esi,%ebp
  40105b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401062:	00 00 
  401064:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40106b:	00 
  40106c:	31 c0                	xor    %eax,%eax
  40106e:	89 3d a4 44 20 00    	mov    %edi,0x2044a4(%rip)        # 605518 <check_level>
  401074:	8b 3d ee 40 20 00    	mov    0x2040ee(%rip),%edi        # 605168 <target_id>
  40107a:	e8 f5 1d 00 00       	callq  402e74 <gencookie>
  40107f:	89 05 9f 44 20 00    	mov    %eax,0x20449f(%rip)        # 605524 <cookie>
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 e8 1d 00 00       	callq  402e74 <gencookie>
  40108c:	89 05 8e 44 20 00    	mov    %eax,0x20448e(%rip)        # 605520 <authkey>
  401092:	8b 05 d0 40 20 00    	mov    0x2040d0(%rip),%eax        # 605168 <target_id>
  401098:	8d 78 01             	lea    0x1(%rax),%edi
  40109b:	e8 20 fc ff ff       	callq  400cc0 <srandom@plt>
  4010a0:	e8 3b fd ff ff       	callq  400de0 <random@plt>
  4010a5:	89 c7                	mov    %eax,%edi
  4010a7:	e8 03 03 00 00       	callq  4013af <scramble>
  4010ac:	89 c3                	mov    %eax,%ebx
  4010ae:	85 ed                	test   %ebp,%ebp
  4010b0:	74 18                	je     4010ca <initialize_target+0x7a>
  4010b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4010b7:	e8 14 fd ff ff       	callq  400dd0 <time@plt>
  4010bc:	89 c7                	mov    %eax,%edi
  4010be:	e8 fd fb ff ff       	callq  400cc0 <srandom@plt>
  4010c3:	e8 18 fd ff ff       	callq  400de0 <random@plt>
  4010c8:	eb 05                	jmp    4010cf <initialize_target+0x7f>
  4010ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4010cf:	01 c3                	add    %eax,%ebx
  4010d1:	0f b7 db             	movzwl %bx,%ebx
  4010d4:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  4010db:	89 c0                	mov    %eax,%eax
  4010dd:	48 89 05 bc 43 20 00 	mov    %rax,0x2043bc(%rip)        # 6054a0 <buf_offset>
  4010e4:	c6 05 5d 50 20 00 63 	movb   $0x63,0x20505d(%rip)        # 606148 <target_prefix>
  4010eb:	83 3d b6 43 20 00 00 	cmpl   $0x0,0x2043b6(%rip)        # 6054a8 <notify>
  4010f2:	0f 84 bb 00 00 00    	je     4011b3 <initialize_target+0x163>
  4010f8:	83 3d 29 44 20 00 00 	cmpl   $0x0,0x204429(%rip)        # 605528 <is_checker>
  4010ff:	0f 85 ae 00 00 00    	jne    4011b3 <initialize_target+0x163>
  401105:	be 00 01 00 00       	mov    $0x100,%esi
  40110a:	48 89 e7             	mov    %rsp,%rdi
  40110d:	e8 4e fd ff ff       	callq  400e60 <gethostname@plt>
  401112:	85 c0                	test   %eax,%eax
  401114:	74 25                	je     40113b <initialize_target+0xeb>
  401116:	bf 08 30 40 00       	mov    $0x403008,%edi
  40111b:	e8 d0 fb ff ff       	callq  400cf0 <puts@plt>
  401120:	bf 08 00 00 00       	mov    $0x8,%edi
  401125:	e8 46 fd ff ff       	callq  400e70 <exit@plt>
  40112a:	48 89 e6             	mov    %rsp,%rsi
  40112d:	e8 6e fb ff ff       	callq  400ca0 <strcasecmp@plt>
  401132:	85 c0                	test   %eax,%eax
  401134:	74 21                	je     401157 <initialize_target+0x107>
  401136:	83 c3 01             	add    $0x1,%ebx
  401139:	eb 05                	jmp    401140 <initialize_target+0xf0>
  40113b:	bb 00 00 00 00       	mov    $0x0,%ebx
  401140:	48 63 c3             	movslq %ebx,%rax
  401143:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  40114a:	00 
  40114b:	48 85 ff             	test   %rdi,%rdi
  40114e:	75 da                	jne    40112a <initialize_target+0xda>
  401150:	b8 00 00 00 00       	mov    $0x0,%eax
  401155:	eb 05                	jmp    40115c <initialize_target+0x10c>
  401157:	b8 01 00 00 00       	mov    $0x1,%eax
  40115c:	85 c0                	test   %eax,%eax
  40115e:	75 1c                	jne    40117c <initialize_target+0x12c>
  401160:	48 89 e2             	mov    %rsp,%rdx
  401163:	be 40 30 40 00       	mov    $0x403040,%esi
  401168:	bf 01 00 00 00       	mov    $0x1,%edi
  40116d:	e8 ae fc ff ff       	callq  400e20 <__printf_chk@plt>
  401172:	bf 08 00 00 00       	mov    $0x8,%edi
  401177:	e8 f4 fc ff ff       	callq  400e70 <exit@plt>
  40117c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401183:	00 
  401184:	e8 55 1a 00 00       	callq  402bde <init_driver>
  401189:	85 c0                	test   %eax,%eax
  40118b:	79 26                	jns    4011b3 <initialize_target+0x163>
  40118d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401194:	00 
  401195:	be 80 30 40 00       	mov    $0x403080,%esi
  40119a:	bf 01 00 00 00       	mov    $0x1,%edi
  40119f:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a4:	e8 77 fc ff ff       	callq  400e20 <__printf_chk@plt>
  4011a9:	bf 08 00 00 00       	mov    $0x8,%edi
  4011ae:	e8 bd fc ff ff       	callq  400e70 <exit@plt>
  4011b3:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4011ba:	00 
  4011bb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011c2:	00 00 
  4011c4:	74 05                	je     4011cb <initialize_target+0x17b>
  4011c6:	e8 45 fb ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4011cb:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4011d2:	5b                   	pop    %rbx
  4011d3:	5d                   	pop    %rbp
  4011d4:	c3                   	retq   

00000000004011d5 <main>:
  4011d5:	41 56                	push   %r14
  4011d7:	41 55                	push   %r13
  4011d9:	41 54                	push   %r12
  4011db:	55                   	push   %rbp
  4011dc:	53                   	push   %rbx
  4011dd:	41 89 fc             	mov    %edi,%r12d
  4011e0:	48 89 f3             	mov    %rsi,%rbx
  4011e3:	be fe 1e 40 00       	mov    $0x401efe,%esi
  4011e8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011ed:	e8 8e fb ff ff       	callq  400d80 <signal@plt>
  4011f2:	be b0 1e 40 00       	mov    $0x401eb0,%esi
  4011f7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011fc:	e8 7f fb ff ff       	callq  400d80 <signal@plt>
  401201:	be 4c 1f 40 00       	mov    $0x401f4c,%esi
  401206:	bf 04 00 00 00       	mov    $0x4,%edi
  40120b:	e8 70 fb ff ff       	callq  400d80 <signal@plt>
  401210:	83 3d 11 43 20 00 00 	cmpl   $0x0,0x204311(%rip)        # 605528 <is_checker>
  401217:	74 20                	je     401239 <main+0x64>
  401219:	be 9a 1f 40 00       	mov    $0x401f9a,%esi
  40121e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401223:	e8 58 fb ff ff       	callq  400d80 <signal@plt>
  401228:	bf 05 00 00 00       	mov    $0x5,%edi
  40122d:	e8 0e fb ff ff       	callq  400d40 <alarm@plt>
  401232:	bd 4a 31 40 00       	mov    $0x40314a,%ebp
  401237:	eb 05                	jmp    40123e <main+0x69>
  401239:	bd 45 31 40 00       	mov    $0x403145,%ebp
  40123e:	48 8b 05 7b 42 20 00 	mov    0x20427b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401245:	48 89 05 c4 42 20 00 	mov    %rax,0x2042c4(%rip)        # 605510 <infile>
  40124c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401252:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401258:	e9 c6 00 00 00       	jmpq   401323 <main+0x14e>
  40125d:	83 e8 61             	sub    $0x61,%eax
  401260:	3c 10                	cmp    $0x10,%al
  401262:	0f 87 9c 00 00 00    	ja     401304 <main+0x12f>
  401268:	0f b6 c0             	movzbl %al,%eax
  40126b:	ff 24 c5 90 31 40 00 	jmpq   *0x403190(,%rax,8)
  401272:	48 8b 3b             	mov    (%rbx),%rdi
  401275:	e8 4c fd ff ff       	callq  400fc6 <usage>
  40127a:	be 9d 34 40 00       	mov    $0x40349d,%esi
  40127f:	48 8b 3d 42 42 20 00 	mov    0x204242(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401286:	e8 a5 fb ff ff       	callq  400e30 <fopen@plt>
  40128b:	48 89 05 7e 42 20 00 	mov    %rax,0x20427e(%rip)        # 605510 <infile>
  401292:	48 85 c0             	test   %rax,%rax
  401295:	0f 85 88 00 00 00    	jne    401323 <main+0x14e>
  40129b:	48 8b 0d 26 42 20 00 	mov    0x204226(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012a2:	ba 52 31 40 00       	mov    $0x403152,%edx
  4012a7:	be 01 00 00 00       	mov    $0x1,%esi
  4012ac:	48 8b 3d 2d 42 20 00 	mov    0x20422d(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4012b3:	e8 d8 fb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4012b8:	b8 01 00 00 00       	mov    $0x1,%eax
  4012bd:	e9 e4 00 00 00       	jmpq   4013a6 <main+0x1d1>
  4012c2:	ba 10 00 00 00       	mov    $0x10,%edx
  4012c7:	be 00 00 00 00       	mov    $0x0,%esi
  4012cc:	48 8b 3d f5 41 20 00 	mov    0x2041f5(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012d3:	e8 78 fb ff ff       	callq  400e50 <strtoul@plt>
  4012d8:	41 89 c6             	mov    %eax,%r14d
  4012db:	eb 46                	jmp    401323 <main+0x14e>
  4012dd:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012e2:	be 00 00 00 00       	mov    $0x0,%esi
  4012e7:	48 8b 3d da 41 20 00 	mov    0x2041da(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ee:	e8 bd fa ff ff       	callq  400db0 <strtol@plt>
  4012f3:	41 89 c5             	mov    %eax,%r13d
  4012f6:	eb 2b                	jmp    401323 <main+0x14e>
  4012f8:	c7 05 a6 41 20 00 00 	movl   $0x0,0x2041a6(%rip)        # 6054a8 <notify>
  4012ff:	00 00 00 
  401302:	eb 1f                	jmp    401323 <main+0x14e>
  401304:	0f be d2             	movsbl %dl,%edx
  401307:	be 6f 31 40 00       	mov    $0x40316f,%esi
  40130c:	bf 01 00 00 00       	mov    $0x1,%edi
  401311:	b8 00 00 00 00       	mov    $0x0,%eax
  401316:	e8 05 fb ff ff       	callq  400e20 <__printf_chk@plt>
  40131b:	48 8b 3b             	mov    (%rbx),%rdi
  40131e:	e8 a3 fc ff ff       	callq  400fc6 <usage>
  401323:	48 89 ea             	mov    %rbp,%rdx
  401326:	48 89 de             	mov    %rbx,%rsi
  401329:	44 89 e7             	mov    %r12d,%edi
  40132c:	e8 0f fb ff ff       	callq  400e40 <getopt@plt>
  401331:	89 c2                	mov    %eax,%edx
  401333:	3c ff                	cmp    $0xff,%al
  401335:	0f 85 22 ff ff ff    	jne    40125d <main+0x88>
  40133b:	be 00 00 00 00       	mov    $0x0,%esi
  401340:	44 89 ef             	mov    %r13d,%edi
  401343:	e8 08 fd ff ff       	callq  401050 <initialize_target>
  401348:	83 3d d9 41 20 00 00 	cmpl   $0x0,0x2041d9(%rip)        # 605528 <is_checker>
  40134f:	74 2a                	je     40137b <main+0x1a6>
  401351:	44 3b 35 c8 41 20 00 	cmp    0x2041c8(%rip),%r14d        # 605520 <authkey>
  401358:	74 21                	je     40137b <main+0x1a6>
  40135a:	44 89 f2             	mov    %r14d,%edx
  40135d:	be a8 30 40 00       	mov    $0x4030a8,%esi
  401362:	bf 01 00 00 00       	mov    $0x1,%edi
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	e8 af fa ff ff       	callq  400e20 <__printf_chk@plt>
  401371:	b8 00 00 00 00       	mov    $0x0,%eax
  401376:	e8 d1 07 00 00       	callq  401b4c <check_fail>
  40137b:	8b 15 a3 41 20 00    	mov    0x2041a3(%rip),%edx        # 605524 <cookie>
  401381:	be 82 31 40 00       	mov    $0x403182,%esi
  401386:	bf 01 00 00 00       	mov    $0x1,%edi
  40138b:	b8 00 00 00 00       	mov    $0x0,%eax
  401390:	e8 8b fa ff ff       	callq  400e20 <__printf_chk@plt>
  401395:	48 8b 3d 04 41 20 00 	mov    0x204104(%rip),%rdi        # 6054a0 <buf_offset>
  40139c:	e8 f9 0c 00 00       	callq  40209a <stable_launch>
  4013a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a6:	5b                   	pop    %rbx
  4013a7:	5d                   	pop    %rbp
  4013a8:	41 5c                	pop    %r12
  4013aa:	41 5d                	pop    %r13
  4013ac:	41 5e                	pop    %r14
  4013ae:	c3                   	retq   

00000000004013af <scramble>:
  4013af:	48 83 ec 38          	sub    $0x38,%rsp
  4013b3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013ba:	00 00 
  4013bc:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4013c1:	31 c0                	xor    %eax,%eax
  4013c3:	eb 10                	jmp    4013d5 <scramble+0x26>
  4013c5:	69 d0 d3 ba 00 00    	imul   $0xbad3,%eax,%edx
  4013cb:	01 fa                	add    %edi,%edx
  4013cd:	89 c1                	mov    %eax,%ecx
  4013cf:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4013d2:	83 c0 01             	add    $0x1,%eax
  4013d5:	83 f8 09             	cmp    $0x9,%eax
  4013d8:	76 eb                	jbe    4013c5 <scramble+0x16>
  4013da:	8b 04 24             	mov    (%rsp),%eax
  4013dd:	69 c0 58 d8 00 00    	imul   $0xd858,%eax,%eax
  4013e3:	89 04 24             	mov    %eax,(%rsp)
  4013e6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4013ea:	69 c0 71 54 00 00    	imul   $0x5471,%eax,%eax
  4013f0:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4013f4:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4013f8:	69 c0 5d 9d 00 00    	imul   $0x9d5d,%eax,%eax
  4013fe:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401402:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401406:	69 c0 ee 35 00 00    	imul   $0x35ee,%eax,%eax
  40140c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401410:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401414:	69 c0 5e a2 00 00    	imul   $0xa25e,%eax,%eax
  40141a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40141e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401422:	69 c0 e8 50 00 00    	imul   $0x50e8,%eax,%eax
  401428:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40142c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401430:	69 c0 33 28 00 00    	imul   $0x2833,%eax,%eax
  401436:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40143a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40143e:	69 c0 a7 92 00 00    	imul   $0x92a7,%eax,%eax
  401444:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401448:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40144c:	69 c0 7a a2 00 00    	imul   $0xa27a,%eax,%eax
  401452:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401456:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40145a:	69 c0 40 fe 00 00    	imul   $0xfe40,%eax,%eax
  401460:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401464:	8b 04 24             	mov    (%rsp),%eax
  401467:	69 c0 0b 92 00 00    	imul   $0x920b,%eax,%eax
  40146d:	89 04 24             	mov    %eax,(%rsp)
  401470:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401474:	69 c0 a4 53 00 00    	imul   $0x53a4,%eax,%eax
  40147a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40147e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401482:	69 c0 a4 46 00 00    	imul   $0x46a4,%eax,%eax
  401488:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40148c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401490:	69 c0 cc 85 00 00    	imul   $0x85cc,%eax,%eax
  401496:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40149a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40149e:	69 c0 3b 42 00 00    	imul   $0x423b,%eax,%eax
  4014a4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014a8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014ac:	69 c0 c9 06 00 00    	imul   $0x6c9,%eax,%eax
  4014b2:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014b6:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014ba:	69 c0 36 1e 00 00    	imul   $0x1e36,%eax,%eax
  4014c0:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014c4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014c8:	69 c0 55 07 00 00    	imul   $0x755,%eax,%eax
  4014ce:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014d2:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014d6:	69 c0 09 28 00 00    	imul   $0x2809,%eax,%eax
  4014dc:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014e0:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014e4:	69 c0 38 49 00 00    	imul   $0x4938,%eax,%eax
  4014ea:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014ee:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014f2:	69 c0 32 a7 00 00    	imul   $0xa732,%eax,%eax
  4014f8:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014fc:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401500:	69 c0 91 f0 00 00    	imul   $0xf091,%eax,%eax
  401506:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40150a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40150e:	69 c0 71 92 00 00    	imul   $0x9271,%eax,%eax
  401514:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401518:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40151c:	69 c0 60 39 00 00    	imul   $0x3960,%eax,%eax
  401522:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401526:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40152a:	69 c0 7c 24 00 00    	imul   $0x247c,%eax,%eax
  401530:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401534:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401538:	69 c0 64 1a 00 00    	imul   $0x1a64,%eax,%eax
  40153e:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401542:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401546:	69 c0 3b 5d 00 00    	imul   $0x5d3b,%eax,%eax
  40154c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401550:	8b 04 24             	mov    (%rsp),%eax
  401553:	69 c0 77 f1 00 00    	imul   $0xf177,%eax,%eax
  401559:	89 04 24             	mov    %eax,(%rsp)
  40155c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401560:	69 c0 b3 e1 00 00    	imul   $0xe1b3,%eax,%eax
  401566:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40156a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40156e:	69 c0 d6 ef 00 00    	imul   $0xefd6,%eax,%eax
  401574:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401578:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40157c:	69 c0 25 c2 00 00    	imul   $0xc225,%eax,%eax
  401582:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401586:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40158a:	69 c0 82 3e 00 00    	imul   $0x3e82,%eax,%eax
  401590:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401594:	8b 04 24             	mov    (%rsp),%eax
  401597:	69 c0 da 51 00 00    	imul   $0x51da,%eax,%eax
  40159d:	89 04 24             	mov    %eax,(%rsp)
  4015a0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015a4:	69 c0 ef 9b 00 00    	imul   $0x9bef,%eax,%eax
  4015aa:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015ae:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015b2:	69 c0 1b 83 00 00    	imul   $0x831b,%eax,%eax
  4015b8:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015bc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015c0:	69 c0 4b 44 00 00    	imul   $0x444b,%eax,%eax
  4015c6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015ca:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015ce:	69 c0 47 7f 00 00    	imul   $0x7f47,%eax,%eax
  4015d4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015d8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015dc:	69 c0 b4 f9 00 00    	imul   $0xf9b4,%eax,%eax
  4015e2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015e6:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4015ea:	69 c0 14 b8 00 00    	imul   $0xb814,%eax,%eax
  4015f0:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015f4:	8b 04 24             	mov    (%rsp),%eax
  4015f7:	69 c0 a4 46 00 00    	imul   $0x46a4,%eax,%eax
  4015fd:	89 04 24             	mov    %eax,(%rsp)
  401600:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401604:	69 c0 b5 6a 00 00    	imul   $0x6ab5,%eax,%eax
  40160a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40160e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401612:	69 c0 18 93 00 00    	imul   $0x9318,%eax,%eax
  401618:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40161c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401620:	69 c0 11 cf 00 00    	imul   $0xcf11,%eax,%eax
  401626:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40162a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40162e:	69 c0 d1 6b 00 00    	imul   $0x6bd1,%eax,%eax
  401634:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401638:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40163c:	69 c0 d3 fb 00 00    	imul   $0xfbd3,%eax,%eax
  401642:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401646:	8b 04 24             	mov    (%rsp),%eax
  401649:	69 c0 b3 d4 00 00    	imul   $0xd4b3,%eax,%eax
  40164f:	89 04 24             	mov    %eax,(%rsp)
  401652:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401656:	69 c0 47 52 00 00    	imul   $0x5247,%eax,%eax
  40165c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401660:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401664:	69 c0 54 9e 00 00    	imul   $0x9e54,%eax,%eax
  40166a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40166e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401672:	69 c0 0e 59 00 00    	imul   $0x590e,%eax,%eax
  401678:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40167c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401680:	69 c0 05 1e 00 00    	imul   $0x1e05,%eax,%eax
  401686:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40168a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40168e:	69 c0 6b 1f 00 00    	imul   $0x1f6b,%eax,%eax
  401694:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401698:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40169c:	69 c0 77 06 00 00    	imul   $0x677,%eax,%eax
  4016a2:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016a6:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016aa:	69 c0 2c 97 00 00    	imul   $0x972c,%eax,%eax
  4016b0:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016b4:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016b8:	69 c0 6b b0 00 00    	imul   $0xb06b,%eax,%eax
  4016be:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016c2:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016c6:	69 c0 40 33 00 00    	imul   $0x3340,%eax,%eax
  4016cc:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016d0:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016d4:	69 c0 d1 2b 00 00    	imul   $0x2bd1,%eax,%eax
  4016da:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016de:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016e2:	69 c0 18 58 00 00    	imul   $0x5818,%eax,%eax
  4016e8:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016ec:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016f0:	69 c0 e6 65 00 00    	imul   $0x65e6,%eax,%eax
  4016f6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016fa:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016fe:	69 c0 78 43 00 00    	imul   $0x4378,%eax,%eax
  401704:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401708:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40170c:	69 c0 ed d7 00 00    	imul   $0xd7ed,%eax,%eax
  401712:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401716:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40171a:	69 c0 5f 2d 00 00    	imul   $0x2d5f,%eax,%eax
  401720:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401724:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401728:	69 c0 44 fd 00 00    	imul   $0xfd44,%eax,%eax
  40172e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401732:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401736:	69 c0 d7 bf 00 00    	imul   $0xbfd7,%eax,%eax
  40173c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401740:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401744:	69 c0 c8 23 00 00    	imul   $0x23c8,%eax,%eax
  40174a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40174e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401752:	69 c0 dc d5 00 00    	imul   $0xd5dc,%eax,%eax
  401758:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40175c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401760:	69 c0 0e f5 00 00    	imul   $0xf50e,%eax,%eax
  401766:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40176a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40176e:	69 c0 1e a4 00 00    	imul   $0xa41e,%eax,%eax
  401774:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401778:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40177c:	69 c0 fb 93 00 00    	imul   $0x93fb,%eax,%eax
  401782:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401786:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40178a:	69 c0 b1 fb 00 00    	imul   $0xfbb1,%eax,%eax
  401790:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401794:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401798:	69 c0 8b 8a 00 00    	imul   $0x8a8b,%eax,%eax
  40179e:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017a2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017a6:	69 c0 76 3b 00 00    	imul   $0x3b76,%eax,%eax
  4017ac:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017b0:	8b 04 24             	mov    (%rsp),%eax
  4017b3:	69 c0 e7 cc 00 00    	imul   $0xcce7,%eax,%eax
  4017b9:	89 04 24             	mov    %eax,(%rsp)
  4017bc:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017c0:	69 c0 45 75 00 00    	imul   $0x7545,%eax,%eax
  4017c6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017ca:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017ce:	69 c0 b7 ba 00 00    	imul   $0xbab7,%eax,%eax
  4017d4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017d8:	8b 04 24             	mov    (%rsp),%eax
  4017db:	69 c0 85 04 00 00    	imul   $0x485,%eax,%eax
  4017e1:	89 04 24             	mov    %eax,(%rsp)
  4017e4:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017e8:	69 c0 09 f8 00 00    	imul   $0xf809,%eax,%eax
  4017ee:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017f2:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017f6:	69 c0 45 3f 00 00    	imul   $0x3f45,%eax,%eax
  4017fc:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401800:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401804:	69 c0 8a b1 00 00    	imul   $0xb18a,%eax,%eax
  40180a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40180e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401812:	69 c0 e6 90 00 00    	imul   $0x90e6,%eax,%eax
  401818:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40181c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401820:	69 c0 01 18 00 00    	imul   $0x1801,%eax,%eax
  401826:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40182a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40182e:	69 c0 21 17 00 00    	imul   $0x1721,%eax,%eax
  401834:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401838:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40183c:	69 c0 0a 5c 00 00    	imul   $0x5c0a,%eax,%eax
  401842:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401846:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40184a:	69 c0 96 08 00 00    	imul   $0x896,%eax,%eax
  401850:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401854:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401858:	69 c0 8a f6 00 00    	imul   $0xf68a,%eax,%eax
  40185e:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401862:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401866:	69 c0 6c 34 00 00    	imul   $0x346c,%eax,%eax
  40186c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401870:	8b 04 24             	mov    (%rsp),%eax
  401873:	69 c0 39 33 00 00    	imul   $0x3339,%eax,%eax
  401879:	89 04 24             	mov    %eax,(%rsp)
  40187c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401880:	69 c0 72 37 00 00    	imul   $0x3772,%eax,%eax
  401886:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40188a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40188e:	69 c0 70 03 00 00    	imul   $0x370,%eax,%eax
  401894:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401898:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40189c:	69 c0 ed 32 00 00    	imul   $0x32ed,%eax,%eax
  4018a2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018a6:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018aa:	69 c0 76 65 00 00    	imul   $0x6576,%eax,%eax
  4018b0:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018b4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4018b8:	69 c0 cb 50 00 00    	imul   $0x50cb,%eax,%eax
  4018be:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018c2:	ba 00 00 00 00       	mov    $0x0,%edx
  4018c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018cc:	eb 0a                	jmp    4018d8 <scramble+0x529>
  4018ce:	89 d1                	mov    %edx,%ecx
  4018d0:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  4018d3:	01 c8                	add    %ecx,%eax
  4018d5:	83 c2 01             	add    $0x1,%edx
  4018d8:	83 fa 09             	cmp    $0x9,%edx
  4018db:	76 f1                	jbe    4018ce <scramble+0x51f>
  4018dd:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4018e2:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4018e9:	00 00 
  4018eb:	74 05                	je     4018f2 <scramble+0x543>
  4018ed:	e8 1e f4 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4018f2:	48 83 c4 38          	add    $0x38,%rsp
  4018f6:	c3                   	retq   

00000000004018f7 <getbuf>:
  4018f7:	48 83 ec 18          	sub    $0x18,%rsp
  4018fb:	48 89 e7             	mov    %rsp,%rdi
  4018fe:	e8 7e 02 00 00       	callq  401b81 <Gets>
  401903:	b8 01 00 00 00       	mov    $0x1,%eax
  401908:	48 83 c4 18          	add    $0x18,%rsp
  40190c:	c3                   	retq   

000000000040190d <touch1>:
  40190d:	48 83 ec 08          	sub    $0x8,%rsp
  401911:	c7 05 01 3c 20 00 01 	movl   $0x1,0x203c01(%rip)        # 60551c <vlevel>
  401918:	00 00 00 
  40191b:	bf f6 32 40 00       	mov    $0x4032f6,%edi
  401920:	e8 cb f3 ff ff       	callq  400cf0 <puts@plt>
  401925:	bf 01 00 00 00       	mov    $0x1,%edi
  40192a:	e8 97 04 00 00       	callq  401dc6 <validate>
  40192f:	bf 00 00 00 00       	mov    $0x0,%edi
  401934:	e8 37 f5 ff ff       	callq  400e70 <exit@plt>

0000000000401939 <touch2>:
  401939:	48 83 ec 08          	sub    $0x8,%rsp
  40193d:	89 fa                	mov    %edi,%edx
  40193f:	c7 05 d3 3b 20 00 02 	movl   $0x2,0x203bd3(%rip)        # 60551c <vlevel>
  401946:	00 00 00 
  401949:	39 3d d5 3b 20 00    	cmp    %edi,0x203bd5(%rip)        # 605524 <cookie>
  40194f:	75 20                	jne    401971 <touch2+0x38>
  401951:	be 18 33 40 00       	mov    $0x403318,%esi
  401956:	bf 01 00 00 00       	mov    $0x1,%edi
  40195b:	b8 00 00 00 00       	mov    $0x0,%eax
  401960:	e8 bb f4 ff ff       	callq  400e20 <__printf_chk@plt>
  401965:	bf 02 00 00 00       	mov    $0x2,%edi
  40196a:	e8 57 04 00 00       	callq  401dc6 <validate>
  40196f:	eb 1e                	jmp    40198f <touch2+0x56>
  401971:	be 40 33 40 00       	mov    $0x403340,%esi
  401976:	bf 01 00 00 00       	mov    $0x1,%edi
  40197b:	b8 00 00 00 00       	mov    $0x0,%eax
  401980:	e8 9b f4 ff ff       	callq  400e20 <__printf_chk@plt>
  401985:	bf 02 00 00 00       	mov    $0x2,%edi
  40198a:	e8 f9 04 00 00       	callq  401e88 <fail>
  40198f:	bf 00 00 00 00       	mov    $0x0,%edi
  401994:	e8 d7 f4 ff ff       	callq  400e70 <exit@plt>

0000000000401999 <hexmatch>:
  401999:	41 54                	push   %r12
  40199b:	55                   	push   %rbp
  40199c:	53                   	push   %rbx
  40199d:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4019a1:	89 fd                	mov    %edi,%ebp
  4019a3:	48 89 f3             	mov    %rsi,%rbx
  4019a6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019ad:	00 00 
  4019af:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4019b4:	31 c0                	xor    %eax,%eax
  4019b6:	e8 25 f4 ff ff       	callq  400de0 <random@plt>
  4019bb:	48 89 c1             	mov    %rax,%rcx
  4019be:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  4019c5:	0a d7 a3 
  4019c8:	48 f7 ea             	imul   %rdx
  4019cb:	48 01 ca             	add    %rcx,%rdx
  4019ce:	48 c1 fa 06          	sar    $0x6,%rdx
  4019d2:	48 89 c8             	mov    %rcx,%rax
  4019d5:	48 c1 f8 3f          	sar    $0x3f,%rax
  4019d9:	48 29 c2             	sub    %rax,%rdx
  4019dc:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  4019e0:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  4019e4:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  4019eb:	00 
  4019ec:	48 29 c1             	sub    %rax,%rcx
  4019ef:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  4019f3:	41 89 e8             	mov    %ebp,%r8d
  4019f6:	b9 13 33 40 00       	mov    $0x403313,%ecx
  4019fb:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401a02:	be 01 00 00 00       	mov    $0x1,%esi
  401a07:	4c 89 e7             	mov    %r12,%rdi
  401a0a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a0f:	e8 8c f4 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401a14:	ba 09 00 00 00       	mov    $0x9,%edx
  401a19:	4c 89 e6             	mov    %r12,%rsi
  401a1c:	48 89 df             	mov    %rbx,%rdi
  401a1f:	e8 ac f2 ff ff       	callq  400cd0 <strncmp@plt>
  401a24:	85 c0                	test   %eax,%eax
  401a26:	0f 94 c0             	sete   %al
  401a29:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401a2e:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401a35:	00 00 
  401a37:	74 05                	je     401a3e <hexmatch+0xa5>
  401a39:	e8 d2 f2 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401a3e:	0f b6 c0             	movzbl %al,%eax
  401a41:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401a45:	5b                   	pop    %rbx
  401a46:	5d                   	pop    %rbp
  401a47:	41 5c                	pop    %r12
  401a49:	c3                   	retq   

0000000000401a4a <touch3>:
  401a4a:	53                   	push   %rbx
  401a4b:	48 89 fb             	mov    %rdi,%rbx
  401a4e:	c7 05 c4 3a 20 00 03 	movl   $0x3,0x203ac4(%rip)        # 60551c <vlevel>
  401a55:	00 00 00 
  401a58:	48 89 fe             	mov    %rdi,%rsi
  401a5b:	8b 3d c3 3a 20 00    	mov    0x203ac3(%rip),%edi        # 605524 <cookie>
  401a61:	e8 33 ff ff ff       	callq  401999 <hexmatch>
  401a66:	85 c0                	test   %eax,%eax
  401a68:	74 23                	je     401a8d <touch3+0x43>
  401a6a:	48 89 da             	mov    %rbx,%rdx
  401a6d:	be 68 33 40 00       	mov    $0x403368,%esi
  401a72:	bf 01 00 00 00       	mov    $0x1,%edi
  401a77:	b8 00 00 00 00       	mov    $0x0,%eax
  401a7c:	e8 9f f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401a81:	bf 03 00 00 00       	mov    $0x3,%edi
  401a86:	e8 3b 03 00 00       	callq  401dc6 <validate>
  401a8b:	eb 21                	jmp    401aae <touch3+0x64>
  401a8d:	48 89 da             	mov    %rbx,%rdx
  401a90:	be 90 33 40 00       	mov    $0x403390,%esi
  401a95:	bf 01 00 00 00       	mov    $0x1,%edi
  401a9a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a9f:	e8 7c f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401aa4:	bf 03 00 00 00       	mov    $0x3,%edi
  401aa9:	e8 da 03 00 00       	callq  401e88 <fail>
  401aae:	bf 00 00 00 00       	mov    $0x0,%edi
  401ab3:	e8 b8 f3 ff ff       	callq  400e70 <exit@plt>

0000000000401ab8 <test>:
  401ab8:	48 83 ec 08          	sub    $0x8,%rsp
  401abc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac1:	e8 31 fe ff ff       	callq  4018f7 <getbuf>
  401ac6:	89 c2                	mov    %eax,%edx
  401ac8:	be b8 33 40 00       	mov    $0x4033b8,%esi
  401acd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ad2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad7:	e8 44 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401adc:	48 83 c4 08          	add    $0x8,%rsp
  401ae0:	c3                   	retq   

0000000000401ae1 <save_char>:
  401ae1:	8b 05 5d 46 20 00    	mov    0x20465d(%rip),%eax        # 606144 <gets_cnt>
  401ae7:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401aec:	7f 49                	jg     401b37 <save_char+0x56>
  401aee:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401af1:	89 f9                	mov    %edi,%ecx
  401af3:	c0 e9 04             	shr    $0x4,%cl
  401af6:	83 e1 0f             	and    $0xf,%ecx
  401af9:	0f b6 b1 e0 36 40 00 	movzbl 0x4036e0(%rcx),%esi
  401b00:	48 63 ca             	movslq %edx,%rcx
  401b03:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b0a:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401b0d:	83 e7 0f             	and    $0xf,%edi
  401b10:	0f b6 b7 e0 36 40 00 	movzbl 0x4036e0(%rdi),%esi
  401b17:	48 63 c9             	movslq %ecx,%rcx
  401b1a:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b21:	83 c2 02             	add    $0x2,%edx
  401b24:	48 63 d2             	movslq %edx,%rdx
  401b27:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401b2e:	83 c0 01             	add    $0x1,%eax
  401b31:	89 05 0d 46 20 00    	mov    %eax,0x20460d(%rip)        # 606144 <gets_cnt>
  401b37:	f3 c3                	repz retq 

0000000000401b39 <save_term>:
  401b39:	8b 05 05 46 20 00    	mov    0x204605(%rip),%eax        # 606144 <gets_cnt>
  401b3f:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401b42:	48 98                	cltq   
  401b44:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401b4b:	c3                   	retq   

0000000000401b4c <check_fail>:
  401b4c:	48 83 ec 08          	sub    $0x8,%rsp
  401b50:	0f be 15 f1 45 20 00 	movsbl 0x2045f1(%rip),%edx        # 606148 <target_prefix>
  401b57:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401b5d:	8b 0d b5 39 20 00    	mov    0x2039b5(%rip),%ecx        # 605518 <check_level>
  401b63:	be db 33 40 00       	mov    $0x4033db,%esi
  401b68:	bf 01 00 00 00       	mov    $0x1,%edi
  401b6d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b72:	e8 a9 f2 ff ff       	callq  400e20 <__printf_chk@plt>
  401b77:	bf 01 00 00 00       	mov    $0x1,%edi
  401b7c:	e8 ef f2 ff ff       	callq  400e70 <exit@plt>

0000000000401b81 <Gets>:
  401b81:	41 54                	push   %r12
  401b83:	55                   	push   %rbp
  401b84:	53                   	push   %rbx
  401b85:	49 89 fc             	mov    %rdi,%r12
  401b88:	c7 05 b2 45 20 00 00 	movl   $0x0,0x2045b2(%rip)        # 606144 <gets_cnt>
  401b8f:	00 00 00 
  401b92:	48 89 fb             	mov    %rdi,%rbx
  401b95:	eb 11                	jmp    401ba8 <Gets+0x27>
  401b97:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401b9b:	88 03                	mov    %al,(%rbx)
  401b9d:	0f b6 f8             	movzbl %al,%edi
  401ba0:	e8 3c ff ff ff       	callq  401ae1 <save_char>
  401ba5:	48 89 eb             	mov    %rbp,%rbx
  401ba8:	48 8b 3d 61 39 20 00 	mov    0x203961(%rip),%rdi        # 605510 <infile>
  401baf:	e8 3c f2 ff ff       	callq  400df0 <_IO_getc@plt>
  401bb4:	83 f8 ff             	cmp    $0xffffffff,%eax
  401bb7:	74 05                	je     401bbe <Gets+0x3d>
  401bb9:	83 f8 0a             	cmp    $0xa,%eax
  401bbc:	75 d9                	jne    401b97 <Gets+0x16>
  401bbe:	c6 03 00             	movb   $0x0,(%rbx)
  401bc1:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc6:	e8 6e ff ff ff       	callq  401b39 <save_term>
  401bcb:	4c 89 e0             	mov    %r12,%rax
  401bce:	5b                   	pop    %rbx
  401bcf:	5d                   	pop    %rbp
  401bd0:	41 5c                	pop    %r12
  401bd2:	c3                   	retq   

0000000000401bd3 <notify_server>:
  401bd3:	53                   	push   %rbx
  401bd4:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401bdb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401be2:	00 00 
  401be4:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401beb:	00 
  401bec:	31 c0                	xor    %eax,%eax
  401bee:	83 3d 33 39 20 00 00 	cmpl   $0x0,0x203933(%rip)        # 605528 <is_checker>
  401bf5:	0f 85 aa 01 00 00    	jne    401da5 <notify_server+0x1d2>
  401bfb:	89 fb                	mov    %edi,%ebx
  401bfd:	8b 05 41 45 20 00    	mov    0x204541(%rip),%eax        # 606144 <gets_cnt>
  401c03:	83 c0 64             	add    $0x64,%eax
  401c06:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401c0b:	7e 1e                	jle    401c2b <notify_server+0x58>
  401c0d:	be 10 35 40 00       	mov    $0x403510,%esi
  401c12:	bf 01 00 00 00       	mov    $0x1,%edi
  401c17:	b8 00 00 00 00       	mov    $0x0,%eax
  401c1c:	e8 ff f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401c21:	bf 01 00 00 00       	mov    $0x1,%edi
  401c26:	e8 45 f2 ff ff       	callq  400e70 <exit@plt>
  401c2b:	0f be 05 16 45 20 00 	movsbl 0x204516(%rip),%eax        # 606148 <target_prefix>
  401c32:	83 3d 6f 38 20 00 00 	cmpl   $0x0,0x20386f(%rip)        # 6054a8 <notify>
  401c39:	74 08                	je     401c43 <notify_server+0x70>
  401c3b:	8b 15 df 38 20 00    	mov    0x2038df(%rip),%edx        # 605520 <authkey>
  401c41:	eb 05                	jmp    401c48 <notify_server+0x75>
  401c43:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401c48:	85 db                	test   %ebx,%ebx
  401c4a:	74 08                	je     401c54 <notify_server+0x81>
  401c4c:	41 b9 f1 33 40 00    	mov    $0x4033f1,%r9d
  401c52:	eb 06                	jmp    401c5a <notify_server+0x87>
  401c54:	41 b9 f6 33 40 00    	mov    $0x4033f6,%r9d
  401c5a:	68 40 55 60 00       	pushq  $0x605540
  401c5f:	56                   	push   %rsi
  401c60:	50                   	push   %rax
  401c61:	52                   	push   %rdx
  401c62:	44 8b 05 ff 34 20 00 	mov    0x2034ff(%rip),%r8d        # 605168 <target_id>
  401c69:	b9 fb 33 40 00       	mov    $0x4033fb,%ecx
  401c6e:	ba 00 20 00 00       	mov    $0x2000,%edx
  401c73:	be 01 00 00 00       	mov    $0x1,%esi
  401c78:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401c7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401c82:	e8 19 f2 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401c87:	48 83 c4 20          	add    $0x20,%rsp
  401c8b:	83 3d 16 38 20 00 00 	cmpl   $0x0,0x203816(%rip)        # 6054a8 <notify>
  401c92:	0f 84 81 00 00 00    	je     401d19 <notify_server+0x146>
  401c98:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401c9f:	00 
  401ca0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401ca6:	48 89 e1             	mov    %rsp,%rcx
  401ca9:	48 8b 15 c0 34 20 00 	mov    0x2034c0(%rip),%rdx        # 605170 <lab>
  401cb0:	48 8b 35 c1 34 20 00 	mov    0x2034c1(%rip),%rsi        # 605178 <course>
  401cb7:	48 8b 3d a2 34 20 00 	mov    0x2034a2(%rip),%rdi        # 605160 <user_id>
  401cbe:	e8 0e 11 00 00       	callq  402dd1 <driver_post>
  401cc3:	85 c0                	test   %eax,%eax
  401cc5:	79 26                	jns    401ced <notify_server+0x11a>
  401cc7:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401cce:	00 
  401ccf:	be 17 34 40 00       	mov    $0x403417,%esi
  401cd4:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cde:	e8 3d f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401ce3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ce8:	e8 83 f1 ff ff       	callq  400e70 <exit@plt>
  401ced:	85 db                	test   %ebx,%ebx
  401cef:	74 19                	je     401d0a <notify_server+0x137>
  401cf1:	bf 40 35 40 00       	mov    $0x403540,%edi
  401cf6:	e8 f5 ef ff ff       	callq  400cf0 <puts@plt>
  401cfb:	bf 23 34 40 00       	mov    $0x403423,%edi
  401d00:	e8 eb ef ff ff       	callq  400cf0 <puts@plt>
  401d05:	e9 9b 00 00 00       	jmpq   401da5 <notify_server+0x1d2>
  401d0a:	bf 2d 34 40 00       	mov    $0x40342d,%edi
  401d0f:	e8 dc ef ff ff       	callq  400cf0 <puts@plt>
  401d14:	e9 8c 00 00 00       	jmpq   401da5 <notify_server+0x1d2>
  401d19:	85 db                	test   %ebx,%ebx
  401d1b:	74 07                	je     401d24 <notify_server+0x151>
  401d1d:	ba f1 33 40 00       	mov    $0x4033f1,%edx
  401d22:	eb 05                	jmp    401d29 <notify_server+0x156>
  401d24:	ba f6 33 40 00       	mov    $0x4033f6,%edx
  401d29:	be 78 35 40 00       	mov    $0x403578,%esi
  401d2e:	bf 01 00 00 00       	mov    $0x1,%edi
  401d33:	b8 00 00 00 00       	mov    $0x0,%eax
  401d38:	e8 e3 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d3d:	48 8b 15 1c 34 20 00 	mov    0x20341c(%rip),%rdx        # 605160 <user_id>
  401d44:	be 34 34 40 00       	mov    $0x403434,%esi
  401d49:	bf 01 00 00 00       	mov    $0x1,%edi
  401d4e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d53:	e8 c8 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d58:	48 8b 15 19 34 20 00 	mov    0x203419(%rip),%rdx        # 605178 <course>
  401d5f:	be 41 34 40 00       	mov    $0x403441,%esi
  401d64:	bf 01 00 00 00       	mov    $0x1,%edi
  401d69:	b8 00 00 00 00       	mov    $0x0,%eax
  401d6e:	e8 ad f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d73:	48 8b 15 f6 33 20 00 	mov    0x2033f6(%rip),%rdx        # 605170 <lab>
  401d7a:	be 4d 34 40 00       	mov    $0x40344d,%esi
  401d7f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d84:	b8 00 00 00 00       	mov    $0x0,%eax
  401d89:	e8 92 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d8e:	48 89 e2             	mov    %rsp,%rdx
  401d91:	be 56 34 40 00       	mov    $0x403456,%esi
  401d96:	bf 01 00 00 00       	mov    $0x1,%edi
  401d9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401da0:	e8 7b f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401da5:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401dac:	00 
  401dad:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401db4:	00 00 
  401db6:	74 05                	je     401dbd <notify_server+0x1ea>
  401db8:	e8 53 ef ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401dbd:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401dc4:	5b                   	pop    %rbx
  401dc5:	c3                   	retq   

0000000000401dc6 <validate>:
  401dc6:	53                   	push   %rbx
  401dc7:	89 fb                	mov    %edi,%ebx
  401dc9:	83 3d 58 37 20 00 00 	cmpl   $0x0,0x203758(%rip)        # 605528 <is_checker>
  401dd0:	74 6b                	je     401e3d <validate+0x77>
  401dd2:	39 3d 44 37 20 00    	cmp    %edi,0x203744(%rip)        # 60551c <vlevel>
  401dd8:	74 14                	je     401dee <validate+0x28>
  401dda:	bf 62 34 40 00       	mov    $0x403462,%edi
  401ddf:	e8 0c ef ff ff       	callq  400cf0 <puts@plt>
  401de4:	b8 00 00 00 00       	mov    $0x0,%eax
  401de9:	e8 5e fd ff ff       	callq  401b4c <check_fail>
  401dee:	8b 15 24 37 20 00    	mov    0x203724(%rip),%edx        # 605518 <check_level>
  401df4:	39 d7                	cmp    %edx,%edi
  401df6:	74 20                	je     401e18 <validate+0x52>
  401df8:	89 f9                	mov    %edi,%ecx
  401dfa:	be a0 35 40 00       	mov    $0x4035a0,%esi
  401dff:	bf 01 00 00 00       	mov    $0x1,%edi
  401e04:	b8 00 00 00 00       	mov    $0x0,%eax
  401e09:	e8 12 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401e0e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e13:	e8 34 fd ff ff       	callq  401b4c <check_fail>
  401e18:	0f be 15 29 43 20 00 	movsbl 0x204329(%rip),%edx        # 606148 <target_prefix>
  401e1f:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401e25:	89 f9                	mov    %edi,%ecx
  401e27:	be 80 34 40 00       	mov    $0x403480,%esi
  401e2c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e31:	b8 00 00 00 00       	mov    $0x0,%eax
  401e36:	e8 e5 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e3b:	eb 49                	jmp    401e86 <validate+0xc0>
  401e3d:	3b 3d d9 36 20 00    	cmp    0x2036d9(%rip),%edi        # 60551c <vlevel>
  401e43:	74 18                	je     401e5d <validate+0x97>
  401e45:	bf 62 34 40 00       	mov    $0x403462,%edi
  401e4a:	e8 a1 ee ff ff       	callq  400cf0 <puts@plt>
  401e4f:	89 de                	mov    %ebx,%esi
  401e51:	bf 00 00 00 00       	mov    $0x0,%edi
  401e56:	e8 78 fd ff ff       	callq  401bd3 <notify_server>
  401e5b:	eb 29                	jmp    401e86 <validate+0xc0>
  401e5d:	0f be 0d e4 42 20 00 	movsbl 0x2042e4(%rip),%ecx        # 606148 <target_prefix>
  401e64:	89 fa                	mov    %edi,%edx
  401e66:	be c8 35 40 00       	mov    $0x4035c8,%esi
  401e6b:	bf 01 00 00 00       	mov    $0x1,%edi
  401e70:	b8 00 00 00 00       	mov    $0x0,%eax
  401e75:	e8 a6 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e7a:	89 de                	mov    %ebx,%esi
  401e7c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e81:	e8 4d fd ff ff       	callq  401bd3 <notify_server>
  401e86:	5b                   	pop    %rbx
  401e87:	c3                   	retq   

0000000000401e88 <fail>:
  401e88:	48 83 ec 08          	sub    $0x8,%rsp
  401e8c:	83 3d 95 36 20 00 00 	cmpl   $0x0,0x203695(%rip)        # 605528 <is_checker>
  401e93:	74 0a                	je     401e9f <fail+0x17>
  401e95:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9a:	e8 ad fc ff ff       	callq  401b4c <check_fail>
  401e9f:	89 fe                	mov    %edi,%esi
  401ea1:	bf 00 00 00 00       	mov    $0x0,%edi
  401ea6:	e8 28 fd ff ff       	callq  401bd3 <notify_server>
  401eab:	48 83 c4 08          	add    $0x8,%rsp
  401eaf:	c3                   	retq   

0000000000401eb0 <bushandler>:
  401eb0:	48 83 ec 08          	sub    $0x8,%rsp
  401eb4:	83 3d 6d 36 20 00 00 	cmpl   $0x0,0x20366d(%rip)        # 605528 <is_checker>
  401ebb:	74 14                	je     401ed1 <bushandler+0x21>
  401ebd:	bf 95 34 40 00       	mov    $0x403495,%edi
  401ec2:	e8 29 ee ff ff       	callq  400cf0 <puts@plt>
  401ec7:	b8 00 00 00 00       	mov    $0x0,%eax
  401ecc:	e8 7b fc ff ff       	callq  401b4c <check_fail>
  401ed1:	bf 00 36 40 00       	mov    $0x403600,%edi
  401ed6:	e8 15 ee ff ff       	callq  400cf0 <puts@plt>
  401edb:	bf 9f 34 40 00       	mov    $0x40349f,%edi
  401ee0:	e8 0b ee ff ff       	callq  400cf0 <puts@plt>
  401ee5:	be 00 00 00 00       	mov    $0x0,%esi
  401eea:	bf 00 00 00 00       	mov    $0x0,%edi
  401eef:	e8 df fc ff ff       	callq  401bd3 <notify_server>
  401ef4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ef9:	e8 72 ef ff ff       	callq  400e70 <exit@plt>

0000000000401efe <seghandler>:
  401efe:	48 83 ec 08          	sub    $0x8,%rsp
  401f02:	83 3d 1f 36 20 00 00 	cmpl   $0x0,0x20361f(%rip)        # 605528 <is_checker>
  401f09:	74 14                	je     401f1f <seghandler+0x21>
  401f0b:	bf b5 34 40 00       	mov    $0x4034b5,%edi
  401f10:	e8 db ed ff ff       	callq  400cf0 <puts@plt>
  401f15:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1a:	e8 2d fc ff ff       	callq  401b4c <check_fail>
  401f1f:	bf 20 36 40 00       	mov    $0x403620,%edi
  401f24:	e8 c7 ed ff ff       	callq  400cf0 <puts@plt>
  401f29:	bf 9f 34 40 00       	mov    $0x40349f,%edi
  401f2e:	e8 bd ed ff ff       	callq  400cf0 <puts@plt>
  401f33:	be 00 00 00 00       	mov    $0x0,%esi
  401f38:	bf 00 00 00 00       	mov    $0x0,%edi
  401f3d:	e8 91 fc ff ff       	callq  401bd3 <notify_server>
  401f42:	bf 01 00 00 00       	mov    $0x1,%edi
  401f47:	e8 24 ef ff ff       	callq  400e70 <exit@plt>

0000000000401f4c <illegalhandler>:
  401f4c:	48 83 ec 08          	sub    $0x8,%rsp
  401f50:	83 3d d1 35 20 00 00 	cmpl   $0x0,0x2035d1(%rip)        # 605528 <is_checker>
  401f57:	74 14                	je     401f6d <illegalhandler+0x21>
  401f59:	bf c8 34 40 00       	mov    $0x4034c8,%edi
  401f5e:	e8 8d ed ff ff       	callq  400cf0 <puts@plt>
  401f63:	b8 00 00 00 00       	mov    $0x0,%eax
  401f68:	e8 df fb ff ff       	callq  401b4c <check_fail>
  401f6d:	bf 48 36 40 00       	mov    $0x403648,%edi
  401f72:	e8 79 ed ff ff       	callq  400cf0 <puts@plt>
  401f77:	bf 9f 34 40 00       	mov    $0x40349f,%edi
  401f7c:	e8 6f ed ff ff       	callq  400cf0 <puts@plt>
  401f81:	be 00 00 00 00       	mov    $0x0,%esi
  401f86:	bf 00 00 00 00       	mov    $0x0,%edi
  401f8b:	e8 43 fc ff ff       	callq  401bd3 <notify_server>
  401f90:	bf 01 00 00 00       	mov    $0x1,%edi
  401f95:	e8 d6 ee ff ff       	callq  400e70 <exit@plt>

0000000000401f9a <sigalrmhandler>:
  401f9a:	48 83 ec 08          	sub    $0x8,%rsp
  401f9e:	83 3d 83 35 20 00 00 	cmpl   $0x0,0x203583(%rip)        # 605528 <is_checker>
  401fa5:	74 14                	je     401fbb <sigalrmhandler+0x21>
  401fa7:	bf dc 34 40 00       	mov    $0x4034dc,%edi
  401fac:	e8 3f ed ff ff       	callq  400cf0 <puts@plt>
  401fb1:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb6:	e8 91 fb ff ff       	callq  401b4c <check_fail>
  401fbb:	ba 05 00 00 00       	mov    $0x5,%edx
  401fc0:	be 78 36 40 00       	mov    $0x403678,%esi
  401fc5:	bf 01 00 00 00       	mov    $0x1,%edi
  401fca:	b8 00 00 00 00       	mov    $0x0,%eax
  401fcf:	e8 4c ee ff ff       	callq  400e20 <__printf_chk@plt>
  401fd4:	be 00 00 00 00       	mov    $0x0,%esi
  401fd9:	bf 00 00 00 00       	mov    $0x0,%edi
  401fde:	e8 f0 fb ff ff       	callq  401bd3 <notify_server>
  401fe3:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe8:	e8 83 ee ff ff       	callq  400e70 <exit@plt>

0000000000401fed <launch>:
  401fed:	55                   	push   %rbp
  401fee:	48 89 e5             	mov    %rsp,%rbp
  401ff1:	48 83 ec 10          	sub    $0x10,%rsp
  401ff5:	48 89 fa             	mov    %rdi,%rdx
  401ff8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401fff:	00 00 
  402001:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402005:	31 c0                	xor    %eax,%eax
  402007:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  40200b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40200f:	48 29 c4             	sub    %rax,%rsp
  402012:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402017:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40201b:	be f4 00 00 00       	mov    $0xf4,%esi
  402020:	e8 0b ed ff ff       	callq  400d30 <memset@plt>
  402025:	48 8b 05 94 34 20 00 	mov    0x203494(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40202c:	48 39 05 dd 34 20 00 	cmp    %rax,0x2034dd(%rip)        # 605510 <infile>
  402033:	75 14                	jne    402049 <launch+0x5c>
  402035:	be e4 34 40 00       	mov    $0x4034e4,%esi
  40203a:	bf 01 00 00 00       	mov    $0x1,%edi
  40203f:	b8 00 00 00 00       	mov    $0x0,%eax
  402044:	e8 d7 ed ff ff       	callq  400e20 <__printf_chk@plt>
  402049:	c7 05 c9 34 20 00 00 	movl   $0x0,0x2034c9(%rip)        # 60551c <vlevel>
  402050:	00 00 00 
  402053:	b8 00 00 00 00       	mov    $0x0,%eax
  402058:	e8 5b fa ff ff       	callq  401ab8 <test>
  40205d:	83 3d c4 34 20 00 00 	cmpl   $0x0,0x2034c4(%rip)        # 605528 <is_checker>
  402064:	74 14                	je     40207a <launch+0x8d>
  402066:	bf f1 34 40 00       	mov    $0x4034f1,%edi
  40206b:	e8 80 ec ff ff       	callq  400cf0 <puts@plt>
  402070:	b8 00 00 00 00       	mov    $0x0,%eax
  402075:	e8 d2 fa ff ff       	callq  401b4c <check_fail>
  40207a:	bf fc 34 40 00       	mov    $0x4034fc,%edi
  40207f:	e8 6c ec ff ff       	callq  400cf0 <puts@plt>
  402084:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402088:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40208f:	00 00 
  402091:	74 05                	je     402098 <launch+0xab>
  402093:	e8 78 ec ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402098:	c9                   	leaveq 
  402099:	c3                   	retq   

000000000040209a <stable_launch>:
  40209a:	53                   	push   %rbx
  40209b:	48 89 3d 66 34 20 00 	mov    %rdi,0x203466(%rip)        # 605508 <global_offset>
  4020a2:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4020a8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4020ae:	b9 32 01 00 00       	mov    $0x132,%ecx
  4020b3:	ba 07 00 00 00       	mov    $0x7,%edx
  4020b8:	be 00 00 10 00       	mov    $0x100000,%esi
  4020bd:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4020c2:	e8 59 ec ff ff       	callq  400d20 <mmap@plt>
  4020c7:	48 89 c3             	mov    %rax,%rbx
  4020ca:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4020d0:	74 37                	je     402109 <stable_launch+0x6f>
  4020d2:	be 00 00 10 00       	mov    $0x100000,%esi
  4020d7:	48 89 c7             	mov    %rax,%rdi
  4020da:	e8 31 ed ff ff       	callq  400e10 <munmap@plt>
  4020df:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4020e4:	ba b0 36 40 00       	mov    $0x4036b0,%edx
  4020e9:	be 01 00 00 00       	mov    $0x1,%esi
  4020ee:	48 8b 3d eb 33 20 00 	mov    0x2033eb(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4020f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fa:	e8 91 ed ff ff       	callq  400e90 <__fprintf_chk@plt>
  4020ff:	bf 01 00 00 00       	mov    $0x1,%edi
  402104:	e8 67 ed ff ff       	callq  400e70 <exit@plt>
  402109:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402110:	48 89 15 39 40 20 00 	mov    %rdx,0x204039(%rip)        # 606150 <stack_top>
  402117:	48 89 e0             	mov    %rsp,%rax
  40211a:	48 89 d4             	mov    %rdx,%rsp
  40211d:	48 89 c2             	mov    %rax,%rdx
  402120:	48 89 15 d9 33 20 00 	mov    %rdx,0x2033d9(%rip)        # 605500 <global_save_stack>
  402127:	48 8b 3d da 33 20 00 	mov    0x2033da(%rip),%rdi        # 605508 <global_offset>
  40212e:	e8 ba fe ff ff       	callq  401fed <launch>
  402133:	48 8b 05 c6 33 20 00 	mov    0x2033c6(%rip),%rax        # 605500 <global_save_stack>
  40213a:	48 89 c4             	mov    %rax,%rsp
  40213d:	be 00 00 10 00       	mov    $0x100000,%esi
  402142:	48 89 df             	mov    %rbx,%rdi
  402145:	e8 c6 ec ff ff       	callq  400e10 <munmap@plt>
  40214a:	5b                   	pop    %rbx
  40214b:	c3                   	retq   

000000000040214c <rio_readinitb>:
  40214c:	89 37                	mov    %esi,(%rdi)
  40214e:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402155:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402159:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40215d:	c3                   	retq   

000000000040215e <sigalrm_handler>:
  40215e:	48 83 ec 08          	sub    $0x8,%rsp
  402162:	b9 00 00 00 00       	mov    $0x0,%ecx
  402167:	ba f0 36 40 00       	mov    $0x4036f0,%edx
  40216c:	be 01 00 00 00       	mov    $0x1,%esi
  402171:	48 8b 3d 68 33 20 00 	mov    0x203368(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402178:	b8 00 00 00 00       	mov    $0x0,%eax
  40217d:	e8 0e ed ff ff       	callq  400e90 <__fprintf_chk@plt>
  402182:	bf 01 00 00 00       	mov    $0x1,%edi
  402187:	e8 e4 ec ff ff       	callq  400e70 <exit@plt>

000000000040218c <rio_writen>:
  40218c:	41 55                	push   %r13
  40218e:	41 54                	push   %r12
  402190:	55                   	push   %rbp
  402191:	53                   	push   %rbx
  402192:	48 83 ec 08          	sub    $0x8,%rsp
  402196:	41 89 fc             	mov    %edi,%r12d
  402199:	48 89 f5             	mov    %rsi,%rbp
  40219c:	49 89 d5             	mov    %rdx,%r13
  40219f:	48 89 d3             	mov    %rdx,%rbx
  4021a2:	eb 28                	jmp    4021cc <rio_writen+0x40>
  4021a4:	48 89 da             	mov    %rbx,%rdx
  4021a7:	48 89 ee             	mov    %rbp,%rsi
  4021aa:	44 89 e7             	mov    %r12d,%edi
  4021ad:	e8 4e eb ff ff       	callq  400d00 <write@plt>
  4021b2:	48 85 c0             	test   %rax,%rax
  4021b5:	7f 0f                	jg     4021c6 <rio_writen+0x3a>
  4021b7:	e8 f4 ea ff ff       	callq  400cb0 <__errno_location@plt>
  4021bc:	83 38 04             	cmpl   $0x4,(%rax)
  4021bf:	75 15                	jne    4021d6 <rio_writen+0x4a>
  4021c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c6:	48 29 c3             	sub    %rax,%rbx
  4021c9:	48 01 c5             	add    %rax,%rbp
  4021cc:	48 85 db             	test   %rbx,%rbx
  4021cf:	75 d3                	jne    4021a4 <rio_writen+0x18>
  4021d1:	4c 89 e8             	mov    %r13,%rax
  4021d4:	eb 07                	jmp    4021dd <rio_writen+0x51>
  4021d6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021dd:	48 83 c4 08          	add    $0x8,%rsp
  4021e1:	5b                   	pop    %rbx
  4021e2:	5d                   	pop    %rbp
  4021e3:	41 5c                	pop    %r12
  4021e5:	41 5d                	pop    %r13
  4021e7:	c3                   	retq   

00000000004021e8 <rio_read>:
  4021e8:	41 55                	push   %r13
  4021ea:	41 54                	push   %r12
  4021ec:	55                   	push   %rbp
  4021ed:	53                   	push   %rbx
  4021ee:	48 83 ec 08          	sub    $0x8,%rsp
  4021f2:	48 89 fb             	mov    %rdi,%rbx
  4021f5:	49 89 f5             	mov    %rsi,%r13
  4021f8:	49 89 d4             	mov    %rdx,%r12
  4021fb:	eb 2e                	jmp    40222b <rio_read+0x43>
  4021fd:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402201:	8b 3b                	mov    (%rbx),%edi
  402203:	ba 00 20 00 00       	mov    $0x2000,%edx
  402208:	48 89 ee             	mov    %rbp,%rsi
  40220b:	e8 50 eb ff ff       	callq  400d60 <read@plt>
  402210:	89 43 04             	mov    %eax,0x4(%rbx)
  402213:	85 c0                	test   %eax,%eax
  402215:	79 0c                	jns    402223 <rio_read+0x3b>
  402217:	e8 94 ea ff ff       	callq  400cb0 <__errno_location@plt>
  40221c:	83 38 04             	cmpl   $0x4,(%rax)
  40221f:	74 0a                	je     40222b <rio_read+0x43>
  402221:	eb 37                	jmp    40225a <rio_read+0x72>
  402223:	85 c0                	test   %eax,%eax
  402225:	74 3c                	je     402263 <rio_read+0x7b>
  402227:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40222b:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40222e:	85 ed                	test   %ebp,%ebp
  402230:	7e cb                	jle    4021fd <rio_read+0x15>
  402232:	89 e8                	mov    %ebp,%eax
  402234:	49 39 c4             	cmp    %rax,%r12
  402237:	77 03                	ja     40223c <rio_read+0x54>
  402239:	44 89 e5             	mov    %r12d,%ebp
  40223c:	4c 63 e5             	movslq %ebp,%r12
  40223f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402243:	4c 89 e2             	mov    %r12,%rdx
  402246:	4c 89 ef             	mov    %r13,%rdi
  402249:	e8 72 eb ff ff       	callq  400dc0 <memcpy@plt>
  40224e:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402252:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402255:	4c 89 e0             	mov    %r12,%rax
  402258:	eb 0e                	jmp    402268 <rio_read+0x80>
  40225a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402261:	eb 05                	jmp    402268 <rio_read+0x80>
  402263:	b8 00 00 00 00       	mov    $0x0,%eax
  402268:	48 83 c4 08          	add    $0x8,%rsp
  40226c:	5b                   	pop    %rbx
  40226d:	5d                   	pop    %rbp
  40226e:	41 5c                	pop    %r12
  402270:	41 5d                	pop    %r13
  402272:	c3                   	retq   

0000000000402273 <rio_readlineb>:
  402273:	41 55                	push   %r13
  402275:	41 54                	push   %r12
  402277:	55                   	push   %rbp
  402278:	53                   	push   %rbx
  402279:	48 83 ec 18          	sub    $0x18,%rsp
  40227d:	49 89 fd             	mov    %rdi,%r13
  402280:	48 89 f5             	mov    %rsi,%rbp
  402283:	49 89 d4             	mov    %rdx,%r12
  402286:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40228d:	00 00 
  40228f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402294:	31 c0                	xor    %eax,%eax
  402296:	bb 01 00 00 00       	mov    $0x1,%ebx
  40229b:	eb 3f                	jmp    4022dc <rio_readlineb+0x69>
  40229d:	ba 01 00 00 00       	mov    $0x1,%edx
  4022a2:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4022a7:	4c 89 ef             	mov    %r13,%rdi
  4022aa:	e8 39 ff ff ff       	callq  4021e8 <rio_read>
  4022af:	83 f8 01             	cmp    $0x1,%eax
  4022b2:	75 15                	jne    4022c9 <rio_readlineb+0x56>
  4022b4:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4022b8:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4022bd:	88 55 00             	mov    %dl,0x0(%rbp)
  4022c0:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4022c5:	75 0e                	jne    4022d5 <rio_readlineb+0x62>
  4022c7:	eb 1a                	jmp    4022e3 <rio_readlineb+0x70>
  4022c9:	85 c0                	test   %eax,%eax
  4022cb:	75 22                	jne    4022ef <rio_readlineb+0x7c>
  4022cd:	48 83 fb 01          	cmp    $0x1,%rbx
  4022d1:	75 13                	jne    4022e6 <rio_readlineb+0x73>
  4022d3:	eb 23                	jmp    4022f8 <rio_readlineb+0x85>
  4022d5:	48 83 c3 01          	add    $0x1,%rbx
  4022d9:	48 89 c5             	mov    %rax,%rbp
  4022dc:	4c 39 e3             	cmp    %r12,%rbx
  4022df:	72 bc                	jb     40229d <rio_readlineb+0x2a>
  4022e1:	eb 03                	jmp    4022e6 <rio_readlineb+0x73>
  4022e3:	48 89 c5             	mov    %rax,%rbp
  4022e6:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4022ea:	48 89 d8             	mov    %rbx,%rax
  4022ed:	eb 0e                	jmp    4022fd <rio_readlineb+0x8a>
  4022ef:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022f6:	eb 05                	jmp    4022fd <rio_readlineb+0x8a>
  4022f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4022fd:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402302:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402309:	00 00 
  40230b:	74 05                	je     402312 <rio_readlineb+0x9f>
  40230d:	e8 fe e9 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402312:	48 83 c4 18          	add    $0x18,%rsp
  402316:	5b                   	pop    %rbx
  402317:	5d                   	pop    %rbp
  402318:	41 5c                	pop    %r12
  40231a:	41 5d                	pop    %r13
  40231c:	c3                   	retq   

000000000040231d <urlencode>:
  40231d:	41 54                	push   %r12
  40231f:	55                   	push   %rbp
  402320:	53                   	push   %rbx
  402321:	48 83 ec 10          	sub    $0x10,%rsp
  402325:	48 89 fb             	mov    %rdi,%rbx
  402328:	48 89 f5             	mov    %rsi,%rbp
  40232b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402332:	00 00 
  402334:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402339:	31 c0                	xor    %eax,%eax
  40233b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402342:	f2 ae                	repnz scas %es:(%rdi),%al
  402344:	48 f7 d1             	not    %rcx
  402347:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40234a:	e9 aa 00 00 00       	jmpq   4023f9 <urlencode+0xdc>
  40234f:	44 0f b6 03          	movzbl (%rbx),%r8d
  402353:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402357:	0f 94 c2             	sete   %dl
  40235a:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40235e:	0f 94 c0             	sete   %al
  402361:	08 c2                	or     %al,%dl
  402363:	75 24                	jne    402389 <urlencode+0x6c>
  402365:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402369:	74 1e                	je     402389 <urlencode+0x6c>
  40236b:	41 80 f8 5f          	cmp    $0x5f,%r8b
  40236f:	74 18                	je     402389 <urlencode+0x6c>
  402371:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402375:	3c 09                	cmp    $0x9,%al
  402377:	76 10                	jbe    402389 <urlencode+0x6c>
  402379:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40237d:	3c 19                	cmp    $0x19,%al
  40237f:	76 08                	jbe    402389 <urlencode+0x6c>
  402381:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402385:	3c 19                	cmp    $0x19,%al
  402387:	77 0a                	ja     402393 <urlencode+0x76>
  402389:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40238d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402391:	eb 5f                	jmp    4023f2 <urlencode+0xd5>
  402393:	41 80 f8 20          	cmp    $0x20,%r8b
  402397:	75 0a                	jne    4023a3 <urlencode+0x86>
  402399:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40239d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023a1:	eb 4f                	jmp    4023f2 <urlencode+0xd5>
  4023a3:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4023a7:	3c 5f                	cmp    $0x5f,%al
  4023a9:	0f 96 c2             	setbe  %dl
  4023ac:	41 80 f8 09          	cmp    $0x9,%r8b
  4023b0:	0f 94 c0             	sete   %al
  4023b3:	08 c2                	or     %al,%dl
  4023b5:	74 50                	je     402407 <urlencode+0xea>
  4023b7:	45 0f b6 c0          	movzbl %r8b,%r8d
  4023bb:	b9 a8 37 40 00       	mov    $0x4037a8,%ecx
  4023c0:	ba 08 00 00 00       	mov    $0x8,%edx
  4023c5:	be 01 00 00 00       	mov    $0x1,%esi
  4023ca:	48 89 e7             	mov    %rsp,%rdi
  4023cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d2:	e8 c9 ea ff ff       	callq  400ea0 <__sprintf_chk@plt>
  4023d7:	0f b6 04 24          	movzbl (%rsp),%eax
  4023db:	88 45 00             	mov    %al,0x0(%rbp)
  4023de:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4023e3:	88 45 01             	mov    %al,0x1(%rbp)
  4023e6:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4023eb:	88 45 02             	mov    %al,0x2(%rbp)
  4023ee:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4023f2:	48 83 c3 01          	add    $0x1,%rbx
  4023f6:	44 89 e0             	mov    %r12d,%eax
  4023f9:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4023fd:	85 c0                	test   %eax,%eax
  4023ff:	0f 85 4a ff ff ff    	jne    40234f <urlencode+0x32>
  402405:	eb 05                	jmp    40240c <urlencode+0xef>
  402407:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40240c:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402411:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402418:	00 00 
  40241a:	74 05                	je     402421 <urlencode+0x104>
  40241c:	e8 ef e8 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402421:	48 83 c4 10          	add    $0x10,%rsp
  402425:	5b                   	pop    %rbx
  402426:	5d                   	pop    %rbp
  402427:	41 5c                	pop    %r12
  402429:	c3                   	retq   

000000000040242a <submitr>:
  40242a:	41 57                	push   %r15
  40242c:	41 56                	push   %r14
  40242e:	41 55                	push   %r13
  402430:	41 54                	push   %r12
  402432:	55                   	push   %rbp
  402433:	53                   	push   %rbx
  402434:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40243b:	49 89 fd             	mov    %rdi,%r13
  40243e:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  402442:	48 89 14 24          	mov    %rdx,(%rsp)
  402446:	49 89 ce             	mov    %rcx,%r14
  402449:	4d 89 c7             	mov    %r8,%r15
  40244c:	4d 89 cc             	mov    %r9,%r12
  40244f:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  402456:	00 
  402457:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40245e:	00 00 
  402460:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  402467:	00 
  402468:	31 c0                	xor    %eax,%eax
  40246a:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  402471:	00 
  402472:	ba 00 00 00 00       	mov    $0x0,%edx
  402477:	be 01 00 00 00       	mov    $0x1,%esi
  40247c:	bf 02 00 00 00       	mov    $0x2,%edi
  402481:	e8 2a ea ff ff       	callq  400eb0 <socket@plt>
  402486:	85 c0                	test   %eax,%eax
  402488:	79 4e                	jns    4024d8 <submitr+0xae>
  40248a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402491:	3a 20 43 
  402494:	48 89 03             	mov    %rax,(%rbx)
  402497:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40249e:	20 75 6e 
  4024a1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024a5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024ac:	74 6f 20 
  4024af:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024b3:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4024ba:	65 20 73 
  4024bd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024c1:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4024c8:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4024ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024d3:	e9 b3 06 00 00       	jmpq   402b8b <submitr+0x761>
  4024d8:	89 c5                	mov    %eax,%ebp
  4024da:	4c 89 ef             	mov    %r13,%rdi
  4024dd:	e8 ae e8 ff ff       	callq  400d90 <gethostbyname@plt>
  4024e2:	48 85 c0             	test   %rax,%rax
  4024e5:	75 75                	jne    40255c <submitr+0x132>
  4024e7:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4024ee:	3a 20 44 
  4024f1:	48 89 03             	mov    %rax,(%rbx)
  4024f4:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4024fb:	20 75 6e 
  4024fe:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402502:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402509:	74 6f 20 
  40250c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402510:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402517:	76 65 20 
  40251a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40251e:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402525:	61 62 20 
  402528:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40252c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402533:	72 20 61 
  402536:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40253a:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  402541:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  402547:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  40254b:	89 ef                	mov    %ebp,%edi
  40254d:	e8 fe e7 ff ff       	callq  400d50 <close@plt>
  402552:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402557:	e9 2f 06 00 00       	jmpq   402b8b <submitr+0x761>
  40255c:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  402563:	00 00 
  402565:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  40256c:	00 00 
  40256e:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  402575:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402579:	48 8b 40 18          	mov    0x18(%rax),%rax
  40257d:	48 8b 30             	mov    (%rax),%rsi
  402580:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  402585:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40258a:	e8 11 e8 ff ff       	callq  400da0 <__memmove_chk@plt>
  40258f:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
  402594:	66 c1 c8 08          	ror    $0x8,%ax
  402598:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  40259d:	ba 10 00 00 00       	mov    $0x10,%edx
  4025a2:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  4025a7:	89 ef                	mov    %ebp,%edi
  4025a9:	e8 d2 e8 ff ff       	callq  400e80 <connect@plt>
  4025ae:	85 c0                	test   %eax,%eax
  4025b0:	79 67                	jns    402619 <submitr+0x1ef>
  4025b2:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4025b9:	3a 20 55 
  4025bc:	48 89 03             	mov    %rax,(%rbx)
  4025bf:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4025c6:	20 74 6f 
  4025c9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025cd:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4025d4:	65 63 74 
  4025d7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025db:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4025e2:	68 65 20 
  4025e5:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025e9:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4025f0:	61 62 20 
  4025f3:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025f7:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  4025fe:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  402604:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402608:	89 ef                	mov    %ebp,%edi
  40260a:	e8 41 e7 ff ff       	callq  400d50 <close@plt>
  40260f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402614:	e9 72 05 00 00       	jmpq   402b8b <submitr+0x761>
  402619:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402620:	b8 00 00 00 00       	mov    $0x0,%eax
  402625:	48 89 f1             	mov    %rsi,%rcx
  402628:	4c 89 e7             	mov    %r12,%rdi
  40262b:	f2 ae                	repnz scas %es:(%rdi),%al
  40262d:	48 f7 d1             	not    %rcx
  402630:	48 89 ca             	mov    %rcx,%rdx
  402633:	48 89 f1             	mov    %rsi,%rcx
  402636:	48 8b 3c 24          	mov    (%rsp),%rdi
  40263a:	f2 ae                	repnz scas %es:(%rdi),%al
  40263c:	48 f7 d1             	not    %rcx
  40263f:	49 89 c8             	mov    %rcx,%r8
  402642:	48 89 f1             	mov    %rsi,%rcx
  402645:	4c 89 f7             	mov    %r14,%rdi
  402648:	f2 ae                	repnz scas %es:(%rdi),%al
  40264a:	48 f7 d1             	not    %rcx
  40264d:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402652:	48 89 f1             	mov    %rsi,%rcx
  402655:	4c 89 ff             	mov    %r15,%rdi
  402658:	f2 ae                	repnz scas %es:(%rdi),%al
  40265a:	48 89 c8             	mov    %rcx,%rax
  40265d:	48 f7 d0             	not    %rax
  402660:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402665:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40266a:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402671:	00 
  402672:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402678:	76 72                	jbe    4026ec <submitr+0x2c2>
  40267a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402681:	3a 20 52 
  402684:	48 89 03             	mov    %rax,(%rbx)
  402687:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40268e:	20 73 74 
  402691:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402695:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40269c:	74 6f 6f 
  40269f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026a3:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4026aa:	65 2e 20 
  4026ad:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026b1:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4026b8:	61 73 65 
  4026bb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026bf:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  4026c6:	49 54 52 
  4026c9:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026cd:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4026d4:	55 46 00 
  4026d7:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026db:	89 ef                	mov    %ebp,%edi
  4026dd:	e8 6e e6 ff ff       	callq  400d50 <close@plt>
  4026e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026e7:	e9 9f 04 00 00       	jmpq   402b8b <submitr+0x761>
  4026ec:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  4026f3:	00 
  4026f4:	b9 00 04 00 00       	mov    $0x400,%ecx
  4026f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4026fe:	48 89 f7             	mov    %rsi,%rdi
  402701:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402704:	4c 89 e7             	mov    %r12,%rdi
  402707:	e8 11 fc ff ff       	callq  40231d <urlencode>
  40270c:	85 c0                	test   %eax,%eax
  40270e:	0f 89 8a 00 00 00    	jns    40279e <submitr+0x374>
  402714:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40271b:	3a 20 52 
  40271e:	48 89 03             	mov    %rax,(%rbx)
  402721:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402728:	20 73 74 
  40272b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40272f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402736:	63 6f 6e 
  402739:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40273d:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402744:	20 61 6e 
  402747:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40274b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402752:	67 61 6c 
  402755:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402759:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402760:	6e 70 72 
  402763:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402767:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40276e:	6c 65 20 
  402771:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402775:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  40277c:	63 74 65 
  40277f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402783:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402789:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  40278d:	89 ef                	mov    %ebp,%edi
  40278f:	e8 bc e5 ff ff       	callq  400d50 <close@plt>
  402794:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402799:	e9 ed 03 00 00       	jmpq   402b8b <submitr+0x761>
  40279e:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  4027a5:	00 
  4027a6:	48 83 ec 08          	sub    $0x8,%rsp
  4027aa:	41 55                	push   %r13
  4027ac:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  4027b3:	00 
  4027b4:	50                   	push   %rax
  4027b5:	41 56                	push   %r14
  4027b7:	4d 89 f9             	mov    %r15,%r9
  4027ba:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  4027bf:	b9 18 37 40 00       	mov    $0x403718,%ecx
  4027c4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027c9:	be 01 00 00 00       	mov    $0x1,%esi
  4027ce:	4c 89 e7             	mov    %r12,%rdi
  4027d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d6:	e8 c5 e6 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  4027db:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4027e7:	4c 89 e7             	mov    %r12,%rdi
  4027ea:	f2 ae                	repnz scas %es:(%rdi),%al
  4027ec:	48 f7 d1             	not    %rcx
  4027ef:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4027f3:	48 83 c4 20          	add    $0x20,%rsp
  4027f7:	4c 89 e6             	mov    %r12,%rsi
  4027fa:	89 ef                	mov    %ebp,%edi
  4027fc:	e8 8b f9 ff ff       	callq  40218c <rio_writen>
  402801:	48 85 c0             	test   %rax,%rax
  402804:	79 6b                	jns    402871 <submitr+0x447>
  402806:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40280d:	3a 20 43 
  402810:	48 89 03             	mov    %rax,(%rbx)
  402813:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40281a:	20 75 6e 
  40281d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402821:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402828:	74 6f 20 
  40282b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40282f:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402836:	20 74 6f 
  402839:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40283d:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402844:	41 75 74 
  402847:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40284b:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  402852:	73 65 72 
  402855:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402859:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  402860:	89 ef                	mov    %ebp,%edi
  402862:	e8 e9 e4 ff ff       	callq  400d50 <close@plt>
  402867:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40286c:	e9 1a 03 00 00       	jmpq   402b8b <submitr+0x761>
  402871:	89 ee                	mov    %ebp,%esi
  402873:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402878:	e8 cf f8 ff ff       	callq  40214c <rio_readinitb>
  40287d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402882:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402889:	00 
  40288a:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40288f:	e8 df f9 ff ff       	callq  402273 <rio_readlineb>
  402894:	48 85 c0             	test   %rax,%rax
  402897:	7f 7f                	jg     402918 <submitr+0x4ee>
  402899:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028a0:	3a 20 43 
  4028a3:	48 89 03             	mov    %rax,(%rbx)
  4028a6:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028ad:	20 75 6e 
  4028b0:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028b4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028bb:	74 6f 20 
  4028be:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028c2:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4028c9:	66 69 72 
  4028cc:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028d0:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4028d7:	61 64 65 
  4028da:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028de:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  4028e5:	6d 20 41 
  4028e8:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028ec:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  4028f3:	62 20 73 
  4028f6:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4028fa:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  402901:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  402907:	89 ef                	mov    %ebp,%edi
  402909:	e8 42 e4 ff ff       	callq  400d50 <close@plt>
  40290e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402913:	e9 73 02 00 00       	jmpq   402b8b <submitr+0x761>
  402918:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  40291f:	00 
  402920:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402925:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  40292c:	00 
  40292d:	be af 37 40 00       	mov    $0x4037af,%esi
  402932:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402939:	00 
  40293a:	b8 00 00 00 00       	mov    $0x0,%eax
  40293f:	e8 bc e4 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  402944:	e9 92 00 00 00       	jmpq   4029db <submitr+0x5b1>
  402949:	ba 00 20 00 00       	mov    $0x2000,%edx
  40294e:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402955:	00 
  402956:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40295b:	e8 13 f9 ff ff       	callq  402273 <rio_readlineb>
  402960:	48 85 c0             	test   %rax,%rax
  402963:	7f 76                	jg     4029db <submitr+0x5b1>
  402965:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40296c:	3a 20 43 
  40296f:	48 89 03             	mov    %rax,(%rbx)
  402972:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402979:	20 75 6e 
  40297c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402980:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402987:	74 6f 20 
  40298a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40298e:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402995:	68 65 61 
  402998:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40299c:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4029a3:	66 72 6f 
  4029a6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029aa:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  4029b1:	6f 6c 61 
  4029b4:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029b8:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  4029bf:	76 65 72 
  4029c2:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4029c6:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  4029ca:	89 ef                	mov    %ebp,%edi
  4029cc:	e8 7f e3 ff ff       	callq  400d50 <close@plt>
  4029d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029d6:	e9 b0 01 00 00       	jmpq   402b8b <submitr+0x761>
  4029db:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  4029e2:	00 
  4029e3:	b8 0d 00 00 00       	mov    $0xd,%eax
  4029e8:	29 d0                	sub    %edx,%eax
  4029ea:	75 1b                	jne    402a07 <submitr+0x5dd>
  4029ec:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  4029f3:	00 
  4029f4:	b8 0a 00 00 00       	mov    $0xa,%eax
  4029f9:	29 d0                	sub    %edx,%eax
  4029fb:	75 0a                	jne    402a07 <submitr+0x5dd>
  4029fd:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402a04:	00 
  402a05:	f7 d8                	neg    %eax
  402a07:	85 c0                	test   %eax,%eax
  402a09:	0f 85 3a ff ff ff    	jne    402949 <submitr+0x51f>
  402a0f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a14:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a1b:	00 
  402a1c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402a21:	e8 4d f8 ff ff       	callq  402273 <rio_readlineb>
  402a26:	48 85 c0             	test   %rax,%rax
  402a29:	0f 8f 80 00 00 00    	jg     402aaf <submitr+0x685>
  402a2f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a36:	3a 20 43 
  402a39:	48 89 03             	mov    %rax,(%rbx)
  402a3c:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a43:	20 75 6e 
  402a46:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402a4a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a51:	74 6f 20 
  402a54:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a58:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402a5f:	73 74 61 
  402a62:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a66:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402a6d:	65 73 73 
  402a70:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a74:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402a7b:	72 6f 6d 
  402a7e:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a82:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402a89:	6c 61 62 
  402a8c:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a90:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402a97:	65 72 00 
  402a9a:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402a9e:	89 ef                	mov    %ebp,%edi
  402aa0:	e8 ab e2 ff ff       	callq  400d50 <close@plt>
  402aa5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aaa:	e9 dc 00 00 00       	jmpq   402b8b <submitr+0x761>
  402aaf:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402ab4:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402abb:	74 37                	je     402af4 <submitr+0x6ca>
  402abd:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402ac4:	00 
  402ac5:	b9 78 37 40 00       	mov    $0x403778,%ecx
  402aca:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402ad1:	be 01 00 00 00       	mov    $0x1,%esi
  402ad6:	48 89 df             	mov    %rbx,%rdi
  402ad9:	b8 00 00 00 00       	mov    $0x0,%eax
  402ade:	e8 bd e3 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402ae3:	89 ef                	mov    %ebp,%edi
  402ae5:	e8 66 e2 ff ff       	callq  400d50 <close@plt>
  402aea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aef:	e9 97 00 00 00       	jmpq   402b8b <submitr+0x761>
  402af4:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402afb:	00 
  402afc:	48 89 df             	mov    %rbx,%rdi
  402aff:	e8 dc e1 ff ff       	callq  400ce0 <strcpy@plt>
  402b04:	89 ef                	mov    %ebp,%edi
  402b06:	e8 45 e2 ff ff       	callq  400d50 <close@plt>
  402b0b:	0f b6 03             	movzbl (%rbx),%eax
  402b0e:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402b13:	29 c2                	sub    %eax,%edx
  402b15:	75 22                	jne    402b39 <submitr+0x70f>
  402b17:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402b1b:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402b20:	29 c8                	sub    %ecx,%eax
  402b22:	75 17                	jne    402b3b <submitr+0x711>
  402b24:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402b28:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b2d:	29 c8                	sub    %ecx,%eax
  402b2f:	75 0a                	jne    402b3b <submitr+0x711>
  402b31:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402b35:	f7 d8                	neg    %eax
  402b37:	eb 02                	jmp    402b3b <submitr+0x711>
  402b39:	89 d0                	mov    %edx,%eax
  402b3b:	85 c0                	test   %eax,%eax
  402b3d:	74 40                	je     402b7f <submitr+0x755>
  402b3f:	bf c0 37 40 00       	mov    $0x4037c0,%edi
  402b44:	b9 05 00 00 00       	mov    $0x5,%ecx
  402b49:	48 89 de             	mov    %rbx,%rsi
  402b4c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b4e:	0f 97 c0             	seta   %al
  402b51:	0f 92 c1             	setb   %cl
  402b54:	29 c8                	sub    %ecx,%eax
  402b56:	0f be c0             	movsbl %al,%eax
  402b59:	85 c0                	test   %eax,%eax
  402b5b:	74 2e                	je     402b8b <submitr+0x761>
  402b5d:	85 d2                	test   %edx,%edx
  402b5f:	75 13                	jne    402b74 <submitr+0x74a>
  402b61:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402b65:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402b6a:	29 c2                	sub    %eax,%edx
  402b6c:	75 06                	jne    402b74 <submitr+0x74a>
  402b6e:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402b72:	f7 da                	neg    %edx
  402b74:	85 d2                	test   %edx,%edx
  402b76:	75 0e                	jne    402b86 <submitr+0x75c>
  402b78:	b8 00 00 00 00       	mov    $0x0,%eax
  402b7d:	eb 0c                	jmp    402b8b <submitr+0x761>
  402b7f:	b8 00 00 00 00       	mov    $0x0,%eax
  402b84:	eb 05                	jmp    402b8b <submitr+0x761>
  402b86:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b8b:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402b92:	00 
  402b93:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402b9a:	00 00 
  402b9c:	74 05                	je     402ba3 <submitr+0x779>
  402b9e:	e8 6d e1 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402ba3:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402baa:	5b                   	pop    %rbx
  402bab:	5d                   	pop    %rbp
  402bac:	41 5c                	pop    %r12
  402bae:	41 5d                	pop    %r13
  402bb0:	41 5e                	pop    %r14
  402bb2:	41 5f                	pop    %r15
  402bb4:	c3                   	retq   

0000000000402bb5 <init_timeout>:
  402bb5:	85 ff                	test   %edi,%edi
  402bb7:	74 23                	je     402bdc <init_timeout+0x27>
  402bb9:	53                   	push   %rbx
  402bba:	89 fb                	mov    %edi,%ebx
  402bbc:	85 ff                	test   %edi,%edi
  402bbe:	79 05                	jns    402bc5 <init_timeout+0x10>
  402bc0:	bb 00 00 00 00       	mov    $0x0,%ebx
  402bc5:	be 5e 21 40 00       	mov    $0x40215e,%esi
  402bca:	bf 0e 00 00 00       	mov    $0xe,%edi
  402bcf:	e8 ac e1 ff ff       	callq  400d80 <signal@plt>
  402bd4:	89 df                	mov    %ebx,%edi
  402bd6:	e8 65 e1 ff ff       	callq  400d40 <alarm@plt>
  402bdb:	5b                   	pop    %rbx
  402bdc:	f3 c3                	repz retq 

0000000000402bde <init_driver>:
  402bde:	55                   	push   %rbp
  402bdf:	53                   	push   %rbx
  402be0:	48 83 ec 28          	sub    $0x28,%rsp
  402be4:	48 89 fd             	mov    %rdi,%rbp
  402be7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402bee:	00 00 
  402bf0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402bf5:	31 c0                	xor    %eax,%eax
  402bf7:	be 01 00 00 00       	mov    $0x1,%esi
  402bfc:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c01:	e8 7a e1 ff ff       	callq  400d80 <signal@plt>
  402c06:	be 01 00 00 00       	mov    $0x1,%esi
  402c0b:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c10:	e8 6b e1 ff ff       	callq  400d80 <signal@plt>
  402c15:	be 01 00 00 00       	mov    $0x1,%esi
  402c1a:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c1f:	e8 5c e1 ff ff       	callq  400d80 <signal@plt>
  402c24:	ba 00 00 00 00       	mov    $0x0,%edx
  402c29:	be 01 00 00 00       	mov    $0x1,%esi
  402c2e:	bf 02 00 00 00       	mov    $0x2,%edi
  402c33:	e8 78 e2 ff ff       	callq  400eb0 <socket@plt>
  402c38:	85 c0                	test   %eax,%eax
  402c3a:	79 4f                	jns    402c8b <init_driver+0xad>
  402c3c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c43:	3a 20 43 
  402c46:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c4a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402c51:	20 75 6e 
  402c54:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c58:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c5f:	74 6f 20 
  402c62:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c66:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402c6d:	65 20 73 
  402c70:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c74:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402c7b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402c81:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c86:	e9 2a 01 00 00       	jmpq   402db5 <init_driver+0x1d7>
  402c8b:	89 c3                	mov    %eax,%ebx
  402c8d:	bf e5 32 40 00       	mov    $0x4032e5,%edi
  402c92:	e8 f9 e0 ff ff       	callq  400d90 <gethostbyname@plt>
  402c97:	48 85 c0             	test   %rax,%rax
  402c9a:	75 68                	jne    402d04 <init_driver+0x126>
  402c9c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ca3:	3a 20 44 
  402ca6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402caa:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402cb1:	20 75 6e 
  402cb4:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402cb8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cbf:	74 6f 20 
  402cc2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cc6:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402ccd:	76 65 20 
  402cd0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402cd4:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402cdb:	72 20 61 
  402cde:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ce2:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402ce9:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402cef:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402cf3:	89 df                	mov    %ebx,%edi
  402cf5:	e8 56 e0 ff ff       	callq  400d50 <close@plt>
  402cfa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cff:	e9 b1 00 00 00       	jmpq   402db5 <init_driver+0x1d7>
  402d04:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402d0b:	00 
  402d0c:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402d13:	00 00 
  402d15:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d1b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d1f:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d23:	48 8b 30             	mov    (%rax),%rsi
  402d26:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402d2b:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d30:	e8 6b e0 ff ff       	callq  400da0 <__memmove_chk@plt>
  402d35:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402d3c:	ba 10 00 00 00       	mov    $0x10,%edx
  402d41:	48 89 e6             	mov    %rsp,%rsi
  402d44:	89 df                	mov    %ebx,%edi
  402d46:	e8 35 e1 ff ff       	callq  400e80 <connect@plt>
  402d4b:	85 c0                	test   %eax,%eax
  402d4d:	79 50                	jns    402d9f <init_driver+0x1c1>
  402d4f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d56:	3a 20 55 
  402d59:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d5d:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402d64:	20 74 6f 
  402d67:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d6b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402d72:	65 63 74 
  402d75:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d79:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402d80:	65 72 76 
  402d83:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d87:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402d8d:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402d91:	89 df                	mov    %ebx,%edi
  402d93:	e8 b8 df ff ff       	callq  400d50 <close@plt>
  402d98:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d9d:	eb 16                	jmp    402db5 <init_driver+0x1d7>
  402d9f:	89 df                	mov    %ebx,%edi
  402da1:	e8 aa df ff ff       	callq  400d50 <close@plt>
  402da6:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402dac:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402db0:	b8 00 00 00 00       	mov    $0x0,%eax
  402db5:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402dba:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402dc1:	00 00 
  402dc3:	74 05                	je     402dca <init_driver+0x1ec>
  402dc5:	e8 46 df ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402dca:	48 83 c4 28          	add    $0x28,%rsp
  402dce:	5b                   	pop    %rbx
  402dcf:	5d                   	pop    %rbp
  402dd0:	c3                   	retq   

0000000000402dd1 <driver_post>:
  402dd1:	53                   	push   %rbx
  402dd2:	4c 89 cb             	mov    %r9,%rbx
  402dd5:	45 85 c0             	test   %r8d,%r8d
  402dd8:	74 27                	je     402e01 <driver_post+0x30>
  402dda:	48 89 ca             	mov    %rcx,%rdx
  402ddd:	be c5 37 40 00       	mov    $0x4037c5,%esi
  402de2:	bf 01 00 00 00       	mov    $0x1,%edi
  402de7:	b8 00 00 00 00       	mov    $0x0,%eax
  402dec:	e8 2f e0 ff ff       	callq  400e20 <__printf_chk@plt>
  402df1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402df6:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402dfa:	b8 00 00 00 00       	mov    $0x0,%eax
  402dff:	eb 3f                	jmp    402e40 <driver_post+0x6f>
  402e01:	48 85 ff             	test   %rdi,%rdi
  402e04:	74 2c                	je     402e32 <driver_post+0x61>
  402e06:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e09:	74 27                	je     402e32 <driver_post+0x61>
  402e0b:	48 83 ec 08          	sub    $0x8,%rsp
  402e0f:	41 51                	push   %r9
  402e11:	49 89 c9             	mov    %rcx,%r9
  402e14:	49 89 d0             	mov    %rdx,%r8
  402e17:	48 89 f9             	mov    %rdi,%rcx
  402e1a:	48 89 f2             	mov    %rsi,%rdx
  402e1d:	be 50 00 00 00       	mov    $0x50,%esi
  402e22:	bf e5 32 40 00       	mov    $0x4032e5,%edi
  402e27:	e8 fe f5 ff ff       	callq  40242a <submitr>
  402e2c:	48 83 c4 10          	add    $0x10,%rsp
  402e30:	eb 0e                	jmp    402e40 <driver_post+0x6f>
  402e32:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e37:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e3b:	b8 00 00 00 00       	mov    $0x0,%eax
  402e40:	5b                   	pop    %rbx
  402e41:	c3                   	retq   

0000000000402e42 <check>:
  402e42:	89 f8                	mov    %edi,%eax
  402e44:	c1 e8 1c             	shr    $0x1c,%eax
  402e47:	85 c0                	test   %eax,%eax
  402e49:	74 1d                	je     402e68 <check+0x26>
  402e4b:	b9 00 00 00 00       	mov    $0x0,%ecx
  402e50:	eb 0b                	jmp    402e5d <check+0x1b>
  402e52:	89 f8                	mov    %edi,%eax
  402e54:	d3 e8                	shr    %cl,%eax
  402e56:	3c 0a                	cmp    $0xa,%al
  402e58:	74 14                	je     402e6e <check+0x2c>
  402e5a:	83 c1 08             	add    $0x8,%ecx
  402e5d:	83 f9 1f             	cmp    $0x1f,%ecx
  402e60:	7e f0                	jle    402e52 <check+0x10>
  402e62:	b8 01 00 00 00       	mov    $0x1,%eax
  402e67:	c3                   	retq   
  402e68:	b8 00 00 00 00       	mov    $0x0,%eax
  402e6d:	c3                   	retq   
  402e6e:	b8 00 00 00 00       	mov    $0x0,%eax
  402e73:	c3                   	retq   

0000000000402e74 <gencookie>:
  402e74:	53                   	push   %rbx
  402e75:	83 c7 01             	add    $0x1,%edi
  402e78:	e8 43 de ff ff       	callq  400cc0 <srandom@plt>
  402e7d:	e8 5e df ff ff       	callq  400de0 <random@plt>
  402e82:	89 c3                	mov    %eax,%ebx
  402e84:	89 c7                	mov    %eax,%edi
  402e86:	e8 b7 ff ff ff       	callq  402e42 <check>
  402e8b:	85 c0                	test   %eax,%eax
  402e8d:	74 ee                	je     402e7d <gencookie+0x9>
  402e8f:	89 d8                	mov    %ebx,%eax
  402e91:	5b                   	pop    %rbx
  402e92:	c3                   	retq   
  402e93:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402e9a:	00 00 00 
  402e9d:	0f 1f 00             	nopl   (%rax)

0000000000402ea0 <__libc_csu_init>:
  402ea0:	41 57                	push   %r15
  402ea2:	41 56                	push   %r14
  402ea4:	41 89 ff             	mov    %edi,%r15d
  402ea7:	41 55                	push   %r13
  402ea9:	41 54                	push   %r12
  402eab:	4c 8d 25 4e 1f 20 00 	lea    0x201f4e(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  402eb2:	55                   	push   %rbp
  402eb3:	48 8d 2d 4e 1f 20 00 	lea    0x201f4e(%rip),%rbp        # 604e08 <__init_array_end>
  402eba:	53                   	push   %rbx
  402ebb:	49 89 f6             	mov    %rsi,%r14
  402ebe:	49 89 d5             	mov    %rdx,%r13
  402ec1:	4c 29 e5             	sub    %r12,%rbp
  402ec4:	48 83 ec 08          	sub    $0x8,%rsp
  402ec8:	48 c1 fd 03          	sar    $0x3,%rbp
  402ecc:	e8 97 dd ff ff       	callq  400c68 <_init>
  402ed1:	48 85 ed             	test   %rbp,%rbp
  402ed4:	74 20                	je     402ef6 <__libc_csu_init+0x56>
  402ed6:	31 db                	xor    %ebx,%ebx
  402ed8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402edf:	00 
  402ee0:	4c 89 ea             	mov    %r13,%rdx
  402ee3:	4c 89 f6             	mov    %r14,%rsi
  402ee6:	44 89 ff             	mov    %r15d,%edi
  402ee9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402eed:	48 83 c3 01          	add    $0x1,%rbx
  402ef1:	48 39 eb             	cmp    %rbp,%rbx
  402ef4:	75 ea                	jne    402ee0 <__libc_csu_init+0x40>
  402ef6:	48 83 c4 08          	add    $0x8,%rsp
  402efa:	5b                   	pop    %rbx
  402efb:	5d                   	pop    %rbp
  402efc:	41 5c                	pop    %r12
  402efe:	41 5d                	pop    %r13
  402f00:	41 5e                	pop    %r14
  402f02:	41 5f                	pop    %r15
  402f04:	c3                   	retq   
  402f05:	90                   	nop
  402f06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f0d:	00 00 00 

0000000000402f10 <__libc_csu_fini>:
  402f10:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402f14 <_fini>:
  402f14:	48 83 ec 08          	sub    $0x8,%rsp
  402f18:	48 83 c4 08          	add    $0x8,%rsp
  402f1c:	c3                   	retq   
