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
# BB#0:                                 # %c1.preheader.preheader
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	$1
	pushl	$30000                  # imm = 0x7530
	calll	_calloc
	addl	$8, %esp
	movl	%eax, %esi
	movw	$266, 1(%esi)           # imm = 0x10A
	movb	$1, 3(%esi)
	movl	$3, %edi
	movb	$1, %al
	.p2align	4, 0x90
LBB6_1:                                 # %b1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #     Child Loop BB6_9 Depth 2
                                        #       Child Loop BB6_26 Depth 3
	movl	%edi, %ebx
	.p2align	4, 0x90
LBB6_2:                                 # %b1
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	1(%ebx), %edi
	addb	$5, %al
	movb	%al, (%esi,%ebx)
	movzbl	1(%esi,%ebx), %ecx
	je	LBB6_4
# BB#3:                                 # %b2.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=2
	shlb	$3, %al
	addb	%al, %cl
	movb	%cl, (%esi,%edi)
	movb	$0, (%esi,%ebx)
LBB6_4:                                 # %e2
                                        #   in Loop: Header=BB6_2 Depth=2
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movzbl	(%esi,%ebx), %eax
	addb	$6, %al
	movb	%al, (%esi,%ebx)
	je	LBB6_6
# BB#5:                                 # %b3.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=2
	shlb	$3, %al
	subb	%al, (%esi,%edi)
	movb	$0, (%esi,%ebx)
LBB6_6:                                 # %e3
                                        #   in Loop: Header=BB6_2 Depth=2
	movb	$1, (%esi,%ebx)
	movzbl	-3(%esi,%ebx), %eax
	addl	$-3, %ebx
	testb	%al, %al
	jne	LBB6_2
# BB#7:                                 # %e1
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	1(%ebx), %edi
	movsbl	1(%esi,%ebx), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, 3(%esi,%ebx)
	je	LBB6_29
# BB#8:                                 # %e5.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	3(%esi,%ebx), %ecx
	.p2align	4, 0x90
LBB6_9:                                 # %e5
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_26 Depth 3
	movl	%edi, %edx
	movb	$0, (%ecx)
	leal	1(%edx), %ecx
	movb	1(%esi,%edx), %bl
	leal	2(%edx), %eax
	testb	%bl, %bl
	je	LBB6_11
# BB#10:                                # %b6.lr.ph
                                        #   in Loop: Header=BB6_9 Depth=2
	addb	%bl, (%esi,%eax)
	movb	$0, (%esi,%ecx)
LBB6_11:                                # %e6
                                        #   in Loop: Header=BB6_9 Depth=2
	leal	3(%edx), %edi
	movb	3(%esi,%edx), %bh
	testb	%bh, %bh
	movb	(%esi,%eax), %bl
	je	LBB6_13
# BB#12:                                # %b7.lr.ph
                                        #   in Loop: Header=BB6_9 Depth=2
	addb	%bh, %bl
	movb	%bh, (%esi,%ecx)
	movb	%bl, (%esi,%eax)
	movb	$0, (%esi,%edi)
LBB6_13:                                # %c8.preheader
                                        #   in Loop: Header=BB6_9 Depth=2
	testb	%bl, %bl
	je	LBB6_14
# BB#15:                                # %b8
                                        #   in Loop: Header=BB6_9 Depth=2
	leal	5(%esi,%edx), %ecx
	movb	$1, (%esi,%edi)
	decb	%bl
	movb	%bl, (%esi,%eax)
	je	LBB6_28
# BB#16:                                # %b9
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$2, (%esi,%edi)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#17:                                # %b10
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$3, (%esi,%edi)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#18:                                # %b11
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$4, (%esi,%edi)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#19:                                # %b12
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$5, (%esi,%edi)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#20:                                # %b13
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$6, (%esi,%edi)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#21:                                # %b14
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$7, (%esi,%edi)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#22:                                # %b15
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$8, (%esi,%edi)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#23:                                # %b16
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$9, (%esi,%edi)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#24:                                # %e18
                                        #   in Loop: Header=BB6_9 Depth=2
	addl	$4, %edx
	movb	$0, (%esi,%edi)
	incb	(%esi,%edx)
	incb	(%ecx)
	decb	(%esi,%eax)
	je	LBB6_28
# BB#25:                                # %b19.preheader
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	(%esi,%eax), %bl
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB6_26:                                # %b19
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incb	%dl
	movb	%bl, %bh
	subb	%dl, %bh
	jne	LBB6_26
# BB#27:                                # %e8.loopexit
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	%dl, (%esi,%edi)
	movb	%bh, (%esi,%eax)
	jmp	LBB6_28
	.p2align	4, 0x90
LBB6_14:                                # %c8.preheader.e8_crit_edge
                                        #   in Loop: Header=BB6_9 Depth=2
	leal	5(%esi,%edx), %ecx
LBB6_28:                                # %e8
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	$1, (%esi,%eax)
	cmpb	$0, (%ecx)
	jne	LBB6_9
LBB6_29:                                # %e4
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-1(%esi,%edi), %al
	decl	%edi
	testb	%al, %al
	jne	LBB6_1
# BB#30:                                # %e0
	pushl	$0
	calll	_putchar
	addl	$4, %esp
	movsbl	(%esi,%edi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	(%esi,%edi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	pushl	%esi
	calll	_free
	addl	$4, %esp
	xorl	%eax, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	retl


