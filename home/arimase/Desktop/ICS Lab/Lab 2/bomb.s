
bomb：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400b70 <_init>:
  400b70:	48 83 ec 08          	sub    $0x8,%rsp
  400b74:	48 8b 05 7d 34 20 00 	mov    0x20347d(%rip),%rax        # 603ff8 <_DYNAMIC+0x1e0>
  400b7b:	48 85 c0             	test   %rax,%rax
  400b7e:	74 05                	je     400b85 <_init+0x15>
  400b80:	e8 eb 01 00 00       	callq  400d70 <socket@plt+0x10>
  400b85:	48 83 c4 08          	add    $0x8,%rsp
  400b89:	c3                   	retq   

Disassembly of section .plt:

0000000000400b90 <getenv@plt-0x10>:
  400b90:	ff 35 72 34 20 00    	pushq  0x203472(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b96:	ff 25 74 34 20 00    	jmpq   *0x203474(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ba0 <getenv@plt>:
  400ba0:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400ba6:	68 00 00 00 00       	pushq  $0x0
  400bab:	e9 e0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400bb0 <strcasecmp@plt>:
  400bb0:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400bb6:	68 01 00 00 00       	pushq  $0x1
  400bbb:	e9 d0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400bc0 <__errno_location@plt>:
  400bc0:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400bc6:	68 02 00 00 00       	pushq  $0x2
  400bcb:	e9 c0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400bd0 <strcpy@plt>:
  400bd0:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400bd6:	68 03 00 00 00       	pushq  $0x3
  400bdb:	e9 b0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400be0 <puts@plt>:
  400be0:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400be6:	68 04 00 00 00       	pushq  $0x4
  400beb:	e9 a0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400bf0 <write@plt>:
  400bf0:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400bf6:	68 05 00 00 00       	pushq  $0x5
  400bfb:	e9 90 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c00 <__stack_chk_fail@plt>:
  400c00:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400c06:	68 06 00 00 00       	pushq  $0x6
  400c0b:	e9 80 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c10 <alarm@plt>:
  400c10:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400c16:	68 07 00 00 00       	pushq  $0x7
  400c1b:	e9 70 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c20 <close@plt>:
  400c20:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400c26:	68 08 00 00 00       	pushq  $0x8
  400c2b:	e9 60 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c30 <read@plt>:
  400c30:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400c36:	68 09 00 00 00       	pushq  $0x9
  400c3b:	e9 50 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c40 <__libc_start_main@plt>:
  400c40:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c46:	68 0a 00 00 00       	pushq  $0xa
  400c4b:	e9 40 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c50 <fgets@plt>:
  400c50:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c56:	68 0b 00 00 00       	pushq  $0xb
  400c5b:	e9 30 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c60 <signal@plt>:
  400c60:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c66:	68 0c 00 00 00       	pushq  $0xc
  400c6b:	e9 20 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c70 <gethostbyname@plt>:
  400c70:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c76:	68 0d 00 00 00       	pushq  $0xd
  400c7b:	e9 10 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c80 <__memmove_chk@plt>:
  400c80:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c86:	68 0e 00 00 00       	pushq  $0xe
  400c8b:	e9 00 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c90 <strtol@plt>:
  400c90:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c96:	68 0f 00 00 00       	pushq  $0xf
  400c9b:	e9 f0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400ca0 <memcpy@plt>:
  400ca0:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400ca6:	68 10 00 00 00       	pushq  $0x10
  400cab:	e9 e0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400cb0 <fflush@plt>:
  400cb0:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400cb6:	68 11 00 00 00       	pushq  $0x11
  400cbb:	e9 d0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400cc0 <__isoc99_sscanf@plt>:
  400cc0:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400cc6:	68 12 00 00 00       	pushq  $0x12
  400ccb:	e9 c0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400cd0 <__printf_chk@plt>:
  400cd0:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400cd6:	68 13 00 00 00       	pushq  $0x13
  400cdb:	e9 b0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400ce0 <fopen@plt>:
  400ce0:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400ce6:	68 14 00 00 00       	pushq  $0x14
  400ceb:	e9 a0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400cf0 <gethostname@plt>:
  400cf0:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400cf6:	68 15 00 00 00       	pushq  $0x15
  400cfb:	e9 90 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d00 <exit@plt>:
  400d00:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400d06:	68 16 00 00 00       	pushq  $0x16
  400d0b:	e9 80 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d10 <connect@plt>:
  400d10:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400d16:	68 17 00 00 00       	pushq  $0x17
  400d1b:	e9 70 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d20 <__fprintf_chk@plt>:
  400d20:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400d26:	68 18 00 00 00       	pushq  $0x18
  400d2b:	e9 60 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d30 <sleep@plt>:
  400d30:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400d36:	68 19 00 00 00       	pushq  $0x19
  400d3b:	e9 50 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d40 <__ctype_b_loc@plt>:
  400d40:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400d46:	68 1a 00 00 00       	pushq  $0x1a
  400d4b:	e9 40 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d50 <__sprintf_chk@plt>:
  400d50:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400d56:	68 1b 00 00 00       	pushq  $0x1b
  400d5b:	e9 30 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d60 <socket@plt>:
  400d60:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400d66:	68 1c 00 00 00       	pushq  $0x1c
  400d6b:	e9 20 fe ff ff       	jmpq   400b90 <_init+0x20>

Disassembly of section .plt.got:

0000000000400d70 <.plt.got>:
  400d70:	ff 25 82 32 20 00    	jmpq   *0x203282(%rip)        # 603ff8 <_DYNAMIC+0x1e0>
  400d76:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400d80 <_start>:
  400d80:	31 ed                	xor    %ebp,%ebp
  400d82:	49 89 d1             	mov    %rdx,%r9
  400d85:	5e                   	pop    %rsi
  400d86:	48 89 e2             	mov    %rsp,%rdx
  400d89:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d8d:	50                   	push   %rax
  400d8e:	54                   	push   %rsp
  400d8f:	49 c7 c0 b0 26 40 00 	mov    $0x4026b0,%r8
  400d96:	48 c7 c1 40 26 40 00 	mov    $0x402640,%rcx
  400d9d:	48 c7 c7 76 0e 40 00 	mov    $0x400e76,%rdi
  400da4:	e8 97 fe ff ff       	callq  400c40 <__libc_start_main@plt>
  400da9:	f4                   	hlt    
  400daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400db0 <deregister_tm_clones>:
  400db0:	b8 07 56 60 00       	mov    $0x605607,%eax
  400db5:	55                   	push   %rbp
  400db6:	48 2d 00 56 60 00    	sub    $0x605600,%rax
  400dbc:	48 83 f8 0e          	cmp    $0xe,%rax
  400dc0:	48 89 e5             	mov    %rsp,%rbp
  400dc3:	76 1b                	jbe    400de0 <deregister_tm_clones+0x30>
  400dc5:	b8 00 00 00 00       	mov    $0x0,%eax
  400dca:	48 85 c0             	test   %rax,%rax
  400dcd:	74 11                	je     400de0 <deregister_tm_clones+0x30>
  400dcf:	5d                   	pop    %rbp
  400dd0:	bf 00 56 60 00       	mov    $0x605600,%edi
  400dd5:	ff e0                	jmpq   *%rax
  400dd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400dde:	00 00 
  400de0:	5d                   	pop    %rbp
  400de1:	c3                   	retq   
  400de2:	0f 1f 40 00          	nopl   0x0(%rax)
  400de6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ded:	00 00 00 

0000000000400df0 <register_tm_clones>:
  400df0:	be 00 56 60 00       	mov    $0x605600,%esi
  400df5:	55                   	push   %rbp
  400df6:	48 81 ee 00 56 60 00 	sub    $0x605600,%rsi
  400dfd:	48 c1 fe 03          	sar    $0x3,%rsi
  400e01:	48 89 e5             	mov    %rsp,%rbp
  400e04:	48 89 f0             	mov    %rsi,%rax
  400e07:	48 c1 e8 3f          	shr    $0x3f,%rax
  400e0b:	48 01 c6             	add    %rax,%rsi
  400e0e:	48 d1 fe             	sar    %rsi
  400e11:	74 15                	je     400e28 <register_tm_clones+0x38>
  400e13:	b8 00 00 00 00       	mov    $0x0,%eax
  400e18:	48 85 c0             	test   %rax,%rax
  400e1b:	74 0b                	je     400e28 <register_tm_clones+0x38>
  400e1d:	5d                   	pop    %rbp
  400e1e:	bf 00 56 60 00       	mov    $0x605600,%edi
  400e23:	ff e0                	jmpq   *%rax
  400e25:	0f 1f 00             	nopl   (%rax)
  400e28:	5d                   	pop    %rbp
  400e29:	c3                   	retq   
  400e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e30 <__do_global_dtors_aux>:
  400e30:	80 3d f1 47 20 00 00 	cmpb   $0x0,0x2047f1(%rip)        # 605628 <completed.7585>
  400e37:	75 11                	jne    400e4a <__do_global_dtors_aux+0x1a>
  400e39:	55                   	push   %rbp
  400e3a:	48 89 e5             	mov    %rsp,%rbp
  400e3d:	e8 6e ff ff ff       	callq  400db0 <deregister_tm_clones>
  400e42:	5d                   	pop    %rbp
  400e43:	c6 05 de 47 20 00 01 	movb   $0x1,0x2047de(%rip)        # 605628 <completed.7585>
  400e4a:	f3 c3                	repz retq 
  400e4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e50 <frame_dummy>:
  400e50:	bf 10 3e 60 00       	mov    $0x603e10,%edi
  400e55:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400e59:	75 05                	jne    400e60 <frame_dummy+0x10>
  400e5b:	eb 93                	jmp    400df0 <register_tm_clones>
  400e5d:	0f 1f 00             	nopl   (%rax)
  400e60:	b8 00 00 00 00       	mov    $0x0,%eax
  400e65:	48 85 c0             	test   %rax,%rax
  400e68:	74 f1                	je     400e5b <frame_dummy+0xb>
  400e6a:	55                   	push   %rbp
  400e6b:	48 89 e5             	mov    %rsp,%rbp
  400e6e:	ff d0                	callq  *%rax
  400e70:	5d                   	pop    %rbp
  400e71:	e9 7a ff ff ff       	jmpq   400df0 <register_tm_clones>

0000000000400e76 <main>:
  400e76:	53                   	push   %rbx
  400e77:	83 ff 01             	cmp    $0x1,%edi
  400e7a:	75 10                	jne    400e8c <main+0x16>
  400e7c:	48 8b 05 8d 47 20 00 	mov    0x20478d(%rip),%rax        # 605610 <stdin@@GLIBC_2.2.5>
  400e83:	48 89 05 a6 47 20 00 	mov    %rax,0x2047a6(%rip)        # 605630 <infile>
  400e8a:	eb 63                	jmp    400eef <main+0x79>
  400e8c:	48 89 f3             	mov    %rsi,%rbx
  400e8f:	83 ff 02             	cmp    $0x2,%edi
  400e92:	75 3a                	jne    400ece <main+0x58>
  400e94:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e98:	be c4 26 40 00       	mov    $0x4026c4,%esi
  400e9d:	e8 3e fe ff ff       	callq  400ce0 <fopen@plt>
  400ea2:	48 89 05 87 47 20 00 	mov    %rax,0x204787(%rip)        # 605630 <infile>
  400ea9:	48 85 c0             	test   %rax,%rax
  400eac:	75 41                	jne    400eef <main+0x79>
  400eae:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400eb2:	48 8b 13             	mov    (%rbx),%rdx
  400eb5:	be c6 26 40 00       	mov    $0x4026c6,%esi
  400eba:	bf 01 00 00 00       	mov    $0x1,%edi
  400ebf:	e8 0c fe ff ff       	callq  400cd0 <__printf_chk@plt>
  400ec4:	bf 08 00 00 00       	mov    $0x8,%edi
  400ec9:	e8 32 fe ff ff       	callq  400d00 <exit@plt>
  400ece:	48 8b 16             	mov    (%rsi),%rdx
  400ed1:	be e3 26 40 00       	mov    $0x4026e3,%esi
  400ed6:	bf 01 00 00 00       	mov    $0x1,%edi
  400edb:	b8 00 00 00 00       	mov    $0x0,%eax
  400ee0:	e8 eb fd ff ff       	callq  400cd0 <__printf_chk@plt>
  400ee5:	bf 08 00 00 00       	mov    $0x8,%edi
  400eea:	e8 11 fe ff ff       	callq  400d00 <exit@plt>
  400eef:	e8 7f 05 00 00       	callq  401473 <initialize_bomb>
  400ef4:	bf 48 27 40 00       	mov    $0x402748,%edi
  400ef9:	e8 e2 fc ff ff       	callq  400be0 <puts@plt>
  400efe:	bf 88 27 40 00       	mov    $0x402788,%edi
  400f03:	e8 d8 fc ff ff       	callq  400be0 <puts@plt>
  400f08:	e8 61 08 00 00       	callq  40176e <read_line>
  400f0d:	48 89 c7             	mov    %rax,%rdi
  400f10:	e8 98 00 00 00       	callq  400fad <phase_1>
  400f15:	e8 82 09 00 00       	callq  40189c <phase_defused>
  400f1a:	bf b8 27 40 00       	mov    $0x4027b8,%edi
  400f1f:	e8 bc fc ff ff       	callq  400be0 <puts@plt>
  400f24:	e8 45 08 00 00       	callq  40176e <read_line>
  400f29:	48 89 c7             	mov    %rax,%rdi
  400f2c:	e8 98 00 00 00       	callq  400fc9 <phase_2>
  400f31:	e8 66 09 00 00       	callq  40189c <phase_defused>
  400f36:	bf fd 26 40 00       	mov    $0x4026fd,%edi
  400f3b:	e8 a0 fc ff ff       	callq  400be0 <puts@plt>
  400f40:	e8 29 08 00 00       	callq  40176e <read_line>
  400f45:	48 89 c7             	mov    %rax,%rdi
  400f48:	e8 f3 00 00 00       	callq  401040 <phase_3>
  400f4d:	e8 4a 09 00 00       	callq  40189c <phase_defused>
  400f52:	bf 1b 27 40 00       	mov    $0x40271b,%edi
  400f57:	e8 84 fc ff ff       	callq  400be0 <puts@plt>
  400f5c:	e8 0d 08 00 00       	callq  40176e <read_line>
  400f61:	48 89 c7             	mov    %rax,%rdi
  400f64:	e8 dc 01 00 00       	callq  401145 <phase_4>
  400f69:	e8 2e 09 00 00       	callq  40189c <phase_defused>
  400f6e:	bf e8 27 40 00       	mov    $0x4027e8,%edi
  400f73:	e8 68 fc ff ff       	callq  400be0 <puts@plt>
  400f78:	e8 f1 07 00 00       	callq  40176e <read_line>
  400f7d:	48 89 c7             	mov    %rax,%rdi
  400f80:	e8 39 02 00 00       	callq  4011be <phase_5>
  400f85:	e8 12 09 00 00       	callq  40189c <phase_defused>
  400f8a:	bf 2a 27 40 00       	mov    $0x40272a,%edi
  400f8f:	e8 4c fc ff ff       	callq  400be0 <puts@plt>
  400f94:	e8 d5 07 00 00       	callq  40176e <read_line>
  400f99:	48 89 c7             	mov    %rax,%rdi
  400f9c:	e8 61 02 00 00       	callq  401202 <phase_6>
  400fa1:	e8 f6 08 00 00       	callq  40189c <phase_defused>
  400fa6:	b8 00 00 00 00       	mov    $0x0,%eax
  400fab:	5b                   	pop    %rbx
  400fac:	c3                   	retq   

0000000000400fad <phase_1>:
  400fad:	48 83 ec 08          	sub    $0x8,%rsp
  400fb1:	be 10 28 40 00       	mov    $0x402810,%esi
  400fb6:	e8 6b 04 00 00       	callq  401426 <strings_not_equal>
  400fbb:	85 c0                	test   %eax,%eax
  400fbd:	74 05                	je     400fc4 <phase_1+0x17>
  400fbf:	e8 35 07 00 00       	callq  4016f9 <explode_bomb>
  400fc4:	48 83 c4 08          	add    $0x8,%rsp
  400fc8:	c3                   	retq   

0000000000400fc9 <phase_2>:
  400fc9:	53                   	push   %rbx
  400fca:	48 83 ec 20          	sub    $0x20,%rsp
  400fce:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400fd5:	00 00 
  400fd7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400fdc:	31 c0                	xor    %eax,%eax
  400fde:	48 89 e6             	mov    %rsp,%rsi
  400fe1:	e8 49 07 00 00       	callq  40172f <read_six_numbers>
  400fe6:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  400fea:	75 07                	jne    400ff3 <phase_2+0x2a>
  400fec:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
  400ff1:	74 05                	je     400ff8 <phase_2+0x2f>
  400ff3:	e8 01 07 00 00       	callq  4016f9 <explode_bomb>
  400ff8:	bb 02 00 00 00       	mov    $0x2,%ebx
  400ffd:	eb 21                	jmp    401020 <phase_2+0x57>
  400fff:	48 63 d3             	movslq %ebx,%rdx
  401002:	8d 4b fe             	lea    -0x2(%rbx),%ecx
  401005:	48 63 c9             	movslq %ecx,%rcx
  401008:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40100b:	48 98                	cltq   
  40100d:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  401010:	03 04 8c             	add    (%rsp,%rcx,4),%eax
  401013:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
  401016:	74 05                	je     40101d <phase_2+0x54>
  401018:	e8 dc 06 00 00       	callq  4016f9 <explode_bomb>
  40101d:	83 c3 01             	add    $0x1,%ebx
  401020:	83 fb 05             	cmp    $0x5,%ebx
  401023:	7e da                	jle    400fff <phase_2+0x36>
  401025:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40102a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401031:	00 00 
  401033:	74 05                	je     40103a <phase_2+0x71>
  401035:	e8 c6 fb ff ff       	callq  400c00 <__stack_chk_fail@plt>
  40103a:	48 83 c4 20          	add    $0x20,%rsp
  40103e:	5b                   	pop    %rbx
  40103f:	c3                   	retq   

0000000000401040 <phase_3>:
  401040:	48 83 ec 18          	sub    $0x18,%rsp
  401044:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40104b:	00 00 
  40104d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401052:	31 c0                	xor    %eax,%eax
  401054:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  401059:	48 89 e2             	mov    %rsp,%rdx
  40105c:	be 50 2b 40 00       	mov    $0x402b50,%esi
  401061:	e8 5a fc ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  401066:	83 f8 01             	cmp    $0x1,%eax
  401069:	7f 05                	jg     401070 <phase_3+0x30>
  40106b:	e8 89 06 00 00       	callq  4016f9 <explode_bomb>
  401070:	83 3c 24 07          	cmpl   $0x7,(%rsp)
  401074:	77 65                	ja     4010db <phase_3+0x9b>
  401076:	8b 04 24             	mov    (%rsp),%eax
  401079:	ff 24 c5 80 28 40 00 	jmpq   *0x402880(,%rax,8)
Lable 1: -441
  401080:	b8 00 00 00 00       	mov    $0x0,%eax
  401085:	eb 05                	jmp    40108c <phase_3+0x4c>
Lable 0:  449
  401087:	b8 7a 03 00 00       	mov    $0x37a,%eax
  40108c:	2d 15 02 00 00       	sub    $0x215,%eax
  401091:	eb 05                	jmp    401098 <phase_3+0x58>
Lable 2:   92
  401093:	b8 00 00 00 00       	mov    $0x0,%eax
  401098:	05 95 03 00 00       	add    $0x395,%eax
  40109d:	eb 05                	jmp    4010a4 <phase_3+0x64>
Lable 3: -825
  40109f:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a4:	2d 39 03 00 00       	sub    $0x339,%eax
  4010a9:	eb 05                	jmp    4010b0 <phase_3+0x70>
Lable 4:    0
  4010ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4010b0:	05 39 03 00 00       	add    $0x339,%eax
  4010b5:	eb 05                	jmp    4010bc <phase_3+0x7c>
Lable 5: -825
  4010b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4010bc:	2d 39 03 00 00       	sub    $0x339,%eax
  4010c1:	eb 05                	jmp    4010c8 <phase_3+0x88>
Lable 6:    0
  4010c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4010c8:	05 39 03 00 00       	add    $0x339,%eax
  4010cd:	eb 05                	jmp    4010d4 <phase_3+0x94>
Lable 7: -825
  4010cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4010d4:	2d 39 03 00 00       	sub    $0x339,%eax
  4010d9:	eb 0a                	jmp    4010e5 <phase_3+0xa5>
  4010db:	e8 19 06 00 00       	callq  4016f9 <explode_bomb>
  4010e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e5:	83 3c 24 05          	cmpl   $0x5,(%rsp)
  4010e9:	7f 06                	jg     4010f1 <phase_3+0xb1>
  4010eb:	3b 44 24 04          	cmp    0x4(%rsp),%eax
  4010ef:	74 05                	je     4010f6 <phase_3+0xb6>
  4010f1:	e8 03 06 00 00       	callq  4016f9 <explode_bomb>
  4010f6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4010fb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401102:	00 00 
  401104:	74 05                	je     40110b <phase_3+0xcb>
  401106:	e8 f5 fa ff ff       	callq  400c00 <__stack_chk_fail@plt>
  40110b:	48 83 c4 18          	add    $0x18,%rsp
  40110f:	c3                   	retq   

中序遍历 从当前节点到根节点的数字之和
0000000000401110 <func4>:
  401110:	53                   	push   %rbx
  401111:	89 d0                	mov    %edx,%eax
  401113:	29 f0                	sub    %esi,%eax
  401115:	89 c3                	mov    %eax,%ebx
  401117:	c1 eb 1f             	shr    $0x1f,%ebx
  40111a:	01 d8                	add    %ebx,%eax
  40111c:	d1 f8                	sar    %eax
  40111e:	8d 1c 06             	lea    (%rsi,%rax,1),%ebx
  401121:	39 fb                	cmp    %edi,%ebx
  401123:	7e 0c                	jle    401131 <func4+0x21>
  401125:	8d 53 ff             	lea    -0x1(%rbx),%edx
  401128:	e8 e3 ff ff ff       	callq  401110 <func4>
  40112d:	01 d8                	add    %ebx,%eax
  40112f:	eb 12                	jmp    401143 <func4+0x33>
  401131:	39 fb                	cmp    %edi,%ebx
  401133:	7d 0c                	jge    401141 <func4+0x31>
  401135:	8d 73 01             	lea    0x1(%rbx),%esi
  401138:	e8 d3 ff ff ff       	callq  401110 <func4>
  40113d:	01 d8                	add    %ebx,%eax
  40113f:	eb 02                	jmp    401143 <func4+0x33>
  401141:	89 d8                	mov    %ebx,%eax
  401143:	5b                   	pop    %rbx
  401144:	c3                   	retq   

0000000000401145 <phase_4>:
  401145:	48 83 ec 18          	sub    $0x18,%rsp
  401149:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401150:	00 00 
  401152:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401157:	31 c0                	xor    %eax,%eax
  401159:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  40115e:	48 89 e2             	mov    %rsp,%rdx
  401161:	be 50 2b 40 00       	mov    $0x402b50,%esi
  401166:	e8 55 fb ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  40116b:	83 f8 02             	cmp    $0x2,%eax
  40116e:	75 0c                	jne    40117c <phase_4+0x37>
  401170:	8b 04 24             	mov    (%rsp),%eax
  401173:	85 c0                	test   %eax,%eax
  401175:	78 05                	js     40117c <phase_4+0x37>
  401177:	83 f8 0e             	cmp    $0xe,%eax
  40117a:	7e 05                	jle    401181 <phase_4+0x3c>
  40117c:	e8 78 05 00 00       	callq  4016f9 <explode_bomb>
  401181:	ba 0e 00 00 00       	mov    $0xe,%edx
  401186:	be 00 00 00 00       	mov    $0x0,%esi
  40118b:	8b 3c 24             	mov    (%rsp),%edi
  40118e:	e8 7d ff ff ff       	callq  401110 <func4>
  401193:	83 f8 13             	cmp    $0x13,%eax
  401196:	75 07                	jne    40119f <phase_4+0x5a>
  401198:	83 7c 24 04 13       	cmpl   $0x13,0x4(%rsp)
  40119d:	74 05                	je     4011a4 <phase_4+0x5f>
  40119f:	e8 55 05 00 00       	callq  4016f9 <explode_bomb>
  4011a4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4011a9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011b0:	00 00 
  4011b2:	74 05                	je     4011b9 <phase_4+0x74>
  4011b4:	e8 47 fa ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4011b9:	48 83 c4 18          	add    $0x18,%rsp
  4011bd:	c3                   	retq   

00000000004011be <phase_5>:
  4011be:	53                   	push   %rbx
  4011bf:	48 89 fb             	mov    %rdi,%rbx
  4011c2:	e8 4a 02 00 00       	callq  401411 <string_length>
  4011c7:	83 f8 06             	cmp    $0x6,%eax
  4011ca:	74 05                	je     4011d1 <phase_5+0x13>
  4011cc:	e8 28 05 00 00       	callq  4016f9 <explode_bomb>
  4011d1:	b9 00 00 00 00       	mov    $0x0,%ecx
  4011d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4011db:	eb 14                	jmp    4011f1 <phase_5+0x33>
  4011dd:	48 63 d0             	movslq %eax,%rdx
  4011e0:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx
  4011e4:	83 e2 0f             	and    $0xf,%edx
  4011e7:	03 0c 95 c0 28 40 00 	add    0x4028c0(,%rdx,4),%ecx
  4011ee:	83 c0 01             	add    $0x1,%eax
  4011f1:	83 f8 05             	cmp    $0x5,%eax
  4011f4:	7e e7                	jle    4011dd <phase_5+0x1f>
  4011f6:	83 f9 39             	cmp    $0x39,%ecx
  4011f9:	74 05                	je     401200 <phase_5+0x42>
  4011fb:	e8 f9 04 00 00       	callq  4016f9 <explode_bomb>
  401200:	5b                   	pop    %rbx
  401201:	c3                   	retq   

0000000000401202 <phase_6>:
  401202:	41 54                	push   %r12
  401204:	55                   	push   %rbp
  401205:	53                   	push   %rbx
  401206:	48 83 ec 60          	sub    $0x60,%rsp
  40120a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401211:	00 00 
  401213:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401218:	31 c0                	xor    %eax,%eax
  40121a:	48 89 e6             	mov    %rsp,%rsi
  40121d:	e8 0d 05 00 00       	callq  40172f <read_six_numbers>
  401222:	bd 00 00 00 00       	mov    $0x0,%ebp
  401227:	eb 3a                	jmp    401263 <phase_6+0x61>

判断 数据范围 和 数据是否重复
	  401229:	48 63 c5             	movslq %ebp,%rax
	  40122c:	8b 04 84             	mov    (%rsp,%rax,4),%eax
	  40122f:	83 e8 01             	sub    $0x1,%eax
	  401232:	83 f8 05             	cmp    $0x5,%eax
	  401235:	76 05                	jbe    40123c <phase_6+0x3a>
	  401237:	e8 bd 04 00 00       	callq  4016f9 <explode_bomb>
	  40123c:	44 8d 65 01          	lea    0x1(%rbp),%r12d
	  401240:	44 89 e3             	mov    %r12d,%ebx
	  401243:	eb 16                	jmp    40125b <phase_6+0x59>

		  401245:	48 63 c5             	movslq %ebp,%rax
		  401248:	48 63 d3             	movslq %ebx,%rdx
		  40124b:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
		  40124e:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
		  401254:	75 05                	jne    401258 <phase_6+0x56>
		  401253:	e8 a1 04 00 00       	callq  4016f9 <explode_bomb>
		  401258:	83 c3 01             	add    $0x1,%ebx
		  40125b:	83 fb 05             	cmp    $0x5,%ebx
		  40125e:	7e e5                	jle    401245 <phase_6+0x43>

	  401260:	44 89 e5             	mov    %r12d,%ebp
	  401263:	83 fd 05             	cmp    $0x5,%ebp
	  401266:	7e c1                	jle    401229 <phase_6+0x27>

插入数字在num数组后端
  401268:	be 00 00 00 00       	mov    $0x0,%esi
  40126d:	eb 23                	jmp    401292 <phase_6+0x90>

	  40126f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
	  401273:	83 c0 01             	add    $0x1,%eax
	  401276:	eb 0a                	jmp    401282 <phase_6+0x80>
	  401278:	b8 01 00 00 00       	mov    $0x1,%eax
	  40127d:	ba 00 43 60 00       	mov    $0x604300,%edx
	  401282:	48 63 ce             	movslq %esi,%rcx
	  401285:	3b 04 8c             	cmp    (%rsp,%rcx,4),%eax
	  401288:	7c e5                	jl     40126f <phase_6+0x6d>
	  40128a:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
	  40128f:	83 c6 01             	add    $0x1,%esi
	  401292:	83 fe 05             	cmp    $0x5,%esi
	  401295:	7e e1                	jle    401278 <phase_6+0x76>

链表操作
  401297:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  40129c:	48 89 d9             	mov    %rbx,%rcx
  40129f:	b8 01 00 00 00       	mov    $0x1,%eax
  4012a4:	eb 12                	jmp    4012b8 <phase_6+0xb6>

	  4012a6:	48 63 d0             	movslq %eax,%rdx
	  4012a9:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
	  4012ae:	48 89 51 08          	mov    %rdx,0x8(%rcx)
	  4012b2:	83 c0 01             	add    $0x1,%eax
	  4012b5:	48 89 d1             	mov    %rdx,%rcx
	  4012b8:	83 f8 05             	cmp    $0x5,%eax
	  4012bb:	7e e9                	jle    4012a6 <phase_6+0xa4>

检查是否排序完毕	  
  4012bd:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
  4012c4:	00 
  4012c5:	bd 00 00 00 00       	mov    $0x0,%ebp
  4012ca:	eb 16                	jmp    4012e2 <phase_6+0xe0>

	  4012cc:	48 8b 43 08          	mov    0x8(%rbx),%rax
	  4012d0:	8b 00                	mov    (%rax),%eax
	  4012d2:	39 03                	cmp    %eax,(%rbx)
	  4012d4:	7e 05                	jle    4012db <phase_6+0xd9>
	  4012d6:	e8 1e 04 00 00       	callq  4016f9 <explode_bomb>
	  4012db:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
	  4012df:	83 c5 01             	add    $0x1,%ebp
	  4012e2:	83 fd 04             	cmp    $0x4,%ebp
	  4012e5:	7e e5                	jle    4012cc <phase_6+0xca>

  4012e7:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4012ec:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4012f3:	00 00 
  4012f5:	74 05                	je     4012fc <phase_6+0xfa>
  4012f7:	e8 04 f9 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4012fc:	48 83 c4 60          	add    $0x60,%rsp
  401300:	5b                   	pop    %rbx
  401301:	5d                   	pop    %rbp
  401302:	41 5c                	pop    %r12
  401304:	c3                   	retq   

0000000000401305 <fun7>:
  401305:	48 83 ec 08          	sub    $0x8,%rsp

  401309:	48 85 ff             	test   %rdi,%rdi
  40130c:	74 26                	je     401334 <fun7+0x2f>
  40130e:	8b 07                	mov    (%rdi),%eax
  401310:	39 f0                	cmp    %esi,%eax
  401312:	7e 0d                	jle    401321 <fun7+0x1c>
大于
	  401314:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
	  401318:	e8 e8 ff ff ff       	callq  401305 <fun7>
	  40131d:	01 c0                	add    %eax,%eax
	  40131f:	eb 1f                	jmp    401340 <fun7+0x3b>
  
  401321:	39 f0                	cmp    %esi,%eax
  401323:	74 16                	je     40133b <fun7+0x36>
小于
	  401325:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
	  401329:	e8 d7 ff ff ff       	callq  401305 <fun7>
	  40132e:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
	  401332:	eb 0c                	jmp    401340 <fun7+0x3b>

	  401334:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
	  401339:	eb 05                	jmp    401340 <fun7+0x3b>

  40133b:	b8 00 00 00 00       	mov    $0x0,%eax
  401340:	48 83 c4 08          	add    $0x8,%rsp
  401344:	c3                   	retq   

0000000000401345 <secret_phase>:
  401345:	53                   	push   %rbx
  401346:	e8 23 04 00 00       	callq  40176e <read_line>
  40134b:	ba 0a 00 00 00       	mov    $0xa,%edx
  401350:	be 00 00 00 00       	mov    $0x0,%esi
  401355:	48 89 c7             	mov    %rax,%rdi
  401358:	e8 33 f9 ff ff       	callq  400c90 <strtol@plt>
  40135d:	48 89 c3             	mov    %rax,%rbx
  401360:	8d 40 ff             	lea    -0x1(%rax),%eax
  401363:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  401368:	76 05                	jbe    40136f <secret_phase+0x2a>
  40136a:	e8 8a 03 00 00       	callq  4016f9 <explode_bomb>
  40136f:	89 de                	mov    %ebx,%esi
  401371:	bf 20 41 60 00       	mov    $0x604120,%edi
  401376:	e8 8a ff ff ff       	callq  401305 <fun7>
  40137b:	83 f8 03             	cmp    $0x3,%eax
  40137e:	74 05                	je     401385 <secret_phase+0x40>
  401380:	e8 74 03 00 00       	callq  4016f9 <explode_bomb>
  401385:	bf 40 28 40 00       	mov    $0x402840,%edi
  40138a:	e8 51 f8 ff ff       	callq  400be0 <puts@plt>
  40138f:	e8 08 05 00 00       	callq  40189c <phase_defused>
  401394:	5b                   	pop    %rbx
  401395:	c3                   	retq   

0000000000401396 <sig_handler>:
  401396:	48 83 ec 08          	sub    $0x8,%rsp
  40139a:	bf 00 29 40 00       	mov    $0x402900,%edi
  40139f:	e8 3c f8 ff ff       	callq  400be0 <puts@plt>
  4013a4:	bf 03 00 00 00       	mov    $0x3,%edi
  4013a9:	e8 82 f9 ff ff       	callq  400d30 <sleep@plt>
  4013ae:	be c9 2a 40 00       	mov    $0x402ac9,%esi
  4013b3:	bf 01 00 00 00       	mov    $0x1,%edi
  4013b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bd:	e8 0e f9 ff ff       	callq  400cd0 <__printf_chk@plt>
  4013c2:	48 8b 3d 37 42 20 00 	mov    0x204237(%rip),%rdi        # 605600 <__TMC_END__>
  4013c9:	e8 e2 f8 ff ff       	callq  400cb0 <fflush@plt>
  4013ce:	bf 01 00 00 00       	mov    $0x1,%edi
  4013d3:	e8 58 f9 ff ff       	callq  400d30 <sleep@plt>
  4013d8:	bf d1 2a 40 00       	mov    $0x402ad1,%edi
  4013dd:	e8 fe f7 ff ff       	callq  400be0 <puts@plt>
  4013e2:	bf 10 00 00 00       	mov    $0x10,%edi
  4013e7:	e8 14 f9 ff ff       	callq  400d00 <exit@plt>

00000000004013ec <invalid_phase>:
  4013ec:	48 83 ec 08          	sub    $0x8,%rsp
  4013f0:	48 89 fa             	mov    %rdi,%rdx
  4013f3:	be d9 2a 40 00       	mov    $0x402ad9,%esi
  4013f8:	bf 01 00 00 00       	mov    $0x1,%edi
  4013fd:	b8 00 00 00 00       	mov    $0x0,%eax
  401402:	e8 c9 f8 ff ff       	callq  400cd0 <__printf_chk@plt>
  401407:	bf 08 00 00 00       	mov    $0x8,%edi
  40140c:	e8 ef f8 ff ff       	callq  400d00 <exit@plt>

0000000000401411 <string_length>:
  401411:	b8 00 00 00 00       	mov    $0x0,%eax
  401416:	eb 07                	jmp    40141f <string_length+0xe>
  401418:	48 83 c7 01          	add    $0x1,%rdi
  40141c:	83 c0 01             	add    $0x1,%eax
  40141f:	80 3f 00             	cmpb   $0x0,(%rdi)
  401422:	75 f4                	jne    401418 <string_length+0x7>
  401424:	f3 c3                	repz retq 

0000000000401426 <strings_not_equal>:
  401426:	41 54                	push   %r12
  401428:	55                   	push   %rbp
  401429:	53                   	push   %rbx
  40142a:	48 89 fb             	mov    %rdi,%rbx
  40142d:	48 89 f5             	mov    %rsi,%rbp
  401430:	e8 dc ff ff ff       	callq  401411 <string_length>
  401435:	41 89 c4             	mov    %eax,%r12d
  401438:	48 89 ef             	mov    %rbp,%rdi
  40143b:	e8 d1 ff ff ff       	callq  401411 <string_length>
  401440:	41 39 c4             	cmp    %eax,%r12d
  401443:	75 1d                	jne    401462 <strings_not_equal+0x3c>
  401445:	eb 0d                	jmp    401454 <strings_not_equal+0x2e>
  401447:	3a 45 00             	cmp    0x0(%rbp),%al
  40144a:	75 1d                	jne    401469 <strings_not_equal+0x43>
  40144c:	48 83 c3 01          	add    $0x1,%rbx
  401450:	48 83 c5 01          	add    $0x1,%rbp
  401454:	0f b6 03             	movzbl (%rbx),%eax
  401457:	84 c0                	test   %al,%al
  401459:	75 ec                	jne    401447 <strings_not_equal+0x21>
  40145b:	b8 00 00 00 00       	mov    $0x0,%eax
  401460:	eb 0c                	jmp    40146e <strings_not_equal+0x48>
  401462:	b8 01 00 00 00       	mov    $0x1,%eax
  401467:	eb 05                	jmp    40146e <strings_not_equal+0x48>
  401469:	b8 01 00 00 00       	mov    $0x1,%eax
  40146e:	5b                   	pop    %rbx
  40146f:	5d                   	pop    %rbp
  401470:	41 5c                	pop    %r12
  401472:	c3                   	retq   

0000000000401473 <initialize_bomb>:
  401473:	c3                   	retq   
  401474:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  40147b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401482:	00 00 
  401484:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  40148b:	00 
  40148c:	31 c0                	xor    %eax,%eax
  40148e:	be 96 13 40 00       	mov    $0x401396,%esi
  401493:	bf 02 00 00 00       	mov    $0x2,%edi
  401498:	e8 c3 f7 ff ff       	callq  400c60 <signal@plt>
  40149d:	be 40 00 00 00       	mov    $0x40,%esi
  4014a2:	48 89 e7             	mov    %rsp,%rdi
  4014a5:	e8 46 f8 ff ff       	callq  400cf0 <gethostname@plt>
  4014aa:	85 c0                	test   %eax,%eax
  4014ac:	74 25                	je     4014d3 <initialize_bomb+0x60>
  4014ae:	bf 38 29 40 00       	mov    $0x402938,%edi
  4014b3:	e8 28 f7 ff ff       	callq  400be0 <puts@plt>
  4014b8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014bd:	e8 3e f8 ff ff       	callq  400d00 <exit@plt>
  4014c2:	48 89 e6             	mov    %rsp,%rsi
  4014c5:	e8 e6 f6 ff ff       	callq  400bb0 <strcasecmp@plt>
  4014ca:	85 c0                	test   %eax,%eax
  4014cc:	74 21                	je     4014ef <initialize_bomb+0x7c>
  4014ce:	83 c3 01             	add    $0x1,%ebx
  4014d1:	eb 05                	jmp    4014d8 <initialize_bomb+0x65>
  4014d3:	bb 00 00 00 00       	mov    $0x0,%ebx
  4014d8:	48 63 c3             	movslq %ebx,%rax
  4014db:	48 8b 3c c5 80 53 60 	mov    0x605380(,%rax,8),%rdi
  4014e2:	00 
  4014e3:	48 85 ff             	test   %rdi,%rdi
  4014e6:	75 da                	jne    4014c2 <initialize_bomb+0x4f>
  4014e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ed:	eb 05                	jmp    4014f4 <initialize_bomb+0x81>
  4014ef:	b8 01 00 00 00       	mov    $0x1,%eax
  4014f4:	85 c0                	test   %eax,%eax
  4014f6:	75 14                	jne    40150c <initialize_bomb+0x99>
  4014f8:	bf 70 29 40 00       	mov    $0x402970,%edi
  4014fd:	e8 de f6 ff ff       	callq  400be0 <puts@plt>
  401502:	bf 08 00 00 00       	mov    $0x8,%edi
  401507:	e8 f4 f7 ff ff       	callq  400d00 <exit@plt>
  40150c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401511:	e8 c6 0e 00 00       	callq  4023dc <init_driver>
  401516:	85 c0                	test   %eax,%eax
  401518:	79 23                	jns    40153d <initialize_bomb+0xca>
  40151a:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  40151f:	be ea 2a 40 00       	mov    $0x402aea,%esi
  401524:	bf 01 00 00 00       	mov    $0x1,%edi
  401529:	b8 00 00 00 00       	mov    $0x0,%eax
  40152e:	e8 9d f7 ff ff       	callq  400cd0 <__printf_chk@plt>
  401533:	bf 08 00 00 00       	mov    $0x8,%edi
  401538:	e8 c3 f7 ff ff       	callq  400d00 <exit@plt>
  40153d:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  401544:	00 
  401545:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40154c:	00 00 
  40154e:	74 05                	je     401555 <initialize_bomb+0xe2>
  401550:	e8 ab f6 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401555:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  40155c:	5b                   	pop    %rbx
  40155d:	c3                   	retq   

000000000040155e <initialize_bomb_solve>:
  40155e:	f3 c3                	repz retq 

0000000000401560 <blank_line>:
  401560:	55                   	push   %rbp
  401561:	53                   	push   %rbx
  401562:	48 83 ec 08          	sub    $0x8,%rsp
  401566:	48 89 fd             	mov    %rdi,%rbp
  401569:	eb 17                	jmp    401582 <blank_line+0x22>
  40156b:	e8 d0 f7 ff ff       	callq  400d40 <__ctype_b_loc@plt>
  401570:	48 8b 00             	mov    (%rax),%rax
  401573:	48 83 c5 01          	add    $0x1,%rbp
  401577:	48 0f be db          	movsbq %bl,%rbx
  40157b:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401580:	74 0f                	je     401591 <blank_line+0x31>
  401582:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401586:	84 db                	test   %bl,%bl
  401588:	75 e1                	jne    40156b <blank_line+0xb>
  40158a:	b8 01 00 00 00       	mov    $0x1,%eax
  40158f:	eb 05                	jmp    401596 <blank_line+0x36>
  401591:	b8 00 00 00 00       	mov    $0x0,%eax
  401596:	48 83 c4 08          	add    $0x8,%rsp
  40159a:	5b                   	pop    %rbx
  40159b:	5d                   	pop    %rbp
  40159c:	c3                   	retq   

000000000040159d <skip>:
  40159d:	53                   	push   %rbx
  40159e:	48 63 05 87 40 20 00 	movslq 0x204087(%rip),%rax        # 60562c <num_input_strings>
  4015a5:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4015a9:	48 c1 e0 04          	shl    $0x4,%rax
  4015ad:	48 89 c7             	mov    %rax,%rdi
  4015b0:	48 81 c7 40 56 60 00 	add    $0x605640,%rdi
  4015b7:	48 8b 15 72 40 20 00 	mov    0x204072(%rip),%rdx        # 605630 <infile>
  4015be:	be 50 00 00 00       	mov    $0x50,%esi
  4015c3:	e8 88 f6 ff ff       	callq  400c50 <fgets@plt>
  4015c8:	48 89 c3             	mov    %rax,%rbx
  4015cb:	48 85 c0             	test   %rax,%rax
  4015ce:	74 0c                	je     4015dc <skip+0x3f>
  4015d0:	48 89 c7             	mov    %rax,%rdi
  4015d3:	e8 88 ff ff ff       	callq  401560 <blank_line>
  4015d8:	85 c0                	test   %eax,%eax
  4015da:	75 c2                	jne    40159e <skip+0x1>
  4015dc:	48 89 d8             	mov    %rbx,%rax
  4015df:	5b                   	pop    %rbx
  4015e0:	c3                   	retq   

00000000004015e1 <send_msg>:
  4015e1:	c3                   	retq   
  4015e2:	81 ec 18 40 00 00    	sub    $0x4018,%esp
  4015e8:	41 89 f8             	mov    %edi,%r8d
  4015eb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4015f2:	00 00 
  4015f4:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4015fb:	00 
  4015fc:	31 c0                	xor    %eax,%eax
  4015fe:	8b 35 28 40 20 00    	mov    0x204028(%rip),%esi        # 60562c <num_input_strings>
  401604:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401607:	48 98                	cltq   
  401609:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40160d:	48 c1 e0 04          	shl    $0x4,%rax
  401611:	48 8d 90 40 56 60 00 	lea    0x605640(%rax),%rdx
  401618:	b8 00 00 00 00       	mov    $0x0,%eax
  40161d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401624:	48 89 d7             	mov    %rdx,%rdi
  401627:	f2 ae                	repnz scas %es:(%rdi),%al
  401629:	48 f7 d1             	not    %rcx
  40162c:	48 83 c1 63          	add    $0x63,%rcx
  401630:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401637:	76 19                	jbe    401652 <send_msg+0x71>
  401639:	be a8 29 40 00       	mov    $0x4029a8,%esi
  40163e:	bf 01 00 00 00       	mov    $0x1,%edi
  401643:	e8 88 f6 ff ff       	callq  400cd0 <__printf_chk@plt>
  401648:	bf 08 00 00 00       	mov    $0x8,%edi
  40164d:	e8 ae f6 ff ff       	callq  400d00 <exit@plt>
  401652:	45 85 c0             	test   %r8d,%r8d
  401655:	74 07                	je     40165e <send_msg+0x7d>
  401657:	b8 04 2b 40 00       	mov    $0x402b04,%eax
  40165c:	eb 05                	jmp    401663 <send_msg+0x82>
  40165e:	b8 0c 2b 40 00       	mov    $0x402b0c,%eax
  401663:	48 83 ec 08          	sub    $0x8,%rsp
  401667:	52                   	push   %rdx
  401668:	56                   	push   %rsi
  401669:	50                   	push   %rax
  40166a:	41 b9 60 4b 60 00    	mov    $0x604b60,%r9d
  401670:	44 8b 05 e9 3c 20 00 	mov    0x203ce9(%rip),%r8d        # 605360 <bomb_id>
  401677:	b9 15 2b 40 00       	mov    $0x402b15,%ecx
  40167c:	ba 00 20 00 00       	mov    $0x2000,%edx
  401681:	be 01 00 00 00       	mov    $0x1,%esi
  401686:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40168b:	b8 00 00 00 00       	mov    $0x0,%eax
  401690:	e8 bb f6 ff ff       	callq  400d50 <__sprintf_chk@plt>
  401695:	48 83 c4 20          	add    $0x20,%rsp
  401699:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4016a0:	00 
  4016a1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4016a7:	48 89 e1             	mov    %rsp,%rcx
  4016aa:	ba 60 43 60 00       	mov    $0x604360,%edx
  4016af:	be 60 47 60 00       	mov    $0x604760,%esi
  4016b4:	bf 60 4f 60 00       	mov    $0x604f60,%edi
  4016b9:	e8 11 0f 00 00       	callq  4025cf <driver_post>
  4016be:	85 c0                	test   %eax,%eax
  4016c0:	79 17                	jns    4016d9 <send_msg+0xf8>
  4016c2:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  4016c9:	00 
  4016ca:	e8 11 f5 ff ff       	callq  400be0 <puts@plt>
  4016cf:	bf 00 00 00 00       	mov    $0x0,%edi
  4016d4:	e8 27 f6 ff ff       	callq  400d00 <exit@plt>
  4016d9:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4016e0:	00 
  4016e1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016e8:	00 00 
  4016ea:	74 05                	je     4016f1 <send_msg+0x110>
  4016ec:	e8 0f f5 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4016f1:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4016f8:	c3                   	retq   

00000000004016f9 <explode_bomb>:
  4016f9:	c3                   	retq   
  4016fa:	83 ec 08             	sub    $0x8,%esp
  4016fd:	bf 24 2b 40 00       	mov    $0x402b24,%edi
  401702:	e8 d9 f4 ff ff       	callq  400be0 <puts@plt>
  401707:	bf 2d 2b 40 00       	mov    $0x402b2d,%edi
  40170c:	e8 cf f4 ff ff       	callq  400be0 <puts@plt>
  401711:	bf 00 00 00 00       	mov    $0x0,%edi
  401716:	e8 c6 fe ff ff       	callq  4015e1 <send_msg>
  40171b:	bf d0 29 40 00       	mov    $0x4029d0,%edi
  401720:	e8 bb f4 ff ff       	callq  400be0 <puts@plt>
  401725:	bf 08 00 00 00       	mov    $0x8,%edi
  40172a:	e8 d1 f5 ff ff       	callq  400d00 <exit@plt>

000000000040172f <read_six_numbers>:
  40172f:	48 83 ec 08          	sub    $0x8,%rsp
  401733:	48 89 f2             	mov    %rsi,%rdx
  401736:	48 8d 76 14          	lea    0x14(%rsi),%rsi
  40173a:	48 8d 42 10          	lea    0x10(%rdx),%rax
  40173e:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  401742:	56                   	push   %rsi
  401743:	50                   	push   %rax
  401744:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
  401748:	4c 8d 42 08          	lea    0x8(%rdx),%r8
  40174c:	be 44 2b 40 00       	mov    $0x402b44,%esi
  401751:	b8 00 00 00 00       	mov    $0x0,%eax
  401756:	e8 65 f5 ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  40175b:	48 83 c4 10          	add    $0x10,%rsp
  40175f:	83 f8 05             	cmp    $0x5,%eax
  401762:	7f 05                	jg     401769 <read_six_numbers+0x3a>
  401764:	e8 90 ff ff ff       	callq  4016f9 <explode_bomb>
  401769:	48 83 c4 08          	add    $0x8,%rsp
  40176d:	c3                   	retq   

000000000040176e <read_line>:
  40176e:	48 83 ec 08          	sub    $0x8,%rsp
  401772:	b8 00 00 00 00       	mov    $0x0,%eax
  401777:	e8 21 fe ff ff       	callq  40159d <skip>
  40177c:	48 85 c0             	test   %rax,%rax
  40177f:	75 6e                	jne    4017ef <read_line+0x81>
  401781:	48 8b 05 88 3e 20 00 	mov    0x203e88(%rip),%rax        # 605610 <stdin@@GLIBC_2.2.5>
  401788:	48 39 05 a1 3e 20 00 	cmp    %rax,0x203ea1(%rip)        # 605630 <infile>
  40178f:	75 14                	jne    4017a5 <read_line+0x37>
  401791:	bf 56 2b 40 00       	mov    $0x402b56,%edi
  401796:	e8 45 f4 ff ff       	callq  400be0 <puts@plt>
  40179b:	bf 08 00 00 00       	mov    $0x8,%edi
  4017a0:	e8 5b f5 ff ff       	callq  400d00 <exit@plt>
  4017a5:	bf 74 2b 40 00       	mov    $0x402b74,%edi
  4017aa:	e8 f1 f3 ff ff       	callq  400ba0 <getenv@plt>
  4017af:	48 85 c0             	test   %rax,%rax
  4017b2:	74 0a                	je     4017be <read_line+0x50>
  4017b4:	bf 00 00 00 00       	mov    $0x0,%edi
  4017b9:	e8 42 f5 ff ff       	callq  400d00 <exit@plt>
  4017be:	48 8b 05 4b 3e 20 00 	mov    0x203e4b(%rip),%rax        # 605610 <stdin@@GLIBC_2.2.5>
  4017c5:	48 89 05 64 3e 20 00 	mov    %rax,0x203e64(%rip)        # 605630 <infile>
  4017cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4017d1:	e8 c7 fd ff ff       	callq  40159d <skip>
  4017d6:	48 85 c0             	test   %rax,%rax
  4017d9:	75 14                	jne    4017ef <read_line+0x81>
  4017db:	bf 56 2b 40 00       	mov    $0x402b56,%edi
  4017e0:	e8 fb f3 ff ff       	callq  400be0 <puts@plt>
  4017e5:	bf 00 00 00 00       	mov    $0x0,%edi
  4017ea:	e8 11 f5 ff ff       	callq  400d00 <exit@plt>
  4017ef:	44 8b 05 36 3e 20 00 	mov    0x203e36(%rip),%r8d        # 60562c <num_input_strings>
  4017f6:	49 63 c0             	movslq %r8d,%rax
  4017f9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4017fd:	48 c1 e0 04          	shl    $0x4,%rax
  401801:	48 89 c2             	mov    %rax,%rdx
  401804:	48 81 c2 40 56 60 00 	add    $0x605640,%rdx
  40180b:	b8 00 00 00 00       	mov    $0x0,%eax
  401810:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401817:	48 89 d7             	mov    %rdx,%rdi
  40181a:	f2 ae                	repnz scas %es:(%rdi),%al
  40181c:	48 f7 d1             	not    %rcx
  40181f:	48 83 e9 01          	sub    $0x1,%rcx
  401823:	83 f9 4e             	cmp    $0x4e,%ecx
  401826:	7e 46                	jle    40186e <read_line+0x100>
  401828:	bf 7f 2b 40 00       	mov    $0x402b7f,%edi
  40182d:	e8 ae f3 ff ff       	callq  400be0 <puts@plt>
  401832:	8b 05 f4 3d 20 00    	mov    0x203df4(%rip),%eax        # 60562c <num_input_strings>
  401838:	8d 50 01             	lea    0x1(%rax),%edx
  40183b:	89 15 eb 3d 20 00    	mov    %edx,0x203deb(%rip)        # 60562c <num_input_strings>
  401841:	48 98                	cltq   
  401843:	48 6b c0 50          	imul   $0x50,%rax,%rax
  401847:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  40184e:	75 6e 63 
  401851:	48 89 b8 40 56 60 00 	mov    %rdi,0x605640(%rax)
  401858:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  40185f:	2a 2a 00 
  401862:	48 89 b8 48 56 60 00 	mov    %rdi,0x605648(%rax)
  401869:	e8 8b fe ff ff       	callq  4016f9 <explode_bomb>
  40186e:	83 e9 01             	sub    $0x1,%ecx
  401871:	48 63 c9             	movslq %ecx,%rcx
  401874:	49 63 c0             	movslq %r8d,%rax
  401877:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  40187b:	48 89 f0             	mov    %rsi,%rax
  40187e:	48 c1 e0 04          	shl    $0x4,%rax
  401882:	c6 84 01 40 56 60 00 	movb   $0x0,0x605640(%rcx,%rax,1)
  401889:	00 
  40188a:	41 8d 40 01          	lea    0x1(%r8),%eax
  40188e:	89 05 98 3d 20 00    	mov    %eax,0x203d98(%rip)        # 60562c <num_input_strings>
  401894:	48 89 d0             	mov    %rdx,%rax
  401897:	48 83 c4 08          	add    $0x8,%rsp
  40189b:	c3                   	retq   

000000000040189c <phase_defused>:
  40189c:	48 83 ec 78          	sub    $0x78,%rsp
  4018a0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4018a7:	00 00 
  4018a9:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  4018ae:	31 c0                	xor    %eax,%eax
  4018b0:	bf 01 00 00 00       	mov    $0x1,%edi
  4018b5:	e8 27 fd ff ff       	callq  4015e1 <send_msg>
  4018ba:	83 3d 6b 3d 20 00 06 	cmpl   $0x6,0x203d6b(%rip)        # 60562c <num_input_strings>
  4018c1:	75 6d                	jne    401930 <phase_defused+0x94>
  4018c3:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4018c8:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  4018cd:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4018d2:	be 9a 2b 40 00       	mov    $0x402b9a,%esi
  4018d7:	bf 30 57 60 00       	mov    $0x605730,%edi
  4018dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e1:	e8 da f3 ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  4018e6:	83 f8 03             	cmp    $0x3,%eax
  4018e9:	75 31                	jne    40191c <phase_defused+0x80>
  4018eb:	be a3 2b 40 00       	mov    $0x402ba3,%esi
  4018f0:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4018f5:	e8 2c fb ff ff       	callq  401426 <strings_not_equal>
  4018fa:	85 c0                	test   %eax,%eax
  4018fc:	75 1e                	jne    40191c <phase_defused+0x80>
  4018fe:	bf f8 29 40 00       	mov    $0x4029f8,%edi
  401903:	e8 d8 f2 ff ff       	callq  400be0 <puts@plt>
  401908:	bf 20 2a 40 00       	mov    $0x402a20,%edi
  40190d:	e8 ce f2 ff ff       	callq  400be0 <puts@plt>
  401912:	b8 00 00 00 00       	mov    $0x0,%eax
  401917:	e8 29 fa ff ff       	callq  401345 <secret_phase>
  40191c:	bf 58 2a 40 00       	mov    $0x402a58,%edi
  401921:	e8 ba f2 ff ff       	callq  400be0 <puts@plt>
  401926:	bf 88 2a 40 00       	mov    $0x402a88,%edi
  40192b:	e8 b0 f2 ff ff       	callq  400be0 <puts@plt>
  401930:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  401935:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40193c:	00 00 
  40193e:	74 05                	je     401945 <phase_defused+0xa9>
  401940:	e8 bb f2 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401945:	48 83 c4 78          	add    $0x78,%rsp
  401949:	c3                   	retq   

000000000040194a <rio_readinitb>:
  40194a:	89 37                	mov    %esi,(%rdi)
  40194c:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401953:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401957:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40195b:	c3                   	retq   

000000000040195c <sigalrm_handler>:
  40195c:	48 83 ec 08          	sub    $0x8,%rsp
  401960:	b9 00 00 00 00       	mov    $0x0,%ecx
  401965:	ba 68 2c 40 00       	mov    $0x402c68,%edx
  40196a:	be 01 00 00 00       	mov    $0x1,%esi
  40196f:	48 8b 3d aa 3c 20 00 	mov    0x203caa(%rip),%rdi        # 605620 <stderr@@GLIBC_2.2.5>
  401976:	b8 00 00 00 00       	mov    $0x0,%eax
  40197b:	e8 a0 f3 ff ff       	callq  400d20 <__fprintf_chk@plt>
  401980:	bf 01 00 00 00       	mov    $0x1,%edi
  401985:	e8 76 f3 ff ff       	callq  400d00 <exit@plt>

000000000040198a <rio_writen>:
  40198a:	41 55                	push   %r13
  40198c:	41 54                	push   %r12
  40198e:	55                   	push   %rbp
  40198f:	53                   	push   %rbx
  401990:	48 83 ec 08          	sub    $0x8,%rsp
  401994:	41 89 fc             	mov    %edi,%r12d
  401997:	48 89 f5             	mov    %rsi,%rbp
  40199a:	49 89 d5             	mov    %rdx,%r13
  40199d:	48 89 d3             	mov    %rdx,%rbx
  4019a0:	eb 28                	jmp    4019ca <rio_writen+0x40>
  4019a2:	48 89 da             	mov    %rbx,%rdx
  4019a5:	48 89 ee             	mov    %rbp,%rsi
  4019a8:	44 89 e7             	mov    %r12d,%edi
  4019ab:	e8 40 f2 ff ff       	callq  400bf0 <write@plt>
  4019b0:	48 85 c0             	test   %rax,%rax
  4019b3:	7f 0f                	jg     4019c4 <rio_writen+0x3a>
  4019b5:	e8 06 f2 ff ff       	callq  400bc0 <__errno_location@plt>
  4019ba:	83 38 04             	cmpl   $0x4,(%rax)
  4019bd:	75 15                	jne    4019d4 <rio_writen+0x4a>
  4019bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c4:	48 29 c3             	sub    %rax,%rbx
  4019c7:	48 01 c5             	add    %rax,%rbp
  4019ca:	48 85 db             	test   %rbx,%rbx
  4019cd:	75 d3                	jne    4019a2 <rio_writen+0x18>
  4019cf:	4c 89 e8             	mov    %r13,%rax
  4019d2:	eb 07                	jmp    4019db <rio_writen+0x51>
  4019d4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4019db:	48 83 c4 08          	add    $0x8,%rsp
  4019df:	5b                   	pop    %rbx
  4019e0:	5d                   	pop    %rbp
  4019e1:	41 5c                	pop    %r12
  4019e3:	41 5d                	pop    %r13
  4019e5:	c3                   	retq   

00000000004019e6 <rio_read>:
  4019e6:	41 55                	push   %r13
  4019e8:	41 54                	push   %r12
  4019ea:	55                   	push   %rbp
  4019eb:	53                   	push   %rbx
  4019ec:	48 83 ec 08          	sub    $0x8,%rsp
  4019f0:	48 89 fb             	mov    %rdi,%rbx
  4019f3:	49 89 f5             	mov    %rsi,%r13
  4019f6:	49 89 d4             	mov    %rdx,%r12
  4019f9:	eb 2e                	jmp    401a29 <rio_read+0x43>
  4019fb:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4019ff:	8b 3b                	mov    (%rbx),%edi
  401a01:	ba 00 20 00 00       	mov    $0x2000,%edx
  401a06:	48 89 ee             	mov    %rbp,%rsi
  401a09:	e8 22 f2 ff ff       	callq  400c30 <read@plt>
  401a0e:	89 43 04             	mov    %eax,0x4(%rbx)
  401a11:	85 c0                	test   %eax,%eax
  401a13:	79 0c                	jns    401a21 <rio_read+0x3b>
  401a15:	e8 a6 f1 ff ff       	callq  400bc0 <__errno_location@plt>
  401a1a:	83 38 04             	cmpl   $0x4,(%rax)
  401a1d:	74 0a                	je     401a29 <rio_read+0x43>
  401a1f:	eb 37                	jmp    401a58 <rio_read+0x72>
  401a21:	85 c0                	test   %eax,%eax
  401a23:	74 3c                	je     401a61 <rio_read+0x7b>
  401a25:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401a29:	8b 6b 04             	mov    0x4(%rbx),%ebp
  401a2c:	85 ed                	test   %ebp,%ebp
  401a2e:	7e cb                	jle    4019fb <rio_read+0x15>
  401a30:	89 e8                	mov    %ebp,%eax
  401a32:	49 39 c4             	cmp    %rax,%r12
  401a35:	77 03                	ja     401a3a <rio_read+0x54>
  401a37:	44 89 e5             	mov    %r12d,%ebp
  401a3a:	4c 63 e5             	movslq %ebp,%r12
  401a3d:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  401a41:	4c 89 e2             	mov    %r12,%rdx
  401a44:	4c 89 ef             	mov    %r13,%rdi
  401a47:	e8 54 f2 ff ff       	callq  400ca0 <memcpy@plt>
  401a4c:	4c 01 63 08          	add    %r12,0x8(%rbx)
  401a50:	29 6b 04             	sub    %ebp,0x4(%rbx)
  401a53:	4c 89 e0             	mov    %r12,%rax
  401a56:	eb 0e                	jmp    401a66 <rio_read+0x80>
  401a58:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401a5f:	eb 05                	jmp    401a66 <rio_read+0x80>
  401a61:	b8 00 00 00 00       	mov    $0x0,%eax
  401a66:	48 83 c4 08          	add    $0x8,%rsp
  401a6a:	5b                   	pop    %rbx
  401a6b:	5d                   	pop    %rbp
  401a6c:	41 5c                	pop    %r12
  401a6e:	41 5d                	pop    %r13
  401a70:	c3                   	retq   

0000000000401a71 <rio_readlineb>:
  401a71:	41 55                	push   %r13
  401a73:	41 54                	push   %r12
  401a75:	55                   	push   %rbp
  401a76:	53                   	push   %rbx
  401a77:	48 83 ec 18          	sub    $0x18,%rsp
  401a7b:	49 89 fd             	mov    %rdi,%r13
  401a7e:	48 89 f5             	mov    %rsi,%rbp
  401a81:	49 89 d4             	mov    %rdx,%r12
  401a84:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a8b:	00 00 
  401a8d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401a92:	31 c0                	xor    %eax,%eax
  401a94:	bb 01 00 00 00       	mov    $0x1,%ebx
  401a99:	eb 3f                	jmp    401ada <rio_readlineb+0x69>
  401a9b:	ba 01 00 00 00       	mov    $0x1,%edx
  401aa0:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  401aa5:	4c 89 ef             	mov    %r13,%rdi
  401aa8:	e8 39 ff ff ff       	callq  4019e6 <rio_read>
  401aad:	83 f8 01             	cmp    $0x1,%eax
  401ab0:	75 15                	jne    401ac7 <rio_readlineb+0x56>
  401ab2:	48 8d 45 01          	lea    0x1(%rbp),%rax
  401ab6:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  401abb:	88 55 00             	mov    %dl,0x0(%rbp)
  401abe:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  401ac3:	75 0e                	jne    401ad3 <rio_readlineb+0x62>
  401ac5:	eb 1a                	jmp    401ae1 <rio_readlineb+0x70>
  401ac7:	85 c0                	test   %eax,%eax
  401ac9:	75 22                	jne    401aed <rio_readlineb+0x7c>
  401acb:	48 83 fb 01          	cmp    $0x1,%rbx
  401acf:	75 13                	jne    401ae4 <rio_readlineb+0x73>
  401ad1:	eb 23                	jmp    401af6 <rio_readlineb+0x85>
  401ad3:	48 83 c3 01          	add    $0x1,%rbx
  401ad7:	48 89 c5             	mov    %rax,%rbp
  401ada:	4c 39 e3             	cmp    %r12,%rbx
  401add:	72 bc                	jb     401a9b <rio_readlineb+0x2a>
  401adf:	eb 03                	jmp    401ae4 <rio_readlineb+0x73>
  401ae1:	48 89 c5             	mov    %rax,%rbp
  401ae4:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  401ae8:	48 89 d8             	mov    %rbx,%rax
  401aeb:	eb 0e                	jmp    401afb <rio_readlineb+0x8a>
  401aed:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401af4:	eb 05                	jmp    401afb <rio_readlineb+0x8a>
  401af6:	b8 00 00 00 00       	mov    $0x0,%eax
  401afb:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  401b00:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  401b07:	00 00 
  401b09:	74 05                	je     401b10 <rio_readlineb+0x9f>
  401b0b:	e8 f0 f0 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401b10:	48 83 c4 18          	add    $0x18,%rsp
  401b14:	5b                   	pop    %rbx
  401b15:	5d                   	pop    %rbp
  401b16:	41 5c                	pop    %r12
  401b18:	41 5d                	pop    %r13
  401b1a:	c3                   	retq   

0000000000401b1b <urlencode>:
  401b1b:	41 54                	push   %r12
  401b1d:	55                   	push   %rbp
  401b1e:	53                   	push   %rbx
  401b1f:	48 83 ec 10          	sub    $0x10,%rsp
  401b23:	48 89 fb             	mov    %rdi,%rbx
  401b26:	48 89 f5             	mov    %rsi,%rbp
  401b29:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b30:	00 00 
  401b32:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401b37:	31 c0                	xor    %eax,%eax
  401b39:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401b40:	f2 ae                	repnz scas %es:(%rdi),%al
  401b42:	48 f7 d1             	not    %rcx
  401b45:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401b48:	e9 aa 00 00 00       	jmpq   401bf7 <urlencode+0xdc>
  401b4d:	44 0f b6 03          	movzbl (%rbx),%r8d
  401b51:	41 80 f8 2a          	cmp    $0x2a,%r8b
  401b55:	0f 94 c2             	sete   %dl
  401b58:	41 80 f8 2d          	cmp    $0x2d,%r8b
  401b5c:	0f 94 c0             	sete   %al
  401b5f:	08 c2                	or     %al,%dl
  401b61:	75 24                	jne    401b87 <urlencode+0x6c>
  401b63:	41 80 f8 2e          	cmp    $0x2e,%r8b
  401b67:	74 1e                	je     401b87 <urlencode+0x6c>
  401b69:	41 80 f8 5f          	cmp    $0x5f,%r8b
  401b6d:	74 18                	je     401b87 <urlencode+0x6c>
  401b6f:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  401b73:	3c 09                	cmp    $0x9,%al
  401b75:	76 10                	jbe    401b87 <urlencode+0x6c>
  401b77:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  401b7b:	3c 19                	cmp    $0x19,%al
  401b7d:	76 08                	jbe    401b87 <urlencode+0x6c>
  401b7f:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  401b83:	3c 19                	cmp    $0x19,%al
  401b85:	77 0a                	ja     401b91 <urlencode+0x76>
  401b87:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401b8b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401b8f:	eb 5f                	jmp    401bf0 <urlencode+0xd5>
  401b91:	41 80 f8 20          	cmp    $0x20,%r8b
  401b95:	75 0a                	jne    401ba1 <urlencode+0x86>
  401b97:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401b9b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401b9f:	eb 4f                	jmp    401bf0 <urlencode+0xd5>
  401ba1:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401ba5:	3c 5f                	cmp    $0x5f,%al
  401ba7:	0f 96 c2             	setbe  %dl
  401baa:	41 80 f8 09          	cmp    $0x9,%r8b
  401bae:	0f 94 c0             	sete   %al
  401bb1:	08 c2                	or     %al,%dl
  401bb3:	74 50                	je     401c05 <urlencode+0xea>
  401bb5:	45 0f b6 c0          	movzbl %r8b,%r8d
  401bb9:	b9 20 2d 40 00       	mov    $0x402d20,%ecx
  401bbe:	ba 08 00 00 00       	mov    $0x8,%edx
  401bc3:	be 01 00 00 00       	mov    $0x1,%esi
  401bc8:	48 89 e7             	mov    %rsp,%rdi
  401bcb:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd0:	e8 7b f1 ff ff       	callq  400d50 <__sprintf_chk@plt>
  401bd5:	0f b6 04 24          	movzbl (%rsp),%eax
  401bd9:	88 45 00             	mov    %al,0x0(%rbp)
  401bdc:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  401be1:	88 45 01             	mov    %al,0x1(%rbp)
  401be4:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401be9:	88 45 02             	mov    %al,0x2(%rbp)
  401bec:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401bf0:	48 83 c3 01          	add    $0x1,%rbx
  401bf4:	44 89 e0             	mov    %r12d,%eax
  401bf7:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401bfb:	85 c0                	test   %eax,%eax
  401bfd:	0f 85 4a ff ff ff    	jne    401b4d <urlencode+0x32>
  401c03:	eb 05                	jmp    401c0a <urlencode+0xef>
  401c05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c0a:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  401c0f:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401c16:	00 00 
  401c18:	74 05                	je     401c1f <urlencode+0x104>
  401c1a:	e8 e1 ef ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401c1f:	48 83 c4 10          	add    $0x10,%rsp
  401c23:	5b                   	pop    %rbx
  401c24:	5d                   	pop    %rbp
  401c25:	41 5c                	pop    %r12
  401c27:	c3                   	retq   

0000000000401c28 <submitr>:
  401c28:	41 57                	push   %r15
  401c2a:	41 56                	push   %r14
  401c2c:	41 55                	push   %r13
  401c2e:	41 54                	push   %r12
  401c30:	55                   	push   %rbp
  401c31:	53                   	push   %rbx
  401c32:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  401c39:	49 89 fd             	mov    %rdi,%r13
  401c3c:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  401c40:	48 89 14 24          	mov    %rdx,(%rsp)
  401c44:	49 89 ce             	mov    %rcx,%r14
  401c47:	4d 89 c7             	mov    %r8,%r15
  401c4a:	4d 89 cc             	mov    %r9,%r12
  401c4d:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  401c54:	00 
  401c55:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c5c:	00 00 
  401c5e:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  401c65:	00 
  401c66:	31 c0                	xor    %eax,%eax
  401c68:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  401c6f:	00 
  401c70:	ba 00 00 00 00       	mov    $0x0,%edx
  401c75:	be 01 00 00 00       	mov    $0x1,%esi
  401c7a:	bf 02 00 00 00       	mov    $0x2,%edi
  401c7f:	e8 dc f0 ff ff       	callq  400d60 <socket@plt>
  401c84:	85 c0                	test   %eax,%eax
  401c86:	79 4e                	jns    401cd6 <submitr+0xae>
  401c88:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401c8f:	3a 20 43 
  401c92:	48 89 03             	mov    %rax,(%rbx)
  401c95:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401c9c:	20 75 6e 
  401c9f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401ca3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401caa:	74 6f 20 
  401cad:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401cb1:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401cb8:	65 20 73 
  401cbb:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401cbf:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  401cc6:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  401ccc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401cd1:	e9 b3 06 00 00       	jmpq   402389 <submitr+0x761>
  401cd6:	89 c5                	mov    %eax,%ebp
  401cd8:	4c 89 ef             	mov    %r13,%rdi
  401cdb:	e8 90 ef ff ff       	callq  400c70 <gethostbyname@plt>
  401ce0:	48 85 c0             	test   %rax,%rax
  401ce3:	75 75                	jne    401d5a <submitr+0x132>
  401ce5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401cec:	3a 20 44 
  401cef:	48 89 03             	mov    %rax,(%rbx)
  401cf2:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401cf9:	20 75 6e 
  401cfc:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401d00:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401d07:	74 6f 20 
  401d0a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401d0e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401d15:	76 65 20 
  401d18:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401d1c:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  401d23:	61 62 20 
  401d26:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401d2a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401d31:	72 20 61 
  401d34:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401d38:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  401d3f:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  401d45:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  401d49:	89 ef                	mov    %ebp,%edi
  401d4b:	e8 d0 ee ff ff       	callq  400c20 <close@plt>
  401d50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d55:	e9 2f 06 00 00       	jmpq   402389 <submitr+0x761>
  401d5a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401d61:	00 00 
  401d63:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  401d6a:	00 00 
  401d6c:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  401d73:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401d77:	48 8b 40 18          	mov    0x18(%rax),%rax
  401d7b:	48 8b 30             	mov    (%rax),%rsi
  401d7e:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  401d83:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401d88:	e8 f3 ee ff ff       	callq  400c80 <__memmove_chk@plt>
  401d8d:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
  401d92:	66 c1 c8 08          	ror    $0x8,%ax
  401d96:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  401d9b:	ba 10 00 00 00       	mov    $0x10,%edx
  401da0:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  401da5:	89 ef                	mov    %ebp,%edi
  401da7:	e8 64 ef ff ff       	callq  400d10 <connect@plt>
  401dac:	85 c0                	test   %eax,%eax
  401dae:	79 67                	jns    401e17 <submitr+0x1ef>
  401db0:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401db7:	3a 20 55 
  401dba:	48 89 03             	mov    %rax,(%rbx)
  401dbd:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401dc4:	20 74 6f 
  401dc7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401dcb:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401dd2:	65 63 74 
  401dd5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401dd9:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401de0:	68 65 20 
  401de3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401de7:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  401dee:	61 62 20 
  401df1:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401df5:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  401dfc:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  401e02:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  401e06:	89 ef                	mov    %ebp,%edi
  401e08:	e8 13 ee ff ff       	callq  400c20 <close@plt>
  401e0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e12:	e9 72 05 00 00       	jmpq   402389 <submitr+0x761>
  401e17:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  401e1e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e23:	48 89 f1             	mov    %rsi,%rcx
  401e26:	4c 89 e7             	mov    %r12,%rdi
  401e29:	f2 ae                	repnz scas %es:(%rdi),%al
  401e2b:	48 f7 d1             	not    %rcx
  401e2e:	48 89 ca             	mov    %rcx,%rdx
  401e31:	48 89 f1             	mov    %rsi,%rcx
  401e34:	48 8b 3c 24          	mov    (%rsp),%rdi
  401e38:	f2 ae                	repnz scas %es:(%rdi),%al
  401e3a:	48 f7 d1             	not    %rcx
  401e3d:	49 89 c8             	mov    %rcx,%r8
  401e40:	48 89 f1             	mov    %rsi,%rcx
  401e43:	4c 89 f7             	mov    %r14,%rdi
  401e46:	f2 ae                	repnz scas %es:(%rdi),%al
  401e48:	48 f7 d1             	not    %rcx
  401e4b:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  401e50:	48 89 f1             	mov    %rsi,%rcx
  401e53:	4c 89 ff             	mov    %r15,%rdi
  401e56:	f2 ae                	repnz scas %es:(%rdi),%al
  401e58:	48 89 c8             	mov    %rcx,%rax
  401e5b:	48 f7 d0             	not    %rax
  401e5e:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  401e63:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  401e68:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  401e6f:	00 
  401e70:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401e76:	76 72                	jbe    401eea <submitr+0x2c2>
  401e78:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401e7f:	3a 20 52 
  401e82:	48 89 03             	mov    %rax,(%rbx)
  401e85:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401e8c:	20 73 74 
  401e8f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401e93:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401e9a:	74 6f 6f 
  401e9d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401ea1:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401ea8:	65 2e 20 
  401eab:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401eaf:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401eb6:	61 73 65 
  401eb9:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401ebd:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401ec4:	49 54 52 
  401ec7:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401ecb:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401ed2:	55 46 00 
  401ed5:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401ed9:	89 ef                	mov    %ebp,%edi
  401edb:	e8 40 ed ff ff       	callq  400c20 <close@plt>
  401ee0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ee5:	e9 9f 04 00 00       	jmpq   402389 <submitr+0x761>
  401eea:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  401ef1:	00 
  401ef2:	b9 00 04 00 00       	mov    $0x400,%ecx
  401ef7:	b8 00 00 00 00       	mov    $0x0,%eax
  401efc:	48 89 f7             	mov    %rsi,%rdi
  401eff:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401f02:	4c 89 e7             	mov    %r12,%rdi
  401f05:	e8 11 fc ff ff       	callq  401b1b <urlencode>
  401f0a:	85 c0                	test   %eax,%eax
  401f0c:	0f 89 8a 00 00 00    	jns    401f9c <submitr+0x374>
  401f12:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401f19:	3a 20 52 
  401f1c:	48 89 03             	mov    %rax,(%rbx)
  401f1f:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401f26:	20 73 74 
  401f29:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401f2d:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  401f34:	63 6f 6e 
  401f37:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401f3b:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  401f42:	20 61 6e 
  401f45:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401f49:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  401f50:	67 61 6c 
  401f53:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401f57:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  401f5e:	6e 70 72 
  401f61:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401f65:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  401f6c:	6c 65 20 
  401f6f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401f73:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  401f7a:	63 74 65 
  401f7d:	48 89 43 38          	mov    %rax,0x38(%rbx)
  401f81:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  401f87:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  401f8b:	89 ef                	mov    %ebp,%edi
  401f8d:	e8 8e ec ff ff       	callq  400c20 <close@plt>
  401f92:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f97:	e9 ed 03 00 00       	jmpq   402389 <submitr+0x761>
  401f9c:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  401fa3:	00 
  401fa4:	48 83 ec 08          	sub    $0x8,%rsp
  401fa8:	41 55                	push   %r13
  401faa:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  401fb1:	00 
  401fb2:	50                   	push   %rax
  401fb3:	41 56                	push   %r14
  401fb5:	4d 89 f9             	mov    %r15,%r9
  401fb8:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  401fbd:	b9 90 2c 40 00       	mov    $0x402c90,%ecx
  401fc2:	ba 00 20 00 00       	mov    $0x2000,%edx
  401fc7:	be 01 00 00 00       	mov    $0x1,%esi
  401fcc:	4c 89 e7             	mov    %r12,%rdi
  401fcf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd4:	e8 77 ed ff ff       	callq  400d50 <__sprintf_chk@plt>
  401fd9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fde:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401fe5:	4c 89 e7             	mov    %r12,%rdi
  401fe8:	f2 ae                	repnz scas %es:(%rdi),%al
  401fea:	48 f7 d1             	not    %rcx
  401fed:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  401ff1:	48 83 c4 20          	add    $0x20,%rsp
  401ff5:	4c 89 e6             	mov    %r12,%rsi
  401ff8:	89 ef                	mov    %ebp,%edi
  401ffa:	e8 8b f9 ff ff       	callq  40198a <rio_writen>
  401fff:	48 85 c0             	test   %rax,%rax
  402002:	79 6b                	jns    40206f <submitr+0x447>
  402004:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40200b:	3a 20 43 
  40200e:	48 89 03             	mov    %rax,(%rbx)
  402011:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402018:	20 75 6e 
  40201b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40201f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402026:	74 6f 20 
  402029:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40202d:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402034:	20 74 6f 
  402037:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40203b:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402042:	41 75 74 
  402045:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402049:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  402050:	73 65 72 
  402053:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402057:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  40205e:	89 ef                	mov    %ebp,%edi
  402060:	e8 bb eb ff ff       	callq  400c20 <close@plt>
  402065:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40206a:	e9 1a 03 00 00       	jmpq   402389 <submitr+0x761>
  40206f:	89 ee                	mov    %ebp,%esi
  402071:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402076:	e8 cf f8 ff ff       	callq  40194a <rio_readinitb>
  40207b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402080:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402087:	00 
  402088:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40208d:	e8 df f9 ff ff       	callq  401a71 <rio_readlineb>
  402092:	48 85 c0             	test   %rax,%rax
  402095:	7f 7f                	jg     402116 <submitr+0x4ee>
  402097:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40209e:	3a 20 43 
  4020a1:	48 89 03             	mov    %rax,(%rbx)
  4020a4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4020ab:	20 75 6e 
  4020ae:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4020b2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4020b9:	74 6f 20 
  4020bc:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4020c0:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4020c7:	66 69 72 
  4020ca:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4020ce:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4020d5:	61 64 65 
  4020d8:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4020dc:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  4020e3:	6d 20 41 
  4020e6:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4020ea:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  4020f1:	62 20 73 
  4020f4:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4020f8:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  4020ff:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  402105:	89 ef                	mov    %ebp,%edi
  402107:	e8 14 eb ff ff       	callq  400c20 <close@plt>
  40210c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402111:	e9 73 02 00 00       	jmpq   402389 <submitr+0x761>
  402116:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  40211d:	00 
  40211e:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402123:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  40212a:	00 
  40212b:	be 27 2d 40 00       	mov    $0x402d27,%esi
  402130:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402137:	00 
  402138:	b8 00 00 00 00       	mov    $0x0,%eax
  40213d:	e8 7e eb ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  402142:	e9 92 00 00 00       	jmpq   4021d9 <submitr+0x5b1>
  402147:	ba 00 20 00 00       	mov    $0x2000,%edx
  40214c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402153:	00 
  402154:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402159:	e8 13 f9 ff ff       	callq  401a71 <rio_readlineb>
  40215e:	48 85 c0             	test   %rax,%rax
  402161:	7f 76                	jg     4021d9 <submitr+0x5b1>
  402163:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40216a:	3a 20 43 
  40216d:	48 89 03             	mov    %rax,(%rbx)
  402170:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402177:	20 75 6e 
  40217a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40217e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402185:	74 6f 20 
  402188:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40218c:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402193:	68 65 61 
  402196:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40219a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4021a1:	66 72 6f 
  4021a4:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4021a8:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  4021af:	6f 6c 61 
  4021b2:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4021b6:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  4021bd:	76 65 72 
  4021c0:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4021c4:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  4021c8:	89 ef                	mov    %ebp,%edi
  4021ca:	e8 51 ea ff ff       	callq  400c20 <close@plt>
  4021cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021d4:	e9 b0 01 00 00       	jmpq   402389 <submitr+0x761>
  4021d9:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  4021e0:	00 
  4021e1:	b8 0d 00 00 00       	mov    $0xd,%eax
  4021e6:	29 d0                	sub    %edx,%eax
  4021e8:	75 1b                	jne    402205 <submitr+0x5dd>
  4021ea:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  4021f1:	00 
  4021f2:	b8 0a 00 00 00       	mov    $0xa,%eax
  4021f7:	29 d0                	sub    %edx,%eax
  4021f9:	75 0a                	jne    402205 <submitr+0x5dd>
  4021fb:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402202:	00 
  402203:	f7 d8                	neg    %eax
  402205:	85 c0                	test   %eax,%eax
  402207:	0f 85 3a ff ff ff    	jne    402147 <submitr+0x51f>
  40220d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402212:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402219:	00 
  40221a:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40221f:	e8 4d f8 ff ff       	callq  401a71 <rio_readlineb>
  402224:	48 85 c0             	test   %rax,%rax
  402227:	0f 8f 80 00 00 00    	jg     4022ad <submitr+0x685>
  40222d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402234:	3a 20 43 
  402237:	48 89 03             	mov    %rax,(%rbx)
  40223a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402241:	20 75 6e 
  402244:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402248:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40224f:	74 6f 20 
  402252:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402256:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  40225d:	73 74 61 
  402260:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402264:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40226b:	65 73 73 
  40226e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402272:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402279:	72 6f 6d 
  40227c:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402280:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402287:	6c 61 62 
  40228a:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40228e:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402295:	65 72 00 
  402298:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40229c:	89 ef                	mov    %ebp,%edi
  40229e:	e8 7d e9 ff ff       	callq  400c20 <close@plt>
  4022a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022a8:	e9 dc 00 00 00       	jmpq   402389 <submitr+0x761>
  4022ad:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  4022b2:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4022b9:	74 37                	je     4022f2 <submitr+0x6ca>
  4022bb:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  4022c2:	00 
  4022c3:	b9 f0 2c 40 00       	mov    $0x402cf0,%ecx
  4022c8:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4022cf:	be 01 00 00 00       	mov    $0x1,%esi
  4022d4:	48 89 df             	mov    %rbx,%rdi
  4022d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4022dc:	e8 6f ea ff ff       	callq  400d50 <__sprintf_chk@plt>
  4022e1:	89 ef                	mov    %ebp,%edi
  4022e3:	e8 38 e9 ff ff       	callq  400c20 <close@plt>
  4022e8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022ed:	e9 97 00 00 00       	jmpq   402389 <submitr+0x761>
  4022f2:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4022f9:	00 
  4022fa:	48 89 df             	mov    %rbx,%rdi
  4022fd:	e8 ce e8 ff ff       	callq  400bd0 <strcpy@plt>
  402302:	89 ef                	mov    %ebp,%edi
  402304:	e8 17 e9 ff ff       	callq  400c20 <close@plt>
  402309:	0f b6 03             	movzbl (%rbx),%eax
  40230c:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402311:	29 c2                	sub    %eax,%edx
  402313:	75 22                	jne    402337 <submitr+0x70f>
  402315:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402319:	b8 4b 00 00 00       	mov    $0x4b,%eax
  40231e:	29 c8                	sub    %ecx,%eax
  402320:	75 17                	jne    402339 <submitr+0x711>
  402322:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402326:	b8 0a 00 00 00       	mov    $0xa,%eax
  40232b:	29 c8                	sub    %ecx,%eax
  40232d:	75 0a                	jne    402339 <submitr+0x711>
  40232f:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402333:	f7 d8                	neg    %eax
  402335:	eb 02                	jmp    402339 <submitr+0x711>
  402337:	89 d0                	mov    %edx,%eax
  402339:	85 c0                	test   %eax,%eax
  40233b:	74 40                	je     40237d <submitr+0x755>
  40233d:	bf 38 2d 40 00       	mov    $0x402d38,%edi
  402342:	b9 05 00 00 00       	mov    $0x5,%ecx
  402347:	48 89 de             	mov    %rbx,%rsi
  40234a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40234c:	0f 97 c0             	seta   %al
  40234f:	0f 92 c1             	setb   %cl
  402352:	29 c8                	sub    %ecx,%eax
  402354:	0f be c0             	movsbl %al,%eax
  402357:	85 c0                	test   %eax,%eax
  402359:	74 2e                	je     402389 <submitr+0x761>
  40235b:	85 d2                	test   %edx,%edx
  40235d:	75 13                	jne    402372 <submitr+0x74a>
  40235f:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402363:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402368:	29 c2                	sub    %eax,%edx
  40236a:	75 06                	jne    402372 <submitr+0x74a>
  40236c:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402370:	f7 da                	neg    %edx
  402372:	85 d2                	test   %edx,%edx
  402374:	75 0e                	jne    402384 <submitr+0x75c>
  402376:	b8 00 00 00 00       	mov    $0x0,%eax
  40237b:	eb 0c                	jmp    402389 <submitr+0x761>
  40237d:	b8 00 00 00 00       	mov    $0x0,%eax
  402382:	eb 05                	jmp    402389 <submitr+0x761>
  402384:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402389:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402390:	00 
  402391:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402398:	00 00 
  40239a:	74 05                	je     4023a1 <submitr+0x779>
  40239c:	e8 5f e8 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4023a1:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  4023a8:	5b                   	pop    %rbx
  4023a9:	5d                   	pop    %rbp
  4023aa:	41 5c                	pop    %r12
  4023ac:	41 5d                	pop    %r13
  4023ae:	41 5e                	pop    %r14
  4023b0:	41 5f                	pop    %r15
  4023b2:	c3                   	retq   

00000000004023b3 <init_timeout>:
  4023b3:	85 ff                	test   %edi,%edi
  4023b5:	74 23                	je     4023da <init_timeout+0x27>
  4023b7:	53                   	push   %rbx
  4023b8:	89 fb                	mov    %edi,%ebx
  4023ba:	85 ff                	test   %edi,%edi
  4023bc:	79 05                	jns    4023c3 <init_timeout+0x10>
  4023be:	bb 00 00 00 00       	mov    $0x0,%ebx
  4023c3:	be 5c 19 40 00       	mov    $0x40195c,%esi
  4023c8:	bf 0e 00 00 00       	mov    $0xe,%edi
  4023cd:	e8 8e e8 ff ff       	callq  400c60 <signal@plt>
  4023d2:	89 df                	mov    %ebx,%edi
  4023d4:	e8 37 e8 ff ff       	callq  400c10 <alarm@plt>
  4023d9:	5b                   	pop    %rbx
  4023da:	f3 c3                	repz retq 

00000000004023dc <init_driver>:
  4023dc:	55                   	push   %rbp
  4023dd:	53                   	push   %rbx
  4023de:	48 83 ec 28          	sub    $0x28,%rsp
  4023e2:	48 89 fd             	mov    %rdi,%rbp
  4023e5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023ec:	00 00 
  4023ee:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4023f3:	31 c0                	xor    %eax,%eax
  4023f5:	be 01 00 00 00       	mov    $0x1,%esi
  4023fa:	bf 0d 00 00 00       	mov    $0xd,%edi
  4023ff:	e8 5c e8 ff ff       	callq  400c60 <signal@plt>
  402404:	be 01 00 00 00       	mov    $0x1,%esi
  402409:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40240e:	e8 4d e8 ff ff       	callq  400c60 <signal@plt>
  402413:	be 01 00 00 00       	mov    $0x1,%esi
  402418:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40241d:	e8 3e e8 ff ff       	callq  400c60 <signal@plt>
  402422:	ba 00 00 00 00       	mov    $0x0,%edx
  402427:	be 01 00 00 00       	mov    $0x1,%esi
  40242c:	bf 02 00 00 00       	mov    $0x2,%edi
  402431:	e8 2a e9 ff ff       	callq  400d60 <socket@plt>
  402436:	85 c0                	test   %eax,%eax
  402438:	79 4f                	jns    402489 <init_driver+0xad>
  40243a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402441:	3a 20 43 
  402444:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402448:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40244f:	20 75 6e 
  402452:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402456:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40245d:	74 6f 20 
  402460:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402464:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40246b:	65 20 73 
  40246e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402472:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402479:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40247f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402484:	e9 2a 01 00 00       	jmpq   4025b3 <init_driver+0x1d7>
  402489:	89 c3                	mov    %eax,%ebx
  40248b:	bf 56 2c 40 00       	mov    $0x402c56,%edi
  402490:	e8 db e7 ff ff       	callq  400c70 <gethostbyname@plt>
  402495:	48 85 c0             	test   %rax,%rax
  402498:	75 68                	jne    402502 <init_driver+0x126>
  40249a:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4024a1:	3a 20 44 
  4024a4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4024a8:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4024af:	20 75 6e 
  4024b2:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4024b6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024bd:	74 6f 20 
  4024c0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4024c4:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4024cb:	76 65 20 
  4024ce:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4024d2:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4024d9:	72 20 61 
  4024dc:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4024e0:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4024e7:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4024ed:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4024f1:	89 df                	mov    %ebx,%edi
  4024f3:	e8 28 e7 ff ff       	callq  400c20 <close@plt>
  4024f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024fd:	e9 b1 00 00 00       	jmpq   4025b3 <init_driver+0x1d7>
  402502:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402509:	00 
  40250a:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402511:	00 00 
  402513:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402519:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40251d:	48 8b 40 18          	mov    0x18(%rax),%rax
  402521:	48 8b 30             	mov    (%rax),%rsi
  402524:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402529:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40252e:	e8 4d e7 ff ff       	callq  400c80 <__memmove_chk@plt>
  402533:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  40253a:	ba 10 00 00 00       	mov    $0x10,%edx
  40253f:	48 89 e6             	mov    %rsp,%rsi
  402542:	89 df                	mov    %ebx,%edi
  402544:	e8 c7 e7 ff ff       	callq  400d10 <connect@plt>
  402549:	85 c0                	test   %eax,%eax
  40254b:	79 50                	jns    40259d <init_driver+0x1c1>
  40254d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402554:	3a 20 55 
  402557:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40255b:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402562:	20 74 6f 
  402565:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402569:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402570:	65 63 74 
  402573:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402577:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  40257e:	65 72 76 
  402581:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402585:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  40258b:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  40258f:	89 df                	mov    %ebx,%edi
  402591:	e8 8a e6 ff ff       	callq  400c20 <close@plt>
  402596:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40259b:	eb 16                	jmp    4025b3 <init_driver+0x1d7>
  40259d:	89 df                	mov    %ebx,%edi
  40259f:	e8 7c e6 ff ff       	callq  400c20 <close@plt>
  4025a4:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4025aa:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4025ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4025b3:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4025b8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4025bf:	00 00 
  4025c1:	74 05                	je     4025c8 <init_driver+0x1ec>
  4025c3:	e8 38 e6 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4025c8:	48 83 c4 28          	add    $0x28,%rsp
  4025cc:	5b                   	pop    %rbx
  4025cd:	5d                   	pop    %rbp
  4025ce:	c3                   	retq   

00000000004025cf <driver_post>:
  4025cf:	53                   	push   %rbx
  4025d0:	4c 89 cb             	mov    %r9,%rbx
  4025d3:	45 85 c0             	test   %r8d,%r8d
  4025d6:	74 27                	je     4025ff <driver_post+0x30>
  4025d8:	48 89 ca             	mov    %rcx,%rdx
  4025db:	be 3d 2d 40 00       	mov    $0x402d3d,%esi
  4025e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4025e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ea:	e8 e1 e6 ff ff       	callq  400cd0 <__printf_chk@plt>
  4025ef:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4025f4:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4025f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4025fd:	eb 3f                	jmp    40263e <driver_post+0x6f>
  4025ff:	48 85 ff             	test   %rdi,%rdi
  402602:	74 2c                	je     402630 <driver_post+0x61>
  402604:	80 3f 00             	cmpb   $0x0,(%rdi)
  402607:	74 27                	je     402630 <driver_post+0x61>
  402609:	48 83 ec 08          	sub    $0x8,%rsp
  40260d:	41 51                	push   %r9
  40260f:	49 89 c9             	mov    %rcx,%r9
  402612:	49 89 d0             	mov    %rdx,%r8
  402615:	48 89 f9             	mov    %rdi,%rcx
  402618:	48 89 f2             	mov    %rsi,%rdx
  40261b:	be 50 00 00 00       	mov    $0x50,%esi
  402620:	bf 56 2c 40 00       	mov    $0x402c56,%edi
  402625:	e8 fe f5 ff ff       	callq  401c28 <submitr>
  40262a:	48 83 c4 10          	add    $0x10,%rsp
  40262e:	eb 0e                	jmp    40263e <driver_post+0x6f>
  402630:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402635:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402639:	b8 00 00 00 00       	mov    $0x0,%eax
  40263e:	5b                   	pop    %rbx
  40263f:	c3                   	retq   

0000000000402640 <__libc_csu_init>:
  402640:	41 57                	push   %r15
  402642:	41 56                	push   %r14
  402644:	41 89 ff             	mov    %edi,%r15d
  402647:	41 55                	push   %r13
  402649:	41 54                	push   %r12
  40264b:	4c 8d 25 ae 17 20 00 	lea    0x2017ae(%rip),%r12        # 603e00 <__frame_dummy_init_array_entry>
  402652:	55                   	push   %rbp
  402653:	48 8d 2d ae 17 20 00 	lea    0x2017ae(%rip),%rbp        # 603e08 <__init_array_end>
  40265a:	53                   	push   %rbx
  40265b:	49 89 f6             	mov    %rsi,%r14
  40265e:	49 89 d5             	mov    %rdx,%r13
  402661:	4c 29 e5             	sub    %r12,%rbp
  402664:	48 83 ec 08          	sub    $0x8,%rsp
  402668:	48 c1 fd 03          	sar    $0x3,%rbp
  40266c:	e8 ff e4 ff ff       	callq  400b70 <_init>
  402671:	48 85 ed             	test   %rbp,%rbp
  402674:	74 20                	je     402696 <__libc_csu_init+0x56>
  402676:	31 db                	xor    %ebx,%ebx
  402678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40267f:	00 
  402680:	4c 89 ea             	mov    %r13,%rdx
  402683:	4c 89 f6             	mov    %r14,%rsi
  402686:	44 89 ff             	mov    %r15d,%edi
  402689:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40268d:	48 83 c3 01          	add    $0x1,%rbx
  402691:	48 39 eb             	cmp    %rbp,%rbx
  402694:	75 ea                	jne    402680 <__libc_csu_init+0x40>
  402696:	48 83 c4 08          	add    $0x8,%rsp
  40269a:	5b                   	pop    %rbx
  40269b:	5d                   	pop    %rbp
  40269c:	41 5c                	pop    %r12
  40269e:	41 5d                	pop    %r13
  4026a0:	41 5e                	pop    %r14
  4026a2:	41 5f                	pop    %r15
  4026a4:	c3                   	retq   
  4026a5:	90                   	nop
  4026a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4026ad:	00 00 00 

00000000004026b0 <__libc_csu_fini>:
  4026b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004026b4 <_fini>:
  4026b4:	48 83 ec 08          	sub    $0x8,%rsp
  4026b8:	48 83 c4 08          	add    $0x8,%rsp
  4026bc:	c3                   	retq   
