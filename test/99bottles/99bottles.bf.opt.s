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
# BB#0:                                 # %c2.preheader.lr.ph
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	$1
	pushl	$30000                  # imm = 0x7530
	calll	_calloc
	addl	$8, %esp
	movl	%eax, %esi
	movw	$99, (%esi)
	movb	$99, %bh
	xorl	%eax, %eax
	jmp	LBB6_3
	.p2align	4, 0x90
LBB6_2:                                 # %c1.loopexit.c2.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	1(%esi), %al
LBB6_3:                                 # %c2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #       Child Loop BB6_12 Depth 3
                                        #     Child Loop BB6_24 Depth 2
                                        #     Child Loop BB6_45 Depth 2
                                        #     Child Loop BB6_58 Depth 2
                                        #     Child Loop BB6_274 Depth 2
                                        #     Child Loop BB6_107 Depth 2
                                        #     Child Loop BB6_275 Depth 2
                                        #     Child Loop BB6_181 Depth 2
                                        #       Child Loop BB6_183 Depth 3
                                        #     Child Loop BB6_195 Depth 2
                                        #     Child Loop BB6_216 Depth 2
                                        #     Child Loop BB6_228 Depth 2
                                        #     Child Loop BB6_276 Depth 2
	testb	%al, %al
	je	LBB6_5
# BB#4:                                 # %b2.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 1(%esi)
LBB6_5:                                 # %c3.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 2(%esi)
	je	LBB6_7
# BB#6:                                 # %b3.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 2(%esi)
LBB6_7:                                 # %c6.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%bh, 1(%esi)
	movb	%bh, (%esi)
	movb	$0, 2(%esi)
	cmpb	$0, 5(%esi)
	je	LBB6_9
# BB#8:                                 # %b6.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 5(%esi)
LBB6_9:                                 # %b7.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, 2(%esi)
	movb	4(%esi), %al
	movb	$9, %dl
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB6_10:                                # %b7
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_12 Depth 3
	movb	%al, %cl
	incb	%cl
	testb	%dl, %dl
	je	LBB6_16
# BB#11:                                #   in Loop: Header=BB6_10 Depth=2
	movb	%cl, %al
	movb	%dl, %bl
	.p2align	4, 0x90
LBB6_12:                                # %b8
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%al, %al
	movl	$0, %eax
	je	LBB6_14
# BB#13:                                # %b8
                                        #   in Loop: Header=BB6_12 Depth=3
	movl	$0, %ecx
LBB6_14:                                # %b8
                                        #   in Loop: Header=BB6_12 Depth=3
	decb	%bl
	jne	LBB6_12
# BB#15:                                # %c10.preheader
                                        #   in Loop: Header=BB6_10 Depth=2
	movb	$0, 3(%esi)
	jmp	LBB6_17
	.p2align	4, 0x90
LBB6_16:                                #   in Loop: Header=BB6_10 Depth=2
	xorl	%edx, %edx
LBB6_17:                                # %c11.preheader
                                        #   in Loop: Header=BB6_10 Depth=2
	testb	%cl, %cl
	je	LBB6_19
# BB#18:                                # %b11.lr.ph
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	%ecx, %eax
	movb	$10, %ah
	mulb	%ah
	addb	%al, %dl
	movl	%edi, %eax
	addb	%cl, %al
	movl	%eax, %edi
	movb	%al, 5(%esi)
	xorl	%ecx, %ecx
LBB6_19:                                # %e11
                                        #   in Loop: Header=BB6_10 Depth=2
	movb	%dl, %bl
	decb	%dl
	xorl	%eax, %eax
	decb	%bh
	jne	LBB6_10
# BB#20:                                # %e7
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%cl, 4(%esi)
	movb	%dl, 2(%esi)
	movb	$9, 1(%esi)
	movb	$9, %al
	testb	%dl, %dl
	je	LBB6_22
# BB#21:                                # %b12.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$10, %al
	subb	%bl, %al
	movb	%al, 1(%esi)
	movb	$0, 2(%esi)
LBB6_22:                                # %e12
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	4(%esi), %cl
	incb	%cl
	movb	%cl, 4(%esi)
	movl	%edi, %edx
	testb	%dl, %dl
	je	LBB6_277
# BB#23:                                #   in Loop: Header=BB6_3 Depth=1
	movb	%cl, %bl
                                        # kill: %DL<def> %DL<kill> %EDX<kill>
	.p2align	4, 0x90
LBB6_24:                                # %c14.preheader
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%bl, %bl
	je	LBB6_26
# BB#25:                                # %b14.preheader
                                        #   in Loop: Header=BB6_24 Depth=2
	movb	$0, 4(%esi)
	xorl	%ecx, %ecx
LBB6_26:                                # %e14
                                        #   in Loop: Header=BB6_24 Depth=2
	xorl	%ebx, %ebx
	decb	%dl
	jne	LBB6_24
# BB#27:                                # %c13.c15.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%edi, %edx
	movb	%dl, 2(%esi)
	movb	$0, 5(%esi)
	jmp	LBB6_28
	.p2align	4, 0x90
LBB6_277:                               #   in Loop: Header=BB6_3 Depth=1
	xorl	%edx, %edx
LBB6_28:                                # %c15.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 6(%esi)
	je	LBB6_30
# BB#29:                                # %b15.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 6(%esi)
LBB6_30:                                # %e15
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$1, 6(%esi)
	movb	$1, %bl
	testb	%cl, %cl
	je	LBB6_31
# BB#32:                                # %b16.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	subb	%cl, %bl
	movb	%cl, 5(%esi)
	movb	%bl, 6(%esi)
	movb	$0, 4(%esi)
	jmp	LBB6_33
	.p2align	4, 0x90
LBB6_31:                                #   in Loop: Header=BB6_3 Depth=1
	xorl	%ecx, %ecx
LBB6_33:                                # %c17.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%al, %al
	je	LBB6_34
# BB#35:                                # %b18.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%al, 3(%esi)
	movb	%al, 1(%esi)
	movb	$0, 4(%esi)
	jmp	LBB6_36
	.p2align	4, 0x90
LBB6_34:                                #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
LBB6_36:                                # %c19.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%edx, %edi
	testb	%cl, %cl
	je	LBB6_37
# BB#38:                                # %b19.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%cl, 4(%esi)
	movb	$0, 5(%esi)
	jmp	LBB6_39
	.p2align	4, 0x90
LBB6_37:                                #   in Loop: Header=BB6_3 Depth=1
	xorl	%ecx, %ecx
LBB6_39:                                # %e19
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %edx
	decb	%dl
	movb	%dl, 3(%esi)
	je	LBB6_43
# BB#40:                                # %c21.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%cl, %cl
	je	LBB6_42
# BB#41:                                # %b21.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 4(%esi)
LBB6_42:                                # %e20.thread
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
	movb	$1, 5(%esi)
	jmp	LBB6_49
	.p2align	4, 0x90
LBB6_43:                                # %e20
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$1, 5(%esi)
	testb	%cl, %cl
	movl	%edi, %edx
	je	LBB6_50
# BB#44:                                # %c24.preheader.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%edx, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB6_45:                                # %c24.preheader
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %dl
	jne	LBB6_47
# BB#46:                                # %b24.preheader
                                        #   in Loop: Header=BB6_45 Depth=2
	movb	$0, 5(%esi)
LBB6_47:                                # %e24
                                        #   in Loop: Header=BB6_45 Depth=2
	decb	%cl
	movb	$1, %dl
	jne	LBB6_45
# BB#48:                                # %c23.e23_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 4(%esi)
LBB6_49:                                # %c26.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%edi, %edx
LBB6_50:                                # %c26.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$48, %dl
	addb	$48, %al
	movb	%dl, 2(%esi)
	movb	%al, 1(%esi)
	movb	$0, 3(%esi)
	testb	%bl, %bl
	je	LBB6_51
# BB#52:                                # %b26.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %cl
	addb	%bl, %cl
	addb	%bl, 7(%esi)
	movb	%cl, 8(%esi)
	movb	$0, 6(%esi)
	jmp	LBB6_53
	.p2align	4, 0x90
LBB6_51:                                # %c26.preheader.c27.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %cl
LBB6_53:                                # %c27.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%cl, %cl
	je	LBB6_55
# BB#54:                                # %b27.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%cl, 6(%esi)
	movb	$0, 8(%esi)
LBB6_55:                                # %c28.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 7(%esi)
	je	LBB6_60
# BB#56:                                # %b28.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%dl, %eax
	pushl	%eax
	jmp	LBB6_58
	.p2align	4, 0x90
LBB6_57:                                # %b28.b28_crit_edge
                                        #   in Loop: Header=BB6_58 Depth=2
	movsbl	2(%esi), %eax
	pushl	%eax
LBB6_58:                                # %b28.b28_crit_edge
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	calll	_putchar
	addl	$4, %esp
	decb	7(%esi)
	jne	LBB6_57
# BB#59:                                # %e28.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	1(%esi), %al
LBB6_60:                                # %e28
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, 3(%esi)
	je	LBB6_62
# BB#61:                                # %b29.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
LBB6_62:                                # %c30.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 4(%esi)
	je	LBB6_64
# BB#63:                                # %b30.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 4(%esi)
LBB6_64:                                # %e31
                                        #   in Loop: Header=BB6_3 Depth=1
	movw	$32, 3(%esi)
	pushl	$32
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %cl
	movl	%ecx, %eax
	addb	$4, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %al
	addb	$2, %al
	addb	$4, %cl
	movb	%al, 3(%esi)
	je	LBB6_66
# BB#65:                                # %b32.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	shlb	$3, %cl
	addb	%cl, %al
	movb	%al, 3(%esi)
	movb	$0, 4(%esi)
LBB6_66:                                # %e32
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$5, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_68
# BB#67:                                # %b33.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_68:                                # %e33
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$5, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-8, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-7, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	5(%esi), %cl
	testb	%cl, %cl
	je	LBB6_69
# BB#70:                                # %b34.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %al
	addb	%cl, %al
	addb	%cl, 7(%esi)
	movb	%al, 8(%esi)
	movb	$0, 5(%esi)
	jmp	LBB6_71
	.p2align	4, 0x90
LBB6_69:                                # %e33.c35.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %al
LBB6_71:                                # %c35.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%al, %al
	je	LBB6_73
# BB#72:                                # %b35.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%al, 5(%esi)
	movb	$0, 8(%esi)
LBB6_73:                                # %c36.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 7(%esi)
	je	LBB6_74
	.p2align	4, 0x90
LBB6_274:                               # %b36
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	3(%esi), %eax
	addb	$14, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	decb	7(%esi)
	jne	LBB6_274
LBB6_74:                                # %c37.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 3(%esi)
	je	LBB6_76
# BB#75:                                # %b37.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
LBB6_76:                                # %e37
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	4(%esi), %al
	addb	$4, %al
	movb	%al, 4(%esi)
	je	LBB6_77
# BB#78:                                # %b38.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	shlb	$3, %al
	movb	%al, 3(%esi)
	movb	$0, 4(%esi)
	jmp	LBB6_79
	.p2align	4, 0x90
LBB6_77:                                #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
LBB6_79:                                # %e38
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$9, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_81
# BB#80:                                # %b39.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_81:                                # %e39
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$-2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-9, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_83
# BB#82:                                # %b40.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_83:                                # %e40
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$6, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_85
# BB#84:                                # %b41.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_85:                                # %e41
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$13, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$8, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$-2, %cl
	addb	$8, %al
	movb	%cl, 3(%esi)
	je	LBB6_87
# BB#86:                                # %b42.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_87:                                # %e42
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$9, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_89
# BB#88:                                # %b43.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_89:                                # %e43
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$-2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	decb	%al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_91
# BB#90:                                # %b44.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_91:                                # %e44
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$8, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$4, %cl
	addb	$8, %al
	movb	%cl, 3(%esi)
	je	LBB6_93
# BB#92:                                # %b45.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_93:                                # %e45
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-12, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_95
# BB#94:                                # %b46.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_95:                                # %e46
                                        #   in Loop: Header=BB6_3 Depth=1
	incb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_97
# BB#96:                                # %b47.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_97:                                # %e47
                                        #   in Loop: Header=BB6_3 Depth=1
	decb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$2, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_99
# BB#98:                                # %b48.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_99:                                # %e48
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$11, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$9, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$-5, %cl
	addb	$9, %al
	movb	%cl, 3(%esi)
	je	LBB6_101
# BB#100:                               # %b49.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_101:                               # %e49
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	6(%esi), %cl
	testb	%cl, %cl
	je	LBB6_102
# BB#103:                               # %b50.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %al
	addb	%cl, %al
	addb	%cl, 7(%esi)
	movb	%al, 8(%esi)
	movb	$0, 6(%esi)
	jmp	LBB6_104
	.p2align	4, 0x90
LBB6_102:                               # %e49.c51.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %al
LBB6_104:                               # %c51.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%al, %al
	je	LBB6_106
# BB#105:                               # %b51.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%al, 6(%esi)
	movb	$0, 8(%esi)
LBB6_106:                               # %c52.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 7(%esi)
	je	LBB6_108
	.p2align	4, 0x90
LBB6_107:                               # %b52
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	2(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	decb	7(%esi)
	jne	LBB6_107
LBB6_108:                               # %e52
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	1(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$4, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_110
# BB#109:                               # %b53.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$6, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_110:                               # %e53
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$-2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %cl
	movl	%ecx, %eax
	addb	$4, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %al
	addb	$2, %al
	addb	$4, %cl
	movb	%al, 3(%esi)
	je	LBB6_112
# BB#111:                               # %b54.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	shlb	$3, %cl
	addb	%cl, %al
	movb	%al, 3(%esi)
	movb	$0, 4(%esi)
LBB6_112:                               # %e54
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$5, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_114
# BB#113:                               # %b55.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_114:                               # %e55
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$5, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-8, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-7, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	5(%esi), %cl
	testb	%cl, %cl
	je	LBB6_115
# BB#116:                               # %b56.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %al
	addb	%cl, %al
	addb	%cl, 7(%esi)
	movb	%al, 8(%esi)
	movb	$0, 5(%esi)
	jmp	LBB6_117
	.p2align	4, 0x90
LBB6_115:                               # %e55.c57.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %al
LBB6_117:                               # %c57.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%al, %al
	je	LBB6_119
# BB#118:                               # %b57.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%al, 5(%esi)
	movb	$0, 8(%esi)
LBB6_119:                               # %c58.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 7(%esi)
	je	LBB6_120
	.p2align	4, 0x90
LBB6_275:                               # %b58
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	3(%esi), %eax
	addb	$14, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	decb	7(%esi)
	jne	LBB6_275
LBB6_120:                               # %c59.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 3(%esi)
	je	LBB6_122
# BB#121:                               # %b59.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
LBB6_122:                               # %e59
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	4(%esi), %al
	addb	$4, %al
	movb	%al, 4(%esi)
	je	LBB6_123
# BB#124:                               # %b60.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	shlb	$3, %al
	movb	%al, 3(%esi)
	movb	$0, 4(%esi)
	jmp	LBB6_125
	.p2align	4, 0x90
LBB6_123:                               #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
LBB6_125:                               # %e60
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$9, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_127
# BB#126:                               # %b61.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_127:                               # %e61
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$-2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-9, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_129
# BB#128:                               # %b62.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_129:                               # %e62
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$6, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_131
# BB#130:                               # %b63.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_131:                               # %e63
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$13, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$10, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	decb	%cl
	addb	$10, %al
	movb	%cl, 3(%esi)
	je	LBB6_133
# BB#132:                               # %b64.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_133:                               # %e64
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$7, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$4, %cl
	addb	$7, %al
	movb	%cl, 3(%esi)
	je	LBB6_135
# BB#134:                               # %b65.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_135:                               # %e65
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$13, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$10, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-6, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_137
# BB#136:                               # %b66.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_137:                               # %e66
                                        #   in Loop: Header=BB6_3 Depth=1
	incb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_139
# BB#138:                               # %b67.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_139:                               # %e67
                                        #   in Loop: Header=BB6_3 Depth=1
	decb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	decb	%al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-9, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_141
# BB#140:                               # %b68.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_141:                               # %e68
                                        #   in Loop: Header=BB6_3 Depth=1
	incb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_143
# BB#142:                               # %b69.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_143:                               # %e69
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$-2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$11, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$8, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-9, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_145
# BB#144:                               # %b70.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_145:                               # %e70
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$5, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_147
# BB#146:                               # %b71.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$13, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_147:                               # %e71
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$13, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-10, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_149
# BB#148:                               # %b72.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_149:                               # %e72
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_151
# BB#150:                               # %b73.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_151:                               # %e73
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$3, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_153
# BB#152:                               # %b74.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-5, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_153:                               # %e74
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$3, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_155
# BB#154:                               # %b75.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$6, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_155:                               # %e75
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$9, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$-2, %cl
	addb	$9, %al
	movb	%cl, 3(%esi)
	je	LBB6_157
# BB#156:                               # %b76.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_157:                               # %e76
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$7, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$3, %cl
	addb	$7, %al
	movb	%cl, 3(%esi)
	je	LBB6_159
# BB#158:                               # %b77.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_159:                               # %e77
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$11, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_161
# BB#160:                               # %b78.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_161:                               # %e78
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$4, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$5, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_163
# BB#162:                               # %b79.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$13, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_163:                               # %e79
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$3, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_165
# BB#164:                               # %b80.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$6, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_165:                               # %e80
                                        #   in Loop: Header=BB6_3 Depth=1
	decb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$6, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-7, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-10, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_167
# BB#166:                               # %b81.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_167:                               # %e81
                                        #   in Loop: Header=BB6_3 Depth=1
	incb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, 3(%esi)
	je	LBB6_169
# BB#168:                               # %b82.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
LBB6_169:                               # %e82
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	(%esi), %al
	decb	%al
	movb	%al, (%esi)
	cmpb	$0, 1(%esi)
	je	LBB6_171
# BB#170:                               # %b83.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 1(%esi)
LBB6_171:                               # %c84.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 2(%esi)
	je	LBB6_173
# BB#172:                               # %b84.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 2(%esi)
LBB6_173:                               # %c85.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%al, %al
	je	LBB6_174
# BB#175:                               # %b86.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%al, 1(%esi)
	movb	%al, (%esi)
	movb	$0, 2(%esi)
	jmp	LBB6_176
	.p2align	4, 0x90
LBB6_174:                               #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
LBB6_176:                               # %c87.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 5(%esi)
	je	LBB6_178
# BB#177:                               # %b87.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 5(%esi)
LBB6_178:                               # %e87
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, 2(%esi)
	testb	%al, %al
	je	LBB6_179
# BB#180:                               # %b88.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%eax, %ebp
	movb	4(%esi), %al
	movb	$9, %dl
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB6_181:                               # %b88
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_183 Depth 3
	movb	%al, %cl
	incb	%cl
	testb	%dl, %dl
	je	LBB6_187
# BB#182:                               #   in Loop: Header=BB6_181 Depth=2
	movb	%cl, %al
	movl	%edx, %ebx
	.p2align	4, 0x90
LBB6_183:                               # %b89
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%al, %al
	movl	$0, %eax
	je	LBB6_185
# BB#184:                               # %b89
                                        #   in Loop: Header=BB6_183 Depth=3
	movl	$0, %ecx
LBB6_185:                               # %b89
                                        #   in Loop: Header=BB6_183 Depth=3
	decb	%bl
	jne	LBB6_183
# BB#186:                               # %c91.preheader
                                        #   in Loop: Header=BB6_181 Depth=2
	movb	$0, 3(%esi)
	jmp	LBB6_188
	.p2align	4, 0x90
LBB6_187:                               #   in Loop: Header=BB6_181 Depth=2
	xorl	%edx, %edx
LBB6_188:                               # %c92.preheader
                                        #   in Loop: Header=BB6_181 Depth=2
	testb	%cl, %cl
	je	LBB6_190
# BB#189:                               # %b92.lr.ph
                                        #   in Loop: Header=BB6_181 Depth=2
	movl	%ecx, %eax
	movb	$10, %ah
	mulb	%ah
	addb	%al, %dl
	movl	%edi, %eax
	addb	%cl, %al
	movl	%eax, %edi
	movb	%al, 5(%esi)
	xorl	%ecx, %ecx
LBB6_190:                               # %e92
                                        #   in Loop: Header=BB6_181 Depth=2
	decb	%dl
	xorl	%eax, %eax
	movl	%ebp, %ebx
	decb	%bl
	movl	%ebx, %ebp
	jne	LBB6_181
# BB#191:                               # %e88
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%cl, 4(%esi)
	movb	%dl, 2(%esi)
	movb	$9, 1(%esi)
	movb	$9, %al
	testb	%dl, %dl
	jne	LBB6_192
	jmp	LBB6_193
	.p2align	4, 0x90
LBB6_179:                               # %e88.thread
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, 1(%esi)
	movb	$9, %dl
	xorl	%edi, %edi
LBB6_192:                               # %b93.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %al
	subb	%dl, %al
	movb	%al, 1(%esi)
	movb	$0, 2(%esi)
LBB6_193:                               # %e93
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	4(%esi), %cl
	incb	%cl
	movb	%cl, 4(%esi)
	movl	%edi, %edx
	testb	%dl, %dl
	je	LBB6_278
# BB#194:                               #   in Loop: Header=BB6_3 Depth=1
	movb	%cl, %bl
                                        # kill: %DL<def> %DL<kill> %EDX<kill>
	.p2align	4, 0x90
LBB6_195:                               # %c95.preheader
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%bl, %bl
	je	LBB6_197
# BB#196:                               # %b95.preheader
                                        #   in Loop: Header=BB6_195 Depth=2
	movb	$0, 4(%esi)
	xorl	%ecx, %ecx
LBB6_197:                               # %e95
                                        #   in Loop: Header=BB6_195 Depth=2
	xorl	%ebx, %ebx
	decb	%dl
	jne	LBB6_195
# BB#198:                               # %c94.c96.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%edi, %edx
	movb	%dl, 2(%esi)
	movb	$0, 5(%esi)
	jmp	LBB6_199
	.p2align	4, 0x90
LBB6_278:                               #   in Loop: Header=BB6_3 Depth=1
	xorl	%edx, %edx
LBB6_199:                               # %c96.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 6(%esi)
	je	LBB6_201
# BB#200:                               # %b96.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 6(%esi)
LBB6_201:                               # %e96
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$1, 6(%esi)
	movl	%edx, %edi
	movb	$1, %dl
	testb	%cl, %cl
	je	LBB6_202
# BB#203:                               # %b97.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	subb	%cl, %dl
	movb	%cl, 5(%esi)
	movb	%dl, 6(%esi)
	movb	$0, 4(%esi)
	jmp	LBB6_204
	.p2align	4, 0x90
LBB6_202:                               #   in Loop: Header=BB6_3 Depth=1
	xorl	%ecx, %ecx
LBB6_204:                               # %c98.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%al, %al
	je	LBB6_205
# BB#206:                               # %b99.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%al, 3(%esi)
	movb	%al, 1(%esi)
	movb	$0, 4(%esi)
	jmp	LBB6_207
	.p2align	4, 0x90
LBB6_205:                               #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
LBB6_207:                               # %c100.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%cl, %cl
	je	LBB6_208
# BB#209:                               # %b100.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%cl, 4(%esi)
	movb	$0, 5(%esi)
	jmp	LBB6_210
	.p2align	4, 0x90
LBB6_208:                               #   in Loop: Header=BB6_3 Depth=1
	xorl	%ecx, %ecx
LBB6_210:                               # %e100
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%al, %dh
	decb	%dh
	movb	%dh, 3(%esi)
	je	LBB6_214
# BB#211:                               # %c102.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%cl, %cl
	je	LBB6_213
# BB#212:                               # %b102.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 4(%esi)
LBB6_213:                               # %e101.thread
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
	movb	$1, 5(%esi)
	jmp	LBB6_220
	.p2align	4, 0x90
LBB6_214:                               # %e101
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$1, 5(%esi)
	testb	%cl, %cl
	je	LBB6_220
# BB#215:                               # %c105.preheader.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_216:                               # %c105.preheader
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %bl
	jne	LBB6_218
# BB#217:                               # %b105.preheader
                                        #   in Loop: Header=BB6_216 Depth=2
	movb	$0, 5(%esi)
LBB6_218:                               # %e105
                                        #   in Loop: Header=BB6_216 Depth=2
	decb	%cl
	movb	$1, %bl
	jne	LBB6_216
# BB#219:                               # %c104.e104_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 4(%esi)
LBB6_220:                               # %c107.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%edi, %ecx
	addb	$48, %cl
	addb	$48, %al
	movl	%ecx, %edi
	movb	%cl, 2(%esi)
	movb	%al, 1(%esi)
	movb	$0, 3(%esi)
	testb	%dl, %dl
	je	LBB6_221
# BB#222:                               # %b107.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %cl
	addb	%dl, %cl
	addb	%dl, 7(%esi)
	movb	%cl, 8(%esi)
	movb	$0, 6(%esi)
	jmp	LBB6_223
	.p2align	4, 0x90
LBB6_221:                               # %c107.preheader.c108.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %cl
LBB6_223:                               # %c108.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%edi, %edx
	testb	%cl, %cl
	je	LBB6_225
# BB#224:                               # %b108.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%cl, 6(%esi)
	movb	$0, 8(%esi)
LBB6_225:                               # %c109.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 7(%esi)
	je	LBB6_230
# BB#226:                               # %b109.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%dl, %eax
	pushl	%eax
	jmp	LBB6_228
	.p2align	4, 0x90
LBB6_227:                               # %b109.b109_crit_edge
                                        #   in Loop: Header=BB6_228 Depth=2
	movsbl	2(%esi), %eax
	pushl	%eax
LBB6_228:                               # %b109.b109_crit_edge
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	calll	_putchar
	addl	$4, %esp
	decb	7(%esi)
	jne	LBB6_227
# BB#229:                               # %e109.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	1(%esi), %al
LBB6_230:                               # %e109
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, 3(%esi)
	je	LBB6_232
# BB#231:                               # %b110.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
LBB6_232:                               # %c111.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 4(%esi)
	je	LBB6_234
# BB#233:                               # %b111.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 4(%esi)
LBB6_234:                               # %e112
                                        #   in Loop: Header=BB6_3 Depth=1
	movw	$32, 3(%esi)
	pushl	$32
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %cl
	movl	%ecx, %eax
	addb	$4, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %al
	addb	$2, %al
	addb	$4, %cl
	movb	%al, 3(%esi)
	je	LBB6_236
# BB#235:                               # %b113.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	shlb	$3, %cl
	addb	%cl, %al
	movb	%al, 3(%esi)
	movb	$0, 4(%esi)
LBB6_236:                               # %e113
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$5, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_238
# BB#237:                               # %b114.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_238:                               # %e114
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$5, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-8, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-7, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	5(%esi), %cl
	testb	%cl, %cl
	je	LBB6_239
# BB#240:                               # %b115.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %al
	addb	%cl, %al
	addb	%cl, 7(%esi)
	movb	%al, 8(%esi)
	movb	$0, 5(%esi)
	jmp	LBB6_241
	.p2align	4, 0x90
LBB6_239:                               # %e114.c116.preheader_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	8(%esi), %al
LBB6_241:                               # %c116.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	testb	%al, %al
	je	LBB6_243
# BB#242:                               # %b116.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	%al, 5(%esi)
	movb	$0, 8(%esi)
LBB6_243:                               # %c117.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 7(%esi)
	je	LBB6_244
	.p2align	4, 0x90
LBB6_276:                               # %b117
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	3(%esi), %eax
	addb	$14, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	decb	7(%esi)
	jne	LBB6_276
LBB6_244:                               # %c118.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpb	$0, 3(%esi)
	je	LBB6_246
# BB#245:                               # %b118.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
LBB6_246:                               # %e118
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	4(%esi), %al
	addb	$4, %al
	movb	%al, 4(%esi)
	je	LBB6_247
# BB#248:                               # %b119.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	shlb	$3, %al
	movb	%al, 3(%esi)
	movb	$0, 4(%esi)
	jmp	LBB6_249
	.p2align	4, 0x90
LBB6_247:                               #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
LBB6_249:                               # %e119
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$9, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_251
# BB#250:                               # %b120.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_251:                               # %e120
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$-2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-9, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_253
# BB#252:                               # %b121.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_253:                               # %e121
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$6, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_255
# BB#254:                               # %b122.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_255:                               # %e122
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$13, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$8, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$-2, %cl
	addb	$8, %al
	movb	%cl, 3(%esi)
	je	LBB6_257
# BB#256:                               # %b123.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_257:                               # %e123
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$9, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_259
# BB#258:                               # %b124.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$9, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_259:                               # %e124
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$-2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	decb	%al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_261
# BB#260:                               # %b125.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_261:                               # %e125
                                        #   in Loop: Header=BB6_3 Depth=1
	addb	$2, %cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$8, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$4, %cl
	addb	$8, %al
	movb	%cl, 3(%esi)
	je	LBB6_263
# BB#262:                               # %b126.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_263:                               # %e126
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-12, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$7, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_265
# BB#264:                               # %b127.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_265:                               # %e127
                                        #   in Loop: Header=BB6_3 Depth=1
	incb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$8, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_267
# BB#266:                               # %b128.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_267:                               # %e128
                                        #   in Loop: Header=BB6_3 Depth=1
	decb	%cl
	movb	%cl, 3(%esi)
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	addb	$2, %al
	movb	%al, 4(%esi)
	movb	3(%esi), %cl
	je	LBB6_269
# BB#268:                               # %b129.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-11, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_269:                               # %e129
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$11, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movsbl	3(%esi), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	4(%esi), %al
	movl	%eax, %ecx
	addb	$9, %cl
	movb	%cl, 4(%esi)
	movb	3(%esi), %cl
	addb	$-5, %cl
	addb	$9, %al
	movb	%cl, 3(%esi)
	je	LBB6_271
# BB#270:                               # %b130.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$-10, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, 3(%esi)
	movb	$0, 4(%esi)
LBB6_271:                               # %e130
                                        #   in Loop: Header=BB6_3 Depth=1
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	3(%esi), %al
	addb	$-3, %al
	movb	%al, 3(%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, 3(%esi)
	je	LBB6_1
# BB#272:                               # %b131.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	$0, 3(%esi)
LBB6_1:                                 # %c1.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	movb	(%esi), %bh
	testb	%bh, %bh
	jne	LBB6_2
# BB#273:                               # %e1
	pushl	%esi
	calll	_free
	addl	$4, %esp
	xorl	%eax, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl


