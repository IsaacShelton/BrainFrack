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
# BB#0:                                 # %b0.preheader
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$24, %esp
	pushl	$1
	pushl	$30000                  # imm = 0x7530
	calll	_calloc
	addl	$8, %esp
	movl	%eax, %esi
	movw	$769, 4(%esi)           # imm = 0x301
	movb	$3, 6(%esi)
	movb	$3, 11(%esi)
	movl	$11, %edi
	jmp	LBB6_1
LBB6_94:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-6, %eax
LBB6_97:                                # %e37
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-1(%esi,%eax), %cl
	movl	%ecx, %edx
	incb	%dl
	movb	%dl, -1(%esi,%eax)
	movb	-2(%esi,%eax), %dl
	movb	%dl, %ch
	incb	%ch
	movb	%ch, -2(%esi,%eax)
	leal	-3(%eax), %edi
	decb	-3(%esi,%eax)
	je	LBB6_126
# BB#98:                                # %b38
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	%cl, -1(%esi,%eax)
	movb	%dl, -2(%esi,%eax)
	decb	(%esi,%edi)
	je	LBB6_126
# BB#99:                                # %b39
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	-5(%esi,%eax)
	je	LBB6_100
# BB#101:                               # %c40.c40_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-5, %eax
	.p2align	4, 0x90
LBB6_102:                               # %c40.c40_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%eax)
	leal	1(%eax), %eax
	jne	LBB6_102
	jmp	LBB6_103
LBB6_100:                               #   in Loop: Header=BB6_1 Depth=1
	addl	$-5, %eax
LBB6_103:                               # %e40
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-1(%esi,%eax)
	leal	-2(%eax), %ecx
	movb	-2(%esi,%eax), %dl
	leal	-3(%eax), %edi
	addb	$4, %dl
	movb	%dl, -2(%esi,%eax)
	je	LBB6_105
# BB#104:                               # %b41.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	shlb	$3, %dl
	subb	%dl, (%esi,%edi)
	movb	$0, (%esi,%ecx)
LBB6_105:                               # %e41
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$2, (%esi,%ecx)
	cmpb	$0, (%esi,%edi)
	je	LBB6_126
# BB#106:                               # %b42
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-5(%esi,%eax)
	je	LBB6_107
# BB#108:                               # %c43.c43_crit_edge.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-5, %eax
	movl	%eax, %ecx
LBB6_109:                               # %c43.c43_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%ecx)
	leal	1(%ecx), %ecx
	jne	LBB6_109
# BB#110:                               # %e43.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	1(%ecx), %eax
	jmp	LBB6_111
LBB6_107:                               #   in Loop: Header=BB6_1 Depth=1
	leal	-5(%eax), %ecx
	addl	$-4, %eax
LBB6_111:                               # %e43
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	2(%esi,%ecx)
	decb	(%esi,%eax)
	leal	-3(%ecx), %edi
	decb	-3(%esi,%ecx)
	je	LBB6_126
# BB#112:                               # %b44
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	-5(%esi,%ecx)
	movb	-7(%esi,%ecx), %al
	movl	%eax, %edx
	decb	%dl
	movb	%dl, -7(%esi,%ecx)
	decb	(%esi,%edi)
	je	LBB6_126
# BB#113:                               # %b45
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	-7(%ecx), %edi
	movb	%al, (%esi,%edi)
	testb	%al, %al
	je	LBB6_114
# BB#115:                               # %c46.c46_crit_edge.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %ecx
	movl	%ecx, %edi
LBB6_116:                               # %c46.c46_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%edi)
	leal	1(%edi), %edi
	jne	LBB6_116
# BB#117:                               # %e46.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	1(%edi), %ecx
	jmp	LBB6_118
LBB6_114:                               #   in Loop: Header=BB6_1 Depth=1
	addl	$-6, %ecx
LBB6_118:                               # %e46
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	(%esi,%ecx)
	decb	-3(%esi,%edi)
	je	LBB6_119
# BB#120:                               # %b47
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-5(%esi,%edi)
	decb	-7(%esi,%edi)
	je	LBB6_121
# BB#122:                               # %c48.c48_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %edi
	movl	%edi, %eax
LBB6_123:                               # %c48.c48_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 2(%esi,%eax)
	leal	2(%eax), %eax
	jne	LBB6_123
	jmp	LBB6_124
LBB6_119:                               #   in Loop: Header=BB6_1 Depth=1
	addl	$-3, %edi
	jmp	LBB6_126
LBB6_121:                               #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %edi
	movl	%edi, %eax
LBB6_124:                               # %e48
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-1(%esi,%eax)
	leal	-6(%eax), %edi
	movb	-6(%esi,%eax), %cl
	decb	%cl
	movb	%cl, -6(%esi,%eax)
	je	LBB6_126
# BB#125:                               # %b49.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-5(%esi,%eax), %dl
	subb	%cl, %dl
	subb	%cl, -2(%esi,%eax)
	movb	%dl, -5(%esi,%eax)
	movb	$0, (%esi,%edi)
	jmp	LBB6_126
	.p2align	4, 0x90
LBB6_1:                                 # %b0
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #       Child Loop BB6_6 Depth 3
                                        #       Child Loop BB6_8 Depth 3
                                        #     Child Loop BB6_15 Depth 2
                                        #     Child Loop BB6_18 Depth 2
                                        #     Child Loop BB6_20 Depth 2
                                        #     Child Loop BB6_23 Depth 2
                                        #       Child Loop BB6_24 Depth 3
                                        #       Child Loop BB6_27 Depth 3
                                        #     Child Loop BB6_33 Depth 2
                                        #     Child Loop BB6_39 Depth 2
                                        #     Child Loop BB6_46 Depth 2
                                        #     Child Loop BB6_52 Depth 2
                                        #     Child Loop BB6_59 Depth 2
                                        #     Child Loop BB6_65 Depth 2
                                        #     Child Loop BB6_71 Depth 2
                                        #     Child Loop BB6_77 Depth 2
                                        #     Child Loop BB6_83 Depth 2
                                        #     Child Loop BB6_90 Depth 2
                                        #     Child Loop BB6_96 Depth 2
                                        #     Child Loop BB6_102 Depth 2
                                        #     Child Loop BB6_109 Depth 2
                                        #     Child Loop BB6_116 Depth 2
                                        #     Child Loop BB6_123 Depth 2
                                        #     Child Loop BB6_127 Depth 2
                                        #       Child Loop BB6_128 Depth 3
                                        #         Child Loop BB6_129 Depth 4
                                        #           Child Loop BB6_130 Depth 5
                                        #           Child Loop BB6_132 Depth 5
	calll	_getchar
	incb	%al
	movb	%al, 1(%esi,%edi)
	movb	2(%esi,%edi), %dl
	addb	$4, %dl
	movb	%dl, 2(%esi,%edi)
	movb	3(%esi,%edi), %cl
	je	LBB6_3
# BB#2:                                 # %b1.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	2(%edi), %ebx
	leal	3(%edi), %ebp
	shlb	$2, %dl
	addb	%dl, %cl
	movb	%cl, (%esi,%ebp)
	movb	$0, (%esi,%ebx)
LBB6_3:                                 # %c2.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	incl	%edi
	testb	%cl, %cl
	je	LBB6_11
	.p2align	4, 0x90
LBB6_4:                                 # %c3.preheader
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_6 Depth 3
                                        #       Child Loop BB6_8 Depth 3
	testb	%al, %al
	je	LBB6_7
# BB#5:                                 # %b3
                                        #   in Loop: Header=BB6_4 Depth=2
	decb	%al
	movb	%al, (%esi,%edi)
	je	LBB6_7
	.p2align	4, 0x90
LBB6_6:                                 # %b4
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	decb	%al
	movb	%al, (%esi,%edi)
	movb	1(%esi,%edi), %al
	incl	%edi
	testb	%al, %al
	jne	LBB6_6
LBB6_7:                                 # %e3
                                        #   in Loop: Header=BB6_4 Depth=2
	addl	$3, %edi
	movl	%edi, %ecx
	.p2align	4, 0x90
LBB6_8:                                 # %c5
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, -2(%esi,%ecx)
	leal	-1(%ecx), %ecx
	jne	LBB6_8
# BB#9:                                 # %e5
                                        #   in Loop: Header=BB6_4 Depth=2
	leal	-2(%ecx), %edi
	decb	(%esi,%ecx)
	movb	-2(%esi,%ecx), %al
	jne	LBB6_4
# BB#10:                                # %c6.preheader.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-2, %ecx
	movl	%ecx, %edi
LBB6_11:                                # %c6.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	1(%edi), %ebp
	testb	%al, %al
	je	LBB6_136
# BB#12:                                # %b6
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$1, (%esi,%ebp)
	incb	2(%esi,%edi)
	incb	4(%esi,%edi)
	incb	5(%esi,%edi)
	je	LBB6_13
# BB#14:                                # %c7.c7_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$5, %edi
	.p2align	4, 0x90
LBB6_15:                                # %c7.c7_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, -4(%esi,%edi)
	leal	-4(%edi), %edi
	jne	LBB6_15
	jmp	LBB6_16
	.p2align	4, 0x90
LBB6_13:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$5, %edi
LBB6_16:                                # %e7
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-1(%esi,%edi)
	movb	1(%esi,%edi), %al
	jmp	LBB6_18
	.p2align	4, 0x90
LBB6_17:                                # %b8
                                        #   in Loop: Header=BB6_18 Depth=2
	incb	%al
	movb	%al, 1(%esi,%edi)
	movzbl	(%esi,%edi), %eax
	decl	%edi
LBB6_18:                                # %b8
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%al, %al
	jne	LBB6_17
# BB#19:                                # %e8.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	incl	%edi
	decl	%edi
	.p2align	4, 0x90
LBB6_20:                                # %c9
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%esi,%edi)
	leal	1(%edi), %edi
	jne	LBB6_20
# BB#21:                                # %e9
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	(%esi,%edi)
	je	LBB6_22
	.p2align	4, 0x90
LBB6_23:                                # %c11.preheader
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_24 Depth 3
                                        #       Child Loop BB6_27 Depth 3
	leal	2(%edi), %ecx
	.p2align	4, 0x90
LBB6_24:                                # %c11
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ecx, %eax
	leal	3(%eax), %ecx
	cmpb	$0, (%esi,%edi)
	leal	3(%edi), %edi
	jne	LBB6_24
# BB#25:                                # %e11
                                        #   in Loop: Header=BB6_23 Depth=2
	incb	-1(%esi,%edi)
	je	LBB6_26
	.p2align	4, 0x90
LBB6_27:                                # %c12.c12_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, -4(%esi,%eax)
	leal	-4(%eax), %eax
	jne	LBB6_27
	jmp	LBB6_28
	.p2align	4, 0x90
LBB6_26:                                #   in Loop: Header=BB6_23 Depth=2
	decl	%edi
	movl	%edi, %eax
LBB6_28:                                # %e12
                                        #   in Loop: Header=BB6_23 Depth=2
	leal	1(%eax), %edi
	decb	1(%esi,%eax)
	jne	LBB6_23
# BB#29:                                #   in Loop: Header=BB6_1 Depth=1
	leal	1(%esi,%eax), %eax
	jmp	LBB6_30
	.p2align	4, 0x90
LBB6_22:                                #   in Loop: Header=BB6_1 Depth=1
	leal	(%esi,%edi), %eax
LBB6_30:                                # %e10
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$1, (%eax)
	incb	-1(%esi,%edi)
	decb	2(%esi,%edi)
	je	LBB6_31
# BB#32:                                # %b13
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	(%esi,%edi)
	je	LBB6_34
	.p2align	4, 0x90
LBB6_33:                                # %c14.c14_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%edi)
	leal	1(%edi), %edi
	jne	LBB6_33
LBB6_34:                                # %e14
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	2(%esi,%edi)
	incb	-1(%esi,%edi)
	incb	-2(%esi,%edi)
	movb	-3(%esi,%edi), %al
	addb	$-8, %al
	movb	%al, -3(%esi,%edi)
	je	LBB6_35
# BB#36:                                # %b15
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	-5(%esi,%edi)
	incb	-7(%esi,%edi)
	je	LBB6_37
# BB#38:                                # %c16.c16_crit_edge.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %edi
	movl	%edi, %eax
	.p2align	4, 0x90
LBB6_39:                                # %c16.c16_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%eax)
	leal	1(%eax), %eax
	jne	LBB6_39
# BB#40:                                # %e16.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	1(%eax), %edi
	jmp	LBB6_41
	.p2align	4, 0x90
LBB6_31:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$2, %edi
	jmp	LBB6_126
LBB6_35:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-3, %edi
	jmp	LBB6_126
LBB6_37:                                #   in Loop: Header=BB6_1 Depth=1
	leal	-7(%edi), %eax
	addl	$-6, %edi
LBB6_41:                                # %e16
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	(%esi,%edi)
	decb	-1(%esi,%eax)
	decb	-3(%esi,%eax)
	je	LBB6_42
# BB#43:                                # %b17
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-6(%esi,%eax)
	decb	-7(%esi,%eax)
	je	LBB6_44
# BB#45:                                # %c18.c18_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %eax
	.p2align	4, 0x90
LBB6_46:                                # %c18.c18_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 2(%esi,%eax)
	leal	2(%eax), %eax
	jne	LBB6_46
	jmp	LBB6_47
LBB6_44:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %eax
LBB6_47:                                # %e18
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	-1(%esi,%eax)
	decb	-2(%esi,%eax)
	movb	-5(%esi,%eax), %cl
	movl	%ecx, %edx
	decb	%dl
	movb	%dl, -5(%esi,%eax)
	leal	-6(%eax), %edi
	movb	-6(%esi,%eax), %dl
	addb	$-4, %dl
	movb	%dl, -6(%esi,%eax)
	je	LBB6_126
# BB#48:                                # %b19
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-9(%esi,%eax), %dl
	movb	%dl, %ch
	decb	%ch
	movb	%ch, -9(%esi,%eax)
	movb	%cl, -5(%esi,%eax)
	decb	(%esi,%edi)
	je	LBB6_126
# BB#49:                                # %b20
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	-9(%eax), %edi
	movb	%dl, (%esi,%edi)
	testb	%dl, %dl
	je	LBB6_50
# BB#51:                                # %c21.c21_crit_edge.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-9, %eax
	movl	%eax, %edi
	.p2align	4, 0x90
LBB6_52:                                # %c21.c21_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%edi)
	leal	1(%edi), %edi
	jne	LBB6_52
# BB#53:                                # %e21.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	1(%edi), %eax
	jmp	LBB6_54
LBB6_50:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-8, %eax
LBB6_54:                                # %e21
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	(%esi,%eax)
	incb	-1(%esi,%edi)
	decb	-2(%esi,%edi)
	decb	-3(%esi,%edi)
	je	LBB6_55
# BB#56:                                # %b22
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-5(%esi,%edi)
	decb	-6(%esi,%edi)
	incb	-7(%esi,%edi)
	je	LBB6_57
# BB#58:                                # %c23.c23_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %edi
	.p2align	4, 0x90
LBB6_59:                                # %c23.c23_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 2(%esi,%edi)
	leal	2(%edi), %edi
	jne	LBB6_59
	jmp	LBB6_60
LBB6_55:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-3, %edi
	jmp	LBB6_126
LBB6_57:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %edi
LBB6_60:                                # %e23
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-1(%esi,%edi)
	incb	-5(%esi,%edi)
	decb	-6(%esi,%edi)
	je	LBB6_61
# BB#62:                                # %b24
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	-8(%esi,%edi)
	je	LBB6_63
# BB#64:                                # %c25.c25_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-8, %edi
	.p2align	4, 0x90
LBB6_65:                                # %c25.c25_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%edi)
	leal	1(%edi), %edi
	jne	LBB6_65
	jmp	LBB6_66
LBB6_61:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-6, %edi
	jmp	LBB6_126
LBB6_63:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-8, %edi
LBB6_66:                                # %e25
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	2(%esi,%edi)
	decb	-1(%esi,%edi)
	decb	-2(%esi,%edi)
	decb	-3(%esi,%edi)
	je	LBB6_67
# BB#68:                                # %b26
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-6(%esi,%edi)
	decb	-7(%esi,%edi)
	je	LBB6_69
# BB#70:                                # %c27.c27_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %edi
	.p2align	4, 0x90
LBB6_71:                                # %c27.c27_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 2(%esi,%edi)
	leal	2(%edi), %edi
	jne	LBB6_71
	jmp	LBB6_72
LBB6_67:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-3, %edi
	jmp	LBB6_126
LBB6_69:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-7, %edi
LBB6_72:                                # %e27
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-1(%esi,%edi)
	incb	-4(%esi,%edi)
	incb	-5(%esi,%edi)
	decb	-6(%esi,%edi)
	je	LBB6_73
# BB#74:                                # %b28
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-10(%esi,%edi)
	je	LBB6_75
# BB#76:                                # %c29.c29_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-10, %edi
	.p2align	4, 0x90
LBB6_77:                                # %c29.c29_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%edi)
	leal	1(%edi), %edi
	jne	LBB6_77
	jmp	LBB6_78
LBB6_73:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-6, %edi
	jmp	LBB6_126
LBB6_75:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-10, %edi
LBB6_78:                                # %e29
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	-1(%esi,%edi)
	decb	-3(%esi,%edi)
	je	LBB6_79
# BB#80:                                # %b30
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-5(%esi,%edi)
	je	LBB6_81
# BB#82:                                # %c31.c31_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-5, %edi
	movl	%edi, %eax
	.p2align	4, 0x90
LBB6_83:                                # %c31.c31_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%eax)
	leal	1(%eax), %eax
	jne	LBB6_83
	jmp	LBB6_84
LBB6_79:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-3, %edi
	jmp	LBB6_126
LBB6_81:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-5, %edi
	movl	%edi, %eax
LBB6_84:                                # %e31
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	2(%esi,%eax), %cl
	movl	%ecx, %edx
	decb	%dl
	movb	%dl, 2(%esi,%eax)
	movb	-2(%esi,%eax), %dl
	movb	%dl, %ch
	decb	%ch
	movb	%ch, -2(%esi,%eax)
	leal	-3(%eax), %edi
	decb	-3(%esi,%eax)
	je	LBB6_126
# BB#85:                                # %b32
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	%cl, 2(%esi,%eax)
	decb	1(%esi,%eax)
	movb	%dl, -2(%esi,%eax)
	decb	(%esi,%edi)
	je	LBB6_126
# BB#86:                                # %b33
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-1(%esi,%eax)
	decb	(%esi,%edi)
	je	LBB6_126
# BB#87:                                # %b34
                                        #   in Loop: Header=BB6_1 Depth=1
	decb	-5(%esi,%eax)
	decb	-6(%esi,%eax)
	je	LBB6_88
# BB#89:                                # %c35.c35_crit_edge.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-6, %eax
	.p2align	4, 0x90
LBB6_90:                                # %c35.c35_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%eax)
	leal	1(%eax), %eax
	jne	LBB6_90
# BB#91:                                # %e35.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	1(%eax), %ecx
	jmp	LBB6_92
LBB6_88:                                #   in Loop: Header=BB6_1 Depth=1
	leal	-5(%eax), %ecx
	addl	$-6, %eax
LBB6_92:                                # %e35
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	(%esi,%ecx)
	decb	-1(%esi,%eax)
	decb	-2(%esi,%eax)
	decb	-3(%esi,%eax)
	je	LBB6_42
# BB#93:                                # %b36
                                        #   in Loop: Header=BB6_1 Depth=1
	incb	-5(%esi,%eax)
	incb	-6(%esi,%eax)
	je	LBB6_94
# BB#95:                                # %c37.c37_crit_edge.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-6, %eax
	.p2align	4, 0x90
LBB6_96:                                # %c37.c37_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%esi,%eax)
	leal	1(%eax), %eax
	jne	LBB6_96
	jmp	LBB6_97
LBB6_42:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$-3, %eax
	movl	%eax, %edi
	.p2align	4, 0x90
LBB6_126:                               # %c50.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpb	$0, 1(%esi,%edi)
	leal	1(%edi), %ebp
	je	LBB6_136
	.p2align	4, 0x90
LBB6_127:                               # %b50
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_128 Depth 3
                                        #         Child Loop BB6_129 Depth 4
                                        #           Child Loop BB6_130 Depth 5
                                        #           Child Loop BB6_132 Depth 5
	cmpb	$0, 1(%esi,%ebp)
	leal	1(%ebp), %eax
	je	LBB6_135
	.p2align	4, 0x90
LBB6_128:                               # %c53.preheader.preheader
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_127 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_129 Depth 4
                                        #           Child Loop BB6_130 Depth 5
                                        #           Child Loop BB6_132 Depth 5
	movl	%eax, %ecx
	.p2align	4, 0x90
LBB6_129:                               # %c53.preheader
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_127 Depth=2
                                        #       Parent Loop BB6_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_130 Depth 5
                                        #           Child Loop BB6_132 Depth 5
	leal	-4(%ecx), %edx
	.p2align	4, 0x90
LBB6_130:                               # %c53
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_127 Depth=2
                                        #       Parent Loop BB6_128 Depth=3
                                        #         Parent Loop BB6_129 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	%edx, %eax
	leal	-4(%eax), %edx
	cmpb	$0, (%esi,%ecx)
	leal	-4(%ecx), %ecx
	jne	LBB6_130
# BB#131:                               # %e53
                                        #   in Loop: Header=BB6_129 Depth=4
	incb	5(%esi,%ecx)
	.p2align	4, 0x90
LBB6_132:                               # %c54
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_127 Depth=2
                                        #       Parent Loop BB6_128 Depth=3
                                        #         Parent Loop BB6_129 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpb	$0, 7(%esi,%eax)
	leal	5(%eax), %eax
	jne	LBB6_132
# BB#133:                               # %e54
                                        #   in Loop: Header=BB6_129 Depth=4
	leal	1(%eax), %ecx
	decb	1(%esi,%eax)
	jne	LBB6_129
# BB#134:                               # %e52
                                        #   in Loop: Header=BB6_128 Depth=3
	cmpb	$0, (%esi,%eax)
	jne	LBB6_128
LBB6_135:                               # %e51
                                        #   in Loop: Header=BB6_127 Depth=2
	incb	3(%esi,%eax)
	incb	10(%esi,%eax)
	cmpb	$0, 11(%esi,%eax)
	leal	11(%eax), %ebp
	jne	LBB6_127
LBB6_136:                               # %e50
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	-1(%ebp), %edi
	cmpb	$0, -1(%esi,%ebp)
	jne	LBB6_1
# BB#137:                               # %e0
	cmpb	$0, -2(%esi,%ebp)
	je	LBB6_139
# BB#138:                               # %b55.preheader
	leal	-2(%ebp), %eax
	movb	$0, (%esi,%eax)
LBB6_139:                               # %e55
	addb	$2, -9(%esi,%ebp)
	addb	$3, -10(%esi,%ebp)
	movb	-11(%esi,%ebp), %al
	addb	$3, %al
	movb	%al, -11(%esi,%ebp)
	je	LBB6_192
# BB#140:                               # %c57.preheader.preheader
	addl	$-11, %ebp
	.p2align	4, 0x90
LBB6_141:                               # %c57.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_142 Depth 2
                                        #     Child Loop BB6_149 Depth 2
                                        #     Child Loop BB6_153 Depth 2
                                        #       Child Loop BB6_154 Depth 3
                                        #       Child Loop BB6_160 Depth 3
                                        #       Child Loop BB6_165 Depth 3
                                        #         Child Loop BB6_167 Depth 4
                                        #       Child Loop BB6_178 Depth 3
                                        #       Child Loop BB6_180 Depth 3
                                        #     Child Loop BB6_187 Depth 2
                                        #     Child Loop BB6_190 Depth 2
	incl	%ebp
	.p2align	4, 0x90
LBB6_142:                               # %c57
                                        #   Parent Loop BB6_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, -1(%esi,%ebp)
	leal	1(%ebp), %ebp
	jne	LBB6_142
# BB#143:                               # %e57
                                        #   in Loop: Header=BB6_141 Depth=1
	movb	4(%esi,%ebp), %al
	leal	3(%ebp), %edx
	addb	$8, %al
	movb	%al, 4(%esi,%ebp)
	je	LBB6_144
# BB#145:                               # %b58.lr.ph
                                        #   in Loop: Header=BB6_141 Depth=1
	leal	4(%ebp), %edi
	leal	(%esi,%edx), %ecx
	movl	%eax, %ebx
	shlb	$2, %bl
	movb	$6, %ah
	mulb	%ah
	addb	(%esi,%edx), %al
	addb	%bl, 2(%esi,%ebp)
	movb	%al, (%esi,%edx)
	movb	$0, (%esi,%edi)
	jmp	LBB6_146
	.p2align	4, 0x90
LBB6_144:                               # %e57.e58_crit_edge
                                        #   in Loop: Header=BB6_141 Depth=1
	movl	%edx, %ecx
	addl	%esi, %ecx
	movb	(%esi,%edx), %al
LBB6_146:                               # %e58
                                        #   in Loop: Header=BB6_141 Depth=1
	decb	%al
	movb	%al, (%ecx)
	movb	1(%esi,%ebp), %al
	testb	%al, %al
	je	LBB6_150
# BB#147:                               # %b59
                                        #   in Loop: Header=BB6_141 Depth=1
	leal	1(%ebp), %edi
	decb	%al
	movb	%al, (%esi,%edi)
	je	LBB6_150
# BB#148:                               # %b60.preheader
                                        #   in Loop: Header=BB6_141 Depth=1
	leal	2(%ebp), %ebx
	.p2align	4, 0x90
LBB6_149:                               # %b60
                                        #   Parent Loop BB6_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incb	(%esi,%ebp)
	movsbl	(%esi,%ebx), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	decb	(%esi,%edi)
	jne	LBB6_149
LBB6_150:                               # %e59
                                        #   in Loop: Header=BB6_141 Depth=1
	movb	-3(%esi,%ebp), %al
	testb	%al, %al
	je	LBB6_184
# BB#151:                               #   in Loop: Header=BB6_141 Depth=1
	leal	-3(%esi,%ebp), %ecx
	addl	$-3, %ebp
	movl	%ebp, %edi
	jmp	LBB6_153
	.p2align	4, 0x90
LBB6_171:                               # %c69.preheader
                                        #   in Loop: Header=BB6_153 Depth=2
	testb	%cl, %cl
	je	LBB6_182
# BB#172:                               # %b69
                                        #   in Loop: Header=BB6_153 Depth=2
	movl	%ecx, %edx
	decb	%dl
	movb	%dl, (%esi,%eax)
	movb	$1, (%esi,%edi)
	je	LBB6_182
# BB#173:                               # %b70.preheader
                                        #   in Loop: Header=BB6_153 Depth=2
	addb	$-2, %cl
	movzbl	%cl, %ecx
	incl	%ecx
	cmpl	$4, %ecx
	jae	LBB6_175
# BB#174:                               #   in Loop: Header=BB6_153 Depth=2
	xorl	%ebx, %ebx
	jmp	LBB6_180
LBB6_175:                               # %min.iters.checked
                                        #   in Loop: Header=BB6_153 Depth=2
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%ecx, %ebx
	andl	$508, %ebx              # imm = 0x1FC
	je	LBB6_176
# BB#177:                               # %vector.body.preheader
                                        #   in Loop: Header=BB6_153 Depth=2
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	%ebp, 20(%esp)          # 4-byte Spill
	subb	%al, %dl
	movl	$0, (%esp)              # 4-byte Folded Spill
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	%ebx, %ebp
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	$0, 4(%esp)             # 4-byte Folded Spill
	.p2align	4, 0x90
LBB6_178:                               # %vector.body
                                        #   Parent Loop BB6_141 Depth=1
                                        #     Parent Loop BB6_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%esp), %eax            # 4-byte Reload
	addb	$2, %al
	movl	%eax, (%esp)            # 4-byte Spill
	addb	$2, %bl
	addb	$2, %cl
	movl	4(%esp), %eax           # 4-byte Reload
	addb	$2, %al
	movl	%eax, 4(%esp)           # 4-byte Spill
	addl	$-4, %ebp
	jne	LBB6_178
# BB#179:                               # %middle.block
                                        #   in Loop: Header=BB6_153 Depth=2
	movl	(%esp), %eax            # 4-byte Reload
	addb	%cl, %al
	movl	4(%esp), %ecx           # 4-byte Reload
	addb	%cl, %bl
	addb	%al, %bl
	movl	12(%esp), %eax          # 4-byte Reload
	cmpl	%eax, 16(%esp)          # 4-byte Folded Reload
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	8(%esp), %eax           # 4-byte Reload
	jne	LBB6_180
	jmp	LBB6_181
LBB6_176:                               #   in Loop: Header=BB6_153 Depth=2
	xorl	%ebx, %ebx
	movl	8(%esp), %eax           # 4-byte Reload
	.p2align	4, 0x90
LBB6_180:                               # %b70
                                        #   Parent Loop BB6_141 Depth=1
                                        #     Parent Loop BB6_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addb	$2, %bl
	decb	%dl
	jne	LBB6_180
LBB6_181:                               # %e69.loopexit
                                        #   in Loop: Header=BB6_153 Depth=2
	movb	%bl, (%esi,%ebp)
	movb	%dl, (%esi,%eax)
	jmp	LBB6_182
	.p2align	4, 0x90
LBB6_153:                               # %b61
                                        #   Parent Loop BB6_141 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_154 Depth 3
                                        #       Child Loop BB6_160 Depth 3
                                        #       Child Loop BB6_165 Depth 3
                                        #         Child Loop BB6_167 Depth 4
                                        #       Child Loop BB6_178 Depth 3
                                        #       Child Loop BB6_180 Depth 3
	decb	%al
	movb	%al, (%ecx)
	movb	(%esi,%edi), %al
	jmp	LBB6_154
	.p2align	4, 0x90
LBB6_156:                               # %b63.lr.ph
                                        #   in Loop: Header=BB6_154 Depth=3
	addb	%dl, %al
	movb	%al, (%esi,%edi)
	movb	$0, (%esi,%ecx)
LBB6_154:                               # %c62.loopexit
                                        #   Parent Loop BB6_141 Depth=1
                                        #     Parent Loop BB6_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%al, %al
	je	LBB6_157
# BB#155:                               # %b62
                                        #   in Loop: Header=BB6_154 Depth=3
	movl	%edi, %ecx
	leal	1(%ecx), %edi
	movl	%eax, %edx
	decb	%dl
	movb	%dl, (%esi,%ecx)
	movzbl	1(%esi,%ecx), %eax
	jne	LBB6_156
	jmp	LBB6_154
	.p2align	4, 0x90
LBB6_157:                               # %e62
                                        #   in Loop: Header=BB6_153 Depth=2
	movsbl	5(%esi,%edi), %eax
	testl	%eax, %eax
	je	LBB6_158
# BB#159:                               # %b64
                                        #   in Loop: Header=BB6_153 Depth=2
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	addl	$4, %edi
	.p2align	4, 0x90
LBB6_160:                               # %c65
                                        #   Parent Loop BB6_141 Depth=1
                                        #     Parent Loop BB6_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, 1(%esi,%edi)
	leal	1(%edi), %edi
	jne	LBB6_160
	jmp	LBB6_161
	.p2align	4, 0x90
LBB6_158:                               #   in Loop: Header=BB6_153 Depth=2
	addl	$5, %edi
LBB6_161:                               # %e64
                                        #   in Loop: Header=BB6_153 Depth=2
	leal	-2(%edi), %ebp
	movb	-2(%esi,%edi), %al
	testb	%al, %al
	je	LBB6_163
# BB#162:                               # %b66.lr.ph
                                        #   in Loop: Header=BB6_153 Depth=2
	addb	%al, -3(%esi,%edi)
	movb	$0, (%esi,%ebp)
LBB6_163:                               # %e66
                                        #   in Loop: Header=BB6_153 Depth=2
	movb	-1(%esi,%edi), %cl
	movb	1(%esi,%edi), %dl
	leal	-1(%edi), %eax
	testb	%dl, %dl
	je	LBB6_171
# BB#164:                               # %b67.preheader
                                        #   in Loop: Header=BB6_153 Depth=2
	leal	1(%edi), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_165:                               # %b67
                                        #   Parent Loop BB6_141 Depth=1
                                        #     Parent Loop BB6_153 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_167 Depth 4
	cmpb	$-2, %cl
	je	LBB6_169
# BB#166:                               # %b68.preheader
                                        #   in Loop: Header=BB6_165 Depth=3
	movb	$-2, %dh
	subb	%cl, %dh
	.p2align	4, 0x90
LBB6_167:                               # %b68
                                        #   Parent Loop BB6_141 Depth=1
                                        #     Parent Loop BB6_153 Depth=2
                                        #       Parent Loop BB6_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incb	%bl
	addb	$2, %dh
	jne	LBB6_167
# BB#168:                               # %c68.e68_crit_edge
                                        #   in Loop: Header=BB6_165 Depth=3
	movb	%bl, (%esi,%ebp)
LBB6_169:                               # %e68
                                        #   in Loop: Header=BB6_165 Depth=3
	xorl	%ecx, %ecx
	decb	%dl
	jne	LBB6_165
# BB#170:                               # %c69.preheader.thread
                                        #   in Loop: Header=BB6_153 Depth=2
	movb	$0, (%esi,%eax)
	movl	(%esp), %eax            # 4-byte Reload
	movb	$0, (%esi,%eax)
LBB6_182:                               # %e69
                                        #   in Loop: Header=BB6_153 Depth=2
	movb	-4(%esi,%edi), %al
	leal	-5(%edi), %ebp
	testb	%al, %al
	je	LBB6_152
# BB#183:                               # %b71.lr.ph
                                        #   in Loop: Header=BB6_153 Depth=2
	leal	-4(%edi), %ecx
	addb	%al, (%esi,%ebp)
	movb	$0, (%esi,%ecx)
LBB6_152:                               # %c61.loopexit
                                        #   in Loop: Header=BB6_153 Depth=2
	leal	-8(%esi,%edi), %ecx
	movb	-8(%esi,%edi), %al
	leal	-8(%edi), %edi
	testb	%al, %al
	jne	LBB6_153
LBB6_184:                               # %e61
                                        #   in Loop: Header=BB6_141 Depth=1
	incb	-1(%esi,%ebp)
	movb	2(%esi,%ebp), %al
	movl	%eax, %ecx
	addb	$-2, %cl
	movb	%cl, 2(%esi,%ebp)
	je	LBB6_185
# BB#186:                               # %b72.preheader
                                        #   in Loop: Header=BB6_141 Depth=1
	leal	2(%ebp), %ecx
	leal	1(%ebp), %edx
	movb	$2, %bl
	subb	%al, %bl
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_187:                               # %b72
                                        #   Parent Loop BB6_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incb	%al
	addb	$3, %bl
	jne	LBB6_187
# BB#188:                               # %c72.e72_crit_edge
                                        #   in Loop: Header=BB6_141 Depth=1
	movb	%al, (%esi,%edx)
	movb	$0, (%esi,%ecx)
	jmp	LBB6_189
	.p2align	4, 0x90
LBB6_185:                               #   in Loop: Header=BB6_141 Depth=1
	xorl	%eax, %eax
LBB6_189:                               # %e72
                                        #   in Loop: Header=BB6_141 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, 3(%esi,%ebp)
	leal	3(%ebp), %eax
	je	LBB6_191
	.p2align	4, 0x90
LBB6_190:                               # %e74
                                        #   Parent Loop BB6_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%esi,%eax)
	cmpb	$0, -2(%esi,%eax)
	leal	-2(%eax), %eax
	jne	LBB6_190
LBB6_191:                               # %e73
                                        #   in Loop: Header=BB6_141 Depth=1
	cmpb	$0, -1(%esi,%eax)
	leal	-1(%eax), %ebp
	jne	LBB6_141
LBB6_192:                               # %e75
	pushl	%esi
	calll	_free
	addl	$4, %esp
	xorl	%eax, %eax
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl


