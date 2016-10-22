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
# BB#0:                                 # %b2.preheader
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$24, %esp
	pushl	$1
	pushl	$30000                  # imm = 0x7530
	calll	_calloc
	addl	$8, %esp
	movl	%eax, %ebp
	movb	$0, 2(%ebp)
	movw	$353, (%ebp)            # imm = 0x161
	movl	$1, %edi
	movl	%ebp, 12(%esp)          # 4-byte Spill
	.p2align	4, 0x90
LBB6_1:                                 # %b2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #     Child Loop BB6_10 Depth 2
                                        #     Child Loop BB6_16 Depth 2
                                        #     Child Loop BB6_468 Depth 2
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_32 Depth 2
                                        #       Child Loop BB6_55 Depth 3
                                        #         Child Loop BB6_61 Depth 4
                                        #         Child Loop BB6_65 Depth 4
                                        #         Child Loop BB6_76 Depth 4
                                        #           Child Loop BB6_82 Depth 5
                                        #           Child Loop BB6_84 Depth 5
                                        #         Child Loop BB6_87 Depth 4
                                        #         Child Loop BB6_102 Depth 4
                                        #         Child Loop BB6_104 Depth 4
                                        #     Child Loop BB6_41 Depth 2
                                        #     Child Loop BB6_45 Depth 2
                                        #     Child Loop BB6_48 Depth 2
                                        #     Child Loop BB6_116 Depth 2
                                        #       Child Loop BB6_120 Depth 3
                                        #       Child Loop BB6_128 Depth 3
                                        #       Child Loop BB6_134 Depth 3
                                        #       Child Loop BB6_141 Depth 3
                                        #       Child Loop BB6_147 Depth 3
                                        #       Child Loop BB6_151 Depth 3
                                        #       Child Loop BB6_158 Depth 3
                                        #         Child Loop BB6_166 Depth 4
                                        #         Child Loop BB6_168 Depth 4
                                        #       Child Loop BB6_174 Depth 3
                                        #     Child Loop BB6_179 Depth 2
                                        #       Child Loop BB6_183 Depth 3
                                        #         Child Loop BB6_188 Depth 4
                                        #         Child Loop BB6_197 Depth 4
                                        #           Child Loop BB6_205 Depth 5
                                        #           Child Loop BB6_207 Depth 5
                                        #         Child Loop BB6_210 Depth 4
                                        #         Child Loop BB6_219 Depth 4
                                        #         Child Loop BB6_223 Depth 4
                                        #         Child Loop BB6_229 Depth 4
                                        #         Child Loop BB6_243 Depth 4
                                        #           Child Loop BB6_251 Depth 5
                                        #           Child Loop BB6_248 Depth 5
                                        #           Child Loop BB6_258 Depth 5
                                        #           Child Loop BB6_260 Depth 5
                                        #         Child Loop BB6_238 Depth 4
                                        #       Child Loop BB6_265 Depth 3
                                        #         Child Loop BB6_266 Depth 4
                                        #           Child Loop BB6_270 Depth 5
                                        #           Child Loop BB6_275 Depth 5
                                        #           Child Loop BB6_279 Depth 5
                                        #           Child Loop BB6_284 Depth 5
                                        #           Child Loop BB6_291 Depth 5
                                        #           Child Loop BB6_312 Depth 5
                                        #             Child Loop BB6_320 Depth 6
                                        #             Child Loop BB6_322 Depth 6
                                        #           Child Loop BB6_300 Depth 5
                                        #           Child Loop BB6_306 Depth 5
                                        #           Child Loop BB6_325 Depth 5
                                        #           Child Loop BB6_336 Depth 5
                                        #           Child Loop BB6_357 Depth 5
                                        #             Child Loop BB6_365 Depth 6
                                        #             Child Loop BB6_367 Depth 6
                                        #           Child Loop BB6_345 Depth 5
                                        #           Child Loop BB6_351 Depth 5
                                        #           Child Loop BB6_370 Depth 5
                                        #           Child Loop BB6_383 Depth 5
                                        #             Child Loop BB6_392 Depth 6
                                        #             Child Loop BB6_394 Depth 6
                                        #           Child Loop BB6_401 Depth 5
                                        #           Child Loop BB6_407 Depth 5
                                        #           Child Loop BB6_413 Depth 5
                                        #           Child Loop BB6_428 Depth 5
                                        #             Child Loop BB6_438 Depth 6
                                        #             Child Loop BB6_434 Depth 6
                                        #             Child Loop BB6_447 Depth 6
                                        #             Child Loop BB6_449 Depth 6
                                        #           Child Loop BB6_455 Depth 5
	leal	-1(%edi), %edx
	movb	-1(%ebp,%edi), %cl
	movb	3(%ebp,%edi), %al
	leal	3(%edi), %esi
	testb	%cl, %cl
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	%edx, 16(%esp)          # 4-byte Spill
	je	LBB6_3
# BB#2:                                 # %b3.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addb	%cl, %al
	movb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%edx)
LBB6_3:                                 # %c4.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	2(%edi), %esi
	testb	%al, %al
	movl	%esi, (%esp)            # 4-byte Spill
	je	LBB6_7
# BB#4:                                 # %b4.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	5(%edi), %ecx
	movb	5(%ebp,%edi), %dl
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_5:                                 # %b4
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incb	%bl
	movb	%al, %ah
	subb	%bl, %ah
	jne	LBB6_5
# BB#6:                                 # %e4.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	16(%esp), %esi          # 4-byte Reload
	movb	%bl, (%ebp,%esi)
	addb	%bl, %dl
	movb	%dl, (%ebp,%ecx)
	movl	8(%esp), %ecx           # 4-byte Reload
	movb	%ah, (%ebp,%ecx)
	movl	(%esp), %esi            # 4-byte Reload
LBB6_7:                                 # %e4
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	(%ebp,%esi), %al
	addb	$4, %al
	movb	%al, (%ebp,%esi)
	movl	8(%esp), %eax           # 4-byte Reload
	movb	(%ebp,%eax), %al
	je	LBB6_8
# BB#9:                                 # %b5.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	(%ebp,%esi), %cl
	.p2align	4, 0x90
LBB6_10:                                # %b5
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addb	$8, %al
	decb	%cl
	jne	LBB6_10
# BB#11:                                # %e5.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	8(%esp), %ebx           # 4-byte Reload
	movb	%al, (%ebp,%ebx)
	movb	%cl, (%ebp,%esi)
	jmp	LBB6_12
	.p2align	4, 0x90
LBB6_8:                                 #   in Loop: Header=BB6_1 Depth=1
	movl	8(%esp), %ebx           # 4-byte Reload
LBB6_12:                                # %e5
                                        #   in Loop: Header=BB6_1 Depth=1
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, (%ebp,%ebx)
	je	LBB6_14
# BB#13:                                # %b6.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$0, (%ebp,%ebx)
LBB6_14:                                # %e6
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	(%ebp,%esi), %cl
	movl	%ecx, %eax
	addb	$3, %al
	movb	%al, (%ebp,%esi)
	movb	(%ebp,%ebx), %dl
	movl	%edx, %eax
	incb	%al
	addb	$3, %cl
	movb	%al, (%ebp,%ebx)
	je	LBB6_18
# BB#15:                                # %b7.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	(%ebp,%esi), %cl
	incb	%dl
	movl	%edx, %eax
	.p2align	4, 0x90
LBB6_16:                                # %b7
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addb	$3, %al
	decb	%cl
	jne	LBB6_16
# BB#17:                                # %c8.preheader.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	8(%esp), %edx           # 4-byte Reload
	movb	%al, (%ebp,%edx)
	movb	%cl, (%ebp,%esi)
LBB6_18:                                # %c8.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	5(%edi), %ebx
	testb	%al, %al
	movl	8(%esp), %esi           # 4-byte Reload
	je	LBB6_19
	.p2align	4, 0x90
LBB6_468:                               # %b8
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%ebp,%ebx), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	incb	(%ebp,%ebx)
	decb	(%ebp,%esi)
	jne	LBB6_468
LBB6_19:                                # %c9.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	%edi, 20(%esp)          # 4-byte Spill
	cmpb	$0, (%ebp,%ebx)
	je	LBB6_21
# BB#20:                                # %b9.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$0, (%ebp,%ebx)
LBB6_21:                                # %e9
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	(%esp), %edi            # 4-byte Reload
	movb	(%ebp,%edi), %al
	movl	20(%esp), %ecx          # 4-byte Reload
	leal	1(%ecx), %esi
	addb	$2, %al
	movb	%al, (%ebp,%edi)
	movb	1(%ebp,%ecx), %cl
	movl	%esi, 4(%esp)           # 4-byte Spill
	je	LBB6_23
# BB#22:                                # %b10.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$5, %dl
	mulb	%dl
	addb	%al, %cl
	movb	%cl, (%ebp,%esi)
	movb	$0, (%ebp,%edi)
LBB6_23:                                # %e10
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	20(%esp), %edi          # 4-byte Reload
	movl	16(%esp), %esi          # 4-byte Reload
	movsbl	%cl, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	movb	(%ebp,%esi), %al
	testb	%al, %al
	movl	%esi, %ecx
	movl	8(%esp), %esi           # 4-byte Reload
	je	LBB6_25
# BB#24:                                # %b11.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	addb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%ecx)
LBB6_25:                                # %c12.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpb	$0, (%ebp,%esi)
	je	LBB6_30
# BB#26:                                # %b12.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$1, (%ebp,%ecx)
	incb	(%ebp,%ebx)
	decb	(%ebp,%esi)
	je	LBB6_30
# BB#27:                                # %b12.b12_crit_edge.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	(%ebp,%ecx), %dl
	movb	(%ebp,%ebx), %cl
	movb	(%ebp,%esi), %al
	.p2align	4, 0x90
LBB6_28:                                # %b12.b12_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incb	%dl
	incb	%cl
	decb	%al
	jne	LBB6_28
# BB#29:                                # %c13.preheader.loopexit
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	16(%esp), %esi          # 4-byte Reload
	movb	%dl, (%ebp,%esi)
	movb	%cl, (%ebp,%ebx)
	movl	8(%esp), %ecx           # 4-byte Reload
	movb	%al, (%ebp,%ecx)
LBB6_30:                                # %c13.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	4(%esp), %eax           # 4-byte Reload
	cmpb	$0, (%ebp,%eax)
	je	LBB6_34
# BB#31:                                #   in Loop: Header=BB6_1 Depth=1
	movl	(%esp), %edi            # 4-byte Reload
	.p2align	4, 0x90
LBB6_32:                                # %b13
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_55 Depth 3
                                        #         Child Loop BB6_61 Depth 4
                                        #         Child Loop BB6_65 Depth 4
                                        #         Child Loop BB6_76 Depth 4
                                        #           Child Loop BB6_82 Depth 5
                                        #           Child Loop BB6_84 Depth 5
                                        #         Child Loop BB6_87 Depth 4
                                        #         Child Loop BB6_102 Depth 4
                                        #         Child Loop BB6_104 Depth 4
	movsbl	(%ebp,%ebx), %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	incb	(%ebp,%ebx)
	movb	(%ebp,%edi), %cl
	addb	$10, %cl
	movb	%cl, (%ebp,%edi)
	movl	%edi, %ebx
	je	LBB6_33
	.p2align	4, 0x90
LBB6_55:                                # %b14
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_61 Depth 4
                                        #         Child Loop BB6_65 Depth 4
                                        #         Child Loop BB6_76 Depth 4
                                        #           Child Loop BB6_82 Depth 5
                                        #           Child Loop BB6_84 Depth 5
                                        #         Child Loop BB6_87 Depth 4
                                        #         Child Loop BB6_102 Depth 4
                                        #         Child Loop BB6_104 Depth 4
	leal	-1(%ebx), %edi
	movb	-1(%ebp,%ebx), %ch
	movb	1(%ebp,%ebx), %dl
	leal	1(%ebx), %eax
	testb	%ch, %ch
	je	LBB6_57
# BB#56:                                # %b15.lr.ph
                                        #   in Loop: Header=BB6_55 Depth=3
	addb	%ch, %dl
	movb	%dl, (%ebp,%eax)
	movb	$0, (%ebp,%edi)
LBB6_57:                                # %c16.preheader
                                        #   in Loop: Header=BB6_55 Depth=3
	testb	%dl, %dl
	je	LBB6_58
# BB#60:                                # %b16.lr.ph
                                        #   in Loop: Header=BB6_55 Depth=3
	leal	4(%ebx), %esi
	movl	%ebx, (%esp)            # 4-byte Spill
	movb	4(%ebp,%ebx), %cl
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_61:                                # %b16
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incb	%bl
	addb	$11, %cl
	movb	%dl, %ch
	subb	%bl, %ch
	jne	LBB6_61
# BB#62:                                # %c17.preheader
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	%bl, (%ebp,%edi)
	movb	%cl, (%ebp,%esi)
	movb	%ch, (%ebp,%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movb	(%ebp,%ebx), %cl
	testb	%cl, %cl
	je	LBB6_59
LBB6_58:                                # %c17.preheader.thread
                                        #   in Loop: Header=BB6_55 Depth=3
	leal	(%ebp,%ebx), %edx
	movb	%cl, (%ebp,%eax)
	movb	$0, (%edx)
	cmpb	$0, (%ebp,%eax)
	je	LBB6_59
# BB#63:                                # %b18.lr.ph
                                        #   in Loop: Header=BB6_55 Depth=3
	leal	4(%ebp,%ebx), %edi
	movb	$1, (%edx)
	incb	4(%ebp,%ebx)
	jmp	LBB6_65
	.p2align	4, 0x90
LBB6_64:                                # %b18.b18_crit_edge
                                        #   in Loop: Header=BB6_65 Depth=4
	incb	(%edx)
	incb	(%edi)
LBB6_65:                                # %b18.b18_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	decb	(%ebp,%eax)
	jne	LBB6_64
	jmp	LBB6_66
	.p2align	4, 0x90
LBB6_59:                                # %c18.preheader.e18_crit_edge
                                        #   in Loop: Header=BB6_55 Depth=3
	leal	4(%ebp,%ebx), %edi
LBB6_66:                                # %e18
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	(%edi), %al
	leal	16(%ebp,%ebx), %ecx
	testb	%al, %al
	je	LBB6_67
# BB#68:                                # %b19.lr.ph
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	(%ecx), %dl
	addb	%al, %dl
	addb	17(%ebp,%ebx), %al
	movb	%dl, (%ecx)
	movb	%al, 17(%ebp,%ebx)
	movb	$0, (%edi)
	jmp	LBB6_69
	.p2align	4, 0x90
LBB6_67:                                # %e18.c20.preheader_crit_edge
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	(%ecx), %dl
LBB6_69:                                # %c20.preheader
                                        #   in Loop: Header=BB6_55 Depth=3
	addl	$16, %ebx
	testb	%dl, %dl
	je	LBB6_70
	.p2align	4, 0x90
LBB6_76:                                # %b20
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_55 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_82 Depth 5
                                        #           Child Loop BB6_84 Depth 5
	movl	%ebp, %esi
	movl	%ebx, %ebp
	decb	%dl
	movb	%dl, (%ecx)
	movb	(%esi,%ebp), %al
	leal	1(%ebp), %ecx
	leal	4(%ebp), %ebx
	testb	%al, %al
	je	LBB6_78
# BB#77:                                # %b21.lr.ph
                                        #   in Loop: Header=BB6_76 Depth=4
	addb	%al, (%esi,%ebx)
	movb	$0, (%esi,%ebp)
LBB6_78:                                # %c22.preheader
                                        #   in Loop: Header=BB6_76 Depth=4
	movb	(%esi,%ecx), %dl
	testb	%dl, %dl
	je	LBB6_75
# BB#79:                                # %b22.lr.ph
                                        #   in Loop: Header=BB6_76 Depth=4
	movl	%ebx, (%esp)            # 4-byte Spill
	movb	5(%esi,%ebp), %bl
	addl	$5, %ebp
	movl	%edx, %eax
	decb	%al
	movzbl	%al, %edi
	incl	%edi
	cmpl	$4, %edi
	jb	LBB6_84
# BB#80:                                # %min.iters.checked8184
                                        #   in Loop: Header=BB6_76 Depth=4
	movl	%edi, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%edi, %esi
	andl	$508, %esi              # imm = 0x1FC
	je	LBB6_84
# BB#81:                                # %vector.ph8188
                                        #   in Loop: Header=BB6_76 Depth=4
	movl	%ecx, 4(%esp)           # 4-byte Spill
	subb	%al, %dl
	xorl	%ecx, %ecx
	movl	%esi, 8(%esp)           # 4-byte Spill
	movb	%bl, %dh
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_82:                                # %vector.body8180
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_55 Depth=3
                                        #         Parent Loop BB6_76 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%dh
	incb	%bl
	incb	%cl
	incb	%al
	addl	$-4, %esi
	jne	LBB6_82
# BB#83:                                # %middle.block8181
                                        #   in Loop: Header=BB6_76 Depth=4
	addb	%cl, %dh
	addb	%al, %bl
	addb	%dh, %bl
	cmpl	8(%esp), %edi           # 4-byte Folded Reload
	movl	4(%esp), %ecx           # 4-byte Reload
	je	LBB6_74
	.p2align	4, 0x90
LBB6_84:                                # %b22
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_55 Depth=3
                                        #         Parent Loop BB6_76 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%bl
	decb	%dl
	jne	LBB6_84
LBB6_74:                                # %c20.loopexit.loopexit
                                        #   in Loop: Header=BB6_76 Depth=4
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%bl, (%esi,%ebp)
	movb	%dl, (%esi,%ecx)
	movl	(%esp), %ebx            # 4-byte Reload
LBB6_75:                                # %c20.loopexit
                                        #   in Loop: Header=BB6_76 Depth=4
	leal	(%esi,%ebx), %ecx
	movb	(%esi,%ebx), %dl
	testb	%dl, %dl
	movl	%esi, %ebp
	jne	LBB6_76
LBB6_70:                                # %e20
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	3(%ebp,%ebx), %al
	testb	%al, %al
	je	LBB6_72
# BB#71:                                # %b24.lr.ph
                                        #   in Loop: Header=BB6_55 Depth=3
	leal	3(%ebx), %ecx
	addb	%al, 2(%ebp,%ebx)
	movb	%al, (%ebp,%ecx)
	movb	$0, (%ebp,%ebx)
LBB6_72:                                # %c25.preheader
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	1(%ebp,%ebx), %al
	testb	%al, %al
	je	LBB6_73
# BB#85:                                # %b25.preheader
                                        #   in Loop: Header=BB6_55 Depth=3
	addl	$2, %ebx
	.p2align	4, 0x90
LBB6_87:                                # %b25
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	-1(%ebx), %ecx
	decb	%al
	movb	%al, -1(%ebp,%ebx)
	movzbl	(%ebp,%ebx), %eax
	testb	%al, %al
	je	LBB6_89
# BB#88:                                # %b26.lr.ph
                                        #   in Loop: Header=BB6_87 Depth=4
	addb	%al, -4(%ebp,%ebx)
	movb	$0, (%ebp,%ebx)
LBB6_89:                                # %c27.preheader
                                        #   in Loop: Header=BB6_87 Depth=4
	movzbl	(%ebp,%ecx), %edx
	testb	%dl, %dl
	movzbl	-5(%ebp,%ebx), %eax
	je	LBB6_86
# BB#90:                                # %b27.lr.ph
                                        #   in Loop: Header=BB6_87 Depth=4
	leal	-5(%ebx), %esi
	addb	%dl, %al
	movb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%ecx)
LBB6_86:                                # %c25.loopexit
                                        #   in Loop: Header=BB6_87 Depth=4
	addl	$-4, %ebx
	testb	%al, %al
	jne	LBB6_87
# BB#91:                                # %e25.loopexit
                                        #   in Loop: Header=BB6_55 Depth=3
	decl	%ebx
	jmp	LBB6_92
	.p2align	4, 0x90
LBB6_73:                                #   in Loop: Header=BB6_55 Depth=3
	incl	%ebx
LBB6_92:                                # %e25
                                        #   in Loop: Header=BB6_55 Depth=3
	movl	%ebx, %edi
	leal	-1(%edi), %esi
	movb	-1(%ebp,%edi), %al
	addb	$9, %al
	movb	%al, -1(%ebp,%edi)
	je	LBB6_93
# BB#94:                                # %b28.lr.ph
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	$5, %cl
	mulb	%cl
                                        # kill: %AL<def> %AL<kill> %EAX<def>
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%esi)
	jmp	LBB6_95
	.p2align	4, 0x90
LBB6_93:                                #   in Loop: Header=BB6_55 Depth=3
	xorl	%eax, %eax
LBB6_95:                                # %e28
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	1(%ebp,%edi), %dl
	testb	%dl, %dl
	je	LBB6_96
# BB#97:                                # %b30.preheader
                                        #   in Loop: Header=BB6_55 Depth=3
	leal	1(%edi), %ecx
	movb	%dl, (%ebp,%esi)
	movb	$0, (%ebp,%ecx)
	leal	(%ebp,%edi), %ebx
	movl	%edx, %ecx
	decb	%cl
	movzbl	%cl, %ebp
	incl	%ebp
	cmpl	$4, %ebp
	jae	LBB6_99
# BB#98:                                #   in Loop: Header=BB6_55 Depth=3
	movl	12(%esp), %ebp          # 4-byte Reload
	jmp	LBB6_104
	.p2align	4, 0x90
LBB6_96:                                # %c30.preheader.thread
                                        #   in Loop: Header=BB6_55 Depth=3
	leal	(%ebp,%edi), %ebx
	jmp	LBB6_106
	.p2align	4, 0x90
LBB6_99:                                # %min.iters.checked8159
                                        #   in Loop: Header=BB6_55 Depth=3
	movl	%esi, (%esp)            # 4-byte Spill
	movl	%ebp, %ecx
	andl	$508, %ecx              # imm = 0x1FC
	movl	%ebp, %esi
	andl	$508, %esi              # imm = 0x1FC
	je	LBB6_100
# BB#101:                               # %vector.ph8163
                                        #   in Loop: Header=BB6_55 Depth=3
	movl	%ebx, 4(%esp)           # 4-byte Spill
	subb	%cl, %dl
	xorl	%ecx, %ecx
	movl	%esi, 8(%esp)           # 4-byte Spill
	movb	%al, %dh
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_102:                               # %vector.body8155
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addb	$-3, %dh
	addb	$-3, %al
	addb	$-3, %cl
	addb	$-3, %bl
	addl	$-4, %esi
	jne	LBB6_102
# BB#103:                               # %middle.block8156
                                        #   in Loop: Header=BB6_55 Depth=3
	addb	%cl, %dh
	addb	%bl, %al
	addb	%dh, %al
	cmpl	8(%esp), %ebp           # 4-byte Folded Reload
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	(%esp), %esi            # 4-byte Reload
	movl	4(%esp), %ebx           # 4-byte Reload
	jne	LBB6_104
	jmp	LBB6_105
LBB6_100:                               #   in Loop: Header=BB6_55 Depth=3
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	(%esp), %esi            # 4-byte Reload
	.p2align	4, 0x90
LBB6_104:                               # %b30
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addb	$-3, %al
	decb	%dl
	jne	LBB6_104
LBB6_105:                               # %e30.loopexit
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	%al, (%ebx)
	movb	%dl, (%ebp,%esi)
LBB6_106:                               # %e30
                                        #   in Loop: Header=BB6_55 Depth=3
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, (%ebx)
	je	LBB6_108
# BB#107:                               # %b31.preheader
                                        #   in Loop: Header=BB6_55 Depth=3
	movb	$0, (%ebx)
LBB6_108:                               # %e31
                                        #   in Loop: Header=BB6_55 Depth=3
	leal	-17(%edi), %ebx
	movb	-17(%ebp,%edi), %cl
	decb	%cl
	movb	%cl, -17(%ebp,%edi)
	jne	LBB6_55
# BB#109:                               #   in Loop: Header=BB6_32 Depth=2
	leal	-17(%ebp,%edi), %esi
	jmp	LBB6_110
	.p2align	4, 0x90
LBB6_33:                                #   in Loop: Header=BB6_32 Depth=2
	leal	(%ebp,%ebx), %esi
LBB6_110:                               # %e14
                                        #   in Loop: Header=BB6_32 Depth=2
	movb	$10, (%esi)
	pushl	$10
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, (%esi)
	je	LBB6_112
# BB#111:                               # %b32.preheader
                                        #   in Loop: Header=BB6_32 Depth=2
	movb	$0, (%esi)
LBB6_112:                               # %e32
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	%ebx, %edi
	leal	3(%edi), %ebx
	decb	-1(%ebp,%edi)
	jne	LBB6_32
# BB#35:                                # %c13.c33.preheader_crit_edge
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	-1(%edi), %eax
	addl	$2, %edi
	jmp	LBB6_36
	.p2align	4, 0x90
LBB6_34:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$4, %edi
LBB6_36:                                # %c33.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpb	$0, (%ebp,%ebx)
	je	LBB6_38
# BB#37:                                # %b33.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$0, (%ebp,%ebx)
LBB6_38:                                # %c34.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpb	$0, (%ebp,%edi)
	je	LBB6_40
# BB#39:                                # %b34.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$0, (%ebp,%edi)
LBB6_40:                                # %b35.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$8, (%ebp,%edi)
	leal	4(%eax), %esi
	movl	%eax, 4(%esp)           # 4-byte Spill
	movb	4(%ebp,%eax), %al
	.p2align	4, 0x90
LBB6_41:                                # %b35
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addb	$8, %al
	movb	%al, (%ebp,%esi)
	decb	(%ebp,%edi)
	movzbl	(%ebp,%esi), %eax
	jne	LBB6_41
# BB#42:                                # %e35
                                        #   in Loop: Header=BB6_1 Depth=1
	addb	$-2, %al
	movb	%al, (%ebp,%esi)
	movsbl	%al, %eax
	pushl	%eax
	calll	_putchar
	addl	$4, %esp
	cmpb	$0, (%ebp,%esi)
	je	LBB6_44
# BB#43:                                # %b36.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$0, (%ebp,%esi)
LBB6_44:                                # %e36
                                        #   in Loop: Header=BB6_1 Depth=1
	calll	_getchar
	movl	4(%esp), %esi           # 4-byte Reload
	leal	2(%esi), %ecx
	addb	$-10, %al
	movb	%al, (%ebp,%edi)
	je	LBB6_46
	.p2align	4, 0x90
LBB6_45:                                # %b37
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incb	(%ebp,%ecx)
	decb	(%ebp,%edi)
	jne	LBB6_45
LBB6_46:                                # %e37
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	9(%ebp,%esi), %dl
	incb	%dl
	movb	%dl, 9(%ebp,%esi)
	movb	(%ebp,%ecx), %bl
	movl	%esi, %edi
	leal	3(%edi), %esi
	movb	3(%ebp,%edi), %bh
	movb	%bh, %al
	incb	%al
	testb	%bl, %bl
	movb	%al, (%esp)             # 1-byte Spill
	movb	%al, 3(%ebp,%edi)
	leal	8(%ebp,%edi), %eax
	je	LBB6_52
# BB#47:                                # %b38.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	%bh, 8(%esp)            # 1-byte Spill
	leal	9(%edi), %edi
	movb	(%eax), %bh
	addb	%bl, %bh
	movb	%bh, 20(%esp)           # 1-byte Spill
	movb	%bl, 16(%esp)           # 1-byte Spill
	.p2align	4, 0x90
LBB6_48:                                # %b38
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%dl, %dl
	je	LBB6_50
# BB#49:                                # %b39.preheader
                                        #   in Loop: Header=BB6_48 Depth=2
	movb	$0, (%ebp,%edi)
LBB6_50:                                # %e39
                                        #   in Loop: Header=BB6_48 Depth=2
	xorl	%edx, %edx
	decb	%bl
	jne	LBB6_48
# BB#51:                                # %c38.e38_crit_edge
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	8(%esp), %bh            # 1-byte Reload
	movb	16(%esp), %dl           # 1-byte Reload
	addb	%dl, %bh
	movb	(%esp), %dh             # 1-byte Reload
	addb	%dl, %dh
	movb	20(%esp), %dl           # 1-byte Reload
	movb	%dl, (%eax)
	movb	$0, (%ebp,%ecx)
	movb	%dh, (%ebp,%esi)
LBB6_52:                                # %e38
                                        #   in Loop: Header=BB6_1 Depth=1
	addb	$10, %bh
	movb	%bh, (%ebp,%esi)
	movl	4(%esp), %esi           # 4-byte Reload
	addl	$7, %esi
	cmpb	$0, (%eax)
	je	LBB6_53
	.p2align	4, 0x90
LBB6_116:                               # %e41
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_120 Depth 3
                                        #       Child Loop BB6_128 Depth 3
                                        #       Child Loop BB6_134 Depth 3
                                        #       Child Loop BB6_141 Depth 3
                                        #       Child Loop BB6_147 Depth 3
                                        #       Child Loop BB6_151 Depth 3
                                        #       Child Loop BB6_158 Depth 3
                                        #         Child Loop BB6_166 Depth 4
                                        #         Child Loop BB6_168 Depth 4
                                        #       Child Loop BB6_174 Depth 3
	movl	%esi, 4(%esp)           # 4-byte Spill
	movb	$0, (%eax)
	leal	-1(%esi), %edi
	calll	_getchar
	movb	%al, -1(%ebp,%esi)
	decb	-8(%ebp,%esi)
	movl	%ebp, %ecx
	leal	-5(%esi), %ebp
	testb	%al, %al
	movb	-5(%ecx,%esi), %dl
	je	LBB6_118
# BB#117:                               # %b42.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	addb	%dl, %al
	movb	%al, (%ecx,%ebp)
	movb	$0, (%ecx,%edi)
	movl	%eax, %edx
LBB6_118:                               # %c43.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	testb	%dl, %dl
	movl	12(%esp), %esi          # 4-byte Reload
	movl	4(%esp), %ebx           # 4-byte Reload
	je	LBB6_122
# BB#119:                               # %b43.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	(%esi,%ebx), %al
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_120:                               # %b43
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incb	%bl
	movl	%edx, %ecx
	subb	%bl, %cl
	jne	LBB6_120
# BB#121:                               # %e43.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%bl, (%esi,%edi)
	addb	%bl, %al
	movl	4(%esp), %ebx           # 4-byte Reload
	movb	%al, (%esi,%ebx)
	movb	%cl, (%esi,%ebp)
LBB6_122:                               # %e43
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	(%esi,%ebx), %al
	addb	$-10, %al
	movb	%al, (%esi,%ebx)
	je	LBB6_123
# BB#124:                               # %b44
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	%edi, (%esp)            # 4-byte Spill
	leal	-8(%ebx), %eax
	incb	(%esi,%eax)
	leal	-9(%ebx), %edi
	movb	-9(%esi,%ebx), %al
	testb	%al, %al
	movb	(%esi,%ebp), %bl
	je	LBB6_126
# BB#125:                               # %b45.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	addb	%al, %bl
	movb	%bl, (%esi,%ebp)
	movb	$0, (%esi,%edi)
LBB6_126:                               # %c46.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	4(%esp), %eax           # 4-byte Reload
	leal	-3(%eax), %eax
	testb	%bl, %bl
	movl	12(%esp), %esi          # 4-byte Reload
	je	LBB6_130
# BB#127:                               # %b46.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	(%esi,%eax), %dl
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_128:                               # %b46
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incb	%cl
	movb	%bl, %dh
	subb	%cl, %dh
	jne	LBB6_128
# BB#129:                               # %e46.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%cl, (%esi,%edi)
	addb	%cl, %dl
	movb	%dl, (%esi,%eax)
	movb	%dh, (%esi,%ebp)
LBB6_130:                               # %e46
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	4(%esp), %edx           # 4-byte Reload
	movb	-4(%esi,%edx), %cl
	testb	%cl, %cl
	movb	(%esi,%eax), %bl
	je	LBB6_132
# BB#131:                               # %b47.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	leal	-4(%edx), %edx
	subb	%cl, %bl
	movb	%bl, (%esi,%eax)
	movb	$0, (%esi,%edx)
LBB6_132:                               # %e47
                                        #   in Loop: Header=BB6_116 Depth=2
	addb	$10, %bl
	movb	%bl, (%esi,%eax)
	je	LBB6_136
# BB#133:                               # %b48.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	4(%esp), %ecx           # 4-byte Reload
	leal	-2(%ecx), %edx
	movb	-2(%esi,%ecx), %cl
	.p2align	4, 0x90
LBB6_134:                               # %b48
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addb	$11, %cl
	decb	%bl
	jne	LBB6_134
# BB#135:                               # %e48.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%cl, (%esi,%edx)
	movb	%bl, (%esi,%eax)
LBB6_136:                               # %e48
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	(%esi,%edi), %cl
	testb	%cl, %cl
	je	LBB6_138
# BB#137:                               # %b49.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	addb	%cl, (%esi,%ebp)
	movb	$0, (%esi,%edi)
LBB6_138:                               # %c50.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	cmpb	$0, (%esi,%ebp)
	je	LBB6_143
# BB#139:                               # %b50.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	$1, (%esi,%edi)
	incb	(%esi,%eax)
	decb	(%esi,%ebp)
	je	LBB6_143
# BB#140:                               # %b50.b50_crit_edge.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	(%esi,%edi), %dl
	movb	(%esi,%eax), %bh
	movb	(%esi,%ebp), %bl
	.p2align	4, 0x90
LBB6_141:                               # %b50.b50_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incb	%dl
	incb	%bh
	decb	%bl
	jne	LBB6_141
# BB#142:                               # %e50.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%dl, (%esi,%edi)
	movb	%bh, (%esi,%eax)
	movb	%bl, (%esi,%ebp)
LBB6_143:                               # %e50
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	(%esp), %edi            # 4-byte Reload
	movb	(%esi,%edi), %dl
	testb	%dl, %dl
	movb	(%esi,%eax), %cl
	movl	%esi, %ebp
	je	LBB6_145
# BB#144:                               # %b51.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	subb	%dl, %cl
	movb	%cl, (%ebp,%eax)
	movb	$0, (%ebp,%edi)
LBB6_145:                               # %e51
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, %edi
	leal	-2(%edi), %esi
	movl	%ecx, %edx
	addb	$10, %dl
	movb	%dl, (%ebp,%eax)
	movb	-2(%ebp,%edi), %dl
	je	LBB6_149
# BB#146:                               # %b52.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	$-10, %ch
	subb	%cl, %ch
	.p2align	4, 0x90
LBB6_147:                               # %b52
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incb	%dl
	incb	%ch
	jne	LBB6_147
# BB#148:                               # %c53.preheader.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	%dl, (%ebp,%esi)
	negb	%ch
	movb	%ch, (%ebp,%eax)
LBB6_149:                               # %c53.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	testb	%dl, %dl
	movl	4(%esp), %edi           # 4-byte Reload
	leal	10(%ebp,%edi), %ebx
	je	LBB6_153
# BB#150:                               # %b53.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	leal	11(%edi), %eax
	movb	(%ebx), %cl
	movb	11(%ebp,%edi), %dh
	.p2align	4, 0x90
LBB6_151:                               # %b53
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incb	%cl
	incb	%dh
	decb	%dl
	jne	LBB6_151
# BB#152:                               # %c54.preheader.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	%cl, (%ebx)
	movb	%dh, (%ebp,%eax)
	movb	%dl, (%ebp,%esi)
	movl	4(%esp), %edi           # 4-byte Reload
LBB6_153:                               # %c54.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	addl	$10, %edi
	movb	(%ebx), %al
	testb	%al, %al
	movl	%edi, %esi
	je	LBB6_154
	.p2align	4, 0x90
LBB6_158:                               # %b54
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_166 Depth 4
                                        #         Child Loop BB6_168 Depth 4
	movl	%esi, %edi
	decb	%al
	movb	%al, (%ebx)
	movb	(%ebp,%edi), %al
	leal	1(%edi), %ecx
	leal	4(%edi), %esi
	testb	%al, %al
	je	LBB6_160
# BB#159:                               # %b55.lr.ph
                                        #   in Loop: Header=BB6_158 Depth=3
	addb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%edi)
LBB6_160:                               # %c56.preheader
                                        #   in Loop: Header=BB6_158 Depth=3
	movb	(%ebp,%ecx), %dl
	testb	%dl, %dl
	je	LBB6_157
# BB#161:                               # %b56.lr.ph
                                        #   in Loop: Header=BB6_158 Depth=3
	movb	5(%ebp,%edi), %bl
	addl	$5, %edi
	movl	%edx, %eax
	decb	%al
	movzbl	%al, %ebp
	incl	%ebp
	cmpl	$4, %ebp
	jae	LBB6_163
# BB#162:                               #   in Loop: Header=BB6_158 Depth=3
	movl	12(%esp), %ebp          # 4-byte Reload
	jmp	LBB6_168
	.p2align	4, 0x90
LBB6_163:                               # %min.iters.checked8134
                                        #   in Loop: Header=BB6_158 Depth=3
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	je	LBB6_164
# BB#165:                               # %vector.ph8138
                                        #   in Loop: Header=BB6_158 Depth=3
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	%esi, 4(%esp)           # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	subb	%cl, %dl
	xorl	%ecx, %ecx
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%eax, %esi
	movb	%bl, %dh
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_166:                               # %vector.body8130
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        #       Parent Loop BB6_158 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incb	%dh
	incb	%bl
	incb	%cl
	incb	%al
	addl	$-4, %esi
	jne	LBB6_166
# BB#167:                               # %middle.block8131
                                        #   in Loop: Header=BB6_158 Depth=3
	addb	%cl, %dh
	addb	%al, %bl
	addb	%dh, %bl
	cmpl	(%esp), %ebp            # 4-byte Folded Reload
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	4(%esp), %esi           # 4-byte Reload
	movl	8(%esp), %ecx           # 4-byte Reload
	jne	LBB6_168
	jmp	LBB6_156
LBB6_164:                               #   in Loop: Header=BB6_158 Depth=3
	movl	12(%esp), %ebp          # 4-byte Reload
	.p2align	4, 0x90
LBB6_168:                               # %b56
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        #       Parent Loop BB6_158 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incb	%bl
	decb	%dl
	jne	LBB6_168
LBB6_156:                               # %c54.loopexit.loopexit
                                        #   in Loop: Header=BB6_158 Depth=3
	movb	%bl, (%ebp,%edi)
	movb	%dl, (%ebp,%ecx)
LBB6_157:                               # %c54.loopexit
                                        #   in Loop: Header=BB6_158 Depth=3
	leal	(%ebp,%esi), %ebx
	movb	(%ebp,%esi), %al
	testb	%al, %al
	jne	LBB6_158
LBB6_154:                               # %e54
                                        #   in Loop: Header=BB6_116 Depth=2
	leal	3(%esi), %eax
	movb	3(%ebp,%esi), %cl
	testb	%cl, %cl
	je	LBB6_155
# BB#169:                               # %b58.lr.ph
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	$1, %dl
	subb	%cl, %dl
	movb	%dl, (%ebp,%eax)
	movb	$0, (%ebp,%esi)
	jmp	LBB6_170
	.p2align	4, 0x90
LBB6_123:                               #   in Loop: Header=BB6_116 Depth=2
	movl	%esi, %ebp
	movl	%ebx, %esi
	jmp	LBB6_115
	.p2align	4, 0x90
LBB6_155:                               # %e57.thread
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	$1, (%ebp,%eax)
LBB6_170:                               # %c59.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	movb	1(%ebp,%esi), %al
	testb	%al, %al
	je	LBB6_171
# BB#172:                               # %b59.preheader
                                        #   in Loop: Header=BB6_116 Depth=2
	addl	$2, %esi
	.p2align	4, 0x90
LBB6_174:                               # %b59
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	-1(%esi), %ecx
	decb	%al
	movb	%al, -1(%ebp,%esi)
	movzbl	(%ebp,%esi), %eax
	testb	%al, %al
	je	LBB6_176
# BB#175:                               # %b60.lr.ph
                                        #   in Loop: Header=BB6_174 Depth=3
	addb	%al, -4(%ebp,%esi)
	movb	$0, (%ebp,%esi)
LBB6_176:                               # %c61.preheader
                                        #   in Loop: Header=BB6_174 Depth=3
	movzbl	(%ebp,%ecx), %edx
	testb	%dl, %dl
	movzbl	-5(%ebp,%esi), %eax
	je	LBB6_173
# BB#177:                               # %b61.lr.ph
                                        #   in Loop: Header=BB6_174 Depth=3
	movl	%esi, %edi
	leal	-5(%edi), %esi
	addb	%dl, %al
	movb	%al, (%ebp,%esi)
	movl	%edi, %esi
	movb	$0, (%ebp,%ecx)
LBB6_173:                               # %c59.loopexit
                                        #   in Loop: Header=BB6_174 Depth=3
	addl	$-4, %esi
	testb	%al, %al
	jne	LBB6_174
# BB#113:                               # %c40.loopexit.loopexit.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	decl	%esi
	jmp	LBB6_114
	.p2align	4, 0x90
LBB6_171:                               #   in Loop: Header=BB6_116 Depth=2
	incl	%esi
LBB6_114:                               # %c40.loopexit.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	calll	_getchar
	movb	$0, -11(%ebp,%esi)
	leal	-11(%esi), %esi
LBB6_115:                               # %c40.loopexit
                                        #   in Loop: Header=BB6_116 Depth=2
	leal	1(%ebp,%esi), %eax
	cmpb	$0, 1(%ebp,%esi)
	jne	LBB6_116
LBB6_53:                                # %e40
                                        #   in Loop: Header=BB6_1 Depth=1
	leal	2(%esi), %edi
	movb	2(%ebp,%esi), %al
	testb	%al, %al
	je	LBB6_466
# BB#54:                                #   in Loop: Header=BB6_1 Depth=1
	leal	2(%ebp,%esi), %ecx
	.p2align	4, 0x90
LBB6_179:                               # %b63
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_183 Depth 3
                                        #         Child Loop BB6_188 Depth 4
                                        #         Child Loop BB6_197 Depth 4
                                        #           Child Loop BB6_205 Depth 5
                                        #           Child Loop BB6_207 Depth 5
                                        #         Child Loop BB6_210 Depth 4
                                        #         Child Loop BB6_219 Depth 4
                                        #         Child Loop BB6_223 Depth 4
                                        #         Child Loop BB6_229 Depth 4
                                        #         Child Loop BB6_243 Depth 4
                                        #           Child Loop BB6_251 Depth 5
                                        #           Child Loop BB6_248 Depth 5
                                        #           Child Loop BB6_258 Depth 5
                                        #           Child Loop BB6_260 Depth 5
                                        #         Child Loop BB6_238 Depth 4
                                        #       Child Loop BB6_265 Depth 3
                                        #         Child Loop BB6_266 Depth 4
                                        #           Child Loop BB6_270 Depth 5
                                        #           Child Loop BB6_275 Depth 5
                                        #           Child Loop BB6_279 Depth 5
                                        #           Child Loop BB6_284 Depth 5
                                        #           Child Loop BB6_291 Depth 5
                                        #           Child Loop BB6_312 Depth 5
                                        #             Child Loop BB6_320 Depth 6
                                        #             Child Loop BB6_322 Depth 6
                                        #           Child Loop BB6_300 Depth 5
                                        #           Child Loop BB6_306 Depth 5
                                        #           Child Loop BB6_325 Depth 5
                                        #           Child Loop BB6_336 Depth 5
                                        #           Child Loop BB6_357 Depth 5
                                        #             Child Loop BB6_365 Depth 6
                                        #             Child Loop BB6_367 Depth 6
                                        #           Child Loop BB6_345 Depth 5
                                        #           Child Loop BB6_351 Depth 5
                                        #           Child Loop BB6_370 Depth 5
                                        #           Child Loop BB6_383 Depth 5
                                        #             Child Loop BB6_392 Depth 6
                                        #             Child Loop BB6_394 Depth 6
                                        #           Child Loop BB6_401 Depth 5
                                        #           Child Loop BB6_407 Depth 5
                                        #           Child Loop BB6_413 Depth 5
                                        #           Child Loop BB6_428 Depth 5
                                        #             Child Loop BB6_438 Depth 6
                                        #             Child Loop BB6_434 Depth 6
                                        #             Child Loop BB6_447 Depth 6
                                        #             Child Loop BB6_449 Depth 6
                                        #           Child Loop BB6_455 Depth 5
	addb	$10, %al
	movb	%al, (%ecx)
	movb	(%ebp,%edi), %al
	leal	1(%ebp,%edi), %edx
	testb	%al, %al
	je	LBB6_180
# BB#181:                               # %b64.lr.ph
                                        #   in Loop: Header=BB6_179 Depth=2
	movb	$11, %cl
	mulb	%cl
	movb	(%edx), %bl
	addb	%al, %bl
	addb	2(%ebp,%edi), %al
	movb	%bl, (%edx)
	movb	%al, 2(%ebp,%edi)
	movb	$0, (%ebp,%edi)
	jmp	LBB6_182
	.p2align	4, 0x90
LBB6_180:                               # %b63.c65.preheader_crit_edge
                                        #   in Loop: Header=BB6_179 Depth=2
	movb	(%edx), %bl
LBB6_182:                               # %c65.preheader
                                        #   in Loop: Header=BB6_179 Depth=2
	incl	%edi
	jmp	LBB6_183
	.p2align	4, 0x90
LBB6_261:                               # %e86
                                        #   in Loop: Header=BB6_183 Depth=3
	leal	-8(%ebp,%esi), %edx
	movb	-8(%ebp,%esi), %bl
	leal	-8(%esi), %edi
LBB6_183:                               # %c65.preheader
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_188 Depth 4
                                        #         Child Loop BB6_197 Depth 4
                                        #           Child Loop BB6_205 Depth 5
                                        #           Child Loop BB6_207 Depth 5
                                        #         Child Loop BB6_210 Depth 4
                                        #         Child Loop BB6_219 Depth 4
                                        #         Child Loop BB6_223 Depth 4
                                        #         Child Loop BB6_229 Depth 4
                                        #         Child Loop BB6_243 Depth 4
                                        #           Child Loop BB6_251 Depth 5
                                        #           Child Loop BB6_248 Depth 5
                                        #           Child Loop BB6_258 Depth 5
                                        #           Child Loop BB6_260 Depth 5
                                        #         Child Loop BB6_238 Depth 4
	testb	%bl, %bl
	je	LBB6_262
# BB#184:                               # %b65
                                        #   in Loop: Header=BB6_183 Depth=3
	decb	%bl
	movb	%bl, (%edx)
	movb	(%ebp,%edi), %al
	movb	3(%ebp,%edi), %bl
	movl	%edi, %esi
	leal	3(%esi), %edi
	testb	%al, %al
	je	LBB6_186
# BB#185:                               # %b66.lr.ph
                                        #   in Loop: Header=BB6_183 Depth=3
	addb	%al, %bl
	movb	%bl, (%ebp,%edi)
	movb	$0, (%ebp,%esi)
LBB6_186:                               # %c67.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	testb	%bl, %bl
	leal	7(%ebp,%esi), %edx
	je	LBB6_190
# BB#187:                               # %b67.lr.ph
                                        #   in Loop: Header=BB6_183 Depth=3
	leal	8(%esi), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movb	(%edx), %bh
	movl	%esi, (%esp)            # 4-byte Spill
	movb	8(%ebp,%esi), %cl
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_188:                               # %b67
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	decb	%al
	movb	%bl, %ch
	addb	%al, %ch
	jne	LBB6_188
# BB#189:                               # %e67.loopexit
                                        #   in Loop: Header=BB6_183 Depth=3
	subb	%al, %bh
	subb	%al, %cl
                                        # kill: %AL<def> %AL<kill> %EAX<kill>
	negb	%al
	movl	(%esp), %esi            # 4-byte Reload
	movb	%al, (%ebp,%esi)
	movb	%bh, (%edx)
	movl	4(%esp), %eax           # 4-byte Reload
	movb	%cl, (%ebp,%eax)
	movb	%ch, (%ebp,%edi)
LBB6_190:                               # %e67
                                        #   in Loop: Header=BB6_183 Depth=3
	addl	$7, %esi
	movb	(%edx), %al
	testb	%al, %al
	movl	%esi, %edi
	je	LBB6_191
	.p2align	4, 0x90
LBB6_197:                               # %b68
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_205 Depth 5
                                        #           Child Loop BB6_207 Depth 5
	decb	%al
	movb	%al, (%edx)
	movb	(%ebp,%edi), %al
	leal	1(%edi), %esi
	leal	4(%edi), %ecx
	testb	%al, %al
	je	LBB6_199
# BB#198:                               # %b69.lr.ph
                                        #   in Loop: Header=BB6_197 Depth=4
	addb	%al, (%ebp,%ecx)
	movb	$0, (%ebp,%edi)
LBB6_199:                               # %c70.preheader
                                        #   in Loop: Header=BB6_197 Depth=4
	movl	%ecx, (%esp)            # 4-byte Spill
	movb	(%ebp,%esi), %bl
	testb	%bl, %bl
	je	LBB6_196
# BB#200:                               # %b70.lr.ph
                                        #   in Loop: Header=BB6_197 Depth=4
	movb	5(%ebp,%edi), %dl
	addl	$5, %edi
	movl	%ebx, %eax
	decb	%al
	movzbl	%al, %ebp
	incl	%ebp
	cmpl	$4, %ebp
	jae	LBB6_202
# BB#201:                               #   in Loop: Header=BB6_197 Depth=4
	movl	12(%esp), %ebp          # 4-byte Reload
	jmp	LBB6_207
	.p2align	4, 0x90
LBB6_202:                               # %min.iters.checked8109
                                        #   in Loop: Header=BB6_197 Depth=4
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%ebp, %ecx
	andl	$508, %ecx              # imm = 0x1FC
	je	LBB6_203
# BB#204:                               # %vector.ph8113
                                        #   in Loop: Header=BB6_197 Depth=4
	movl	%esi, 4(%esp)           # 4-byte Spill
	subb	%al, %bl
	xorl	%eax, %eax
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	%ecx, %esi
	movb	%dl, %bh
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_205:                               # %vector.body8105
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        #         Parent Loop BB6_197 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%bh
	incb	%dl
	incb	%al
	incb	%cl
	addl	$-4, %esi
	jne	LBB6_205
# BB#206:                               # %middle.block8106
                                        #   in Loop: Header=BB6_197 Depth=4
	addb	%al, %bh
	addb	%cl, %dl
	addb	%bh, %dl
	cmpl	8(%esp), %ebp           # 4-byte Folded Reload
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	4(%esp), %esi           # 4-byte Reload
	jne	LBB6_207
	jmp	LBB6_195
LBB6_203:                               #   in Loop: Header=BB6_197 Depth=4
	movl	12(%esp), %ebp          # 4-byte Reload
	.p2align	4, 0x90
LBB6_207:                               # %b70
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        #         Parent Loop BB6_197 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%dl
	decb	%bl
	jne	LBB6_207
LBB6_195:                               # %c68.loopexit.loopexit
                                        #   in Loop: Header=BB6_197 Depth=4
	movb	%dl, (%ebp,%edi)
	movb	%bl, (%ebp,%esi)
LBB6_196:                               # %c68.loopexit
                                        #   in Loop: Header=BB6_197 Depth=4
	movl	(%esp), %edi            # 4-byte Reload
	leal	(%ebp,%edi), %edx
	movb	(%ebp,%edi), %al
	testb	%al, %al
	jne	LBB6_197
LBB6_191:                               # %e68
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	3(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_193
# BB#192:                               # %b72.lr.ph
                                        #   in Loop: Header=BB6_183 Depth=3
	leal	3(%edi), %ecx
	addb	%al, 2(%ebp,%edi)
	movb	%al, (%ebp,%ecx)
	movb	$0, (%ebp,%edi)
LBB6_193:                               # %c73.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	1(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_194
# BB#208:                               # %b73.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	addl	$2, %edi
	.p2align	4, 0x90
LBB6_210:                               # %b73
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	-1(%edi), %ecx
	decb	%al
	movb	%al, -1(%ebp,%edi)
	movzbl	(%ebp,%edi), %eax
	testb	%al, %al
	je	LBB6_212
# BB#211:                               # %b74.lr.ph
                                        #   in Loop: Header=BB6_210 Depth=4
	addb	%al, -4(%ebp,%edi)
	movb	$0, (%ebp,%edi)
LBB6_212:                               # %c75.preheader
                                        #   in Loop: Header=BB6_210 Depth=4
	movzbl	(%ebp,%ecx), %edx
	testb	%dl, %dl
	movzbl	-5(%ebp,%edi), %eax
	je	LBB6_209
# BB#213:                               # %b75.lr.ph
                                        #   in Loop: Header=BB6_210 Depth=4
	leal	-5(%edi), %esi
	addb	%dl, %al
	movb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%ecx)
LBB6_209:                               # %c73.loopexit
                                        #   in Loop: Header=BB6_210 Depth=4
	addl	$-4, %edi
	testb	%al, %al
	jne	LBB6_210
# BB#214:                               # %e73.loopexit
                                        #   in Loop: Header=BB6_183 Depth=3
	decl	%edi
	jmp	LBB6_215
	.p2align	4, 0x90
LBB6_194:                               #   in Loop: Header=BB6_183 Depth=3
	incl	%edi
LBB6_215:                               # %e73
                                        #   in Loop: Header=BB6_183 Depth=3
	leal	-8(%edi), %eax
	movb	-8(%ebp,%edi), %cl
	movb	-5(%ebp,%edi), %dl
	movl	%ebp, %esi
	leal	-5(%edi), %ebp
	testb	%cl, %cl
	je	LBB6_217
# BB#216:                               # %b76.lr.ph
                                        #   in Loop: Header=BB6_183 Depth=3
	addb	%cl, %dl
	movb	%dl, (%esi,%ebp)
	movb	$0, (%esi,%eax)
LBB6_217:                               # %c77.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	movl	%edi, %ecx
	leal	-7(%ecx), %edi
	testb	%dl, %dl
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%ecx, (%esp)            # 4-byte Spill
	je	LBB6_221
# BB#218:                               # %b77.lr.ph
                                        #   in Loop: Header=BB6_183 Depth=3
	leal	-1(%ecx), %ebx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	movb	-1(%esi,%ecx), %bh
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_219:                               # %b77
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incb	%cl
	movb	%dl, %bl
	subb	%cl, %bl
	jne	LBB6_219
# BB#220:                               # %c78.preheader.loopexit
                                        #   in Loop: Header=BB6_183 Depth=3
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%cl, (%esi,%eax)
	addb	%cl, %bh
	movl	4(%esp), %eax           # 4-byte Reload
	movb	%bh, (%esi,%eax)
	movl	(%esp), %eax            # 4-byte Reload
	movb	%cl, (%esi,%eax)
	movb	%bl, (%esi,%ebp)
LBB6_221:                               # %c78.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	cmpb	$0, (%esi,%edi)
	je	LBB6_225
# BB#222:                               # %b78.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	(%esi,%edi), %cl
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_223:                               # %b78
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incb	%al
	movl	%ecx, %edx
	subb	%al, %dl
	jne	LBB6_223
# BB#224:                               # %c79.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%al, (%esi,%ebp)
	movb	%dl, (%esi,%edi)
	testb	%al, %al
	je	LBB6_225
# BB#226:                               # %b79.lr.ph
                                        #   in Loop: Header=BB6_183 Depth=3
	movl	(%esp), %edx            # 4-byte Reload
	leal	-1(%edx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	leal	-1(%esi,%edx), %ebx
	movb	$1, (%esi,%edi)
	incb	-1(%esi,%edx)
	incb	(%esi,%edx)
	decb	(%esi,%ebp)
	je	LBB6_227
# BB#228:                               # %b79.b79_crit_edge.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	(%esi,%edi), %ch
	movb	(%ebx), %ah
	movb	(%esi,%edx), %cl
	movb	(%esi,%ebp), %al
	.p2align	4, 0x90
LBB6_229:                               # %b79.b79_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incb	%ch
	incb	%ah
	incb	%cl
	decb	%al
	jne	LBB6_229
# BB#230:                               # %e79.loopexit
                                        #   in Loop: Header=BB6_183 Depth=3
	movl	12(%esp), %edx          # 4-byte Reload
	movb	%ch, (%edx,%edi)
	movb	%ah, (%ebx)
	movl	(%esp), %esi            # 4-byte Reload
	movb	%cl, (%edx,%esi)
	movb	%al, (%edx,%ebp)
	movl	%edx, %ebp
	jmp	LBB6_231
	.p2align	4, 0x90
LBB6_225:                               # %c79.preheader.e79_crit_edge
                                        #   in Loop: Header=BB6_183 Depth=3
	movl	(%esp), %eax            # 4-byte Reload
	leal	-1(%esi,%eax), %ebx
	decl	%eax
	movl	%esi, %ebp
	movl	%eax, %esi
	jmp	LBB6_232
LBB6_227:                               #   in Loop: Header=BB6_183 Depth=3
	movl	%esi, %ebp
LBB6_231:                               # %e79
                                        #   in Loop: Header=BB6_183 Depth=3
	movl	4(%esp), %esi           # 4-byte Reload
LBB6_232:                               # %e79
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	(%ebx), %al
	testb	%al, %al
	je	LBB6_233
	.p2align	4, 0x90
LBB6_243:                               # %b80
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_251 Depth 5
                                        #           Child Loop BB6_248 Depth 5
                                        #           Child Loop BB6_258 Depth 5
                                        #           Child Loop BB6_260 Depth 5
	movl	%ebp, %ecx
	movl	%esi, %ebp
	decb	%al
	movb	%al, (%ebx)
	movb	(%ecx,%ebp), %al
	leal	1(%ebp), %edx
	testb	%al, %al
	je	LBB6_245
# BB#244:                               # %b81.lr.ph
                                        #   in Loop: Header=BB6_243 Depth=4
	addb	%al, 4(%ecx,%ebp)
	movb	$0, (%ecx,%ebp)
LBB6_245:                               # %c82.preheader
                                        #   in Loop: Header=BB6_243 Depth=4
	movb	(%ecx,%edx), %bl
	leal	2(%ebp), %esi
	testb	%bl, %bl
	movl	%esi, (%esp)            # 4-byte Spill
	je	LBB6_254
# BB#246:                               # %b82.lr.ph
                                        #   in Loop: Header=BB6_243 Depth=4
	movl	%edx, 4(%esp)           # 4-byte Spill
	leal	5(%ebp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movb	5(%ecx,%ebp), %dl
	movl	%ebx, %eax
	decb	%al
	movzbl	%al, %edi
	incl	%edi
	cmpl	$3, %edi
	jbe	LBB6_247
# BB#249:                               # %min.iters.checked8084
                                        #   in Loop: Header=BB6_243 Depth=4
	movl	%edi, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%edi, %ecx
	andl	$508, %ecx              # imm = 0x1FC
	je	LBB6_247
# BB#250:                               # %vector.ph8088
                                        #   in Loop: Header=BB6_243 Depth=4
	subb	%al, %bl
	xorl	%eax, %eax
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	%ecx, %esi
	movb	%dl, %bh
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_251:                               # %vector.body8080
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        #         Parent Loop BB6_243 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%bh
	incb	%dl
	incb	%al
	incb	%cl
	addl	$-4, %esi
	jne	LBB6_251
# BB#252:                               # %middle.block8081
                                        #   in Loop: Header=BB6_243 Depth=4
	addb	%al, %bh
	addb	%cl, %dl
	addb	%bh, %dl
	cmpl	16(%esp), %edi          # 4-byte Folded Reload
	movl	(%esp), %esi            # 4-byte Reload
	movl	4(%esp), %eax           # 4-byte Reload
	movl	8(%esp), %edi           # 4-byte Reload
	jne	LBB6_248
	jmp	LBB6_253
	.p2align	4, 0x90
LBB6_247:                               #   in Loop: Header=BB6_243 Depth=4
	movl	4(%esp), %eax           # 4-byte Reload
	movl	8(%esp), %edi           # 4-byte Reload
	.p2align	4, 0x90
LBB6_248:                               # %b82
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        #         Parent Loop BB6_243 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%dl
	decb	%bl
	jne	LBB6_248
LBB6_253:                               # %c83.preheader.loopexit
                                        #   in Loop: Header=BB6_243 Depth=4
	movl	12(%esp), %ecx          # 4-byte Reload
	movb	%dl, (%ecx,%edi)
	movb	%bl, (%ecx,%eax)
LBB6_254:                               # %c83.preheader
                                        #   in Loop: Header=BB6_243 Depth=4
	movb	(%ecx,%esi), %bl
	leal	4(%ebp), %esi
	testb	%bl, %bl
	je	LBB6_242
# BB#255:                               # %b83.lr.ph
                                        #   in Loop: Header=BB6_243 Depth=4
	movb	6(%ecx,%ebp), %dl
	addl	$6, %ebp
	movl	%ebx, %eax
	decb	%al
	movzbl	%al, %edi
	incl	%edi
	cmpl	$3, %edi
	jbe	LBB6_260
# BB#256:                               # %min.iters.checked8059
                                        #   in Loop: Header=BB6_243 Depth=4
	movl	%edi, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%edi, %ecx
	andl	$508, %ecx              # imm = 0x1FC
	je	LBB6_260
# BB#257:                               # %vector.ph8063
                                        #   in Loop: Header=BB6_243 Depth=4
	movl	%esi, 4(%esp)           # 4-byte Spill
	subb	%al, %bl
	xorl	%eax, %eax
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	%ecx, %esi
	movb	%dl, %bh
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_258:                               # %vector.body8055
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        #         Parent Loop BB6_243 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%bh
	incb	%dl
	incb	%al
	incb	%cl
	addl	$-4, %esi
	jne	LBB6_258
# BB#259:                               # %middle.block8056
                                        #   in Loop: Header=BB6_243 Depth=4
	addb	%al, %bh
	addb	%cl, %dl
	addb	%bh, %dl
	cmpl	8(%esp), %edi           # 4-byte Folded Reload
	movl	4(%esp), %esi           # 4-byte Reload
	je	LBB6_241
	.p2align	4, 0x90
LBB6_260:                               # %b83
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        #         Parent Loop BB6_243 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%dl
	decb	%bl
	jne	LBB6_260
LBB6_241:                               # %c80.loopexit.loopexit
                                        #   in Loop: Header=BB6_243 Depth=4
	movl	12(%esp), %ecx          # 4-byte Reload
	movb	%dl, (%ecx,%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movb	%bl, (%ecx,%eax)
LBB6_242:                               # %c80.loopexit
                                        #   in Loop: Header=BB6_243 Depth=4
	leal	(%ecx,%esi), %ebx
	movb	(%ecx,%esi), %al
	testb	%al, %al
	movl	%ecx, %ebp
	jne	LBB6_243
LBB6_233:                               # %e80
                                        #   in Loop: Header=BB6_183 Depth=3
	leal	2(%esi), %eax
	leal	3(%esi), %ecx
	cmpb	$0, 3(%ebp,%esi)
	je	LBB6_235
# BB#234:                               # %b84.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	$0, (%ebp,%ecx)
LBB6_235:                               # %c85.preheader
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	(%ebp,%eax), %dl
	testb	%dl, %dl
	je	LBB6_237
# BB#236:                               # %b85.lr.ph
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	%dl, (%ebp,%ecx)
	movb	$0, (%ebp,%eax)
LBB6_237:                               # %e85
                                        #   in Loop: Header=BB6_183 Depth=3
	movb	1(%ebp,%esi), %al
	incl	%esi
	jmp	LBB6_238
	.p2align	4, 0x90
LBB6_240:                               # %b87.lr.ph
                                        #   in Loop: Header=BB6_238 Depth=4
	addb	%dl, %al
	movb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%ecx)
LBB6_238:                               # %c86.loopexit
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	%al, %al
	je	LBB6_261
# BB#239:                               # %b86
                                        #   in Loop: Header=BB6_238 Depth=4
	movl	%esi, %ecx
	leal	-4(%ecx), %esi
	movl	%eax, %edx
	decb	%dl
	movb	%dl, (%ebp,%ecx)
	movzbl	-4(%ebp,%ecx), %eax
	jne	LBB6_240
	jmp	LBB6_238
	.p2align	4, 0x90
LBB6_262:                               # %e65
                                        #   in Loop: Header=BB6_179 Depth=2
	movb	-10(%ebp,%edi), %al
	addb	$10, %al
	movb	%al, -10(%ebp,%edi)
	je	LBB6_263
# BB#264:                               # %b88.preheader
                                        #   in Loop: Header=BB6_179 Depth=2
	addl	$-9, %edi
	.p2align	4, 0x90
LBB6_265:                               # %b88
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_266 Depth 4
                                        #           Child Loop BB6_270 Depth 5
                                        #           Child Loop BB6_275 Depth 5
                                        #           Child Loop BB6_279 Depth 5
                                        #           Child Loop BB6_284 Depth 5
                                        #           Child Loop BB6_291 Depth 5
                                        #           Child Loop BB6_312 Depth 5
                                        #             Child Loop BB6_320 Depth 6
                                        #             Child Loop BB6_322 Depth 6
                                        #           Child Loop BB6_300 Depth 5
                                        #           Child Loop BB6_306 Depth 5
                                        #           Child Loop BB6_325 Depth 5
                                        #           Child Loop BB6_336 Depth 5
                                        #           Child Loop BB6_357 Depth 5
                                        #             Child Loop BB6_365 Depth 6
                                        #             Child Loop BB6_367 Depth 6
                                        #           Child Loop BB6_345 Depth 5
                                        #           Child Loop BB6_351 Depth 5
                                        #           Child Loop BB6_370 Depth 5
                                        #           Child Loop BB6_383 Depth 5
                                        #             Child Loop BB6_392 Depth 6
                                        #             Child Loop BB6_394 Depth 6
                                        #           Child Loop BB6_401 Depth 5
                                        #           Child Loop BB6_407 Depth 5
                                        #           Child Loop BB6_413 Depth 5
                                        #           Child Loop BB6_428 Depth 5
                                        #             Child Loop BB6_438 Depth 6
                                        #             Child Loop BB6_434 Depth 6
                                        #             Child Loop BB6_447 Depth 6
                                        #             Child Loop BB6_449 Depth 6
                                        #           Child Loop BB6_455 Depth 5
	movb	(%ebp,%edi), %al
	leal	-1(%edi), %edx
	addb	$10, %al
	movb	%al, (%ebp,%edi)
	je	LBB6_463
	.p2align	4, 0x90
LBB6_266:                               # %c90.preheader
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_270 Depth 5
                                        #           Child Loop BB6_275 Depth 5
                                        #           Child Loop BB6_279 Depth 5
                                        #           Child Loop BB6_284 Depth 5
                                        #           Child Loop BB6_291 Depth 5
                                        #           Child Loop BB6_312 Depth 5
                                        #             Child Loop BB6_320 Depth 6
                                        #             Child Loop BB6_322 Depth 6
                                        #           Child Loop BB6_300 Depth 5
                                        #           Child Loop BB6_306 Depth 5
                                        #           Child Loop BB6_325 Depth 5
                                        #           Child Loop BB6_336 Depth 5
                                        #           Child Loop BB6_357 Depth 5
                                        #             Child Loop BB6_365 Depth 6
                                        #             Child Loop BB6_367 Depth 6
                                        #           Child Loop BB6_345 Depth 5
                                        #           Child Loop BB6_351 Depth 5
                                        #           Child Loop BB6_370 Depth 5
                                        #           Child Loop BB6_383 Depth 5
                                        #             Child Loop BB6_392 Depth 6
                                        #             Child Loop BB6_394 Depth 6
                                        #           Child Loop BB6_401 Depth 5
                                        #           Child Loop BB6_407 Depth 5
                                        #           Child Loop BB6_413 Depth 5
                                        #           Child Loop BB6_428 Depth 5
                                        #             Child Loop BB6_438 Depth 6
                                        #             Child Loop BB6_434 Depth 6
                                        #             Child Loop BB6_447 Depth 6
                                        #             Child Loop BB6_449 Depth 6
                                        #           Child Loop BB6_455 Depth 5
	movb	(%ebp,%edx), %cl
	leal	1(%edi), %eax
	testb	%cl, %cl
	je	LBB6_268
# BB#267:                               # %b90.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%cl, (%ebp,%eax)
	movb	$0, (%ebp,%edx)
LBB6_268:                               # %c91.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	(%ebp,%eax), %cl
	testb	%cl, %cl
	je	LBB6_272
# BB#269:                               # %b91.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	-1(%edi), %edx
	leal	4(%edi), %esi
	movb	-1(%ebp,%edi), %bl
	movb	4(%ebp,%edi), %ch
	.p2align	4, 0x90
LBB6_270:                               # %b91
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%bl
	addb	$11, %ch
	decb	%cl
	jne	LBB6_270
# BB#271:                               # %c92.preheader.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%bl, (%ebp,%edx)
	movb	%ch, (%ebp,%esi)
	movb	%cl, (%ebp,%eax)
LBB6_272:                               # %c92.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	(%ebp,%edi), %ch
	testb	%ch, %ch
	je	LBB6_273
# BB#274:                               # %b93.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%ch, (%ebp,%eax)
	movb	$0, (%ebp,%edi)
	leal	4(%ebp,%edi), %edx
	movb	4(%ebp,%edi), %cl
	movb	%cl, (%esp)             # 1-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_275:                               # %b93
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%bl
	movb	%ch, %cl
	subb	%bl, %cl
	jne	LBB6_275
# BB#276:                               # %e93.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%bl, (%ebp,%edi)
	movb	(%esp), %ch             # 1-byte Reload
	addb	%bl, %ch
	movb	%ch, (%edx)
	movb	%cl, (%ebp,%eax)
	jmp	LBB6_277
	.p2align	4, 0x90
LBB6_273:                               # %c93.preheader.e93_crit_edge
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	4(%ebp,%edi), %edx
LBB6_277:                               # %e93
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	(%edx), %cl
	testb	%cl, %cl
	je	LBB6_280
# BB#278:                               # %b95.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%cl, (%ebp,%eax)
	movb	$0, (%edx)
	leal	9(%edi), %esi
	movb	9(%ebp,%edi), %ch
	decb	%cl
	movb	$1, %bl
	.p2align	4, 0x90
LBB6_279:                               # %b95
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	%bl, (%edx)
	movb	%ch, %bh
	addb	%bl, %bh
	movb	%bh, (%ebp,%esi)
	movb	%cl, (%ebp,%eax)
	decb	%cl
	incb	%bl
	cmpb	$-1, %cl
	jne	LBB6_279
LBB6_280:                               # %e95
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%edi, %esi
	leal	10(%esi), %edi
	movb	10(%ebp,%esi), %cl
	movb	12(%ebp,%esi), %al
	movl	%ebp, %edx
	movl	%esi, (%esp)            # 4-byte Spill
	leal	12(%esi), %ebp
	testb	%cl, %cl
	je	LBB6_282
# BB#281:                               # %b96.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%cl, %al
	movb	%al, (%edx,%ebp)
	movb	$0, (%edx,%edi)
LBB6_282:                               # %c97.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	(%esp), %ecx            # 4-byte Reload
	leal	9(%ecx), %edx
	testb	%al, %al
	movl	12(%esp), %esi          # 4-byte Reload
	je	LBB6_286
# BB#283:                               # %b97.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	(%esi,%edx), %bh
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_284:                               # %b97
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%cl
	movb	%al, %bl
	subb	%cl, %bl
	jne	LBB6_284
# BB#285:                               # %e97.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%cl, (%esi,%edi)
	addb	%cl, %bh
	movb	%bh, (%esi,%edx)
	movb	%bl, (%esi,%ebp)
LBB6_286:                               # %e97
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	(%esi,%edx), %al
	addb	$-12, %al
	movb	%al, (%esi,%edx)
	je	LBB6_288
# BB#287:                               # %b98.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%al, (%esi,%ebp)
	movb	$0, (%esi,%edx)
LBB6_288:                               # %c99.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	cmpb	$0, (%esi,%ebp)
	movl	(%esp), %ecx            # 4-byte Reload
	leal	16(%esi,%ecx), %edi
	je	LBB6_293
# BB#289:                               # %b99.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	$1, (%esi,%edx)
	incb	(%edi)
	incb	17(%esi,%ecx)
	decb	(%esi,%ebp)
	je	LBB6_293
# BB#290:                               # %b99.b99_crit_edge.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	17(%ecx), %eax
	movb	(%esi,%edx), %ch
	movb	(%edi), %cl
	movb	(%esi,%eax), %bh
	movb	(%esi,%ebp), %bl
	.p2align	4, 0x90
LBB6_291:                               # %b99.b99_crit_edge
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%ch
	incb	%cl
	incb	%bh
	decb	%bl
	jne	LBB6_291
# BB#292:                               # %e99.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	12(%esp), %esi          # 4-byte Reload
	movb	%ch, (%esi,%edx)
	movb	%cl, (%edi)
	movb	%bh, (%esi,%eax)
	movb	%bl, (%esi,%ebp)
	movl	(%esp), %ecx            # 4-byte Reload
LBB6_293:                               # %e99
                                        #   in Loop: Header=BB6_266 Depth=4
	addl	$16, %ecx
	movb	(%edi), %al
	testb	%al, %al
	movl	%esi, %ebp
	je	LBB6_294
	.p2align	4, 0x90
LBB6_312:                               # %b100
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_320 Depth 6
                                        #             Child Loop BB6_322 Depth 6
	movl	%ecx, %esi
	decb	%al
	movb	%al, (%edi)
	movb	(%ebp,%esi), %al
	leal	1(%esi), %edi
	leal	4(%esi), %ecx
	testb	%al, %al
	je	LBB6_314
# BB#313:                               # %b101.lr.ph
                                        #   in Loop: Header=BB6_312 Depth=5
	addb	%al, (%ebp,%ecx)
	movb	$0, (%ebp,%esi)
LBB6_314:                               # %c102.preheader
                                        #   in Loop: Header=BB6_312 Depth=5
	movb	(%ebp,%edi), %bl
	testb	%bl, %bl
	je	LBB6_311
# BB#315:                               # %b102.lr.ph
                                        #   in Loop: Header=BB6_312 Depth=5
	movb	5(%ebp,%esi), %dl
	addl	$5, %esi
	movl	%ebx, %eax
	decb	%al
	movzbl	%al, %ebp
	incl	%ebp
	cmpl	$4, %ebp
	jae	LBB6_317
# BB#316:                               #   in Loop: Header=BB6_312 Depth=5
	movl	12(%esp), %ebp          # 4-byte Reload
	jmp	LBB6_322
	.p2align	4, 0x90
LBB6_317:                               # %min.iters.checked8034
                                        #   in Loop: Header=BB6_312 Depth=5
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	je	LBB6_318
# BB#319:                               # %vector.ph8038
                                        #   in Loop: Header=BB6_312 Depth=5
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	subb	%cl, %bl
	xorl	%ecx, %ecx
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movb	%dl, %bh
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_320:                               # %vector.body8030
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_312 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%bh
	incb	%dl
	incb	%cl
	incb	%al
	addl	$-4, %edi
	jne	LBB6_320
# BB#321:                               # %middle.block8031
                                        #   in Loop: Header=BB6_312 Depth=5
	addb	%cl, %bh
	addb	%al, %dl
	addb	%bh, %dl
	cmpl	4(%esp), %ebp           # 4-byte Folded Reload
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	(%esp), %ecx            # 4-byte Reload
	movl	8(%esp), %edi           # 4-byte Reload
	jne	LBB6_322
	jmp	LBB6_310
LBB6_318:                               #   in Loop: Header=BB6_312 Depth=5
	movl	12(%esp), %ebp          # 4-byte Reload
	.p2align	4, 0x90
LBB6_322:                               # %b102
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_312 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%dl
	decb	%bl
	jne	LBB6_322
LBB6_310:                               # %c100.loopexit.loopexit
                                        #   in Loop: Header=BB6_312 Depth=5
	movb	%dl, (%ebp,%esi)
	movb	%bl, (%ebp,%edi)
LBB6_311:                               # %c100.loopexit
                                        #   in Loop: Header=BB6_312 Depth=5
	leal	(%ebp,%ecx), %edi
	movb	(%ebp,%ecx), %al
	testb	%al, %al
	jne	LBB6_312
LBB6_294:                               # %e100
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	3(%ebp,%ecx), %al
	testb	%al, %al
	movl	%ecx, %edi
	je	LBB6_296
# BB#295:                               # %b104.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	3(%edi), %ecx
	addb	%al, 2(%ebp,%edi)
	movb	%al, (%ebp,%ecx)
	movb	$0, (%ebp,%edi)
LBB6_296:                               # %e104
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	7(%edi), %edx
	movb	4(%ebp,%edi), %al
	movb	7(%ebp,%edi), %cl
	movl	%edi, %esi
	leal	4(%edi), %edi
	testb	%cl, %cl
	je	LBB6_298
# BB#297:                               # %b105.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%cl, %al
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%edx)
LBB6_298:                               # %c106.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	testb	%al, %al
	je	LBB6_302
# BB#299:                               # %b106.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %ecx
	leal	2(%ecx), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	movb	2(%ebp,%ecx), %bh
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_300:                               # %b106
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%cl
	movb	%al, %bl
	subb	%cl, %bl
	jne	LBB6_300
# BB#301:                               # %e106.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%cl, (%ebp,%edx)
	addb	%cl, %bh
	movl	(%esp), %eax            # 4-byte Reload
	movb	%bh, (%ebp,%eax)
	movb	%bl, (%ebp,%edi)
LBB6_302:                               # %e106
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %edi
	leal	11(%edi), %edx
	movb	8(%ebp,%edi), %al
	movb	11(%ebp,%edi), %cl
	leal	8(%edi), %edi
	testb	%cl, %cl
	je	LBB6_304
# BB#303:                               # %b107.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%cl, %al
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%edx)
LBB6_304:                               # %c108.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	testb	%al, %al
	je	LBB6_308
# BB#305:                               # %b108.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %ecx
	leal	2(%ecx), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	movb	2(%ebp,%ecx), %bh
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_306:                               # %b108
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%cl
	movb	%al, %bl
	subb	%cl, %bl
	jne	LBB6_306
# BB#307:                               # %e108.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%cl, (%ebp,%edx)
	addb	%cl, %bh
	movl	(%esp), %eax            # 4-byte Reload
	movb	%bh, (%ebp,%eax)
	movb	%bl, (%ebp,%edi)
LBB6_308:                               # %e108
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %edi
	movb	1(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_309
# BB#323:                               # %b109.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	addl	$2, %edi
	.p2align	4, 0x90
LBB6_325:                               # %b109
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	-1(%edi), %ecx
	decb	%al
	movb	%al, -1(%ebp,%edi)
	movzbl	(%ebp,%edi), %eax
	testb	%al, %al
	je	LBB6_327
# BB#326:                               # %b110.lr.ph
                                        #   in Loop: Header=BB6_325 Depth=5
	addb	%al, -4(%ebp,%edi)
	movb	$0, (%ebp,%edi)
LBB6_327:                               # %c111.preheader
                                        #   in Loop: Header=BB6_325 Depth=5
	movzbl	(%ebp,%ecx), %edx
	testb	%dl, %dl
	movzbl	-5(%ebp,%edi), %eax
	je	LBB6_324
# BB#328:                               # %b111.lr.ph
                                        #   in Loop: Header=BB6_325 Depth=5
	leal	-5(%edi), %esi
	addb	%dl, %al
	movb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%ecx)
LBB6_324:                               # %c109.loopexit
                                        #   in Loop: Header=BB6_325 Depth=5
	addl	$-4, %edi
	testb	%al, %al
	jne	LBB6_325
# BB#329:                               # %e109.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	decl	%edi
	jmp	LBB6_330
	.p2align	4, 0x90
LBB6_309:                               #   in Loop: Header=BB6_266 Depth=4
	incl	%edi
LBB6_330:                               # %e109
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	1(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_332
# BB#331:                               # %b112.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	1(%edi), %ecx
	addb	%al, -6(%ebp,%edi)
	movb	$0, (%ebp,%ecx)
LBB6_332:                               # %e112
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%edi, %ecx
	leal	-8(%ecx), %edx
	movb	-8(%ebp,%ecx), %al
	leal	-5(%ecx), %ebx
	addb	$11, %al
	movb	%al, -8(%ebp,%ecx)
	movb	-5(%ebp,%ecx), %cl
	movl	%edx, (%esp)            # 4-byte Spill
	je	LBB6_334
# BB#333:                               # %b113.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%al, %cl
	movb	%cl, (%ebp,%ebx)
	movb	$0, (%ebp,%edx)
LBB6_334:                               # %c114.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	testb	%cl, %cl
	movl	%edi, %esi
	leal	-1(%ebp,%esi), %edx
	je	LBB6_338
# BB#335:                               # %b114.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%ebx, 4(%esp)           # 4-byte Spill
	movb	(%edx), %bh
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_336:                               # %b114
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%al
	movb	%cl, %bl
	subb	%al, %bl
	jne	LBB6_336
# BB#337:                               # %e114.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	(%esp), %ecx            # 4-byte Reload
	movb	%al, (%ebp,%ecx)
	addb	%al, %bh
	movb	%bh, (%edx)
	movl	%edi, %esi
	movb	%al, (%ebp,%esi)
	movl	4(%esp), %eax           # 4-byte Reload
	movb	%bl, (%ebp,%eax)
LBB6_338:                               # %e114
                                        #   in Loop: Header=BB6_266 Depth=4
	decl	%esi
	movb	(%edx), %al
	testb	%al, %al
	movl	%esi, %edi
	je	LBB6_339
	.p2align	4, 0x90
LBB6_357:                               # %b115
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_365 Depth 6
                                        #             Child Loop BB6_367 Depth 6
	movl	%edi, %esi
	decb	%al
	movb	%al, (%edx)
	movb	(%ebp,%esi), %al
	leal	1(%esi), %ecx
	leal	4(%esi), %edi
	testb	%al, %al
	je	LBB6_359
# BB#358:                               # %b116.lr.ph
                                        #   in Loop: Header=BB6_357 Depth=5
	addb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%esi)
LBB6_359:                               # %c117.preheader
                                        #   in Loop: Header=BB6_357 Depth=5
	movb	(%ebp,%ecx), %bl
	testb	%bl, %bl
	je	LBB6_356
# BB#360:                               # %b117.lr.ph
                                        #   in Loop: Header=BB6_357 Depth=5
	movb	5(%ebp,%esi), %dl
	addl	$5, %esi
	movl	%ebx, %eax
	decb	%al
	movzbl	%al, %ebp
	incl	%ebp
	cmpl	$4, %ebp
	jae	LBB6_362
# BB#361:                               #   in Loop: Header=BB6_357 Depth=5
	movl	12(%esp), %ebp          # 4-byte Reload
	jmp	LBB6_367
	.p2align	4, 0x90
LBB6_362:                               # %min.iters.checked8009
                                        #   in Loop: Header=BB6_357 Depth=5
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	je	LBB6_363
# BB#364:                               # %vector.ph8013
                                        #   in Loop: Header=BB6_357 Depth=5
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	%edi, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	subb	%cl, %bl
	xorl	%ecx, %ecx
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movb	%dl, %bh
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_365:                               # %vector.body8005
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_357 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%bh
	incb	%dl
	incb	%cl
	incb	%al
	addl	$-4, %edi
	jne	LBB6_365
# BB#366:                               # %middle.block8006
                                        #   in Loop: Header=BB6_357 Depth=5
	addb	%cl, %bh
	addb	%al, %dl
	addb	%bh, %dl
	cmpl	4(%esp), %ebp           # 4-byte Folded Reload
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	(%esp), %edi            # 4-byte Reload
	movl	8(%esp), %ecx           # 4-byte Reload
	jne	LBB6_367
	jmp	LBB6_355
LBB6_363:                               #   in Loop: Header=BB6_357 Depth=5
	movl	12(%esp), %ebp          # 4-byte Reload
	.p2align	4, 0x90
LBB6_367:                               # %b117
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_357 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%dl
	decb	%bl
	jne	LBB6_367
LBB6_355:                               # %c115.loopexit.loopexit
                                        #   in Loop: Header=BB6_357 Depth=5
	movb	%dl, (%ebp,%esi)
	movb	%bl, (%ebp,%ecx)
LBB6_356:                               # %c115.loopexit
                                        #   in Loop: Header=BB6_357 Depth=5
	leal	(%ebp,%edi), %edx
	movb	(%ebp,%edi), %al
	testb	%al, %al
	jne	LBB6_357
LBB6_339:                               # %e115
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	3(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_341
# BB#340:                               # %b119.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	3(%edi), %ecx
	addb	%al, 2(%ebp,%edi)
	movb	%al, (%ebp,%ecx)
	movb	$0, (%ebp,%edi)
LBB6_341:                               # %e119
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	7(%edi), %edx
	movb	4(%ebp,%edi), %al
	movb	7(%ebp,%edi), %cl
	movl	%edi, %esi
	leal	4(%edi), %edi
	testb	%cl, %cl
	je	LBB6_343
# BB#342:                               # %b120.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%cl, %al
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%edx)
LBB6_343:                               # %c121.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	testb	%al, %al
	je	LBB6_347
# BB#344:                               # %b121.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %ecx
	leal	2(%ecx), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	movb	2(%ebp,%ecx), %bh
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_345:                               # %b121
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%cl
	movb	%al, %bl
	subb	%cl, %bl
	jne	LBB6_345
# BB#346:                               # %e121.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%cl, (%ebp,%edx)
	addb	%cl, %bh
	movl	(%esp), %eax            # 4-byte Reload
	movb	%bh, (%ebp,%eax)
	movb	%bl, (%ebp,%edi)
LBB6_347:                               # %e121
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %edi
	leal	11(%edi), %edx
	movb	8(%ebp,%edi), %al
	movb	11(%ebp,%edi), %cl
	leal	8(%edi), %edi
	testb	%cl, %cl
	je	LBB6_349
# BB#348:                               # %b122.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%cl, %al
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%edx)
LBB6_349:                               # %c123.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	testb	%al, %al
	je	LBB6_353
# BB#350:                               # %b123.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %ecx
	leal	2(%ecx), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	movb	2(%ebp,%ecx), %bh
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_351:                               # %b123
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%cl
	movb	%al, %bl
	subb	%cl, %bl
	jne	LBB6_351
# BB#352:                               # %e123.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%cl, (%ebp,%edx)
	addb	%cl, %bh
	movl	(%esp), %eax            # 4-byte Reload
	movb	%bh, (%ebp,%eax)
	movb	%bl, (%ebp,%edi)
LBB6_353:                               # %e123
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %edi
	movb	1(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_354
# BB#368:                               # %b124.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	addl	$2, %edi
	.p2align	4, 0x90
LBB6_370:                               # %b124
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	-1(%edi), %ecx
	decb	%al
	movb	%al, -1(%ebp,%edi)
	movzbl	(%ebp,%edi), %eax
	testb	%al, %al
	je	LBB6_372
# BB#371:                               # %b125.lr.ph
                                        #   in Loop: Header=BB6_370 Depth=5
	addb	%al, -4(%ebp,%edi)
	movb	$0, (%ebp,%edi)
LBB6_372:                               # %c126.preheader
                                        #   in Loop: Header=BB6_370 Depth=5
	movzbl	(%ebp,%ecx), %edx
	testb	%dl, %dl
	movzbl	-5(%ebp,%edi), %eax
	je	LBB6_369
# BB#373:                               # %b126.lr.ph
                                        #   in Loop: Header=BB6_370 Depth=5
	leal	-5(%edi), %esi
	addb	%dl, %al
	movb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%ecx)
LBB6_369:                               # %c124.loopexit
                                        #   in Loop: Header=BB6_370 Depth=5
	addl	$-4, %edi
	testb	%al, %al
	jne	LBB6_370
# BB#374:                               # %e124.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	decl	%edi
	jmp	LBB6_375
	.p2align	4, 0x90
LBB6_354:                               #   in Loop: Header=BB6_266 Depth=4
	incl	%edi
LBB6_375:                               # %e124
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	1(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_377
# BB#376:                               # %b127.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	1(%edi), %ecx
	addb	%al, -6(%ebp,%edi)
	movb	$0, (%ebp,%ecx)
LBB6_377:                               # %e127
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	-8(%ebp,%edi), %al
	addb	$11, %al
	movb	%al, -8(%ebp,%edi)
	leal	-1(%ebp,%edi), %edx
	je	LBB6_378
# BB#379:                               # %b128.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	-8(%edi), %esi
	movb	(%edx), %cl
	addb	%al, %cl
	movb	%cl, (%edx)
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%esi)
	decl	%edi
	jmp	LBB6_383
	.p2align	4, 0x90
LBB6_378:                               # %e127.c129.preheader_crit_edge
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	(%edx), %cl
	decl	%edi
	jmp	LBB6_383
	.p2align	4, 0x90
LBB6_382:                               # %c129.loopexit
                                        #   in Loop: Header=BB6_383 Depth=5
	leal	(%ebp,%edi), %edx
	movb	(%ebp,%edi), %cl
LBB6_383:                               # %c129.loopexit
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_392 Depth 6
                                        #             Child Loop BB6_394 Depth 6
	testb	%cl, %cl
	je	LBB6_395
# BB#384:                               # %b129
                                        #   in Loop: Header=BB6_383 Depth=5
	movl	%edi, %esi
	decb	%cl
	movb	%cl, (%edx)
	movb	(%ebp,%esi), %al
	leal	1(%esi), %ecx
	leal	4(%esi), %edi
	testb	%al, %al
	je	LBB6_386
# BB#385:                               # %b130.lr.ph
                                        #   in Loop: Header=BB6_383 Depth=5
	addb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%esi)
LBB6_386:                               # %c131.preheader
                                        #   in Loop: Header=BB6_383 Depth=5
	movb	(%ebp,%ecx), %bl
	testb	%bl, %bl
	je	LBB6_382
# BB#387:                               # %b131.lr.ph
                                        #   in Loop: Header=BB6_383 Depth=5
	movb	5(%ebp,%esi), %dl
	addl	$5, %esi
	movl	%ebx, %eax
	decb	%al
	movzbl	%al, %ebp
	incl	%ebp
	cmpl	$4, %ebp
	jae	LBB6_389
# BB#388:                               #   in Loop: Header=BB6_383 Depth=5
	movl	12(%esp), %ebp          # 4-byte Reload
	jmp	LBB6_394
	.p2align	4, 0x90
LBB6_389:                               # %min.iters.checked7984
                                        #   in Loop: Header=BB6_383 Depth=5
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebp, %eax
	andl	$508, %eax              # imm = 0x1FC
	je	LBB6_390
# BB#391:                               # %vector.ph7988
                                        #   in Loop: Header=BB6_383 Depth=5
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	%edi, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	subb	%cl, %bl
	xorl	%ecx, %ecx
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movb	%dl, %bh
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_392:                               # %vector.body7980
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_383 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%bh
	incb	%dl
	incb	%cl
	incb	%al
	addl	$-4, %edi
	jne	LBB6_392
# BB#393:                               # %middle.block7981
                                        #   in Loop: Header=BB6_383 Depth=5
	addb	%cl, %bh
	addb	%al, %dl
	addb	%bh, %dl
	cmpl	4(%esp), %ebp           # 4-byte Folded Reload
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	(%esp), %edi            # 4-byte Reload
	movl	8(%esp), %ecx           # 4-byte Reload
	jne	LBB6_394
	jmp	LBB6_381
LBB6_390:                               #   in Loop: Header=BB6_383 Depth=5
	movl	12(%esp), %ebp          # 4-byte Reload
	.p2align	4, 0x90
LBB6_394:                               # %b131
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_383 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%dl
	decb	%bl
	jne	LBB6_394
LBB6_381:                               # %c129.loopexit.loopexit
                                        #   in Loop: Header=BB6_383 Depth=5
	movb	%dl, (%ebp,%esi)
	movb	%bl, (%ebp,%ecx)
	jmp	LBB6_382
	.p2align	4, 0x90
LBB6_395:                               # %e129
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	3(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_397
# BB#396:                               # %b133.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	3(%edi), %ecx
	addb	%al, 2(%ebp,%edi)
	movb	%al, (%ebp,%ecx)
	movb	$0, (%ebp,%edi)
LBB6_397:                               # %e133
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	7(%edi), %edx
	movb	4(%ebp,%edi), %al
	movb	7(%ebp,%edi), %cl
	movl	%edi, %esi
	leal	4(%edi), %edi
	testb	%cl, %cl
	je	LBB6_399
# BB#398:                               # %b134.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%cl, %al
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%edx)
LBB6_399:                               # %c135.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	testb	%al, %al
	je	LBB6_403
# BB#400:                               # %b135.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %ecx
	leal	2(%ecx), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	movb	2(%ebp,%ecx), %bh
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_401:                               # %b135
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%cl
	movb	%al, %bl
	subb	%cl, %bl
	jne	LBB6_401
# BB#402:                               # %e135.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%cl, (%ebp,%edx)
	addb	%cl, %bh
	movl	(%esp), %eax            # 4-byte Reload
	movb	%bh, (%ebp,%eax)
	movb	%bl, (%ebp,%edi)
LBB6_403:                               # %e135
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %edi
	leal	11(%edi), %edx
	movb	8(%ebp,%edi), %al
	movb	11(%ebp,%edi), %cl
	leal	8(%edi), %edi
	testb	%cl, %cl
	je	LBB6_405
# BB#404:                               # %b136.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%cl, %al
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%edx)
LBB6_405:                               # %c137.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	testb	%al, %al
	je	LBB6_409
# BB#406:                               # %b137.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %ecx
	leal	2(%ecx), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	movb	2(%ebp,%ecx), %bh
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_407:                               # %b137
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	incb	%cl
	movb	%al, %bl
	subb	%cl, %bl
	jne	LBB6_407
# BB#408:                               # %e137.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%cl, (%ebp,%edx)
	addb	%cl, %bh
	movl	(%esp), %eax            # 4-byte Reload
	movb	%bh, (%ebp,%eax)
	movb	%bl, (%ebp,%edi)
LBB6_409:                               # %e137
                                        #   in Loop: Header=BB6_266 Depth=4
	movl	%esi, %edi
	movb	1(%ebp,%edi), %al
	testb	%al, %al
	je	LBB6_410
# BB#411:                               # %b138.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	addl	$2, %edi
	.p2align	4, 0x90
LBB6_413:                               # %b138
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	-1(%edi), %ecx
	decb	%al
	movb	%al, -1(%ebp,%edi)
	movzbl	(%ebp,%edi), %eax
	testb	%al, %al
	je	LBB6_415
# BB#414:                               # %b139.lr.ph
                                        #   in Loop: Header=BB6_413 Depth=5
	addb	%al, -4(%ebp,%edi)
	movb	$0, (%ebp,%edi)
LBB6_415:                               # %c140.preheader
                                        #   in Loop: Header=BB6_413 Depth=5
	movzbl	(%ebp,%ecx), %edx
	testb	%dl, %dl
	movzbl	-5(%ebp,%edi), %eax
	je	LBB6_412
# BB#416:                               # %b140.lr.ph
                                        #   in Loop: Header=BB6_413 Depth=5
	leal	-5(%edi), %esi
	addb	%dl, %al
	movb	%al, (%ebp,%esi)
	movb	$0, (%ebp,%ecx)
LBB6_412:                               # %c138.loopexit
                                        #   in Loop: Header=BB6_413 Depth=5
	addl	$-4, %edi
	testb	%al, %al
	jne	LBB6_413
# BB#417:                               # %e138.loopexit
                                        #   in Loop: Header=BB6_266 Depth=4
	decl	%edi
	jmp	LBB6_418
	.p2align	4, 0x90
LBB6_410:                               #   in Loop: Header=BB6_266 Depth=4
	incl	%edi
LBB6_418:                               # %e138
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	1(%edi), %ecx
	movb	-6(%ebp,%edi), %dl
	movb	1(%ebp,%edi), %dh
	leal	-6(%edi), %eax
	testb	%dh, %dh
	je	LBB6_420
# BB#419:                               # %b141.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	%dh, %dl
	movb	%dl, (%ebp,%eax)
	movb	$0, (%ebp,%ecx)
LBB6_420:                               # %e141
                                        #   in Loop: Header=BB6_266 Depth=4
	addb	$-4, %dl
	movb	%dl, (%ebp,%eax)
	je	LBB6_460
# BB#421:                               # %b142
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	$1, 1(%ebp,%edi)
	incb	(%ebp,%eax)
	je	LBB6_423
# BB#422:                               # %c143.e143_crit_edge
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	(%ebp,%ecx), %dl
	decb	%dl
	movb	$0, (%ebp,%eax)
	movb	%dl, (%ebp,%ecx)
LBB6_423:                               # %e143
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	-13(%ebp,%edi), %al
	testb	%al, %al
	leal	-1(%ebp,%edi), %edx
	je	LBB6_425
# BB#424:                               # %b145.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	-13(%edi), %ecx
	movb	(%ebp,%edi), %ah
	addb	%al, %ah
	addb	%al, (%edx)
	movb	%ah, (%ebp,%edi)
	movb	$0, (%ebp,%ecx)
LBB6_425:                               # %e146
                                        #   in Loop: Header=BB6_266 Depth=4
	decl	%edi
	movb	(%edx), %al
	jmp	LBB6_428
	.p2align	4, 0x90
LBB6_427:                               # %c147.loopexit
                                        #   in Loop: Header=BB6_428 Depth=5
	leal	(%ebp,%edi), %edx
	movb	(%ebp,%edi), %al
LBB6_428:                               # %c147.loopexit
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_438 Depth 6
                                        #             Child Loop BB6_434 Depth 6
                                        #             Child Loop BB6_447 Depth 6
                                        #             Child Loop BB6_449 Depth 6
	testb	%al, %al
	je	LBB6_450
# BB#429:                               # %b147
                                        #   in Loop: Header=BB6_428 Depth=5
	movl	%edi, %esi
	decb	%al
	movb	%al, (%edx)
	movb	(%ebp,%esi), %al
	leal	1(%esi), %edx
	testb	%al, %al
	je	LBB6_431
# BB#430:                               # %b148.lr.ph
                                        #   in Loop: Header=BB6_428 Depth=5
	addb	%al, 4(%ebp,%esi)
	movb	$0, (%ebp,%esi)
LBB6_431:                               # %c149.preheader
                                        #   in Loop: Header=BB6_428 Depth=5
	movb	(%ebp,%edx), %bl
	leal	2(%esi), %ecx
	testb	%bl, %bl
	je	LBB6_441
# BB#432:                               # %b149.lr.ph
                                        #   in Loop: Header=BB6_428 Depth=5
	movl	%edx, (%esp)            # 4-byte Spill
	leal	5(%esi), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movb	5(%ebp,%esi), %dl
	movl	%ebx, %eax
	decb	%al
	movzbl	%al, %edi
	incl	%edi
	cmpl	$3, %edi
	ja	LBB6_435
# BB#433:                               #   in Loop: Header=BB6_428 Depth=5
	movl	(%esp), %eax            # 4-byte Reload
	movl	8(%esp), %edi           # 4-byte Reload
	jmp	LBB6_434
	.p2align	4, 0x90
LBB6_435:                               # %min.iters.checked7959
                                        #   in Loop: Header=BB6_428 Depth=5
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	%edi, %ecx
	andl	$508, %ecx              # imm = 0x1FC
	movl	%edi, %eax
	andl	$508, %eax              # imm = 0x1FC
	je	LBB6_436
# BB#437:                               # %vector.ph7963
                                        #   in Loop: Header=BB6_428 Depth=5
	subb	%cl, %bl
	xorl	%ecx, %ecx
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movb	%dl, %bh
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_438:                               # %vector.body7955
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_428 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%bh
	incb	%dl
	incb	%cl
	incb	%al
	addl	$-4, %ebp
	jne	LBB6_438
# BB#439:                               # %middle.block7956
                                        #   in Loop: Header=BB6_428 Depth=5
	addb	%cl, %bh
	addb	%al, %dl
	addb	%bh, %dl
	cmpl	16(%esp), %edi          # 4-byte Folded Reload
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	4(%esp), %ecx           # 4-byte Reload
	movl	(%esp), %eax            # 4-byte Reload
	movl	8(%esp), %edi           # 4-byte Reload
	jne	LBB6_434
	jmp	LBB6_440
LBB6_436:                               #   in Loop: Header=BB6_428 Depth=5
	movl	(%esp), %eax            # 4-byte Reload
	movl	8(%esp), %edi           # 4-byte Reload
	movl	4(%esp), %ecx           # 4-byte Reload
	.p2align	4, 0x90
LBB6_434:                               # %b149
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_428 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%dl
	decb	%bl
	jne	LBB6_434
LBB6_440:                               # %c150.preheader.loopexit
                                        #   in Loop: Header=BB6_428 Depth=5
	movb	%dl, (%ebp,%edi)
	movb	%bl, (%ebp,%eax)
LBB6_441:                               # %c150.preheader
                                        #   in Loop: Header=BB6_428 Depth=5
	movb	(%ebp,%ecx), %bl
	leal	4(%esi), %edi
	testb	%bl, %bl
	je	LBB6_427
# BB#442:                               # %b150.lr.ph
                                        #   in Loop: Header=BB6_428 Depth=5
	movl	%edi, (%esp)            # 4-byte Spill
	movb	6(%ebp,%esi), %dl
	addl	$6, %esi
	movl	%ebx, %eax
	decb	%al
	movzbl	%al, %edi
	incl	%edi
	cmpl	$3, %edi
	ja	LBB6_444
# BB#443:                               #   in Loop: Header=BB6_428 Depth=5
	movl	(%esp), %edi            # 4-byte Reload
	jmp	LBB6_449
	.p2align	4, 0x90
LBB6_444:                               # %min.iters.checked
                                        #   in Loop: Header=BB6_428 Depth=5
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	%edi, %ecx
	andl	$508, %ecx              # imm = 0x1FC
	movl	%edi, %eax
	andl	$508, %eax              # imm = 0x1FC
	je	LBB6_445
# BB#446:                               # %vector.ph
                                        #   in Loop: Header=BB6_428 Depth=5
	subb	%cl, %bl
	xorl	%ecx, %ecx
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movb	%dl, %bh
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_447:                               # %vector.body
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_428 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%bh
	incb	%dl
	incb	%cl
	incb	%al
	addl	$-4, %ebp
	jne	LBB6_447
# BB#448:                               # %middle.block
                                        #   in Loop: Header=BB6_428 Depth=5
	addb	%cl, %bh
	addb	%al, %dl
	addb	%bh, %dl
	cmpl	8(%esp), %edi           # 4-byte Folded Reload
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	(%esp), %edi            # 4-byte Reload
	movl	4(%esp), %ecx           # 4-byte Reload
	jne	LBB6_449
	jmp	LBB6_426
LBB6_445:                               #   in Loop: Header=BB6_428 Depth=5
	movl	(%esp), %edi            # 4-byte Reload
	movl	4(%esp), %ecx           # 4-byte Reload
	.p2align	4, 0x90
LBB6_449:                               # %b150
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        #           Parent Loop BB6_428 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	incb	%dl
	decb	%bl
	jne	LBB6_449
LBB6_426:                               # %c147.loopexit.loopexit
                                        #   in Loop: Header=BB6_428 Depth=5
	movb	%dl, (%ebp,%esi)
	movb	%bl, (%ebp,%ecx)
	jmp	LBB6_427
	.p2align	4, 0x90
LBB6_450:                               # %e147
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	2(%edi), %eax
	leal	3(%edi), %ecx
	cmpb	$0, 3(%ebp,%edi)
	je	LBB6_452
# BB#451:                               # %b151.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	$0, (%ebp,%ecx)
LBB6_452:                               # %c152.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	(%ebp,%eax), %dl
	testb	%dl, %dl
	je	LBB6_454
# BB#453:                               # %b152.lr.ph
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	%dl, (%ebp,%ecx)
	movb	$0, (%ebp,%eax)
LBB6_454:                               # %e152
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	1(%ebp,%edi), %al
	incl	%edi
	jmp	LBB6_455
	.p2align	4, 0x90
LBB6_457:                               # %b154.lr.ph
                                        #   in Loop: Header=BB6_455 Depth=5
	addb	%dl, %al
	movb	%al, (%ebp,%edi)
	movb	$0, (%ebp,%ecx)
LBB6_455:                               # %c153.loopexit
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        #       Parent Loop BB6_265 Depth=3
                                        #         Parent Loop BB6_266 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	testb	%al, %al
	je	LBB6_458
# BB#456:                               # %b153
                                        #   in Loop: Header=BB6_455 Depth=5
	movl	%edi, %ecx
	leal	-4(%ecx), %edi
	movl	%eax, %edx
	decb	%dl
	movb	%dl, (%ebp,%ecx)
	movzbl	-4(%ebp,%ecx), %eax
	jne	LBB6_457
	jmp	LBB6_455
	.p2align	4, 0x90
LBB6_458:                               # %e153
                                        #   in Loop: Header=BB6_266 Depth=4
	cmpb	$0, -6(%ebp,%edi)
	leal	-6(%edi), %eax
	je	LBB6_460
# BB#459:                               # %b155.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	movb	$0, (%ebp,%eax)
LBB6_460:                               # %e142
                                        #   in Loop: Header=BB6_266 Depth=4
	cmpb	$0, -7(%ebp,%eax)
	je	LBB6_462
# BB#461:                               # %b156.preheader
                                        #   in Loop: Header=BB6_266 Depth=4
	leal	-7(%eax), %ecx
	movb	$0, (%ebp,%ecx)
LBB6_462:                               # %e156
                                        #   in Loop: Header=BB6_266 Depth=4
	decb	-11(%ebp,%eax)
	leal	-11(%eax), %edi
	leal	-12(%eax), %edx
	jne	LBB6_266
LBB6_463:                               # %e89
                                        #   in Loop: Header=BB6_265 Depth=3
	leal	1(%edx), %edi
	decb	(%ebp,%edx)
	jne	LBB6_265
	jmp	LBB6_464
	.p2align	4, 0x90
LBB6_263:                               #   in Loop: Header=BB6_179 Depth=2
	addl	$-10, %edi
	movl	%edi, %edx
LBB6_464:                               # %e88
                                        #   in Loop: Header=BB6_179 Depth=2
	leal	9(%edx), %edi
	cmpb	$0, 11(%ebp,%edx)
	je	LBB6_178
# BB#465:                               # %b157.preheader
                                        #   in Loop: Header=BB6_179 Depth=2
	addl	$11, %edx
	movb	$0, (%ebp,%edx)
LBB6_178:                               # %c63.loopexit
                                        #   in Loop: Header=BB6_179 Depth=2
	leal	(%ebp,%edi), %ecx
	movb	(%ebp,%edi), %al
	testb	%al, %al
	jne	LBB6_179
LBB6_466:                               # %e63
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpb	$0, -10(%ebp,%edi)
	leal	-10(%edi), %edi
	jne	LBB6_1
# BB#467:                               # %e2
	pushl	%ebp
	calll	_free
	addl	$4, %esp
	xorl	%eax, %eax
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl


