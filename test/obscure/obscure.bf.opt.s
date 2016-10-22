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
# BB#0:                                 # %c4.c4_crit_edge.preheader
	pushl	%edi
	pushl	%esi
	pushl	$1
	pushl	$30000                  # imm = 0x7530
	calll	_calloc
	addl	$8, %esp
	movl	%eax, %esi
	movb	$10, (%esi)
	movb	$-76, 1(%esi)
	movb	$70, 2(%esi)
	movb	$10, 3(%esi)
	movb	$0, (%esi)
	movl	$1, %edi
	.p2align	4, 0x90
LBB6_1:                                 # %c4.c4_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, 2(%esi,%edi)
	leal	2(%edi), %edi
	jne	LBB6_1
# BB#2:                                 # %e4
	cmpb	$0, -4(%esi,%edi)
	movb	-3(%esi,%edi), %al
	je	LBB6_4
# BB#3:                                 # %c5.e5_crit_edge
	leal	-4(%edi), %ecx
	leal	-3(%edi), %edx
	addb	$2, %al
	movb	$0, (%esi,%ecx)
	movb	%al, (%esi,%edx)
LBB6_4:                                 # %e5
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	-2(%esi,%edi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	pushl	%esi
	calll	_free
	addl	$4, %esp
	xorl	%eax, %eax
	popl	%esi
	popl	%edi
	retl


