
rtarget：     文件格式 elf64-x86-64


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
  400edf:	49 c7 c0 30 30 40 00 	mov    $0x403030,%r8
  400ee6:	48 c7 c1 c0 2f 40 00 	mov    $0x402fc0,%rcx
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
  400fd6:	be 48 30 40 00       	mov    $0x403048,%esi
  400fdb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fe5:	e8 36 fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fea:	bf 80 30 40 00       	mov    $0x403080,%edi
  400fef:	e8 fc fc ff ff       	callq  400cf0 <puts@plt>
  400ff4:	bf f8 31 40 00       	mov    $0x4031f8,%edi
  400ff9:	e8 f2 fc ff ff       	callq  400cf0 <puts@plt>
  400ffe:	bf a8 30 40 00       	mov    $0x4030a8,%edi
  401003:	e8 e8 fc ff ff       	callq  400cf0 <puts@plt>
  401008:	bf 12 32 40 00       	mov    $0x403212,%edi
  40100d:	e8 de fc ff ff       	callq  400cf0 <puts@plt>
  401012:	eb 32                	jmp    401046 <usage+0x80>
  401014:	be 2e 32 40 00       	mov    $0x40322e,%esi
  401019:	bf 01 00 00 00       	mov    $0x1,%edi
  40101e:	b8 00 00 00 00       	mov    $0x0,%eax
  401023:	e8 f8 fd ff ff       	callq  400e20 <__printf_chk@plt>
  401028:	bf d0 30 40 00       	mov    $0x4030d0,%edi
  40102d:	e8 be fc ff ff       	callq  400cf0 <puts@plt>
  401032:	bf f8 30 40 00       	mov    $0x4030f8,%edi
  401037:	e8 b4 fc ff ff       	callq  400cf0 <puts@plt>
  40103c:	bf 4c 32 40 00       	mov    $0x40324c,%edi
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
  40107a:	e8 16 1f 00 00       	callq  402f95 <gencookie>
  40107f:	89 05 9f 44 20 00    	mov    %eax,0x20449f(%rip)        # 605524 <cookie>
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 09 1f 00 00       	callq  402f95 <gencookie>
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
  4010e4:	c6 05 5d 50 20 00 72 	movb   $0x72,0x20505d(%rip)        # 606148 <target_prefix>
  4010eb:	83 3d b6 43 20 00 00 	cmpl   $0x0,0x2043b6(%rip)        # 6054a8 <notify>
  4010f2:	0f 84 bb 00 00 00    	je     4011b3 <initialize_target+0x163>
  4010f8:	83 3d 29 44 20 00 00 	cmpl   $0x0,0x204429(%rip)        # 605528 <is_checker>
  4010ff:	0f 85 ae 00 00 00    	jne    4011b3 <initialize_target+0x163>
  401105:	be 00 01 00 00       	mov    $0x100,%esi
  40110a:	48 89 e7             	mov    %rsp,%rdi
  40110d:	e8 4e fd ff ff       	callq  400e60 <gethostname@plt>
  401112:	85 c0                	test   %eax,%eax
  401114:	74 25                	je     40113b <initialize_target+0xeb>
  401116:	bf 28 31 40 00       	mov    $0x403128,%edi
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
  401163:	be 60 31 40 00       	mov    $0x403160,%esi
  401168:	bf 01 00 00 00       	mov    $0x1,%edi
  40116d:	e8 ae fc ff ff       	callq  400e20 <__printf_chk@plt>
  401172:	bf 08 00 00 00       	mov    $0x8,%edi
  401177:	e8 f4 fc ff ff       	callq  400e70 <exit@plt>
  40117c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401183:	00 
  401184:	e8 76 1b 00 00       	callq  402cff <init_driver>
  401189:	85 c0                	test   %eax,%eax
  40118b:	79 26                	jns    4011b3 <initialize_target+0x163>
  40118d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401194:	00 
  401195:	be a0 31 40 00       	mov    $0x4031a0,%esi
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
  4011e3:	be 1f 20 40 00       	mov    $0x40201f,%esi
  4011e8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011ed:	e8 8e fb ff ff       	callq  400d80 <signal@plt>
  4011f2:	be d1 1f 40 00       	mov    $0x401fd1,%esi
  4011f7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011fc:	e8 7f fb ff ff       	callq  400d80 <signal@plt>
  401201:	be 6d 20 40 00       	mov    $0x40206d,%esi
  401206:	bf 04 00 00 00       	mov    $0x4,%edi
  40120b:	e8 70 fb ff ff       	callq  400d80 <signal@plt>
  401210:	83 3d 11 43 20 00 00 	cmpl   $0x0,0x204311(%rip)        # 605528 <is_checker>
  401217:	74 20                	je     401239 <main+0x64>
  401219:	be bb 20 40 00       	mov    $0x4020bb,%esi
  40121e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401223:	e8 58 fb ff ff       	callq  400d80 <signal@plt>
  401228:	bf 05 00 00 00       	mov    $0x5,%edi
  40122d:	e8 0e fb ff ff       	callq  400d40 <alarm@plt>
  401232:	bd 6a 32 40 00       	mov    $0x40326a,%ebp
  401237:	eb 05                	jmp    40123e <main+0x69>
  401239:	bd 65 32 40 00       	mov    $0x403265,%ebp
  40123e:	48 8b 05 7b 42 20 00 	mov    0x20427b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401245:	48 89 05 c4 42 20 00 	mov    %rax,0x2042c4(%rip)        # 605510 <infile>
  40124c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401252:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401258:	e9 c6 00 00 00       	jmpq   401323 <main+0x14e>
  40125d:	83 e8 61             	sub    $0x61,%eax
  401260:	3c 10                	cmp    $0x10,%al
  401262:	0f 87 9c 00 00 00    	ja     401304 <main+0x12f>
  401268:	0f b6 c0             	movzbl %al,%eax
  40126b:	ff 24 c5 b0 32 40 00 	jmpq   *0x4032b0(,%rax,8)
  401272:	48 8b 3b             	mov    (%rbx),%rdi
  401275:	e8 4c fd ff ff       	callq  400fc6 <usage>
  40127a:	be bd 35 40 00       	mov    $0x4035bd,%esi
  40127f:	48 8b 3d 42 42 20 00 	mov    0x204242(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401286:	e8 a5 fb ff ff       	callq  400e30 <fopen@plt>
  40128b:	48 89 05 7e 42 20 00 	mov    %rax,0x20427e(%rip)        # 605510 <infile>
  401292:	48 85 c0             	test   %rax,%rax
  401295:	0f 85 88 00 00 00    	jne    401323 <main+0x14e>
  40129b:	48 8b 0d 26 42 20 00 	mov    0x204226(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012a2:	ba 72 32 40 00       	mov    $0x403272,%edx
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
  401307:	be 8f 32 40 00       	mov    $0x40328f,%esi
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
  40133b:	be 01 00 00 00       	mov    $0x1,%esi
  401340:	44 89 ef             	mov    %r13d,%edi
  401343:	e8 08 fd ff ff       	callq  401050 <initialize_target>
  401348:	83 3d d9 41 20 00 00 	cmpl   $0x0,0x2041d9(%rip)        # 605528 <is_checker>
  40134f:	74 2a                	je     40137b <main+0x1a6>
  401351:	44 3b 35 c8 41 20 00 	cmp    0x2041c8(%rip),%r14d        # 605520 <authkey>
  401358:	74 21                	je     40137b <main+0x1a6>
  40135a:	44 89 f2             	mov    %r14d,%edx
  40135d:	be c8 31 40 00       	mov    $0x4031c8,%esi
  401362:	bf 01 00 00 00       	mov    $0x1,%edi
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	e8 af fa ff ff       	callq  400e20 <__printf_chk@plt>
  401371:	b8 00 00 00 00       	mov    $0x0,%eax
  401376:	e8 f2 08 00 00       	callq  401c6d <check_fail>
  40137b:	8b 15 a3 41 20 00    	mov    0x2041a3(%rip),%edx        # 605524 <cookie>
  401381:	be a2 32 40 00       	mov    $0x4032a2,%esi
  401386:	bf 01 00 00 00       	mov    $0x1,%edi
  40138b:	b8 00 00 00 00       	mov    $0x0,%eax
  401390:	e8 8b fa ff ff       	callq  400e20 <__printf_chk@plt>
  401395:	48 8b 3d 04 41 20 00 	mov    0x204104(%rip),%rdi        # 6054a0 <buf_offset>
  40139c:	e8 6d 0d 00 00       	callq  40210e <launch>
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
  4018fe:	e8 9f 03 00 00       	callq  401ca2 <Gets>
  401903:	b8 01 00 00 00       	mov    $0x1,%eax
  401908:	48 83 c4 18          	add    $0x18,%rsp
  40190c:	c3                   	retq   

000000000040190d <touch1>:
  40190d:	48 83 ec 08          	sub    $0x8,%rsp
  401911:	c7 05 01 3c 20 00 01 	movl   $0x1,0x203c01(%rip)        # 60551c <vlevel>
  401918:	00 00 00 
  40191b:	bf 16 34 40 00       	mov    $0x403416,%edi
  401920:	e8 cb f3 ff ff       	callq  400cf0 <puts@plt>
  401925:	bf 01 00 00 00       	mov    $0x1,%edi
  40192a:	e8 b8 05 00 00       	callq  401ee7 <validate>
  40192f:	bf 00 00 00 00       	mov    $0x0,%edi
  401934:	e8 37 f5 ff ff       	callq  400e70 <exit@plt>

0000000000401939 <touch2>:
  401939:	48 83 ec 08          	sub    $0x8,%rsp
  40193d:	89 fa                	mov    %edi,%edx
  40193f:	c7 05 d3 3b 20 00 02 	movl   $0x2,0x203bd3(%rip)        # 60551c <vlevel>
  401946:	00 00 00 
  401949:	39 3d d5 3b 20 00    	cmp    %edi,0x203bd5(%rip)        # 605524 <cookie>
  40194f:	75 20                	jne    401971 <touch2+0x38>
  401951:	be 38 34 40 00       	mov    $0x403438,%esi
  401956:	bf 01 00 00 00       	mov    $0x1,%edi
  40195b:	b8 00 00 00 00       	mov    $0x0,%eax
  401960:	e8 bb f4 ff ff       	callq  400e20 <__printf_chk@plt>
  401965:	bf 02 00 00 00       	mov    $0x2,%edi
  40196a:	e8 78 05 00 00       	callq  401ee7 <validate>
  40196f:	eb 1e                	jmp    40198f <touch2+0x56>
  401971:	be 60 34 40 00       	mov    $0x403460,%esi
  401976:	bf 01 00 00 00       	mov    $0x1,%edi
  40197b:	b8 00 00 00 00       	mov    $0x0,%eax
  401980:	e8 9b f4 ff ff       	callq  400e20 <__printf_chk@plt>
  401985:	bf 02 00 00 00       	mov    $0x2,%edi
  40198a:	e8 1a 06 00 00       	callq  401fa9 <fail>
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
  4019f6:	b9 33 34 40 00       	mov    $0x403433,%ecx
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
  401a6d:	be 88 34 40 00       	mov    $0x403488,%esi
  401a72:	bf 01 00 00 00       	mov    $0x1,%edi
  401a77:	b8 00 00 00 00       	mov    $0x0,%eax
  401a7c:	e8 9f f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401a81:	bf 03 00 00 00       	mov    $0x3,%edi
  401a86:	e8 5c 04 00 00       	callq  401ee7 <validate>
  401a8b:	eb 21                	jmp    401aae <touch3+0x64>
  401a8d:	48 89 da             	mov    %rbx,%rdx
  401a90:	be b0 34 40 00       	mov    $0x4034b0,%esi
  401a95:	bf 01 00 00 00       	mov    $0x1,%edi
  401a9a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a9f:	e8 7c f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401aa4:	bf 03 00 00 00       	mov    $0x3,%edi
  401aa9:	e8 fb 04 00 00       	callq  401fa9 <fail>
  401aae:	bf 00 00 00 00       	mov    $0x0,%edi
  401ab3:	e8 b8 f3 ff ff       	callq  400e70 <exit@plt>

0000000000401ab8 <test>:
  401ab8:	48 83 ec 08          	sub    $0x8,%rsp
  401abc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac1:	e8 31 fe ff ff       	callq  4018f7 <getbuf>
  401ac6:	89 c2                	mov    %eax,%edx
  401ac8:	be d8 34 40 00       	mov    $0x4034d8,%esi
  401acd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ad2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad7:	e8 44 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401adc:	48 83 c4 08          	add    $0x8,%rsp
  401ae0:	c3                   	retq   

0000000000401ae1 <start_farm>:
  401ae1:	b8 01 00 00 00       	mov    $0x1,%eax
  401ae6:	c3                   	retq   

0000000000401ae7 <getval_216>:
  401ae7:	b8 ad b9 6d 18       	mov    $0x186db9ad,%eax
  401aec:	c3                   	retq   

0000000000401aed <addval_153>:
  401aed:	8d 87 6e 48 c9 c7    	lea    -0x3836b792(%rdi),%eax
  401af3:	c3                   	retq   

ASM> movq %rax, %rdi
ASM> movl %eax, %edi

0000000000401af4 <setval_157>:
  401af4:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401afa:	c3                   	retq   

0000000000401afb <addval_379>:
  401afb:	8d 87 ea 48 89 c7    	lea    -0x3876b716(%rdi),%eax
  401b01:	c3                   	retq   

0000000000401b02 <setval_329>:
  401b02:	c7 07 50 90 c3 27    	movl   $0x27c39050,(%rdi)
  401b08:	c3                   	retq   

ASM> popq %rax

0000000000401b09 <setval_202>:
  401b09:	c7 07 e0 27 76 58    	movl   $0x587627e0,(%rdi)
  401b0f:	c3                   	retq   

0000000000401b10 <addval_175>:
  401b10:	8d 87 c8 89 c7 c3    	lea    -0x3c387638(%rdi),%eax
  401b16:	c3                   	retq   

0000000000401b17 <getval_406>:
  401b17:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  401b1c:	c3                   	retq   

0000000000401b1d <mid_farm>:
  401b1d:	b8 01 00 00 00       	mov    $0x1,%eax
  401b22:	c3                   	retq   

0000000000401b23 <add_xy>:
  401b23:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401b27:	c3                   	retq   

ASM> cmpb %dl, %dl

0000000000401b28 <addval_205>:
  401b28:	8d 87 8d d1 38 d2    	lea    -0x2dc72e73(%rdi),%eax
  401b2e:	c3                   	retq   

0000000000401b2f <addval_382>:
  401b2f:	8d 87 58 89 e0 90    	lea    -0x6f1f76a8(%rdi),%eax
  401b35:	c3                   	retq   

0000000000401b36 <getval_158>:
  401b36:	b8 c8 89 e0 c3       	mov    $0xc3e089c8,%eax
  401b3b:	c3                   	retq   

0000000000401b3c <addval_381>:
  401b3c:	8d 87 89 d1 28 c9    	lea    -0x36d72e77(%rdi),%eax
  401b42:	c3                   	retq   

0000000000401b43 <getval_335>:
  401b43:	b8 21 89 c2 c2       	mov    $0xc2c28921,%eax
  401b48:	c3                   	retq   

ASM> movq %rsp, %rax
ASM> movl %esp, %eax

0000000000401b49 <getval_119>:
  401b49:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401b4e:	c3                   	retq   

0000000000401b4f <setval_344>:
  401b4f:	c7 07 89 ce c4 c0    	movl   $0xc0c4ce89,(%rdi)
  401b55:	c3                   	retq   

ASM> andb %dl, %dl

0000000000401b56 <setval_440>:
  401b56:	c7 07 89 c2 20 d2    	movl   $0xd220c289,(%rdi)
  401b5c:	c3                   	retq   

0000000000401b5d <getval_214>:
  401b5d:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  401b62:	c3                   	retq   

0000000000401b63 <getval_328>:
  401b63:	b8 89 d1 c7 44       	mov    $0x44c7d189,%eax
  401b68:	c3                   	retq   

ASM> cmpb %bl, %bl
ASM> movl %ecx, %esi

0000000000401b69 <addval_263>:
  401b69:	8d 87 89 ce 38 db    	lea    -0x24c73177(%rdi),%eax
  401b6f:	c3                   	retq   

0000000000401b70 <getval_262>:
  401b70:	b8 89 c2 c4 c0       	mov    $0xc0c4c289,%eax
  401b75:	c3                   	retq   

0000000000401b76 <getval_318>:
  401b76:	b8 89 d1 30 db       	mov    $0xdb30d189,%eax
  401b7b:	c3                   	retq   

ASM> andb %cl, %cl

0000000000401b7c <setval_457>:
  401b7c:	c7 07 09 ce 20 c9    	movl   $0xc920ce09,(%rdi)
  401b82:	c3                   	retq   

0000000000401b83 <getval_378>:
  401b83:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  401b88:	c3                   	retq   

0000000000401b89 <setval_459>:
  401b89:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  401b8f:	c3                   	retq   

ASM> movl %eax, %edx

0000000000401b90 <addval_308>:
  401b90:	8d 87 89 c2 90 c3    	lea    -0x3c6f3d77(%rdi),%eax
  401b96:	c3                   	retq   

0000000000401b97 <addval_413>:
  401b97:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  401b9d:	c3                   	retq   

0000000000401b9e <setval_447>:
  401b9e:	c7 07 89 ce 38 db    	movl   $0xdb38ce89,(%rdi)
  401ba4:	c3                   	retq   

ASM> popq %rbp

0000000000401ba5 <getval_129>:
  401ba5:	b8 a9 c2 c3 5d       	mov    $0x5dc3c2a9,%eax
  401baa:	c3                   	retq   

0000000000401bab <setval_268>:
  401bab:	c7 07 89 ce 00 c9    	movl   $0xc900ce89,(%rdi)
  401bb1:	c3                   	retq   

ASM> testb %bl, %bl
ASM> movl %edx, %ecx

0000000000401bb2 <setval_148>:
  401bb2:	c7 07 89 d1 84 db    	movl   $0xdb84d189,(%rdi)
  401bb8:	c3                   	retq   

0000000000401bb9 <addval_248>:
  401bb9:	8d 87 5c 4a 89 e0    	lea    -0x1f76b5a4(%rdi),%eax
  401bbf:	c3                   	retq   

ASM> movl %edx, %ecx

0000000000401bc0 <setval_490>:
  401bc0:	c7 07 76 89 d1 90    	movl   $0x90d18976,(%rdi)
  401bc6:	c3                   	retq   

0000000000401bc7 <addval_131>:
  401bc7:	8d 87 89 ce 28 d2    	lea    -0x2dd73177(%rdi),%eax
  401bcd:	c3                   	retq   

0000000000401bce <setval_291>:
  401bce:	c7 07 89 c2 60 d2    	movl   $0xd260c289,(%rdi)
  401bd4:	c3                   	retq   

ASM> testb %dl, %dl

0000000000401bd5 <getval_250>:
  401bd5:	b8 88 ce 84 d2       	mov    $0xd284ce88,%eax
  401bda:	c3                   	retq   

0000000000401bdb <setval_468>:
  401bdb:	c7 07 a9 d1 c3 c6    	movl   $0xc6c3d1a9,(%rdi)
  401be1:	c3                   	retq   

ASM> andb %al, %al

0000000000401be2 <setval_322>:
  401be2:	c7 07 8d c2 20 c0    	movl   $0xc020c28d,(%rdi)
  401be8:	c3                   	retq   

0000000000401be9 <setval_288>:
  401be9:	c7 07 9c 27 88 ce    	movl   $0xce88279c,(%rdi)
  401bef:	c3                   	retq   

0000000000401bf0 <getval_224>:
  401bf0:	b8 89 c2 90 c7       	mov    $0xc790c289,%eax
  401bf5:	c3                   	retq   

0000000000401bf6 <getval_123>:
  401bf6:	b8 89 d1 28 c0       	mov    $0xc028d189,%eax
  401bfb:	c3                   	retq   

0000000000401bfc <end_farm>:
  401bfc:	b8 01 00 00 00       	mov    $0x1,%eax
  401c01:	c3                   	retq   

0000000000401c02 <save_char>:
  401c02:	8b 05 3c 45 20 00    	mov    0x20453c(%rip),%eax        # 606144 <gets_cnt>
  401c08:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c0d:	7f 49                	jg     401c58 <save_char+0x56>
  401c0f:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c12:	89 f9                	mov    %edi,%ecx
  401c14:	c0 e9 04             	shr    $0x4,%cl
  401c17:	83 e1 0f             	and    $0xf,%ecx
  401c1a:	0f b6 b1 00 38 40 00 	movzbl 0x403800(%rcx),%esi
  401c21:	48 63 ca             	movslq %edx,%rcx
  401c24:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401c2b:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401c2e:	83 e7 0f             	and    $0xf,%edi
  401c31:	0f b6 b7 00 38 40 00 	movzbl 0x403800(%rdi),%esi
  401c38:	48 63 c9             	movslq %ecx,%rcx
  401c3b:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401c42:	83 c2 02             	add    $0x2,%edx
  401c45:	48 63 d2             	movslq %edx,%rdx
  401c48:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401c4f:	83 c0 01             	add    $0x1,%eax
  401c52:	89 05 ec 44 20 00    	mov    %eax,0x2044ec(%rip)        # 606144 <gets_cnt>
  401c58:	f3 c3                	repz retq 

0000000000401c5a <save_term>:
  401c5a:	8b 05 e4 44 20 00    	mov    0x2044e4(%rip),%eax        # 606144 <gets_cnt>
  401c60:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c63:	48 98                	cltq   
  401c65:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401c6c:	c3                   	retq   

0000000000401c6d <check_fail>:
  401c6d:	48 83 ec 08          	sub    $0x8,%rsp
  401c71:	0f be 15 d0 44 20 00 	movsbl 0x2044d0(%rip),%edx        # 606148 <target_prefix>
  401c78:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401c7e:	8b 0d 94 38 20 00    	mov    0x203894(%rip),%ecx        # 605518 <check_level>
  401c84:	be fb 34 40 00       	mov    $0x4034fb,%esi
  401c89:	bf 01 00 00 00       	mov    $0x1,%edi
  401c8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c93:	e8 88 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401c98:	bf 01 00 00 00       	mov    $0x1,%edi
  401c9d:	e8 ce f1 ff ff       	callq  400e70 <exit@plt>

0000000000401ca2 <Gets>:
  401ca2:	41 54                	push   %r12
  401ca4:	55                   	push   %rbp
  401ca5:	53                   	push   %rbx
  401ca6:	49 89 fc             	mov    %rdi,%r12
  401ca9:	c7 05 91 44 20 00 00 	movl   $0x0,0x204491(%rip)        # 606144 <gets_cnt>
  401cb0:	00 00 00 
  401cb3:	48 89 fb             	mov    %rdi,%rbx
  401cb6:	eb 11                	jmp    401cc9 <Gets+0x27>
  401cb8:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401cbc:	88 03                	mov    %al,(%rbx)
  401cbe:	0f b6 f8             	movzbl %al,%edi
  401cc1:	e8 3c ff ff ff       	callq  401c02 <save_char>
  401cc6:	48 89 eb             	mov    %rbp,%rbx
  401cc9:	48 8b 3d 40 38 20 00 	mov    0x203840(%rip),%rdi        # 605510 <infile>
  401cd0:	e8 1b f1 ff ff       	callq  400df0 <_IO_getc@plt>
  401cd5:	83 f8 ff             	cmp    $0xffffffff,%eax
  401cd8:	74 05                	je     401cdf <Gets+0x3d>
  401cda:	83 f8 0a             	cmp    $0xa,%eax
  401cdd:	75 d9                	jne    401cb8 <Gets+0x16>
  401cdf:	c6 03 00             	movb   $0x0,(%rbx)
  401ce2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce7:	e8 6e ff ff ff       	callq  401c5a <save_term>
  401cec:	4c 89 e0             	mov    %r12,%rax
  401cef:	5b                   	pop    %rbx
  401cf0:	5d                   	pop    %rbp
  401cf1:	41 5c                	pop    %r12
  401cf3:	c3                   	retq   

0000000000401cf4 <notify_server>:
  401cf4:	53                   	push   %rbx
  401cf5:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401cfc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d03:	00 00 
  401d05:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d0c:	00 
  401d0d:	31 c0                	xor    %eax,%eax
  401d0f:	83 3d 12 38 20 00 00 	cmpl   $0x0,0x203812(%rip)        # 605528 <is_checker>
  401d16:	0f 85 aa 01 00 00    	jne    401ec6 <notify_server+0x1d2>
  401d1c:	89 fb                	mov    %edi,%ebx
  401d1e:	8b 05 20 44 20 00    	mov    0x204420(%rip),%eax        # 606144 <gets_cnt>
  401d24:	83 c0 64             	add    $0x64,%eax
  401d27:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d2c:	7e 1e                	jle    401d4c <notify_server+0x58>
  401d2e:	be 30 36 40 00       	mov    $0x403630,%esi
  401d33:	bf 01 00 00 00       	mov    $0x1,%edi
  401d38:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3d:	e8 de f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d42:	bf 01 00 00 00       	mov    $0x1,%edi
  401d47:	e8 24 f1 ff ff       	callq  400e70 <exit@plt>
  401d4c:	0f be 05 f5 43 20 00 	movsbl 0x2043f5(%rip),%eax        # 606148 <target_prefix>
  401d53:	83 3d 4e 37 20 00 00 	cmpl   $0x0,0x20374e(%rip)        # 6054a8 <notify>
  401d5a:	74 08                	je     401d64 <notify_server+0x70>
  401d5c:	8b 15 be 37 20 00    	mov    0x2037be(%rip),%edx        # 605520 <authkey>
  401d62:	eb 05                	jmp    401d69 <notify_server+0x75>
  401d64:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401d69:	85 db                	test   %ebx,%ebx
  401d6b:	74 08                	je     401d75 <notify_server+0x81>
  401d6d:	41 b9 11 35 40 00    	mov    $0x403511,%r9d
  401d73:	eb 06                	jmp    401d7b <notify_server+0x87>
  401d75:	41 b9 16 35 40 00    	mov    $0x403516,%r9d
  401d7b:	68 40 55 60 00       	pushq  $0x605540
  401d80:	56                   	push   %rsi
  401d81:	50                   	push   %rax
  401d82:	52                   	push   %rdx
  401d83:	44 8b 05 de 33 20 00 	mov    0x2033de(%rip),%r8d        # 605168 <target_id>
  401d8a:	b9 1b 35 40 00       	mov    $0x40351b,%ecx
  401d8f:	ba 00 20 00 00       	mov    $0x2000,%edx
  401d94:	be 01 00 00 00       	mov    $0x1,%esi
  401d99:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401d9e:	b8 00 00 00 00       	mov    $0x0,%eax
  401da3:	e8 f8 f0 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401da8:	48 83 c4 20          	add    $0x20,%rsp
  401dac:	83 3d f5 36 20 00 00 	cmpl   $0x0,0x2036f5(%rip)        # 6054a8 <notify>
  401db3:	0f 84 81 00 00 00    	je     401e3a <notify_server+0x146>
  401db9:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401dc0:	00 
  401dc1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401dc7:	48 89 e1             	mov    %rsp,%rcx
  401dca:	48 8b 15 9f 33 20 00 	mov    0x20339f(%rip),%rdx        # 605170 <lab>
  401dd1:	48 8b 35 a0 33 20 00 	mov    0x2033a0(%rip),%rsi        # 605178 <course>
  401dd8:	48 8b 3d 81 33 20 00 	mov    0x203381(%rip),%rdi        # 605160 <user_id>
  401ddf:	e8 0e 11 00 00       	callq  402ef2 <driver_post>
  401de4:	85 c0                	test   %eax,%eax
  401de6:	79 26                	jns    401e0e <notify_server+0x11a>
  401de8:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401def:	00 
  401df0:	be 37 35 40 00       	mov    $0x403537,%esi
  401df5:	bf 01 00 00 00       	mov    $0x1,%edi
  401dfa:	b8 00 00 00 00       	mov    $0x0,%eax
  401dff:	e8 1c f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401e04:	bf 01 00 00 00       	mov    $0x1,%edi
  401e09:	e8 62 f0 ff ff       	callq  400e70 <exit@plt>
  401e0e:	85 db                	test   %ebx,%ebx
  401e10:	74 19                	je     401e2b <notify_server+0x137>
  401e12:	bf 60 36 40 00       	mov    $0x403660,%edi
  401e17:	e8 d4 ee ff ff       	callq  400cf0 <puts@plt>
  401e1c:	bf 43 35 40 00       	mov    $0x403543,%edi
  401e21:	e8 ca ee ff ff       	callq  400cf0 <puts@plt>
  401e26:	e9 9b 00 00 00       	jmpq   401ec6 <notify_server+0x1d2>
  401e2b:	bf 4d 35 40 00       	mov    $0x40354d,%edi
  401e30:	e8 bb ee ff ff       	callq  400cf0 <puts@plt>
  401e35:	e9 8c 00 00 00       	jmpq   401ec6 <notify_server+0x1d2>
  401e3a:	85 db                	test   %ebx,%ebx
  401e3c:	74 07                	je     401e45 <notify_server+0x151>
  401e3e:	ba 11 35 40 00       	mov    $0x403511,%edx
  401e43:	eb 05                	jmp    401e4a <notify_server+0x156>
  401e45:	ba 16 35 40 00       	mov    $0x403516,%edx
  401e4a:	be 98 36 40 00       	mov    $0x403698,%esi
  401e4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401e54:	b8 00 00 00 00       	mov    $0x0,%eax
  401e59:	e8 c2 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e5e:	48 8b 15 fb 32 20 00 	mov    0x2032fb(%rip),%rdx        # 605160 <user_id>
  401e65:	be 54 35 40 00       	mov    $0x403554,%esi
  401e6a:	bf 01 00 00 00       	mov    $0x1,%edi
  401e6f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e74:	e8 a7 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e79:	48 8b 15 f8 32 20 00 	mov    0x2032f8(%rip),%rdx        # 605178 <course>
  401e80:	be 61 35 40 00       	mov    $0x403561,%esi
  401e85:	bf 01 00 00 00       	mov    $0x1,%edi
  401e8a:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8f:	e8 8c ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e94:	48 8b 15 d5 32 20 00 	mov    0x2032d5(%rip),%rdx        # 605170 <lab>
  401e9b:	be 6d 35 40 00       	mov    $0x40356d,%esi
  401ea0:	bf 01 00 00 00       	mov    $0x1,%edi
  401ea5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eaa:	e8 71 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401eaf:	48 89 e2             	mov    %rsp,%rdx
  401eb2:	be 76 35 40 00       	mov    $0x403576,%esi
  401eb7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ebc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec1:	e8 5a ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ec6:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401ecd:	00 
  401ece:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401ed5:	00 00 
  401ed7:	74 05                	je     401ede <notify_server+0x1ea>
  401ed9:	e8 32 ee ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401ede:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401ee5:	5b                   	pop    %rbx
  401ee6:	c3                   	retq   

0000000000401ee7 <validate>:
  401ee7:	53                   	push   %rbx
  401ee8:	89 fb                	mov    %edi,%ebx
  401eea:	83 3d 37 36 20 00 00 	cmpl   $0x0,0x203637(%rip)        # 605528 <is_checker>
  401ef1:	74 6b                	je     401f5e <validate+0x77>
  401ef3:	39 3d 23 36 20 00    	cmp    %edi,0x203623(%rip)        # 60551c <vlevel>
  401ef9:	74 14                	je     401f0f <validate+0x28>
  401efb:	bf 82 35 40 00       	mov    $0x403582,%edi
  401f00:	e8 eb ed ff ff       	callq  400cf0 <puts@plt>
  401f05:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0a:	e8 5e fd ff ff       	callq  401c6d <check_fail>
  401f0f:	8b 15 03 36 20 00    	mov    0x203603(%rip),%edx        # 605518 <check_level>
  401f15:	39 d7                	cmp    %edx,%edi
  401f17:	74 20                	je     401f39 <validate+0x52>
  401f19:	89 f9                	mov    %edi,%ecx
  401f1b:	be c0 36 40 00       	mov    $0x4036c0,%esi
  401f20:	bf 01 00 00 00       	mov    $0x1,%edi
  401f25:	b8 00 00 00 00       	mov    $0x0,%eax
  401f2a:	e8 f1 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f2f:	b8 00 00 00 00       	mov    $0x0,%eax
  401f34:	e8 34 fd ff ff       	callq  401c6d <check_fail>
  401f39:	0f be 15 08 42 20 00 	movsbl 0x204208(%rip),%edx        # 606148 <target_prefix>
  401f40:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401f46:	89 f9                	mov    %edi,%ecx
  401f48:	be a0 35 40 00       	mov    $0x4035a0,%esi
  401f4d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f52:	b8 00 00 00 00       	mov    $0x0,%eax
  401f57:	e8 c4 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f5c:	eb 49                	jmp    401fa7 <validate+0xc0>
  401f5e:	3b 3d b8 35 20 00    	cmp    0x2035b8(%rip),%edi        # 60551c <vlevel>
  401f64:	74 18                	je     401f7e <validate+0x97>
  401f66:	bf 82 35 40 00       	mov    $0x403582,%edi
  401f6b:	e8 80 ed ff ff       	callq  400cf0 <puts@plt>
  401f70:	89 de                	mov    %ebx,%esi
  401f72:	bf 00 00 00 00       	mov    $0x0,%edi
  401f77:	e8 78 fd ff ff       	callq  401cf4 <notify_server>
  401f7c:	eb 29                	jmp    401fa7 <validate+0xc0>
  401f7e:	0f be 0d c3 41 20 00 	movsbl 0x2041c3(%rip),%ecx        # 606148 <target_prefix>
  401f85:	89 fa                	mov    %edi,%edx
  401f87:	be e8 36 40 00       	mov    $0x4036e8,%esi
  401f8c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f91:	b8 00 00 00 00       	mov    $0x0,%eax
  401f96:	e8 85 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f9b:	89 de                	mov    %ebx,%esi
  401f9d:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa2:	e8 4d fd ff ff       	callq  401cf4 <notify_server>
  401fa7:	5b                   	pop    %rbx
  401fa8:	c3                   	retq   

0000000000401fa9 <fail>:
  401fa9:	48 83 ec 08          	sub    $0x8,%rsp
  401fad:	83 3d 74 35 20 00 00 	cmpl   $0x0,0x203574(%rip)        # 605528 <is_checker>
  401fb4:	74 0a                	je     401fc0 <fail+0x17>
  401fb6:	b8 00 00 00 00       	mov    $0x0,%eax
  401fbb:	e8 ad fc ff ff       	callq  401c6d <check_fail>
  401fc0:	89 fe                	mov    %edi,%esi
  401fc2:	bf 00 00 00 00       	mov    $0x0,%edi
  401fc7:	e8 28 fd ff ff       	callq  401cf4 <notify_server>
  401fcc:	48 83 c4 08          	add    $0x8,%rsp
  401fd0:	c3                   	retq   

0000000000401fd1 <bushandler>:
  401fd1:	48 83 ec 08          	sub    $0x8,%rsp
  401fd5:	83 3d 4c 35 20 00 00 	cmpl   $0x0,0x20354c(%rip)        # 605528 <is_checker>
  401fdc:	74 14                	je     401ff2 <bushandler+0x21>
  401fde:	bf b5 35 40 00       	mov    $0x4035b5,%edi
  401fe3:	e8 08 ed ff ff       	callq  400cf0 <puts@plt>
  401fe8:	b8 00 00 00 00       	mov    $0x0,%eax
  401fed:	e8 7b fc ff ff       	callq  401c6d <check_fail>
  401ff2:	bf 20 37 40 00       	mov    $0x403720,%edi
  401ff7:	e8 f4 ec ff ff       	callq  400cf0 <puts@plt>
  401ffc:	bf bf 35 40 00       	mov    $0x4035bf,%edi
  402001:	e8 ea ec ff ff       	callq  400cf0 <puts@plt>
  402006:	be 00 00 00 00       	mov    $0x0,%esi
  40200b:	bf 00 00 00 00       	mov    $0x0,%edi
  402010:	e8 df fc ff ff       	callq  401cf4 <notify_server>
  402015:	bf 01 00 00 00       	mov    $0x1,%edi
  40201a:	e8 51 ee ff ff       	callq  400e70 <exit@plt>

000000000040201f <seghandler>:
  40201f:	48 83 ec 08          	sub    $0x8,%rsp
  402023:	83 3d fe 34 20 00 00 	cmpl   $0x0,0x2034fe(%rip)        # 605528 <is_checker>
  40202a:	74 14                	je     402040 <seghandler+0x21>
  40202c:	bf d5 35 40 00       	mov    $0x4035d5,%edi
  402031:	e8 ba ec ff ff       	callq  400cf0 <puts@plt>
  402036:	b8 00 00 00 00       	mov    $0x0,%eax
  40203b:	e8 2d fc ff ff       	callq  401c6d <check_fail>
  402040:	bf 40 37 40 00       	mov    $0x403740,%edi
  402045:	e8 a6 ec ff ff       	callq  400cf0 <puts@plt>
  40204a:	bf bf 35 40 00       	mov    $0x4035bf,%edi
  40204f:	e8 9c ec ff ff       	callq  400cf0 <puts@plt>
  402054:	be 00 00 00 00       	mov    $0x0,%esi
  402059:	bf 00 00 00 00       	mov    $0x0,%edi
  40205e:	e8 91 fc ff ff       	callq  401cf4 <notify_server>
  402063:	bf 01 00 00 00       	mov    $0x1,%edi
  402068:	e8 03 ee ff ff       	callq  400e70 <exit@plt>

000000000040206d <illegalhandler>:
  40206d:	48 83 ec 08          	sub    $0x8,%rsp
  402071:	83 3d b0 34 20 00 00 	cmpl   $0x0,0x2034b0(%rip)        # 605528 <is_checker>
  402078:	74 14                	je     40208e <illegalhandler+0x21>
  40207a:	bf e8 35 40 00       	mov    $0x4035e8,%edi
  40207f:	e8 6c ec ff ff       	callq  400cf0 <puts@plt>
  402084:	b8 00 00 00 00       	mov    $0x0,%eax
  402089:	e8 df fb ff ff       	callq  401c6d <check_fail>
  40208e:	bf 68 37 40 00       	mov    $0x403768,%edi
  402093:	e8 58 ec ff ff       	callq  400cf0 <puts@plt>
  402098:	bf bf 35 40 00       	mov    $0x4035bf,%edi
  40209d:	e8 4e ec ff ff       	callq  400cf0 <puts@plt>
  4020a2:	be 00 00 00 00       	mov    $0x0,%esi
  4020a7:	bf 00 00 00 00       	mov    $0x0,%edi
  4020ac:	e8 43 fc ff ff       	callq  401cf4 <notify_server>
  4020b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4020b6:	e8 b5 ed ff ff       	callq  400e70 <exit@plt>

00000000004020bb <sigalrmhandler>:
  4020bb:	48 83 ec 08          	sub    $0x8,%rsp
  4020bf:	83 3d 62 34 20 00 00 	cmpl   $0x0,0x203462(%rip)        # 605528 <is_checker>
  4020c6:	74 14                	je     4020dc <sigalrmhandler+0x21>
  4020c8:	bf fc 35 40 00       	mov    $0x4035fc,%edi
  4020cd:	e8 1e ec ff ff       	callq  400cf0 <puts@plt>
  4020d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d7:	e8 91 fb ff ff       	callq  401c6d <check_fail>
  4020dc:	ba 05 00 00 00       	mov    $0x5,%edx
  4020e1:	be 98 37 40 00       	mov    $0x403798,%esi
  4020e6:	bf 01 00 00 00       	mov    $0x1,%edi
  4020eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4020f0:	e8 2b ed ff ff       	callq  400e20 <__printf_chk@plt>
  4020f5:	be 00 00 00 00       	mov    $0x0,%esi
  4020fa:	bf 00 00 00 00       	mov    $0x0,%edi
  4020ff:	e8 f0 fb ff ff       	callq  401cf4 <notify_server>
  402104:	bf 01 00 00 00       	mov    $0x1,%edi
  402109:	e8 62 ed ff ff       	callq  400e70 <exit@plt>

000000000040210e <launch>:
  40210e:	55                   	push   %rbp
  40210f:	48 89 e5             	mov    %rsp,%rbp
  402112:	48 83 ec 10          	sub    $0x10,%rsp
  402116:	48 89 fa             	mov    %rdi,%rdx
  402119:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402120:	00 00 
  402122:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402126:	31 c0                	xor    %eax,%eax
  402128:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  40212c:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402130:	48 29 c4             	sub    %rax,%rsp
  402133:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402138:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40213c:	be f4 00 00 00       	mov    $0xf4,%esi
  402141:	e8 ea eb ff ff       	callq  400d30 <memset@plt>
  402146:	48 8b 05 73 33 20 00 	mov    0x203373(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40214d:	48 39 05 bc 33 20 00 	cmp    %rax,0x2033bc(%rip)        # 605510 <infile>
  402154:	75 14                	jne    40216a <launch+0x5c>
  402156:	be 04 36 40 00       	mov    $0x403604,%esi
  40215b:	bf 01 00 00 00       	mov    $0x1,%edi
  402160:	b8 00 00 00 00       	mov    $0x0,%eax
  402165:	e8 b6 ec ff ff       	callq  400e20 <__printf_chk@plt>
  40216a:	c7 05 a8 33 20 00 00 	movl   $0x0,0x2033a8(%rip)        # 60551c <vlevel>
  402171:	00 00 00 
  402174:	b8 00 00 00 00       	mov    $0x0,%eax
  402179:	e8 3a f9 ff ff       	callq  401ab8 <test>
  40217e:	83 3d a3 33 20 00 00 	cmpl   $0x0,0x2033a3(%rip)        # 605528 <is_checker>
  402185:	74 14                	je     40219b <launch+0x8d>
  402187:	bf 11 36 40 00       	mov    $0x403611,%edi
  40218c:	e8 5f eb ff ff       	callq  400cf0 <puts@plt>
  402191:	b8 00 00 00 00       	mov    $0x0,%eax
  402196:	e8 d2 fa ff ff       	callq  401c6d <check_fail>
  40219b:	bf 1c 36 40 00       	mov    $0x40361c,%edi
  4021a0:	e8 4b eb ff ff       	callq  400cf0 <puts@plt>
  4021a5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021a9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4021b0:	00 00 
  4021b2:	74 05                	je     4021b9 <launch+0xab>
  4021b4:	e8 57 eb ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4021b9:	c9                   	leaveq 
  4021ba:	c3                   	retq   

00000000004021bb <stable_launch>:
  4021bb:	53                   	push   %rbx
  4021bc:	48 89 3d 45 33 20 00 	mov    %rdi,0x203345(%rip)        # 605508 <global_offset>
  4021c3:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4021c9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4021cf:	b9 32 01 00 00       	mov    $0x132,%ecx
  4021d4:	ba 07 00 00 00       	mov    $0x7,%edx
  4021d9:	be 00 00 10 00       	mov    $0x100000,%esi
  4021de:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4021e3:	e8 38 eb ff ff       	callq  400d20 <mmap@plt>
  4021e8:	48 89 c3             	mov    %rax,%rbx
  4021eb:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4021f1:	74 37                	je     40222a <stable_launch+0x6f>
  4021f3:	be 00 00 10 00       	mov    $0x100000,%esi
  4021f8:	48 89 c7             	mov    %rax,%rdi
  4021fb:	e8 10 ec ff ff       	callq  400e10 <munmap@plt>
  402200:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402205:	ba d0 37 40 00       	mov    $0x4037d0,%edx
  40220a:	be 01 00 00 00       	mov    $0x1,%esi
  40220f:	48 8b 3d ca 32 20 00 	mov    0x2032ca(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402216:	b8 00 00 00 00       	mov    $0x0,%eax
  40221b:	e8 70 ec ff ff       	callq  400e90 <__fprintf_chk@plt>
  402220:	bf 01 00 00 00       	mov    $0x1,%edi
  402225:	e8 46 ec ff ff       	callq  400e70 <exit@plt>
  40222a:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402231:	48 89 15 18 3f 20 00 	mov    %rdx,0x203f18(%rip)        # 606150 <stack_top>
  402238:	48 89 e0             	mov    %rsp,%rax
  40223b:	48 89 d4             	mov    %rdx,%rsp
  40223e:	48 89 c2             	mov    %rax,%rdx
  402241:	48 89 15 b8 32 20 00 	mov    %rdx,0x2032b8(%rip)        # 605500 <global_save_stack>
  402248:	48 8b 3d b9 32 20 00 	mov    0x2032b9(%rip),%rdi        # 605508 <global_offset>
  40224f:	e8 ba fe ff ff       	callq  40210e <launch>
  402254:	48 8b 05 a5 32 20 00 	mov    0x2032a5(%rip),%rax        # 605500 <global_save_stack>
  40225b:	48 89 c4             	mov    %rax,%rsp
  40225e:	be 00 00 10 00       	mov    $0x100000,%esi
  402263:	48 89 df             	mov    %rbx,%rdi
  402266:	e8 a5 eb ff ff       	callq  400e10 <munmap@plt>
  40226b:	5b                   	pop    %rbx
  40226c:	c3                   	retq   

000000000040226d <rio_readinitb>:
  40226d:	89 37                	mov    %esi,(%rdi)
  40226f:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402276:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40227a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40227e:	c3                   	retq   

000000000040227f <sigalrm_handler>:
  40227f:	48 83 ec 08          	sub    $0x8,%rsp
  402283:	b9 00 00 00 00       	mov    $0x0,%ecx
  402288:	ba 10 38 40 00       	mov    $0x403810,%edx
  40228d:	be 01 00 00 00       	mov    $0x1,%esi
  402292:	48 8b 3d 47 32 20 00 	mov    0x203247(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402299:	b8 00 00 00 00       	mov    $0x0,%eax
  40229e:	e8 ed eb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4022a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4022a8:	e8 c3 eb ff ff       	callq  400e70 <exit@plt>

00000000004022ad <rio_writen>:
  4022ad:	41 55                	push   %r13
  4022af:	41 54                	push   %r12
  4022b1:	55                   	push   %rbp
  4022b2:	53                   	push   %rbx
  4022b3:	48 83 ec 08          	sub    $0x8,%rsp
  4022b7:	41 89 fc             	mov    %edi,%r12d
  4022ba:	48 89 f5             	mov    %rsi,%rbp
  4022bd:	49 89 d5             	mov    %rdx,%r13
  4022c0:	48 89 d3             	mov    %rdx,%rbx
  4022c3:	eb 28                	jmp    4022ed <rio_writen+0x40>
  4022c5:	48 89 da             	mov    %rbx,%rdx
  4022c8:	48 89 ee             	mov    %rbp,%rsi
  4022cb:	44 89 e7             	mov    %r12d,%edi
  4022ce:	e8 2d ea ff ff       	callq  400d00 <write@plt>
  4022d3:	48 85 c0             	test   %rax,%rax
  4022d6:	7f 0f                	jg     4022e7 <rio_writen+0x3a>
  4022d8:	e8 d3 e9 ff ff       	callq  400cb0 <__errno_location@plt>
  4022dd:	83 38 04             	cmpl   $0x4,(%rax)
  4022e0:	75 15                	jne    4022f7 <rio_writen+0x4a>
  4022e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e7:	48 29 c3             	sub    %rax,%rbx
  4022ea:	48 01 c5             	add    %rax,%rbp
  4022ed:	48 85 db             	test   %rbx,%rbx
  4022f0:	75 d3                	jne    4022c5 <rio_writen+0x18>
  4022f2:	4c 89 e8             	mov    %r13,%rax
  4022f5:	eb 07                	jmp    4022fe <rio_writen+0x51>
  4022f7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022fe:	48 83 c4 08          	add    $0x8,%rsp
  402302:	5b                   	pop    %rbx
  402303:	5d                   	pop    %rbp
  402304:	41 5c                	pop    %r12
  402306:	41 5d                	pop    %r13
  402308:	c3                   	retq   

0000000000402309 <rio_read>:
  402309:	41 55                	push   %r13
  40230b:	41 54                	push   %r12
  40230d:	55                   	push   %rbp
  40230e:	53                   	push   %rbx
  40230f:	48 83 ec 08          	sub    $0x8,%rsp
  402313:	48 89 fb             	mov    %rdi,%rbx
  402316:	49 89 f5             	mov    %rsi,%r13
  402319:	49 89 d4             	mov    %rdx,%r12
  40231c:	eb 2e                	jmp    40234c <rio_read+0x43>
  40231e:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402322:	8b 3b                	mov    (%rbx),%edi
  402324:	ba 00 20 00 00       	mov    $0x2000,%edx
  402329:	48 89 ee             	mov    %rbp,%rsi
  40232c:	e8 2f ea ff ff       	callq  400d60 <read@plt>
  402331:	89 43 04             	mov    %eax,0x4(%rbx)
  402334:	85 c0                	test   %eax,%eax
  402336:	79 0c                	jns    402344 <rio_read+0x3b>
  402338:	e8 73 e9 ff ff       	callq  400cb0 <__errno_location@plt>
  40233d:	83 38 04             	cmpl   $0x4,(%rax)
  402340:	74 0a                	je     40234c <rio_read+0x43>
  402342:	eb 37                	jmp    40237b <rio_read+0x72>
  402344:	85 c0                	test   %eax,%eax
  402346:	74 3c                	je     402384 <rio_read+0x7b>
  402348:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40234c:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40234f:	85 ed                	test   %ebp,%ebp
  402351:	7e cb                	jle    40231e <rio_read+0x15>
  402353:	89 e8                	mov    %ebp,%eax
  402355:	49 39 c4             	cmp    %rax,%r12
  402358:	77 03                	ja     40235d <rio_read+0x54>
  40235a:	44 89 e5             	mov    %r12d,%ebp
  40235d:	4c 63 e5             	movslq %ebp,%r12
  402360:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402364:	4c 89 e2             	mov    %r12,%rdx
  402367:	4c 89 ef             	mov    %r13,%rdi
  40236a:	e8 51 ea ff ff       	callq  400dc0 <memcpy@plt>
  40236f:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402373:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402376:	4c 89 e0             	mov    %r12,%rax
  402379:	eb 0e                	jmp    402389 <rio_read+0x80>
  40237b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402382:	eb 05                	jmp    402389 <rio_read+0x80>
  402384:	b8 00 00 00 00       	mov    $0x0,%eax
  402389:	48 83 c4 08          	add    $0x8,%rsp
  40238d:	5b                   	pop    %rbx
  40238e:	5d                   	pop    %rbp
  40238f:	41 5c                	pop    %r12
  402391:	41 5d                	pop    %r13
  402393:	c3                   	retq   

0000000000402394 <rio_readlineb>:
  402394:	41 55                	push   %r13
  402396:	41 54                	push   %r12
  402398:	55                   	push   %rbp
  402399:	53                   	push   %rbx
  40239a:	48 83 ec 18          	sub    $0x18,%rsp
  40239e:	49 89 fd             	mov    %rdi,%r13
  4023a1:	48 89 f5             	mov    %rsi,%rbp
  4023a4:	49 89 d4             	mov    %rdx,%r12
  4023a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023ae:	00 00 
  4023b0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4023b5:	31 c0                	xor    %eax,%eax
  4023b7:	bb 01 00 00 00       	mov    $0x1,%ebx
  4023bc:	eb 3f                	jmp    4023fd <rio_readlineb+0x69>
  4023be:	ba 01 00 00 00       	mov    $0x1,%edx
  4023c3:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4023c8:	4c 89 ef             	mov    %r13,%rdi
  4023cb:	e8 39 ff ff ff       	callq  402309 <rio_read>
  4023d0:	83 f8 01             	cmp    $0x1,%eax
  4023d3:	75 15                	jne    4023ea <rio_readlineb+0x56>
  4023d5:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4023d9:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4023de:	88 55 00             	mov    %dl,0x0(%rbp)
  4023e1:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4023e6:	75 0e                	jne    4023f6 <rio_readlineb+0x62>
  4023e8:	eb 1a                	jmp    402404 <rio_readlineb+0x70>
  4023ea:	85 c0                	test   %eax,%eax
  4023ec:	75 22                	jne    402410 <rio_readlineb+0x7c>
  4023ee:	48 83 fb 01          	cmp    $0x1,%rbx
  4023f2:	75 13                	jne    402407 <rio_readlineb+0x73>
  4023f4:	eb 23                	jmp    402419 <rio_readlineb+0x85>
  4023f6:	48 83 c3 01          	add    $0x1,%rbx
  4023fa:	48 89 c5             	mov    %rax,%rbp
  4023fd:	4c 39 e3             	cmp    %r12,%rbx
  402400:	72 bc                	jb     4023be <rio_readlineb+0x2a>
  402402:	eb 03                	jmp    402407 <rio_readlineb+0x73>
  402404:	48 89 c5             	mov    %rax,%rbp
  402407:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40240b:	48 89 d8             	mov    %rbx,%rax
  40240e:	eb 0e                	jmp    40241e <rio_readlineb+0x8a>
  402410:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402417:	eb 05                	jmp    40241e <rio_readlineb+0x8a>
  402419:	b8 00 00 00 00       	mov    $0x0,%eax
  40241e:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402423:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40242a:	00 00 
  40242c:	74 05                	je     402433 <rio_readlineb+0x9f>
  40242e:	e8 dd e8 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402433:	48 83 c4 18          	add    $0x18,%rsp
  402437:	5b                   	pop    %rbx
  402438:	5d                   	pop    %rbp
  402439:	41 5c                	pop    %r12
  40243b:	41 5d                	pop    %r13
  40243d:	c3                   	retq   

000000000040243e <urlencode>:
  40243e:	41 54                	push   %r12
  402440:	55                   	push   %rbp
  402441:	53                   	push   %rbx
  402442:	48 83 ec 10          	sub    $0x10,%rsp
  402446:	48 89 fb             	mov    %rdi,%rbx
  402449:	48 89 f5             	mov    %rsi,%rbp
  40244c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402453:	00 00 
  402455:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40245a:	31 c0                	xor    %eax,%eax
  40245c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402463:	f2 ae                	repnz scas %es:(%rdi),%al
  402465:	48 f7 d1             	not    %rcx
  402468:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40246b:	e9 aa 00 00 00       	jmpq   40251a <urlencode+0xdc>
  402470:	44 0f b6 03          	movzbl (%rbx),%r8d
  402474:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402478:	0f 94 c2             	sete   %dl
  40247b:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40247f:	0f 94 c0             	sete   %al
  402482:	08 c2                	or     %al,%dl
  402484:	75 24                	jne    4024aa <urlencode+0x6c>
  402486:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40248a:	74 1e                	je     4024aa <urlencode+0x6c>
  40248c:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402490:	74 18                	je     4024aa <urlencode+0x6c>
  402492:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402496:	3c 09                	cmp    $0x9,%al
  402498:	76 10                	jbe    4024aa <urlencode+0x6c>
  40249a:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40249e:	3c 19                	cmp    $0x19,%al
  4024a0:	76 08                	jbe    4024aa <urlencode+0x6c>
  4024a2:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4024a6:	3c 19                	cmp    $0x19,%al
  4024a8:	77 0a                	ja     4024b4 <urlencode+0x76>
  4024aa:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4024ae:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024b2:	eb 5f                	jmp    402513 <urlencode+0xd5>
  4024b4:	41 80 f8 20          	cmp    $0x20,%r8b
  4024b8:	75 0a                	jne    4024c4 <urlencode+0x86>
  4024ba:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4024be:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024c2:	eb 4f                	jmp    402513 <urlencode+0xd5>
  4024c4:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4024c8:	3c 5f                	cmp    $0x5f,%al
  4024ca:	0f 96 c2             	setbe  %dl
  4024cd:	41 80 f8 09          	cmp    $0x9,%r8b
  4024d1:	0f 94 c0             	sete   %al
  4024d4:	08 c2                	or     %al,%dl
  4024d6:	74 50                	je     402528 <urlencode+0xea>
  4024d8:	45 0f b6 c0          	movzbl %r8b,%r8d
  4024dc:	b9 c8 38 40 00       	mov    $0x4038c8,%ecx
  4024e1:	ba 08 00 00 00       	mov    $0x8,%edx
  4024e6:	be 01 00 00 00       	mov    $0x1,%esi
  4024eb:	48 89 e7             	mov    %rsp,%rdi
  4024ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f3:	e8 a8 e9 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  4024f8:	0f b6 04 24          	movzbl (%rsp),%eax
  4024fc:	88 45 00             	mov    %al,0x0(%rbp)
  4024ff:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402504:	88 45 01             	mov    %al,0x1(%rbp)
  402507:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40250c:	88 45 02             	mov    %al,0x2(%rbp)
  40250f:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402513:	48 83 c3 01          	add    $0x1,%rbx
  402517:	44 89 e0             	mov    %r12d,%eax
  40251a:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40251e:	85 c0                	test   %eax,%eax
  402520:	0f 85 4a ff ff ff    	jne    402470 <urlencode+0x32>
  402526:	eb 05                	jmp    40252d <urlencode+0xef>
  402528:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40252d:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402532:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402539:	00 00 
  40253b:	74 05                	je     402542 <urlencode+0x104>
  40253d:	e8 ce e7 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402542:	48 83 c4 10          	add    $0x10,%rsp
  402546:	5b                   	pop    %rbx
  402547:	5d                   	pop    %rbp
  402548:	41 5c                	pop    %r12
  40254a:	c3                   	retq   

000000000040254b <submitr>:
  40254b:	41 57                	push   %r15
  40254d:	41 56                	push   %r14
  40254f:	41 55                	push   %r13
  402551:	41 54                	push   %r12
  402553:	55                   	push   %rbp
  402554:	53                   	push   %rbx
  402555:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40255c:	49 89 fd             	mov    %rdi,%r13
  40255f:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  402563:	48 89 14 24          	mov    %rdx,(%rsp)
  402567:	49 89 ce             	mov    %rcx,%r14
  40256a:	4d 89 c7             	mov    %r8,%r15
  40256d:	4d 89 cc             	mov    %r9,%r12
  402570:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  402577:	00 
  402578:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40257f:	00 00 
  402581:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  402588:	00 
  402589:	31 c0                	xor    %eax,%eax
  40258b:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  402592:	00 
  402593:	ba 00 00 00 00       	mov    $0x0,%edx
  402598:	be 01 00 00 00       	mov    $0x1,%esi
  40259d:	bf 02 00 00 00       	mov    $0x2,%edi
  4025a2:	e8 09 e9 ff ff       	callq  400eb0 <socket@plt>
  4025a7:	85 c0                	test   %eax,%eax
  4025a9:	79 4e                	jns    4025f9 <submitr+0xae>
  4025ab:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025b2:	3a 20 43 
  4025b5:	48 89 03             	mov    %rax,(%rbx)
  4025b8:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025bf:	20 75 6e 
  4025c2:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025c6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025cd:	74 6f 20 
  4025d0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025d4:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4025db:	65 20 73 
  4025de:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025e2:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4025e9:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4025ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025f4:	e9 b3 06 00 00       	jmpq   402cac <submitr+0x761>
  4025f9:	89 c5                	mov    %eax,%ebp
  4025fb:	4c 89 ef             	mov    %r13,%rdi
  4025fe:	e8 8d e7 ff ff       	callq  400d90 <gethostbyname@plt>
  402603:	48 85 c0             	test   %rax,%rax
  402606:	75 75                	jne    40267d <submitr+0x132>
  402608:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40260f:	3a 20 44 
  402612:	48 89 03             	mov    %rax,(%rbx)
  402615:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  40261c:	20 75 6e 
  40261f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402623:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40262a:	74 6f 20 
  40262d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402631:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402638:	76 65 20 
  40263b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40263f:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402646:	61 62 20 
  402649:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40264d:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402654:	72 20 61 
  402657:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40265b:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  402662:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  402668:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  40266c:	89 ef                	mov    %ebp,%edi
  40266e:	e8 dd e6 ff ff       	callq  400d50 <close@plt>
  402673:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402678:	e9 2f 06 00 00       	jmpq   402cac <submitr+0x761>
  40267d:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  402684:	00 00 
  402686:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  40268d:	00 00 
  40268f:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  402696:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40269a:	48 8b 40 18          	mov    0x18(%rax),%rax
  40269e:	48 8b 30             	mov    (%rax),%rsi
  4026a1:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  4026a6:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4026ab:	e8 f0 e6 ff ff       	callq  400da0 <__memmove_chk@plt>
  4026b0:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
  4026b5:	66 c1 c8 08          	ror    $0x8,%ax
  4026b9:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  4026be:	ba 10 00 00 00       	mov    $0x10,%edx
  4026c3:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  4026c8:	89 ef                	mov    %ebp,%edi
  4026ca:	e8 b1 e7 ff ff       	callq  400e80 <connect@plt>
  4026cf:	85 c0                	test   %eax,%eax
  4026d1:	79 67                	jns    40273a <submitr+0x1ef>
  4026d3:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4026da:	3a 20 55 
  4026dd:	48 89 03             	mov    %rax,(%rbx)
  4026e0:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4026e7:	20 74 6f 
  4026ea:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026ee:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4026f5:	65 63 74 
  4026f8:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026fc:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402703:	68 65 20 
  402706:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40270a:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402711:	61 62 20 
  402714:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402718:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  40271f:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  402725:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402729:	89 ef                	mov    %ebp,%edi
  40272b:	e8 20 e6 ff ff       	callq  400d50 <close@plt>
  402730:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402735:	e9 72 05 00 00       	jmpq   402cac <submitr+0x761>
  40273a:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402741:	b8 00 00 00 00       	mov    $0x0,%eax
  402746:	48 89 f1             	mov    %rsi,%rcx
  402749:	4c 89 e7             	mov    %r12,%rdi
  40274c:	f2 ae                	repnz scas %es:(%rdi),%al
  40274e:	48 f7 d1             	not    %rcx
  402751:	48 89 ca             	mov    %rcx,%rdx
  402754:	48 89 f1             	mov    %rsi,%rcx
  402757:	48 8b 3c 24          	mov    (%rsp),%rdi
  40275b:	f2 ae                	repnz scas %es:(%rdi),%al
  40275d:	48 f7 d1             	not    %rcx
  402760:	49 89 c8             	mov    %rcx,%r8
  402763:	48 89 f1             	mov    %rsi,%rcx
  402766:	4c 89 f7             	mov    %r14,%rdi
  402769:	f2 ae                	repnz scas %es:(%rdi),%al
  40276b:	48 f7 d1             	not    %rcx
  40276e:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402773:	48 89 f1             	mov    %rsi,%rcx
  402776:	4c 89 ff             	mov    %r15,%rdi
  402779:	f2 ae                	repnz scas %es:(%rdi),%al
  40277b:	48 89 c8             	mov    %rcx,%rax
  40277e:	48 f7 d0             	not    %rax
  402781:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402786:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40278b:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402792:	00 
  402793:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402799:	76 72                	jbe    40280d <submitr+0x2c2>
  40279b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4027a2:	3a 20 52 
  4027a5:	48 89 03             	mov    %rax,(%rbx)
  4027a8:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4027af:	20 73 74 
  4027b2:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027b6:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4027bd:	74 6f 6f 
  4027c0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027c4:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4027cb:	65 2e 20 
  4027ce:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027d2:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4027d9:	61 73 65 
  4027dc:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027e0:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  4027e7:	49 54 52 
  4027ea:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027ee:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4027f5:	55 46 00 
  4027f8:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027fc:	89 ef                	mov    %ebp,%edi
  4027fe:	e8 4d e5 ff ff       	callq  400d50 <close@plt>
  402803:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402808:	e9 9f 04 00 00       	jmpq   402cac <submitr+0x761>
  40280d:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  402814:	00 
  402815:	b9 00 04 00 00       	mov    $0x400,%ecx
  40281a:	b8 00 00 00 00       	mov    $0x0,%eax
  40281f:	48 89 f7             	mov    %rsi,%rdi
  402822:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402825:	4c 89 e7             	mov    %r12,%rdi
  402828:	e8 11 fc ff ff       	callq  40243e <urlencode>
  40282d:	85 c0                	test   %eax,%eax
  40282f:	0f 89 8a 00 00 00    	jns    4028bf <submitr+0x374>
  402835:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40283c:	3a 20 52 
  40283f:	48 89 03             	mov    %rax,(%rbx)
  402842:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402849:	20 73 74 
  40284c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402850:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402857:	63 6f 6e 
  40285a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40285e:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402865:	20 61 6e 
  402868:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40286c:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402873:	67 61 6c 
  402876:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40287a:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402881:	6e 70 72 
  402884:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402888:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40288f:	6c 65 20 
  402892:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402896:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  40289d:	63 74 65 
  4028a0:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4028a4:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4028aa:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4028ae:	89 ef                	mov    %ebp,%edi
  4028b0:	e8 9b e4 ff ff       	callq  400d50 <close@plt>
  4028b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028ba:	e9 ed 03 00 00       	jmpq   402cac <submitr+0x761>
  4028bf:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  4028c6:	00 
  4028c7:	48 83 ec 08          	sub    $0x8,%rsp
  4028cb:	41 55                	push   %r13
  4028cd:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  4028d4:	00 
  4028d5:	50                   	push   %rax
  4028d6:	41 56                	push   %r14
  4028d8:	4d 89 f9             	mov    %r15,%r9
  4028db:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  4028e0:	b9 38 38 40 00       	mov    $0x403838,%ecx
  4028e5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028ea:	be 01 00 00 00       	mov    $0x1,%esi
  4028ef:	4c 89 e7             	mov    %r12,%rdi
  4028f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4028f7:	e8 a4 e5 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  4028fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402901:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402908:	4c 89 e7             	mov    %r12,%rdi
  40290b:	f2 ae                	repnz scas %es:(%rdi),%al
  40290d:	48 f7 d1             	not    %rcx
  402910:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402914:	48 83 c4 20          	add    $0x20,%rsp
  402918:	4c 89 e6             	mov    %r12,%rsi
  40291b:	89 ef                	mov    %ebp,%edi
  40291d:	e8 8b f9 ff ff       	callq  4022ad <rio_writen>
  402922:	48 85 c0             	test   %rax,%rax
  402925:	79 6b                	jns    402992 <submitr+0x447>
  402927:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40292e:	3a 20 43 
  402931:	48 89 03             	mov    %rax,(%rbx)
  402934:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40293b:	20 75 6e 
  40293e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402942:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402949:	74 6f 20 
  40294c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402950:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402957:	20 74 6f 
  40295a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40295e:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402965:	41 75 74 
  402968:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40296c:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  402973:	73 65 72 
  402976:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40297a:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  402981:	89 ef                	mov    %ebp,%edi
  402983:	e8 c8 e3 ff ff       	callq  400d50 <close@plt>
  402988:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40298d:	e9 1a 03 00 00       	jmpq   402cac <submitr+0x761>
  402992:	89 ee                	mov    %ebp,%esi
  402994:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402999:	e8 cf f8 ff ff       	callq  40226d <rio_readinitb>
  40299e:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029a3:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029aa:	00 
  4029ab:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029b0:	e8 df f9 ff ff       	callq  402394 <rio_readlineb>
  4029b5:	48 85 c0             	test   %rax,%rax
  4029b8:	7f 7f                	jg     402a39 <submitr+0x4ee>
  4029ba:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029c1:	3a 20 43 
  4029c4:	48 89 03             	mov    %rax,(%rbx)
  4029c7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029ce:	20 75 6e 
  4029d1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029d5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029dc:	74 6f 20 
  4029df:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029e3:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4029ea:	66 69 72 
  4029ed:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4029f1:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4029f8:	61 64 65 
  4029fb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029ff:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  402a06:	6d 20 41 
  402a09:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a0d:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402a14:	62 20 73 
  402a17:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a1b:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  402a22:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  402a28:	89 ef                	mov    %ebp,%edi
  402a2a:	e8 21 e3 ff ff       	callq  400d50 <close@plt>
  402a2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a34:	e9 73 02 00 00       	jmpq   402cac <submitr+0x761>
  402a39:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  402a40:	00 
  402a41:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402a46:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  402a4d:	00 
  402a4e:	be cf 38 40 00       	mov    $0x4038cf,%esi
  402a53:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402a5a:	00 
  402a5b:	b8 00 00 00 00       	mov    $0x0,%eax
  402a60:	e8 9b e3 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  402a65:	e9 92 00 00 00       	jmpq   402afc <submitr+0x5b1>
  402a6a:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a6f:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a76:	00 
  402a77:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402a7c:	e8 13 f9 ff ff       	callq  402394 <rio_readlineb>
  402a81:	48 85 c0             	test   %rax,%rax
  402a84:	7f 76                	jg     402afc <submitr+0x5b1>
  402a86:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a8d:	3a 20 43 
  402a90:	48 89 03             	mov    %rax,(%rbx)
  402a93:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a9a:	20 75 6e 
  402a9d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402aa1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402aa8:	74 6f 20 
  402aab:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402aaf:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402ab6:	68 65 61 
  402ab9:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402abd:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402ac4:	66 72 6f 
  402ac7:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402acb:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  402ad2:	6f 6c 61 
  402ad5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402ad9:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402ae0:	76 65 72 
  402ae3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402ae7:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  402aeb:	89 ef                	mov    %ebp,%edi
  402aed:	e8 5e e2 ff ff       	callq  400d50 <close@plt>
  402af2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402af7:	e9 b0 01 00 00       	jmpq   402cac <submitr+0x761>
  402afc:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402b03:	00 
  402b04:	b8 0d 00 00 00       	mov    $0xd,%eax
  402b09:	29 d0                	sub    %edx,%eax
  402b0b:	75 1b                	jne    402b28 <submitr+0x5dd>
  402b0d:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402b14:	00 
  402b15:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b1a:	29 d0                	sub    %edx,%eax
  402b1c:	75 0a                	jne    402b28 <submitr+0x5dd>
  402b1e:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402b25:	00 
  402b26:	f7 d8                	neg    %eax
  402b28:	85 c0                	test   %eax,%eax
  402b2a:	0f 85 3a ff ff ff    	jne    402a6a <submitr+0x51f>
  402b30:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b35:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b3c:	00 
  402b3d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402b42:	e8 4d f8 ff ff       	callq  402394 <rio_readlineb>
  402b47:	48 85 c0             	test   %rax,%rax
  402b4a:	0f 8f 80 00 00 00    	jg     402bd0 <submitr+0x685>
  402b50:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b57:	3a 20 43 
  402b5a:	48 89 03             	mov    %rax,(%rbx)
  402b5d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402b64:	20 75 6e 
  402b67:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402b6b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b72:	74 6f 20 
  402b75:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402b79:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402b80:	73 74 61 
  402b83:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402b87:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402b8e:	65 73 73 
  402b91:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402b95:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402b9c:	72 6f 6d 
  402b9f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402ba3:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402baa:	6c 61 62 
  402bad:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402bb1:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402bb8:	65 72 00 
  402bbb:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402bbf:	89 ef                	mov    %ebp,%edi
  402bc1:	e8 8a e1 ff ff       	callq  400d50 <close@plt>
  402bc6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bcb:	e9 dc 00 00 00       	jmpq   402cac <submitr+0x761>
  402bd0:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402bd5:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402bdc:	74 37                	je     402c15 <submitr+0x6ca>
  402bde:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402be5:	00 
  402be6:	b9 98 38 40 00       	mov    $0x403898,%ecx
  402beb:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402bf2:	be 01 00 00 00       	mov    $0x1,%esi
  402bf7:	48 89 df             	mov    %rbx,%rdi
  402bfa:	b8 00 00 00 00       	mov    $0x0,%eax
  402bff:	e8 9c e2 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402c04:	89 ef                	mov    %ebp,%edi
  402c06:	e8 45 e1 ff ff       	callq  400d50 <close@plt>
  402c0b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c10:	e9 97 00 00 00       	jmpq   402cac <submitr+0x761>
  402c15:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402c1c:	00 
  402c1d:	48 89 df             	mov    %rbx,%rdi
  402c20:	e8 bb e0 ff ff       	callq  400ce0 <strcpy@plt>
  402c25:	89 ef                	mov    %ebp,%edi
  402c27:	e8 24 e1 ff ff       	callq  400d50 <close@plt>
  402c2c:	0f b6 03             	movzbl (%rbx),%eax
  402c2f:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402c34:	29 c2                	sub    %eax,%edx
  402c36:	75 22                	jne    402c5a <submitr+0x70f>
  402c38:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402c3c:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402c41:	29 c8                	sub    %ecx,%eax
  402c43:	75 17                	jne    402c5c <submitr+0x711>
  402c45:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402c49:	b8 0a 00 00 00       	mov    $0xa,%eax
  402c4e:	29 c8                	sub    %ecx,%eax
  402c50:	75 0a                	jne    402c5c <submitr+0x711>
  402c52:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402c56:	f7 d8                	neg    %eax
  402c58:	eb 02                	jmp    402c5c <submitr+0x711>
  402c5a:	89 d0                	mov    %edx,%eax
  402c5c:	85 c0                	test   %eax,%eax
  402c5e:	74 40                	je     402ca0 <submitr+0x755>
  402c60:	bf e0 38 40 00       	mov    $0x4038e0,%edi
  402c65:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c6a:	48 89 de             	mov    %rbx,%rsi
  402c6d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c6f:	0f 97 c0             	seta   %al
  402c72:	0f 92 c1             	setb   %cl
  402c75:	29 c8                	sub    %ecx,%eax
  402c77:	0f be c0             	movsbl %al,%eax
  402c7a:	85 c0                	test   %eax,%eax
  402c7c:	74 2e                	je     402cac <submitr+0x761>
  402c7e:	85 d2                	test   %edx,%edx
  402c80:	75 13                	jne    402c95 <submitr+0x74a>
  402c82:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402c86:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402c8b:	29 c2                	sub    %eax,%edx
  402c8d:	75 06                	jne    402c95 <submitr+0x74a>
  402c8f:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402c93:	f7 da                	neg    %edx
  402c95:	85 d2                	test   %edx,%edx
  402c97:	75 0e                	jne    402ca7 <submitr+0x75c>
  402c99:	b8 00 00 00 00       	mov    $0x0,%eax
  402c9e:	eb 0c                	jmp    402cac <submitr+0x761>
  402ca0:	b8 00 00 00 00       	mov    $0x0,%eax
  402ca5:	eb 05                	jmp    402cac <submitr+0x761>
  402ca7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cac:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402cb3:	00 
  402cb4:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402cbb:	00 00 
  402cbd:	74 05                	je     402cc4 <submitr+0x779>
  402cbf:	e8 4c e0 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402cc4:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402ccb:	5b                   	pop    %rbx
  402ccc:	5d                   	pop    %rbp
  402ccd:	41 5c                	pop    %r12
  402ccf:	41 5d                	pop    %r13
  402cd1:	41 5e                	pop    %r14
  402cd3:	41 5f                	pop    %r15
  402cd5:	c3                   	retq   

0000000000402cd6 <init_timeout>:
  402cd6:	85 ff                	test   %edi,%edi
  402cd8:	74 23                	je     402cfd <init_timeout+0x27>
  402cda:	53                   	push   %rbx
  402cdb:	89 fb                	mov    %edi,%ebx
  402cdd:	85 ff                	test   %edi,%edi
  402cdf:	79 05                	jns    402ce6 <init_timeout+0x10>
  402ce1:	bb 00 00 00 00       	mov    $0x0,%ebx
  402ce6:	be 7f 22 40 00       	mov    $0x40227f,%esi
  402ceb:	bf 0e 00 00 00       	mov    $0xe,%edi
  402cf0:	e8 8b e0 ff ff       	callq  400d80 <signal@plt>
  402cf5:	89 df                	mov    %ebx,%edi
  402cf7:	e8 44 e0 ff ff       	callq  400d40 <alarm@plt>
  402cfc:	5b                   	pop    %rbx
  402cfd:	f3 c3                	repz retq 

0000000000402cff <init_driver>:
  402cff:	55                   	push   %rbp
  402d00:	53                   	push   %rbx
  402d01:	48 83 ec 28          	sub    $0x28,%rsp
  402d05:	48 89 fd             	mov    %rdi,%rbp
  402d08:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d0f:	00 00 
  402d11:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402d16:	31 c0                	xor    %eax,%eax
  402d18:	be 01 00 00 00       	mov    $0x1,%esi
  402d1d:	bf 0d 00 00 00       	mov    $0xd,%edi
  402d22:	e8 59 e0 ff ff       	callq  400d80 <signal@plt>
  402d27:	be 01 00 00 00       	mov    $0x1,%esi
  402d2c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d31:	e8 4a e0 ff ff       	callq  400d80 <signal@plt>
  402d36:	be 01 00 00 00       	mov    $0x1,%esi
  402d3b:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d40:	e8 3b e0 ff ff       	callq  400d80 <signal@plt>
  402d45:	ba 00 00 00 00       	mov    $0x0,%edx
  402d4a:	be 01 00 00 00       	mov    $0x1,%esi
  402d4f:	bf 02 00 00 00       	mov    $0x2,%edi
  402d54:	e8 57 e1 ff ff       	callq  400eb0 <socket@plt>
  402d59:	85 c0                	test   %eax,%eax
  402d5b:	79 4f                	jns    402dac <init_driver+0xad>
  402d5d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d64:	3a 20 43 
  402d67:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d6b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402d72:	20 75 6e 
  402d75:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d79:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d80:	74 6f 20 
  402d83:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d87:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402d8e:	65 20 73 
  402d91:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d95:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402d9c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402da2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402da7:	e9 2a 01 00 00       	jmpq   402ed6 <init_driver+0x1d7>
  402dac:	89 c3                	mov    %eax,%ebx
  402dae:	bf 05 34 40 00       	mov    $0x403405,%edi
  402db3:	e8 d8 df ff ff       	callq  400d90 <gethostbyname@plt>
  402db8:	48 85 c0             	test   %rax,%rax
  402dbb:	75 68                	jne    402e25 <init_driver+0x126>
  402dbd:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402dc4:	3a 20 44 
  402dc7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402dcb:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402dd2:	20 75 6e 
  402dd5:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402dd9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402de0:	74 6f 20 
  402de3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402de7:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402dee:	76 65 20 
  402df1:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402df5:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402dfc:	72 20 61 
  402dff:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402e03:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402e0a:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402e10:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402e14:	89 df                	mov    %ebx,%edi
  402e16:	e8 35 df ff ff       	callq  400d50 <close@plt>
  402e1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e20:	e9 b1 00 00 00       	jmpq   402ed6 <init_driver+0x1d7>
  402e25:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402e2c:	00 
  402e2d:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402e34:	00 00 
  402e36:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402e3c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402e40:	48 8b 40 18          	mov    0x18(%rax),%rax
  402e44:	48 8b 30             	mov    (%rax),%rsi
  402e47:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402e4c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402e51:	e8 4a df ff ff       	callq  400da0 <__memmove_chk@plt>
  402e56:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402e5d:	ba 10 00 00 00       	mov    $0x10,%edx
  402e62:	48 89 e6             	mov    %rsp,%rsi
  402e65:	89 df                	mov    %ebx,%edi
  402e67:	e8 14 e0 ff ff       	callq  400e80 <connect@plt>
  402e6c:	85 c0                	test   %eax,%eax
  402e6e:	79 50                	jns    402ec0 <init_driver+0x1c1>
  402e70:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e77:	3a 20 55 
  402e7a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402e7e:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402e85:	20 74 6f 
  402e88:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402e8c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e93:	65 63 74 
  402e96:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e9a:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402ea1:	65 72 76 
  402ea4:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ea8:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402eae:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402eb2:	89 df                	mov    %ebx,%edi
  402eb4:	e8 97 de ff ff       	callq  400d50 <close@plt>
  402eb9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ebe:	eb 16                	jmp    402ed6 <init_driver+0x1d7>
  402ec0:	89 df                	mov    %ebx,%edi
  402ec2:	e8 89 de ff ff       	callq  400d50 <close@plt>
  402ec7:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402ecd:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  402ed6:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402edb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402ee2:	00 00 
  402ee4:	74 05                	je     402eeb <init_driver+0x1ec>
  402ee6:	e8 25 de ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402eeb:	48 83 c4 28          	add    $0x28,%rsp
  402eef:	5b                   	pop    %rbx
  402ef0:	5d                   	pop    %rbp
  402ef1:	c3                   	retq   

0000000000402ef2 <driver_post>:
  402ef2:	53                   	push   %rbx
  402ef3:	4c 89 cb             	mov    %r9,%rbx
  402ef6:	45 85 c0             	test   %r8d,%r8d
  402ef9:	74 27                	je     402f22 <driver_post+0x30>
  402efb:	48 89 ca             	mov    %rcx,%rdx
  402efe:	be e5 38 40 00       	mov    $0x4038e5,%esi
  402f03:	bf 01 00 00 00       	mov    $0x1,%edi
  402f08:	b8 00 00 00 00       	mov    $0x0,%eax
  402f0d:	e8 0e df ff ff       	callq  400e20 <__printf_chk@plt>
  402f12:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f17:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f1b:	b8 00 00 00 00       	mov    $0x0,%eax
  402f20:	eb 3f                	jmp    402f61 <driver_post+0x6f>
  402f22:	48 85 ff             	test   %rdi,%rdi
  402f25:	74 2c                	je     402f53 <driver_post+0x61>
  402f27:	80 3f 00             	cmpb   $0x0,(%rdi)
  402f2a:	74 27                	je     402f53 <driver_post+0x61>
  402f2c:	48 83 ec 08          	sub    $0x8,%rsp
  402f30:	41 51                	push   %r9
  402f32:	49 89 c9             	mov    %rcx,%r9
  402f35:	49 89 d0             	mov    %rdx,%r8
  402f38:	48 89 f9             	mov    %rdi,%rcx
  402f3b:	48 89 f2             	mov    %rsi,%rdx
  402f3e:	be 50 00 00 00       	mov    $0x50,%esi
  402f43:	bf 05 34 40 00       	mov    $0x403405,%edi
  402f48:	e8 fe f5 ff ff       	callq  40254b <submitr>
  402f4d:	48 83 c4 10          	add    $0x10,%rsp
  402f51:	eb 0e                	jmp    402f61 <driver_post+0x6f>
  402f53:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f58:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f5c:	b8 00 00 00 00       	mov    $0x0,%eax
  402f61:	5b                   	pop    %rbx
  402f62:	c3                   	retq   

0000000000402f63 <check>:
  402f63:	89 f8                	mov    %edi,%eax
  402f65:	c1 e8 1c             	shr    $0x1c,%eax
  402f68:	85 c0                	test   %eax,%eax
  402f6a:	74 1d                	je     402f89 <check+0x26>
  402f6c:	b9 00 00 00 00       	mov    $0x0,%ecx
  402f71:	eb 0b                	jmp    402f7e <check+0x1b>
  402f73:	89 f8                	mov    %edi,%eax
  402f75:	d3 e8                	shr    %cl,%eax
  402f77:	3c 0a                	cmp    $0xa,%al
  402f79:	74 14                	je     402f8f <check+0x2c>
  402f7b:	83 c1 08             	add    $0x8,%ecx
  402f7e:	83 f9 1f             	cmp    $0x1f,%ecx
  402f81:	7e f0                	jle    402f73 <check+0x10>
  402f83:	b8 01 00 00 00       	mov    $0x1,%eax
  402f88:	c3                   	retq   
  402f89:	b8 00 00 00 00       	mov    $0x0,%eax
  402f8e:	c3                   	retq   
  402f8f:	b8 00 00 00 00       	mov    $0x0,%eax
  402f94:	c3                   	retq   

0000000000402f95 <gencookie>:
  402f95:	53                   	push   %rbx
  402f96:	83 c7 01             	add    $0x1,%edi
  402f99:	e8 22 dd ff ff       	callq  400cc0 <srandom@plt>
  402f9e:	e8 3d de ff ff       	callq  400de0 <random@plt>
  402fa3:	89 c3                	mov    %eax,%ebx
  402fa5:	89 c7                	mov    %eax,%edi
  402fa7:	e8 b7 ff ff ff       	callq  402f63 <check>
  402fac:	85 c0                	test   %eax,%eax
  402fae:	74 ee                	je     402f9e <gencookie+0x9>
  402fb0:	89 d8                	mov    %ebx,%eax
  402fb2:	5b                   	pop    %rbx
  402fb3:	c3                   	retq   
  402fb4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402fbb:	00 00 00 
  402fbe:	66 90                	xchg   %ax,%ax

0000000000402fc0 <__libc_csu_init>:
  402fc0:	41 57                	push   %r15
  402fc2:	41 56                	push   %r14
  402fc4:	41 89 ff             	mov    %edi,%r15d
  402fc7:	41 55                	push   %r13
  402fc9:	41 54                	push   %r12
  402fcb:	4c 8d 25 2e 1e 20 00 	lea    0x201e2e(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  402fd2:	55                   	push   %rbp
  402fd3:	48 8d 2d 2e 1e 20 00 	lea    0x201e2e(%rip),%rbp        # 604e08 <__init_array_end>
  402fda:	53                   	push   %rbx
  402fdb:	49 89 f6             	mov    %rsi,%r14
  402fde:	49 89 d5             	mov    %rdx,%r13
  402fe1:	4c 29 e5             	sub    %r12,%rbp
  402fe4:	48 83 ec 08          	sub    $0x8,%rsp
  402fe8:	48 c1 fd 03          	sar    $0x3,%rbp
  402fec:	e8 77 dc ff ff       	callq  400c68 <_init>
  402ff1:	48 85 ed             	test   %rbp,%rbp
  402ff4:	74 20                	je     403016 <__libc_csu_init+0x56>
  402ff6:	31 db                	xor    %ebx,%ebx
  402ff8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402fff:	00 
  403000:	4c 89 ea             	mov    %r13,%rdx
  403003:	4c 89 f6             	mov    %r14,%rsi
  403006:	44 89 ff             	mov    %r15d,%edi
  403009:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40300d:	48 83 c3 01          	add    $0x1,%rbx
  403011:	48 39 eb             	cmp    %rbp,%rbx
  403014:	75 ea                	jne    403000 <__libc_csu_init+0x40>
  403016:	48 83 c4 08          	add    $0x8,%rsp
  40301a:	5b                   	pop    %rbx
  40301b:	5d                   	pop    %rbp
  40301c:	41 5c                	pop    %r12
  40301e:	41 5d                	pop    %r13
  403020:	41 5e                	pop    %r14
  403022:	41 5f                	pop    %r15
  403024:	c3                   	retq   
  403025:	90                   	nop
  403026:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40302d:	00 00 00 

0000000000403030 <__libc_csu_fini>:
  403030:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403034 <_fini>:
  403034:	48 83 ec 08          	sub    $0x8,%rsp
  403038:	48 83 c4 08          	add    $0x8,%rsp
  40303c:	c3                   	retq   
