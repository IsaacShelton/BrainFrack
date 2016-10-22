	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 1
	.def	 _bf_ii;
	.scl	2;
	.type	32;
	.endef
	.globl	_bf_ii
	.p2align	4, 0x90
_bf_ii:                                 # @bf_ii
# BB#0:
	movl	4(%esp), %eax
	incl	(%eax)
	retl

	.def	 _bf_di;
	.scl	2;
	.type	32;
	.endef
	.globl	_bf_di
	.p2align	4, 0x90
_bf_di:                                 # @bf_di
# BB#0:
	movl	4(%esp), %eax
	decl	(%eax)
	retl

	.def	 _bf_i;
	.scl	2;
	.type	32;
	.endef
	.globl	_bf_i
	.p2align	4, 0x90
_bf_i:                                  # @bf_i
# BB#0:
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	movl	(%ecx), %ecx
	incb	(%eax,%ecx)
	retl

	.def	 _bf_d;
	.scl	2;
	.type	32;
	.endef
	.globl	_bf_d
	.p2align	4, 0x90
_bf_d:                                  # @bf_d
# BB#0:
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	movl	(%ecx), %ecx
	decb	(%eax,%ecx)
	retl

	.def	 _bf_put;
	.scl	2;
	.type	32;
	.endef
	.globl	_bf_put
	.p2align	4, 0x90
_bf_put:                                # @bf_put
# BB#0:
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	movl	(%ecx), %ecx
	movsbl	(%eax,%ecx), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	retl

	.def	 _bf_get;
	.scl	2;
	.type	32;
	.endef
	.globl	_bf_get
	.p2align	4, 0x90
_bf_get:                                # @bf_get
# BB#0:
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %esi
	movl	16(%esp), %eax
	movl	(%eax), %edi
	calll	_getchar
	movb	%al, (%esi,%edi)
	popl	%esi
	popl	%edi
	retl

	.def	 _main;
	.scl	2;
	.type	32;
	.endef
	.globl	_main
	.p2align	4, 0x90
_main:                                  # @main
# BB#0:                                 # %e0
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	calll	_getchar
	movl	%eax, %ebx
	calll	_getchar
	addb	$66, %al
	movl	%eax, %edi
	addb	$66, %bl
	movsbl	%bl, %esi
	pushl	%esi
	calll	_putchar
	addl	$4, %esp
	movl	%edi, %eax
	movsbl	%al, %edi
	pushl	%edi
	calll	_putchar
	addl	$4, %esp
	pushl	$10
	calll	_putchar
	addl	$4, %esp
	pushl	%esi
	calll	_putchar
	addl	$4, %esp
	pushl	%edi
	calll	_putchar
	addl	$4, %esp
	pushl	$10
	calll	_putchar
	addl	$4, %esp
	xorl	%eax, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	retl


