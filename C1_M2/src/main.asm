	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	buffer, 10, 3
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB13:
	.file 1 "main.c"
	.loc 1 30 16
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	.loc 1 30 16
	call	__main
.LVL0:
	.loc 1 35 3
	movl	$10, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	clear_all
	.loc 1 36 3
	leaq	buffer(%rip), %rax
	leaq	8(%rax), %rax
	movl	$2, %r8d
	movl	$43, %edx
	movq	%rax, %rcx
	call	set_all
	.loc 1 37 3
	movl	$97, %r8d
	movl	$0, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 1 38 11
	movl	$9, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	get_value
	movb	%al, -5(%rbp)
	.loc 1 39 31
	movzbl	-5(%rbp), %eax
	addl	$39, %eax
	.loc 1 39 3
	movsbl	%al, %eax
	movl	%eax, %r8d
	movl	$9, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 1 40 3
	movl	$55, %r8d
	movl	$3, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 1 41 3
	movl	$88, %r8d
	movl	$1, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 1 42 3
	movl	$50, %r8d
	movl	$4, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 1 43 11
	movl	$1, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	get_value
	movb	%al, -5(%rbp)
	.loc 1 44 3
	movl	$121, %r8d
	movl	$2, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 1 45 31
	movzbl	-5(%rbp), %eax
	subl	$12, %eax
	.loc 1 45 3
	movsbl	%al, %eax
	movl	%eax, %r8d
	movl	$7, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 1 46 3
	movl	$95, %r8d
	movl	$5, %edx
	leaq	buffer(%rip), %rax
	movq	%rax, %rcx
	call	set_value
	.loc 1 48 11
	movl	$0, -4(%rbp)
	.loc 1 48 3
	jmp	.L2
.L3:
	.loc 1 49 5 discriminator 3
	leaq	buffer(%rip), %rdx
	movl	-4(%rbp), %eax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	call	putchar
	.loc 1 48 33 discriminator 3
	addl	$1, -4(%rbp)
.L2:
	.loc 1 48 3 discriminator 1
	cmpl	$9, -4(%rbp)
	jbe	.L3
	.loc 1 51 3
	movl	$10, %ecx
	call	putchar
	.loc 1 52 10
	movl	$0, %eax
	.loc 1 53 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x1ac
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C99 9.2.0 -mtune=generic -march=x86-64 -g -O0 -std=c99\0"
	.byte	0xc
	.ascii "main.c\0"
	.ascii "E:\\After NTI\\coursera\\introduction to embedded\\ese-coursera-course1\\C1M2_Awwad\\src\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.long	0xb6
	.long	0x158
	.uleb128 0x4
	.long	0xbe
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.ascii "buffer\0"
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.long	0x148
	.uleb128 0x9
	.byte	0x3
	.quad	buffer
	.uleb128 0x6
	.ascii "main\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.long	0xff
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.ascii "i\0"
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.long	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.ascii "value\0"
	.byte	0x1
	.byte	0x20
	.byte	0x8
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (GNU) 9.2.0"
	.def	clear_all;	.scl	2;	.type	32;	.endef
	.def	set_all;	.scl	2;	.type	32;	.endef
	.def	set_value;	.scl	2;	.type	32;	.endef
	.def	get_value;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
