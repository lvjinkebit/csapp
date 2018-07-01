	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_show_bytes
	.p2align	4, 0x90
_show_bytes:                            ## @show_bytes
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Lcfi3:
	.cfi_offset %rbx, -40
Lcfi4:
	.cfi_offset %r14, -32
Lcfi5:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%r14, %r14
	je	LBB0_3
## BB#1:
	leaq	L_.str(%rip), %r15
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	_printf
	incq	%rbx
	decq	%r14
	jne	LBB0_2
LBB0_3:
	movl	$10, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_putchar                ## TAILCALL
	.cfi_endproc

	.globl	_show_int
	.p2align	4, 0x90
_show_int:                              ## @show_int
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	-4(%rbp), %rdi
	movl	$4, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_show_float
	.p2align	4, 0x90
_show_float:                            ## @show_float
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	leaq	-4(%rbp), %rdi
	movl	$4, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_show_pointer
	.p2align	4, 0x90
_show_pointer:                          ## @show_pointer
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rdi
	movl	$8, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_decode
	.p2align	4, 0x90
_decode:                                ## @decode
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	movq	(%rdx), %r8
	movq	%rax, (%rsi)
	movq	%rcx, (%rdx)
	movq	%r8, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_scale
	.p2align	4, 0x90
_scale:                                 ## @scale
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi20:
	.cfi_def_cfa_register %rbp
	leaq	(%rdi,%rdi,4), %rax
	leaq	(%rax,%rsi,2), %rax
	leaq	(%rax,%rdx,8), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_leap
	.p2align	4, 0x90
_leap:                                  ## @leap
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	leaq	10(%rdi,%rdi,8), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_shift
	.p2align	4, 0x90
_shift:                                 ## @shift
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi24:
	.cfi_def_cfa_offset 16
Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi26:
	.cfi_def_cfa_register %rbp
	shlq	$4, %rdi
	movl	%esi, %ecx
	sarq	%cl, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI8_0:
	.long	1092616192              ## float 10
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi27:
	.cfi_def_cfa_offset 16
Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$10, -4(%rbp)
	movl	$10, %edi
	callq	_show_int
	movss	LCPI8_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	callq	_show_float
	leaq	-4(%rbp), %rdi
	callq	_show_pointer
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%.2x"

L_.str.1:                               ## @.str.1
	.asciz	"\n"


.subsections_via_symbols
