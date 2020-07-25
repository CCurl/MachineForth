	.file	"mf.c"
 # GNU C17 (MinGW.org GCC Build-20200227-1) version 9.2.0 (mingw32)
 #	compiled by GNU C version 9.2.0, GMP version 6.1.2, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.21-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/9.2.0/ mf.c
 # -mtune=generic -march=i586 -g -Ofast -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations -falign-functions
 # -falign-jumps -falign-labels -falign-loops -fassociative-math
 # -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec
 # -fbranch-count-reg -fcaller-saves -fcode-hoisting
 # -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 # -fcrossjumping -fcse-follow-jumps -fcx-limited-range -fdefer-pop
 # -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
 # -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 # -fexpensive-optimizations -ffinite-math-only -fforward-propagate
 # -ffp-int-builtin-inexact -ffunction-cse -fgcse -fgcse-after-reload
 # -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
 # -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
 # -findirect-inlining -finline -finline-atomics -finline-functions
 # -finline-functions-called-once -finline-small-functions -fipa-bit-cp
 # -fipa-cp -fipa-cp-clone -fipa-icf -fipa-icf-functions
 # -fipa-icf-variables -fipa-profile -fipa-pure-const -fipa-ra
 # -fipa-reference -fipa-reference-addressable -fipa-sra
 # -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
 # -fira-share-save-slots -fira-share-spill-slots
 # -fisolate-erroneous-paths-dereference -fivopts -fkeep-inline-dllexport
 # -fkeep-static-consts -fleading-underscore -flifetime-dse
 # -floop-interchange -floop-unroll-and-jam -flra-remat
 # -flto-odr-type-merging -fmerge-constants -fmerge-debug-strings
 # -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
 # -foptimize-strlen -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2
 # -fplt -fpredictive-commoning -fprefetch-loop-arrays -freciprocal-math
 # -free -freg-struct-return -freorder-blocks
 # -freorder-blocks-and-partition -freorder-functions
 # -frerun-cse-after-loop -fsched-critical-path-heuristic
 # -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 # -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 # -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
 # -fschedule-insns2 -fsemantic-interposition -fset-stack-executable
 # -fshow-column -fshrink-wrap -fshrink-wrap-separate
 # -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
 # -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
 # -fstrict-aliasing -fstrict-volatile-bitfields -fsync-libcalls
 # -fthread-jumps -ftoplevel-reorder -ftree-bit-ccp -ftree-builtin-call-dce
 # -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
 # -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
 # -ftree-loop-distribute-patterns -ftree-loop-distribution
 # -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 # -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
 # -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
 # -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr
 # -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
 # -ftree-vrp -funit-at-a-time -funsafe-math-optimizations -funswitch-loops
 # -funwind-tables -fvar-tracking -fvar-tracking-assignments -fverbose-asm
 # -fversion-loops-for-strides -fzero-initialized-in-bss -m32 -m80387
 # -m96bit-long-double -maccumulate-outgoing-args -malign-double
 # -malign-stringops -mavx256-split-unaligned-load
 # -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387
 # -mlong-double-80 -mms-bitfields -mno-red-zone -mno-sse4 -mpush-args
 # -msahf -mstack-arg-probe -mstv -mvzeroupper

	.text
Ltext0:
	.p2align 4
	.globl	_strcpy_s
	.def	_strcpy_s;	.scl	2;	.type	32;	.endef
_strcpy_s:
LVL0:
LFB79:
	.file 1 "mf.c"
	.loc 1 103 1 view -0
	.cfi_startproc
	.loc 1 104 2 view LVU1
 # mf.c:103: {
	.loc 1 103 1 is_stmt 0 view LVU2
	movl	12(%esp), %edx	 # src, src
	.loc 1 103 1 view LVU3
	movl	4(%esp), %ecx	 # dst, dst
	.loc 1 104 8 is_stmt 1 view LVU4
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU5
	movzbl	(%edx), %eax	 #* src, _1
 # mf.c:104: 	while (*src)
	.loc 1 104 8 view LVU6
	testb	%al, %al	 # _1
	je	L1	 #,
LVL1:
	.p2align 4,,10
	.p2align 3
L3:
	.loc 1 106 3 is_stmt 1 view LVU7
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 19 is_stmt 0 view LVU8
	addl	$1, %edx	 #, src
LVL2:
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 12 view LVU9
	movb	%al, (%ecx)	 # _1, MEM[base: dst_9, offset: 4294967295B]
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 8 view LVU10
	addl	$1, %ecx	 #, dst
LVL3:
	.loc 1 104 8 is_stmt 1 view LVU11
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU12
	movzbl	(%edx), %eax	 #* src, _1
 # mf.c:104: 	while (*src)
	.loc 1 104 8 view LVU13
	testb	%al, %al	 # _1
	jne	L3	 #,
L1:
 # mf.c:108: }
	.loc 1 108 1 view LVU14
	ret	
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	_fopen_s
	.def	_fopen_s;	.scl	2;	.type	32;	.endef
_fopen_s:
LVL4:
LFB80:
	.loc 1 111 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 112 2 view LVU16
 # mf.c:111: {
	.loc 1 111 1 is_stmt 0 view LVU17
	subl	$28, %esp	 #,
	.cfi_def_cfa_offset 32
 # mf.c:112: 	FILE* fp = fopen(nm, mode);
	.loc 1 112 13 view LVU18
	movl	40(%esp), %eax	 # mode, mode
	movl	%eax, 4(%esp)	 # mode,
	movl	36(%esp), %eax	 # nm, nm
	movl	%eax, (%esp)	 # nm,
	call	_fopen	 #
LVL5:
	.loc 1 113 2 is_stmt 1 view LVU19
 # mf.c:113: 	*pfp = fp;
	.loc 1 113 7 is_stmt 0 view LVU20
	movl	32(%esp), %edx	 # pfp, pfp
	movl	%eax, (%edx)	 # tmp86, *pfp_6(D)
 # mf.c:114: }
	.loc 1 114 1 view LVU21
	addl	$28, %esp	 #,
	.cfi_def_cfa_offset 4
	ret	
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	_push
	.def	_push;	.scl	2;	.type	32;	.endef
_push:
LVL6:
LFB81:
	.loc 1 121 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 122 2 view LVU23
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU24
	movl	_DSP, %eax	 # DSP, tmp87
	addl	$4, %eax	 #, _2
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU25
	movl	%eax, _DSP	 # _2, DSP
	cmpl	_DSE, %eax	 # DSE, _2
	jbe	L12	 #,
	.loc 1 123 3 is_stmt 1 view LVU26
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU27
	movl	_DSS, %eax	 # DSS, _2
	movl	%eax, _DSP	 # _2, DSP
L12:
	.loc 1 124 2 is_stmt 1 view LVU28
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU29
	movl	4(%esp), %edx	 # v, v
	movl	%edx, (%eax)	 # v, *prephitmp_12
 # mf.c:125: }
	.loc 1 125 1 view LVU30
	ret	
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	_pop
	.def	_pop;	.scl	2;	.type	32;	.endef
_pop:
LFB82:
	.loc 1 129 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 130 2 view LVU32
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU33
	movl	_DSP, %eax	 # DSP, DSP.7_1
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU34
	movl	(%eax), %edx	 # *DSP.7_1, <retval>
LVL7:
	.loc 1 131 2 is_stmt 1 view LVU35
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU36
	subl	$4, %eax	 #, _2
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU37
	movl	%eax, _DSP	 # _2, DSP
	cmpl	_DSS, %eax	 # DSS, _2
	jnb	L13	 #,
	.loc 1 132 3 is_stmt 1 view LVU38
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU39
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
	.loc 1 133 2 is_stmt 1 view LVU40
L13:
 # mf.c:134: }
	.loc 1 134 1 is_stmt 0 view LVU41
	movl	%edx, %eax	 # <retval>,
	ret	
	.cfi_endproc
LFE82:
	.section .rdata,"dr"
LC0:
	.ascii "( \0"
LC1:
	.ascii "%d \0"
	.text
	.p2align 4
	.globl	_dumpStack
	.def	_dumpStack;	.scl	2;	.type	32;	.endef
_dumpStack:
LVL8:
LFB83:
	.loc 1 138 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 139 2 view LVU43
 # mf.c:138: {
	.loc 1 138 1 is_stmt 0 view LVU44
	pushl	%edi	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp	 #,
	.cfi_def_cfa_offset 32
 # mf.c:138: {
	.loc 1 138 1 view LVU45
	movl	32(%esp), %ebx	 # num, num
 # mf.c:140: 	printf("( ");
	.loc 1 140 2 view LVU46
	movl	$LC0, (%esp)	 #,
 # mf.c:139: 	num = (num == 0) ? DSZ : num;
	.loc 1 139 25 view LVU47
	testl	%ebx, %ebx	 # num
	jne	L16	 #,
LVL9:
	.loc 1 140 2 is_stmt 1 view LVU48
	call	_printf	 #
LVL10:
	.loc 1 141 2 view LVU49
LBB135:
	.loc 1 141 7 view LVU50
	.loc 1 141 18 view LVU51
LBE135:
 # mf.c:139: 	num = (num == 0) ? DSZ : num;
	.loc 1 139 25 is_stmt 0 view LVU52
	movl	$64, %ebx	 #, num
LVL11:
L17:
LBB138:
 # mf.c:141: 	for (int i = 0; i < num; i++)
	.loc 1 141 11 view LVU53
	xorl	%edi, %edi	 # i
LVL12:
	.p2align 4,,10
	.p2align 3
L21:
	.loc 1 142 3 is_stmt 1 view LVU54
LBB136:
LBI136:
	.loc 1 128 6 view LVU55
LBB137:
	.loc 1 130 2 view LVU56
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU57
	movl	_DSP, %eax	 # DSP, DSP.7_10
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU58
	movl	(%eax), %edx	 # *DSP.7_10, v
LVL13:
	.loc 1 131 2 is_stmt 1 view LVU59
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU60
	subl	$4, %eax	 #, _12
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU61
	movl	%eax, _DSP	 # _12, DSP
	cmpl	_DSS, %eax	 # DSS, _12
	jnb	L19	 #,
	.loc 1 132 3 is_stmt 1 view LVU62
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU63
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
	.loc 1 133 2 is_stmt 1 view LVU64
LVL14:
L19:
	.loc 1 133 2 view LVU65
LBE137:
LBE136:
 # mf.c:142: 		printf("%d ", pop());
	.loc 1 142 3 is_stmt 0 view LVU66
	movl	%edx, 4(%esp)	 # v,
 # mf.c:141: 	for (int i = 0; i < num; i++)
	.loc 1 141 28 view LVU67
	addl	$1, %edi	 #, i
LVL15:
 # mf.c:142: 		printf("%d ", pop());
	.loc 1 142 3 view LVU68
	movl	$LC1, (%esp)	 #,
	call	_printf	 #
LVL16:
	.loc 1 141 27 is_stmt 1 view LVU69
	.loc 1 141 18 view LVU70
 # mf.c:141: 	for (int i = 0; i < num; i++)
	.loc 1 141 2 is_stmt 0 view LVU71
	cmpl	%ebx, %edi	 # num, i
	jl	L21	 #,
LVL17:
L18:
	.loc 1 141 2 view LVU72
LBE138:
	.loc 1 143 2 is_stmt 1 view LVU73
	movl	$41, 32(%esp)	 #,
 # mf.c:144: }
	.loc 1 144 1 is_stmt 0 view LVU74
	addl	$20, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 4
 # mf.c:143: 	printf(")");
	.loc 1 143 2 view LVU75
	jmp	_putchar	 #
LVL18:
	.p2align 4,,10
	.p2align 3
L16:
	.cfi_restore_state
	.loc 1 140 2 is_stmt 1 discriminator 4 view LVU76
	call	_printf	 #
LVL19:
	.loc 1 141 2 discriminator 4 view LVU77
LBB139:
	.loc 1 141 7 discriminator 4 view LVU78
	.loc 1 141 18 discriminator 4 view LVU79
 # mf.c:141: 	for (int i = 0; i < num; i++)
	.loc 1 141 2 is_stmt 0 discriminator 4 view LVU80
	testl	%ebx, %ebx	 # num
	jg	L17	 #,
	jmp	L18	 #
LBE139:
	.cfi_endproc
LFE83:
	.p2align 4
	.globl	_rpush
	.def	_rpush;	.scl	2;	.type	32;	.endef
_rpush:
LVL20:
LFB84:
	.loc 1 150 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 151 2 view LVU82
 # mf.c:151: 	if (++RSP > RSE)
	.loc 1 151 6 is_stmt 0 view LVU83
	movl	_RSP, %eax	 # RSP, tmp87
	addl	$4, %eax	 #, _2
 # mf.c:151: 	if (++RSP > RSE)
	.loc 1 151 5 view LVU84
	movl	%eax, _RSP	 # _2, RSP
	cmpl	_RSE, %eax	 # RSE, _2
	jbe	L24	 #,
	.loc 1 152 3 is_stmt 1 view LVU85
 # mf.c:152: 		RSP = RSS;
	.loc 1 152 7 is_stmt 0 view LVU86
	movl	_RSS, %eax	 # RSS, _2
	movl	%eax, _RSP	 # _2, RSP
L24:
	.loc 1 153 2 is_stmt 1 view LVU87
 # mf.c:153: 	*RSP = v;
	.loc 1 153 7 is_stmt 0 view LVU88
	movl	4(%esp), %edx	 # v, v
	movl	%edx, (%eax)	 # v, *prephitmp_12
 # mf.c:154: }
	.loc 1 154 1 view LVU89
	ret	
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	_rpop
	.def	_rpop;	.scl	2;	.type	32;	.endef
_rpop:
LFB85:
	.loc 1 158 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 159 2 view LVU91
 # mf.c:159: 	CELL v = *RSP;
	.loc 1 159 11 is_stmt 0 view LVU92
	movl	_RSP, %eax	 # RSP, RSP.18_1
 # mf.c:159: 	CELL v = *RSP;
	.loc 1 159 7 view LVU93
	movl	(%eax), %edx	 # *RSP.18_1, <retval>
LVL21:
	.loc 1 160 2 is_stmt 1 view LVU94
 # mf.c:160: 	if (--RSP < RSS)
	.loc 1 160 6 is_stmt 0 view LVU95
	subl	$4, %eax	 #, _2
 # mf.c:160: 	if (--RSP < RSS)
	.loc 1 160 5 view LVU96
	movl	%eax, _RSP	 # _2, RSP
	cmpl	_RSS, %eax	 # RSS, _2
	jnb	L25	 #,
	.loc 1 161 3 is_stmt 1 view LVU97
 # mf.c:161: 		RSP = RSE;
	.loc 1 161 7 is_stmt 0 view LVU98
	movl	_RSE, %eax	 # RSE, RSE
	movl	%eax, _RSP	 # RSE, RSP
	.loc 1 162 2 is_stmt 1 view LVU99
L25:
 # mf.c:163: }
	.loc 1 163 1 is_stmt 0 view LVU100
	movl	%edx, %eax	 # <retval>,
	ret	
	.cfi_endproc
LFE85:
	.section .rdata,"dr"
LC2:
	.ascii "%c\0"
LC3:
	.ascii "-UNTIL-\0"
LC4:
	.ascii "-UNTIL_NEG-\0"
LC5:
	.ascii "-INVERT-\0"
	.align 4
LC6:
	.ascii "Unknown IR (%02x) at PC=%08lx.\0"
	.text
	.p2align 4
	.globl	_run_program
	.def	_run_program;	.scl	2;	.type	32;	.endef
_run_program:
LVL22:
LFB86:
	.loc 1 214 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 215 2 view LVU102
	.loc 1 216 2 view LVU103
	.loc 1 218 2 view LVU104
 # mf.c:214: {
	.loc 1 214 1 is_stmt 0 view LVU105
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$48, %esp	 #,
	.cfi_def_cfa_offset 64
 # mf.c:219: 	call_depth = 1;
	.loc 1 219 13 view LVU106
	movl	$1, _call_depth	 #, call_depth
 # mf.c:218: 	PC = start;
	.loc 1 218 5 view LVU107
	movl	64(%esp), %esi	 # start, PC
	.loc 1 219 2 is_stmt 1 view LVU108
LVL23:
	.p2align 4,,10
	.p2align 3
L28:
	.loc 1 219 2 is_stmt 0 view LVU109
	movl	%esi, %edx	 # PC, ivtmp.240
L29:
	.loc 1 221 2 is_stmt 1 view LVU110
	.loc 1 224 3 view LVU111
 # mf.c:224: 		IR = BYTE_AT(PC++);
	.loc 1 224 6 is_stmt 0 view LVU112
	movzbl	(%edx), %eax	 # *PC.25_3,
LVL24:
	.loc 1 225 3 is_stmt 1 view LVU113
	leal	1(%edx), %ecx	 #, _440
 # mf.c:224: 		IR = BYTE_AT(PC++);
	.loc 1 224 8 is_stmt 0 view LVU114
	movl	%ecx, %esi	 # _440, PC
	cmpb	$36, %al	 #, IR
	ja	L30	 #,
	jmp	*L32(,%eax,4)	 #
	.section .rdata,"dr"
	.align 4
L32:
	.long	L105
	.long	L67
	.long	L66
	.long	L65
	.long	L64
	.long	L63
	.long	L62
	.long	L61
	.long	L60
	.long	L59
	.long	L111
	.long	L57
	.long	L56
	.long	L55
	.long	L54
	.long	L53
	.long	L52
	.long	L51
	.long	L50
	.long	L49
	.long	L48
	.long	L47
	.long	L46
	.long	L45
	.long	L44
	.long	L43
	.long	L42
	.long	L41
	.long	L40
	.long	L39
	.long	L38
	.long	L37
	.long	L36
	.long	L35
	.long	L34
	.long	L33
	.long	L27
	.text
L30:
	.loc 1 421 4 is_stmt 1 view LVU115
	movl	%edx, 8(%esp)	 # ivtmp.240,
 # mf.c:225: 		switch (IR)
	.loc 1 225 3 is_stmt 0 view LVU116
	movl	%eax, 4(%esp)	 # IR,
 # mf.c:421: 			printf("Unknown IR (%02x) at PC=%08lx.", IR, PC-1);
	.loc 1 421 4 view LVU117
	movl	$LC6, (%esp)	 #,
	call	_printf	 #
LVL25:
	.loc 1 422 4 is_stmt 1 view LVU118
L27:
 # mf.c:425: }
	.loc 1 425 1 is_stmt 0 view LVU119
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL26:
	.loc 1 425 1 view LVU120
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL27:
	.p2align 4,,10
	.p2align 3
L43:
	.cfi_restore_state
	.loc 1 353 4 is_stmt 1 view LVU121
 # mf.c:353: 			if (TOS == 0)
	.loc 1 353 7 is_stmt 0 view LVU122
	movl	_DSP, %eax	 # DSP, DSP
LVL28:
 # mf.c:356: 				PC += CELL_SZ;
	.loc 1 356 8 view LVU123
	leal	5(%edx), %esi	 #, PC
 # mf.c:353: 			if (TOS == 0)
	.loc 1 353 7 view LVU124
	movl	(%eax), %eax	 # *DSP.66_65,
	testl	%eax, %eax	 #
	jne	L28	 #,
L111:
	.loc 1 354 5 is_stmt 1 view LVU125
 # mf.c:354: 				PC = CELL_AT(PC);
	.loc 1 354 8 is_stmt 0 view LVU126
	movl	(%ecx), %esi	 #* _440, PC
	jmp	L28	 #
LVL29:
	.p2align 4,,10
	.p2align 3
L105:
 # mf.c:224: 		IR = BYTE_AT(PC++);
	.loc 1 224 6 view LVU127
	movl	%ecx, %edx	 # _440, ivtmp.240
	jmp	L29	 #
	.p2align 4,,10
	.p2align 3
L33:
	.loc 1 414 4 is_stmt 1 view LVU128
 # mf.c:414: 			TOS /= 2;
	.loc 1 414 8 is_stmt 0 view LVU129
	movl	_DSP, %eax	 # DSP, DSP.85_101
LVL30:
	.loc 1 414 8 view LVU130
	shrl	(%eax)	 # *DSP.85_101
LVL31:
	.loc 1 415 4 is_stmt 1 view LVU131
	jmp	L28	 #
LVL32:
	.p2align 4,,10
	.p2align 3
L34:
	.loc 1 410 4 view LVU132
 # mf.c:410: 			TOS *= 2;
	.loc 1 410 8 is_stmt 0 view LVU133
	movl	_DSP, %eax	 # DSP, DSP.83_97
LVL33:
	.loc 1 410 8 view LVU134
	sall	(%eax)	 # *DSP.83_97
LVL34:
	.loc 1 411 4 is_stmt 1 view LVU135
	jmp	L28	 #
LVL35:
	.p2align 4,,10
	.p2align 3
L35:
	.loc 1 405 4 view LVU136
LBB140:
LBI140:
	.loc 1 128 6 view LVU137
LBB141:
	.loc 1 130 2 view LVU138
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU139
	movl	_DSP, %eax	 # DSP, DSP.7_303
LVL36:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU140
	movl	(%eax), %edx	 # *DSP.7_303, v
LVL37:
	.loc 1 131 2 is_stmt 1 view LVU141
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU142
	subl	$4, %eax	 #, _305
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU143
	movl	%eax, _DSP	 # _305, DSP
LVL38:
	.loc 1 131 5 view LVU144
	cmpl	_DSS, %eax	 # DSS, _305
	jnb	L104	 #,
	.loc 1 132 3 is_stmt 1 view LVU145
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU146
	movl	_DSE, %eax	 # DSE, _305
	movl	%eax, _DSP	 # _305, DSP
L104:
	.loc 1 133 2 is_stmt 1 view LVU147
LVL39:
	.loc 1 133 2 is_stmt 0 view LVU148
LBE141:
LBE140:
	.loc 1 406 4 is_stmt 1 view LVU149
 # mf.c:406: 			TOS ^= arg1;
	.loc 1 406 8 is_stmt 0 view LVU150
	xorl	%edx, (%eax)	 # v, *prephitmp_417
	.loc 1 407 4 is_stmt 1 view LVU151
	jmp	L28	 #
LVL40:
	.p2align 4,,10
	.p2align 3
L36:
	.loc 1 400 4 view LVU152
LBB142:
LBI142:
	.loc 1 128 6 view LVU153
LBB143:
	.loc 1 130 2 view LVU154
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU155
	movl	_DSP, %eax	 # DSP, DSP.7_298
LVL41:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU156
	movl	(%eax), %edx	 # *DSP.7_298, v
LVL42:
	.loc 1 131 2 is_stmt 1 view LVU157
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU158
	subl	$4, %eax	 #, _300
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU159
	movl	%eax, _DSP	 # _300, DSP
LVL43:
	.loc 1 131 5 view LVU160
	cmpl	_DSS, %eax	 # DSS, _300
	jnb	L103	 #,
	.loc 1 132 3 is_stmt 1 view LVU161
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU162
	movl	_DSE, %eax	 # DSE, _300
	movl	%eax, _DSP	 # _300, DSP
L103:
	.loc 1 133 2 is_stmt 1 view LVU163
LVL44:
	.loc 1 133 2 is_stmt 0 view LVU164
LBE143:
LBE142:
	.loc 1 401 4 is_stmt 1 view LVU165
 # mf.c:401: 			TOS &= arg1;
	.loc 1 401 8 is_stmt 0 view LVU166
	andl	%edx, (%eax)	 # v, *prephitmp_435
	.loc 1 402 4 is_stmt 1 view LVU167
	jmp	L28	 #
LVL45:
	.p2align 4,,10
	.p2align 3
L51:
	.loc 1 310 4 view LVU168
 # mf.c:310: 			push(CELL_AT(addr++));
	.loc 1 310 9 is_stmt 0 view LVU169
	movl	_addr, %eax	 # addr, addr.51_42
LVL46:
	.loc 1 310 9 view LVU170
	leal	1(%eax), %edx	 #, tmp301
LVL47:
	.loc 1 310 9 view LVU171
	movl	%edx, _addr	 # tmp301, addr
LVL48:
 # mf.c:310: 			push(CELL_AT(addr++));
	.loc 1 310 4 view LVU172
	movl	(%eax), %edx	 # *addr.53_44, _45
LVL49:
LBB144:
LBI144:
	.loc 1 120 6 is_stmt 1 view LVU173
LBB145:
	.loc 1 122 2 view LVU174
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU175
	movl	_DSP, %eax	 # DSP, tmp352
	addl	$4, %eax	 #, _229
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU176
	movl	%eax, _DSP	 # _229, DSP
	cmpl	_DSE, %eax	 # DSE, _229
	jbe	L110	 #,
	.loc 1 123 3 is_stmt 1 view LVU177
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU178
	movl	_DSS, %eax	 # DSS, _229
	movl	%eax, _DSP	 # _229, DSP
	.loc 1 124 2 is_stmt 1 view LVU179
LVL50:
L110:
	.loc 1 124 2 is_stmt 0 view LVU180
LBE145:
LBE144:
 # mf.c:316: 			CELL_AT(addr) = arg1;
	.loc 1 316 18 view LVU181
	movl	%edx, (%eax)	 # v,* addr
	.loc 1 317 4 is_stmt 1 view LVU182
	addl	$1, _addr	 #, addr
	.loc 1 318 4 view LVU183
	jmp	L28	 #
LVL51:
	.p2align 4,,10
	.p2align 3
L44:
	.loc 1 346 4 view LVU184
 # mf.c:346: 			if (TOS != 0)
	.loc 1 346 7 is_stmt 0 view LVU185
	movl	_DSP, %eax	 # DSP, DSP
LVL52:
 # mf.c:349: 				PC += CELL_SZ;
	.loc 1 349 8 view LVU186
	leal	5(%edx), %esi	 #, PC
 # mf.c:346: 			if (TOS != 0)
	.loc 1 346 7 view LVU187
	movl	(%eax), %edx	 # *DSP.62_58,
LVL53:
	.loc 1 346 7 view LVU188
	testl	%edx, %edx	 #
	je	L28	 #,
	.loc 1 354 5 is_stmt 1 view LVU189
 # mf.c:354: 				PC = CELL_AT(PC);
	.loc 1 354 8 is_stmt 0 view LVU190
	movl	(%ecx), %esi	 #* _440, PC
LVL54:
	.loc 1 354 8 view LVU191
	jmp	L28	 #
LVL55:
	.p2align 4,,10
	.p2align 3
L45:
	.loc 1 342 4 is_stmt 1 view LVU192
	movl	$LC5, (%esp)	 #,
	call	_printf	 #
LVL56:
	.loc 1 343 4 view LVU193
	jmp	L28	 #
LVL57:
	.p2align 4,,10
	.p2align 3
L46:
	.loc 1 338 4 view LVU194
	movl	$LC4, (%esp)	 #,
	call	_printf	 #
LVL58:
	.loc 1 339 4 view LVU195
	jmp	L28	 #
LVL59:
	.p2align 4,,10
	.p2align 3
L47:
	.loc 1 334 4 view LVU196
	movl	$LC3, (%esp)	 #,
	call	_printf	 #
LVL60:
	.loc 1 335 4 view LVU197
	jmp	L28	 #
LVL61:
	.p2align 4,,10
	.p2align 3
L48:
	.loc 1 327 4 view LVU198
LBB146:
LBI146:
	.loc 1 128 6 view LVU199
LBB147:
	.loc 1 130 2 view LVU200
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU201
	movl	_DSP, %eax	 # DSP, DSP.7_251
LVL62:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 view LVU202
	movl	_DSS, %edi	 # DSS, DSS.10_254
	movl	_DSE, %ecx	 # DSE, pretmp_412
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 view LVU203
	leal	-4(%eax), %edx	 #, _253
LVL63:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU204
	movl	(%eax), %ebp	 # *DSP.7_251, v
LVL64:
	.loc 1 131 2 is_stmt 1 view LVU205
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 is_stmt 0 view LVU206
	cmpl	%edi, %edx	 # DSS.10_254, _253
	jnb	L87	 #,
	.loc 1 132 3 is_stmt 1 view LVU207
	leal	4(%ecx), %eax	 #, DSP.7_251
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 is_stmt 0 view LVU208
	movl	%ecx, %edx	 # pretmp_412, _253
L87:
	.loc 1 133 2 is_stmt 1 view LVU209
LVL65:
	.loc 1 133 2 is_stmt 0 view LVU210
LBE147:
LBE146:
	.loc 1 328 4 is_stmt 1 view LVU211
 # mf.c:328: 			arg2 = TOS;
	.loc 1 328 11 is_stmt 0 view LVU212
	movl	(%edx), %edx	 # *prephitmp_426, _56
 # mf.c:328: 			arg2 = TOS;
	.loc 1 328 9 view LVU213
	movl	%edx, 44(%esp)	 # _56, arg2
LVL66:
	.loc 1 329 4 is_stmt 1 view LVU214
LBB150:
LBI150:
	.loc 1 120 6 view LVU215
LBB151:
	.loc 1 122 2 view LVU216
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 is_stmt 0 view LVU217
	cmpl	%eax, %ecx	 # DSP.7_251, pretmp_412
	jnb	L88	 #,
LBE151:
LBE150:
LBB153:
LBB148:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 view LVU218
	movl	%edi, %eax	 # DSS.10_254, DSP.7_251
L88:
	.loc 1 131 12 view LVU219
LBE148:
LBE153:
LBB154:
LBB152:
	.loc 1 124 2 is_stmt 1 view LVU220
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU221
	movl	%ebp, (%eax)	 # v, *prephitmp_427
LVL67:
	.loc 1 124 7 view LVU222
LBE152:
LBE154:
	.loc 1 330 4 is_stmt 1 view LVU223
LBB155:
LBB156:
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU224
	addl	$4, %eax	 #, _246
LBE156:
LBE155:
 # mf.c:330: 			push(arg2);
	.loc 1 330 4 view LVU225
	movl	44(%esp), %edx	 # arg2, arg2.61_57
LVL68:
LBB159:
LBI155:
	.loc 1 120 6 is_stmt 1 view LVU226
LBB157:
	.loc 1 122 2 view LVU227
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 is_stmt 0 view LVU228
	cmpl	%ecx, %eax	 # pretmp_412, _246
	jbe	L115	 #,
	.loc 1 123 3 is_stmt 1 view LVU229
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU230
	movl	%edi, _DSP	 # DSS.10_254, DSP
LBE157:
LBE159:
LBB160:
LBB149:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 view LVU231
	movl	%edi, %eax	 # DSS.10_254, _246
LBE149:
LBE160:
LBB161:
LBB158:
	.loc 1 124 2 is_stmt 1 view LVU232
LVL69:
L108:
	.loc 1 124 2 is_stmt 0 view LVU233
LBE158:
LBE161:
	.loc 1 236 4 is_stmt 1 view LVU234
 # mf.c:236: 			TOS = arg1;
	.loc 1 236 8 is_stmt 0 view LVU235
	movl	%edx, (%eax)	 # arg1,* DSP.27_6
	.loc 1 237 4 is_stmt 1 view LVU236
	jmp	L28	 #
LVL70:
	.p2align 4,,10
	.p2align 3
L49:
	.loc 1 321 4 view LVU237
LBB162:
LBI162:
	.loc 1 128 6 view LVU238
LBB163:
	.loc 1 130 2 view LVU239
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU240
	movl	_DSP, %eax	 # DSP, DSP.7_241
LVL71:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 view LVU241
	movl	_DSS, %ecx	 # DSS, DSS.10_244
	movl	_DSE, %edi	 # DSE, pretmp_458
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 view LVU242
	leal	-4(%eax), %edx	 #, _243
LVL72:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU243
	movl	(%eax), %ebp	 # *DSP.7_241, v
LVL73:
	.loc 1 131 2 is_stmt 1 view LVU244
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 is_stmt 0 view LVU245
	cmpl	%ecx, %edx	 # DSS.10_244, _243
	jnb	L84	 #,
	.loc 1 132 3 is_stmt 1 view LVU246
	leal	4(%edi), %eax	 #, DSP.7_241
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 is_stmt 0 view LVU247
	movl	%edi, %edx	 # pretmp_458, _243
L84:
	.loc 1 133 2 is_stmt 1 view LVU248
LVL74:
	.loc 1 133 2 is_stmt 0 view LVU249
LBE163:
LBE162:
	.loc 1 322 4 is_stmt 1 view LVU250
 # mf.c:322: 			TOS += arg1;
	.loc 1 322 8 is_stmt 0 view LVU251
	addl	%ebp, (%edx)	 # v, *prephitmp_459
LVL75:
	.loc 1 323 4 is_stmt 1 view LVU252
LBB164:
LBI164:
	.loc 1 120 6 view LVU253
LBB165:
	.loc 1 122 2 view LVU254
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 is_stmt 0 view LVU255
	cmpl	%eax, %edi	 # DSP.7_241, pretmp_458
	jnb	L113	 #,
LVL76:
L97:
	.loc 1 122 5 view LVU256
LBE165:
LBE164:
LBB166:
LBB167:
	.loc 1 123 3 is_stmt 1 view LVU257
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU258
	movl	%ecx, _DSP	 # DSS.10_276, DSP
LBE167:
LBE166:
LBB170:
LBB171:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 view LVU259
	movl	%ecx, %eax	 # DSS.10_276, DSP.7_273
L98:
	.loc 1 131 12 view LVU260
LBE171:
LBE170:
LBB173:
LBB168:
	.loc 1 124 2 is_stmt 1 view LVU261
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU262
	movl	$99999, (%eax)	 #,* DSP.7_273
 # mf.c:125: }
	.loc 1 125 1 view LVU263
	jmp	L28	 #
LVL77:
	.p2align 4,,10
	.p2align 3
L50:
	.loc 1 125 1 view LVU264
LBE168:
LBE173:
	.loc 1 315 4 is_stmt 1 view LVU265
LBB174:
LBI174:
	.loc 1 128 6 view LVU266
LBB175:
	.loc 1 130 2 view LVU267
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU268
	movl	_DSP, %eax	 # DSP, DSP.7_233
LVL78:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU269
	movl	(%eax), %edx	 # *DSP.7_233, v
LVL79:
	.loc 1 131 2 is_stmt 1 view LVU270
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU271
	subl	$4, %eax	 #, _235
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU272
	movl	%eax, _DSP	 # _235, DSP
LVL80:
	.loc 1 131 5 view LVU273
	cmpl	_DSS, %eax	 # DSS, _235
	jnb	L83	 #,
	.loc 1 132 3 is_stmt 1 view LVU274
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU275
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L83:
	.loc 1 133 2 is_stmt 1 view LVU276
LVL81:
	.loc 1 133 2 is_stmt 0 view LVU277
LBE175:
LBE174:
	.loc 1 316 4 is_stmt 1 view LVU278
 # mf.c:316: 			CELL_AT(addr) = arg1;
	.loc 1 316 18 is_stmt 0 view LVU279
	movl	_addr, %eax	 # addr, addr
	jmp	L110	 #
LVL82:
	.p2align 4,,10
	.p2align 3
L39:
	.loc 1 386 4 is_stmt 1 view LVU280
LBB176:
LBI170:
	.loc 1 128 6 view LVU281
LBB172:
	.loc 1 130 2 view LVU282
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU283
	movl	_DSP, %eax	 # DSP, DSP.7_273
LVL83:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 view LVU284
	movl	_DSS, %ecx	 # DSS, DSS.10_276
	movl	_DSE, %edi	 # DSE, pretmp_415
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 view LVU285
	leal	-4(%eax), %edx	 #, _275
LVL84:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU286
	movl	(%eax), %ebp	 # *DSP.7_273, v
LVL85:
	.loc 1 131 2 is_stmt 1 view LVU287
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 is_stmt 0 view LVU288
	cmpl	%ecx, %edx	 # DSS.10_276, _275
	jnb	L96	 #,
	.loc 1 132 3 is_stmt 1 view LVU289
	leal	4(%edi), %eax	 #, DSP.7_273
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 is_stmt 0 view LVU290
	movl	%edi, %edx	 # pretmp_415, _275
L96:
	.loc 1 133 2 is_stmt 1 view LVU291
LVL86:
	.loc 1 133 2 is_stmt 0 view LVU292
LBE172:
LBE176:
	.loc 1 387 4 is_stmt 1 view LVU293
 # mf.c:387: 			TOS += arg1;
	.loc 1 387 8 is_stmt 0 view LVU294
	addl	%ebp, (%edx)	 # v, *prephitmp_433
LVL87:
	.loc 1 388 4 is_stmt 1 view LVU295
LBB177:
LBI166:
	.loc 1 120 6 view LVU296
LBB169:
	.loc 1 122 2 view LVU297
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 is_stmt 0 view LVU298
	cmpl	%edi, %eax	 # pretmp_415, DSP.7_273
	ja	L97	 #,
LVL88:
L113:
	.loc 1 122 5 view LVU299
	movl	%eax, _DSP	 # DSP.7_273, DSP
	jmp	L98	 #
LVL89:
	.p2align 4,,10
	.p2align 3
L40:
	.loc 1 122 5 view LVU300
LBE169:
LBE177:
	.loc 1 380 4 is_stmt 1 view LVU301
LBB178:
LBB179:
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU302
	movl	_DSP, %eax	 # DSP, tmp355
LVL90:
	.loc 1 122 6 view LVU303
LBE179:
LBE178:
 # mf.c:380: 			arg1 = CELL_AT(PC);
	.loc 1 380 9 view LVU304
	movl	(%ecx), %edx	 # *PC.75_83, arg1
LVL91:
	.loc 1 381 4 is_stmt 1 view LVU305
LBB181:
LBI178:
	.loc 1 120 6 view LVU306
LBB180:
	.loc 1 122 2 view LVU307
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU308
	addl	$4, %eax	 #, _266
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU309
	movl	%eax, _DSP	 # _266, DSP
LVL92:
	.loc 1 122 5 view LVU310
	cmpl	_DSE, %eax	 # DSE, _266
	jbe	L95	 #,
	.loc 1 123 3 is_stmt 1 view LVU311
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU312
	movl	_DSS, %eax	 # DSS, _266
	movl	%eax, _DSP	 # _266, DSP
L95:
	.loc 1 124 2 is_stmt 1 view LVU313
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU314
	movl	%edx, (%eax)	 # arg1, *prephitmp_431
LVL93:
	.loc 1 124 7 view LVU315
LBE180:
LBE181:
	.loc 1 382 4 is_stmt 1 view LVU316
 # mf.c:382: 			PC += CELL_SZ;
	.loc 1 382 7 is_stmt 0 view LVU317
	addl	$4, %esi	 #, PC
	.loc 1 383 4 is_stmt 1 view LVU318
	jmp	L28	 #
LVL94:
	.p2align 4,,10
	.p2align 3
L41:
LBB182:
	.loc 1 372 4 view LVU319
	.loc 1 373 4 view LVU320
	movl	_hStdout, %eax	 # hStdout, hStdout
LVL95:
	.loc 1 373 4 is_stmt 0 view LVU321
	movl	$_csbi, 4(%esp)	 #,
LVL96:
	.loc 1 373 4 view LVU322
	movl	%eax, (%esp)	 # hStdout,
	call	_GetConsoleScreenBufferInfo@8	 #
LVL97:
	.cfi_def_cfa_offset 56
 # mf.c:374: 			arg1 = csbi.dwSize.X * csbi.dwSize.Y;
	.loc 1 374 38 view LVU323
	movswl	_csbi+2, %edx	 # csbi.dwSize.Y, csbi.dwSize.Y
 # mf.c:373: 			GetConsoleScreenBufferInfo(hStdout, &csbi);
	.loc 1 373 4 view LVU324
	subl	$8, %esp	 #,
	.cfi_def_cfa_offset 64
	.loc 1 374 4 is_stmt 1 view LVU325
LVL98:
	.loc 1 375 4 view LVU326
	leal	44(%esp), %eax	 #, tmp354
	movl	$0, 12(%esp)	 #,
	movl	%eax, 16(%esp)	 # tmp354,
 # mf.c:374: 			arg1 = csbi.dwSize.X * csbi.dwSize.Y;
	.loc 1 374 22 is_stmt 0 view LVU327
	movswl	_csbi, %eax	 # csbi.dwSize.X, csbi.dwSize.X
 # mf.c:375: 			FillConsoleOutputCharacter(hStdout, ' ', arg1, pos, &arg2);
	.loc 1 375 4 view LVU328
	movl	$32, 4(%esp)	 #,
 # mf.c:374: 			arg1 = csbi.dwSize.X * csbi.dwSize.Y;
	.loc 1 374 25 view LVU329
	imull	%edx, %eax	 # csbi.dwSize.Y, arg1
LVL99:
 # mf.c:375: 			FillConsoleOutputCharacter(hStdout, ' ', arg1, pos, &arg2);
	.loc 1 375 4 view LVU330
	movl	%eax, 8(%esp)	 # arg1,
	movl	_hStdout, %eax	 # hStdout, hStdout
LVL100:
	.loc 1 375 4 view LVU331
	movl	%eax, (%esp)	 # hStdout,
	call	_FillConsoleOutputCharacterA@20	 #
LVL101:
	.cfi_def_cfa_offset 44
	.loc 1 375 4 view LVU332
	subl	$20, %esp	 #,
	.cfi_def_cfa_offset 64
LBE182:
	.loc 1 377 4 is_stmt 1 view LVU333
	jmp	L28	 #
LVL102:
	.p2align 4,,10
	.p2align 3
L42:
LBB183:
	.loc 1 361 4 view LVU334
	.loc 1 362 4 view LVU335
LBB184:
LBI184:
	.loc 1 128 6 view LVU336
LBB185:
	.loc 1 130 2 view LVU337
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU338
	movl	_DSP, %eax	 # DSP, DSP.7_260
LVL103:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 view LVU339
	movl	_DSS, %ecx	 # DSS, DSS.10_263
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU340
	movl	(%eax), %edx	 # *DSP.7_260, v
LVL104:
	.loc 1 131 2 is_stmt 1 view LVU341
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU342
	subl	$4, %eax	 #, _262
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU343
	cmpl	%ecx, %eax	 # DSS.10_263, _262
	jnb	L93	 #,
	.loc 1 132 3 is_stmt 1 view LVU344
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU345
	movl	_DSE, %eax	 # DSE, _262
L93:
	.loc 1 133 2 is_stmt 1 view LVU346
LVL105:
	.loc 1 133 2 is_stmt 0 view LVU347
LBE185:
LBE184:
	.loc 1 363 4 is_stmt 1 view LVU348
LBB186:
LBI186:
	.loc 1 128 6 view LVU349
LBB187:
	.loc 1 130 2 view LVU350
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 is_stmt 0 view LVU351
	movl	(%eax), %edi	 # *prephitmp_430, v
LVL106:
	.loc 1 131 2 is_stmt 1 view LVU352
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU353
	subl	$4, %eax	 #, _258
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU354
	movl	%eax, _DSP	 # _258, DSP
LVL107:
	.loc 1 131 5 view LVU355
	cmpl	%ecx, %eax	 # DSS.10_263, _258
	jnb	L94	 #,
	.loc 1 132 3 is_stmt 1 view LVU356
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU357
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L94:
	.loc 1 133 2 is_stmt 1 view LVU358
LVL108:
	.loc 1 133 2 is_stmt 0 view LVU359
LBE187:
LBE186:
 # mf.c:364: 			pos.Y = (short)arg2;
	.loc 1 364 10 view LVU360
	movl	%edi, %eax	 # v, v
	movzwl	%bx, %ebx	 # pos, pos
LVL109:
 # mf.c:363: 			arg2 = pop();
	.loc 1 363 9 view LVU361
	movl	%edi, 44(%esp)	 # v, arg2
	.loc 1 364 4 is_stmt 1 view LVU362
 # mf.c:364: 			pos.Y = (short)arg2;
	.loc 1 364 10 is_stmt 0 view LVU363
	sall	$16, %eax	 #, v
LVL110:
	.loc 1 364 10 view LVU364
	orl	%eax, %ebx	 # tmp309, pos
LVL111:
	.loc 1 365 4 is_stmt 1 view LVU365
 # mf.c:366: 			SetConsoleCursorPosition(hStdout, pos);
	.loc 1 366 4 is_stmt 0 view LVU366
	movl	_hStdout, %eax	 # hStdout, hStdout
 # mf.c:365: 			pos.X = (short)arg1;
	.loc 1 365 10 view LVU367
	movw	%dx, %bx	 # v, pos
	.loc 1 366 4 is_stmt 1 view LVU368
LVL112:
	.loc 1 366 4 is_stmt 0 view LVU369
	movl	%ebx, 4(%esp)	 # pos,
	movl	%eax, (%esp)	 # hStdout,
	call	_SetConsoleCursorPosition@8	 #
LVL113:
	.cfi_def_cfa_offset 56
	.loc 1 366 4 view LVU370
	subl	$8, %esp	 #,
	.cfi_def_cfa_offset 64
LBE183:
	.loc 1 368 4 is_stmt 1 view LVU371
	jmp	L28	 #
LVL114:
	.p2align 4,,10
	.p2align 3
L37:
	.loc 1 396 4 view LVU372
LBB188:
LBI188:
	.loc 1 157 6 view LVU373
LBB189:
	.loc 1 159 2 view LVU374
 # mf.c:159: 	CELL v = *RSP;
	.loc 1 159 11 is_stmt 0 view LVU375
	movl	_RSP, %eax	 # RSP, RSP.18_293
LVL115:
 # mf.c:159: 	CELL v = *RSP;
	.loc 1 159 7 view LVU376
	movl	(%eax), %edx	 # *RSP.18_293, v
LVL116:
	.loc 1 160 2 is_stmt 1 view LVU377
 # mf.c:160: 	if (--RSP < RSS)
	.loc 1 160 6 is_stmt 0 view LVU378
	subl	$4, %eax	 #, _295
 # mf.c:160: 	if (--RSP < RSS)
	.loc 1 160 5 view LVU379
	movl	%eax, _RSP	 # _295, RSP
LVL117:
	.loc 1 160 5 view LVU380
	cmpl	_RSS, %eax	 # RSS, _295
	jnb	L101	 #,
	.loc 1 161 3 is_stmt 1 view LVU381
 # mf.c:161: 		RSP = RSE;
	.loc 1 161 7 is_stmt 0 view LVU382
	movl	_RSE, %eax	 # RSE, RSE
	movl	%eax, _RSP	 # RSE, RSP
LVL118:
L101:
	.loc 1 162 2 is_stmt 1 view LVU383
	.loc 1 162 2 is_stmt 0 view LVU384
LBE189:
LBE188:
LBB190:
LBI190:
	.loc 1 120 6 is_stmt 1 view LVU385
LBB191:
	.loc 1 122 2 view LVU386
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU387
	movl	_DSP, %eax	 # DSP, tmp357
	addl	$4, %eax	 #, _289
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU388
	movl	%eax, _DSP	 # _289, DSP
	cmpl	_DSE, %eax	 # DSE, _289
	jbe	L108	 #,
LVL119:
L114:
	.loc 1 123 3 is_stmt 1 view LVU389
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU390
	movl	_DSS, %eax	 # DSS, _289
L115:
	movl	%eax, _DSP	 # _289, DSP
	.loc 1 124 2 is_stmt 1 view LVU391
LVL120:
	.loc 1 124 2 is_stmt 0 view LVU392
LBE191:
LBE190:
	.loc 1 236 4 is_stmt 1 view LVU393
 # mf.c:236: 			TOS = arg1;
	.loc 1 236 8 is_stmt 0 view LVU394
	movl	%edx, (%eax)	 # arg1,* DSP.27_6
	.loc 1 237 4 is_stmt 1 view LVU395
	jmp	L28	 #
LVL121:
	.p2align 4,,10
	.p2align 3
L38:
	.loc 1 392 4 view LVU396
LBB192:
LBI192:
	.loc 1 128 6 view LVU397
LBB193:
	.loc 1 130 2 view LVU398
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU399
	movl	_DSP, %eax	 # DSP, DSP.7_283
LVL122:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU400
	movl	(%eax), %edx	 # *DSP.7_283, v
LVL123:
	.loc 1 131 2 is_stmt 1 view LVU401
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU402
	subl	$4, %eax	 #, _285
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU403
	movl	%eax, _DSP	 # _285, DSP
LVL124:
	.loc 1 131 5 view LVU404
	cmpl	_DSS, %eax	 # DSS, _285
	jnb	L99	 #,
	.loc 1 132 3 is_stmt 1 view LVU405
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU406
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L99:
	.loc 1 133 2 is_stmt 1 view LVU407
LVL125:
	.loc 1 133 2 is_stmt 0 view LVU408
LBE193:
LBE192:
LBB194:
LBI194:
	.loc 1 149 6 is_stmt 1 view LVU409
LBB195:
	.loc 1 151 2 view LVU410
 # mf.c:151: 	if (++RSP > RSE)
	.loc 1 151 6 is_stmt 0 view LVU411
	movl	_RSP, %eax	 # RSP, tmp356
	addl	$4, %eax	 #, _279
 # mf.c:151: 	if (++RSP > RSE)
	.loc 1 151 5 view LVU412
	movl	%eax, _RSP	 # _279, RSP
	cmpl	_RSE, %eax	 # RSE, _279
	jbe	L108	 #,
	.loc 1 152 3 is_stmt 1 view LVU413
 # mf.c:152: 		RSP = RSS;
	.loc 1 152 7 is_stmt 0 view LVU414
	movl	_RSS, %eax	 # RSS, _279
	movl	%eax, _RSP	 # _279, RSP
	.loc 1 153 2 is_stmt 1 view LVU415
LVL126:
	.loc 1 153 2 is_stmt 0 view LVU416
LBE195:
LBE194:
	.loc 1 236 4 is_stmt 1 view LVU417
 # mf.c:236: 			TOS = arg1;
	.loc 1 236 8 is_stmt 0 view LVU418
	movl	%edx, (%eax)	 # arg1,* DSP.27_6
	.loc 1 237 4 is_stmt 1 view LVU419
	jmp	L28	 #
LVL127:
	.p2align 4,,10
	.p2align 3
L60:
	.loc 1 264 4 view LVU420
	movl	_DSP, %eax	 # DSP, DSP.32_12
LVL128:
 # mf.c:264: 			TOS++;
	.loc 1 264 7 is_stmt 0 view LVU421
	addl	$1, (%eax)	 #, *DSP.32_12
LVL129:
	.loc 1 265 4 is_stmt 1 view LVU422
	jmp	L28	 #
LVL130:
	.p2align 4,,10
	.p2align 3
L61:
	.loc 1 259 4 view LVU423
LBB196:
LBI196:
	.loc 1 128 6 view LVU424
LBB197:
	.loc 1 130 2 view LVU425
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU426
	movl	_DSP, %eax	 # DSP, DSP.7_193
LVL131:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU427
	movl	(%eax), %edx	 # *DSP.7_193, v
LVL132:
	.loc 1 131 2 is_stmt 1 view LVU428
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU429
	subl	$4, %eax	 #, _195
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU430
	movl	%eax, _DSP	 # _195, DSP
LVL133:
	.loc 1 131 5 view LVU431
	cmpl	_DSS, %eax	 # DSS, _195
	jnb	L75	 #,
	.loc 1 132 3 is_stmt 1 view LVU432
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU433
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L75:
	.loc 1 133 2 is_stmt 1 view LVU434
LVL134:
	.loc 1 133 2 is_stmt 0 view LVU435
LBE197:
LBE196:
	.loc 1 260 4 is_stmt 1 view LVU436
	movzbl	%dl, %eax	 # v, v
	movl	$LC2, (%esp)	 #,
	movl	%eax, 4(%esp)	 # v,
	call	_printf	 #
LVL135:
	.loc 1 261 4 view LVU437
	jmp	L28	 #
LVL136:
	.p2align 4,,10
	.p2align 3
L62:
	.loc 1 255 4 view LVU438
LBB198:
LBI198:
	.loc 1 128 6 view LVU439
LBB199:
	.loc 1 130 2 view LVU440
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU441
	movl	_DSP, %eax	 # DSP, DSP.7_188
LVL137:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU442
	movl	(%eax), %edx	 # *DSP.7_188, v
LVL138:
	.loc 1 131 2 is_stmt 1 view LVU443
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU444
	subl	$4, %eax	 #, _190
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU445
	movl	%eax, _DSP	 # _190, DSP
LVL139:
	.loc 1 131 5 view LVU446
	cmpl	_DSS, %eax	 # DSS, _190
	jnb	L74	 #,
	.loc 1 132 3 is_stmt 1 view LVU447
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU448
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L74:
	.loc 1 133 2 is_stmt 1 view LVU449
LVL140:
	.loc 1 133 2 is_stmt 0 view LVU450
LBE199:
LBE198:
 # mf.c:255: 			addr = pop();
	.loc 1 255 9 view LVU451
	movl	%edx, _addr	 # v, addr
	.loc 1 256 4 is_stmt 1 view LVU452
	jmp	L28	 #
LVL141:
	.p2align 4,,10
	.p2align 3
L63:
	.loc 1 250 4 view LVU453
 # mf.c:250: 			arg1 = TOS;
	.loc 1 250 11 is_stmt 0 view LVU454
	movl	_DSP, %eax	 # DSP, DSP.31_10
LVL142:
 # mf.c:250: 			arg1 = TOS;
	.loc 1 250 9 view LVU455
	movl	(%eax), %edx	 # *DSP.31_10, arg1
LVL143:
	.loc 1 251 4 is_stmt 1 view LVU456
LBB200:
LBI200:
	.loc 1 120 6 view LVU457
LBB201:
	.loc 1 122 2 view LVU458
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU459
	addl	$4, %eax	 #, _184
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU460
	movl	%eax, _DSP	 # _184, DSP
LVL144:
	.loc 1 122 5 view LVU461
	cmpl	_DSE, %eax	 # DSE, _184
	ja	L114	 #,
	.loc 1 122 5 view LVU462
LBE201:
LBE200:
	.loc 1 236 4 is_stmt 1 view LVU463
 # mf.c:236: 			TOS = arg1;
	.loc 1 236 8 is_stmt 0 view LVU464
	movl	%edx, (%eax)	 # arg1,* DSP.27_6
	.loc 1 237 4 is_stmt 1 view LVU465
	jmp	L28	 #
LVL145:
	.p2align 4,,10
	.p2align 3
L64:
	.loc 1 246 4 view LVU466
LBB202:
LBI202:
	.loc 1 128 6 view LVU467
LBB203:
	.loc 1 130 2 view LVU468
	.loc 1 131 2 view LVU469
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU470
	movl	_DSP, %eax	 # DSP, tmp349
LVL146:
	.loc 1 131 6 view LVU471
	subl	$4, %eax	 #, _181
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU472
	movl	%eax, _DSP	 # _181, DSP
LVL147:
	.loc 1 131 5 view LVU473
	cmpl	_DSS, %eax	 # DSS, _181
	jnb	L28	 #,
	.loc 1 132 3 is_stmt 1 view LVU474
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU475
	movl	_DSE, %eax	 # DSE, DSE
LVL148:
	.loc 1 132 7 view LVU476
	movl	%eax, _DSP	 # DSE, DSP
LVL149:
	.loc 1 132 7 view LVU477
	jmp	L28	 #
LVL150:
	.p2align 4,,10
	.p2align 3
L65:
	.loc 1 132 7 view LVU478
LBE203:
LBE202:
	.loc 1 240 4 is_stmt 1 view LVU479
LBB204:
LBI204:
	.loc 1 128 6 view LVU480
LBB205:
	.loc 1 130 2 view LVU481
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU482
	movl	_DSP, %eax	 # DSP, DSP.7_175
LVL151:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 view LVU483
	movl	_DSS, %edi	 # DSS, DSS.10_178
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU484
	movl	(%eax), %ecx	 # *DSP.7_175, v
LVL152:
	.loc 1 131 2 is_stmt 1 view LVU485
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU486
	subl	$4, %eax	 #, _177
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU487
	cmpl	%edi, %eax	 # DSS.10_178, _177
	jnb	L70	 #,
	.loc 1 132 3 is_stmt 1 view LVU488
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU489
	movl	_DSE, %eax	 # DSE, _177
L70:
	.loc 1 133 2 is_stmt 1 view LVU490
LVL153:
	.loc 1 133 2 is_stmt 0 view LVU491
LBE205:
LBE204:
	.loc 1 241 4 is_stmt 1 view LVU492
LBB206:
LBI206:
	.loc 1 128 6 view LVU493
LBB207:
	.loc 1 130 2 view LVU494
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 is_stmt 0 view LVU495
	movl	(%eax), %edx	 # *prephitmp_470, v
LVL154:
	.loc 1 131 2 is_stmt 1 view LVU496
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU497
	subl	$4, %eax	 #, _173
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU498
	movl	%eax, _DSP	 # _173, DSP
LVL155:
	.loc 1 131 5 view LVU499
	cmpl	%edi, %eax	 # DSS.10_178, _173
	jnb	L71	 #,
	.loc 1 132 3 is_stmt 1 view LVU500
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU501
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L71:
	.loc 1 133 2 is_stmt 1 view LVU502
LVL156:
	.loc 1 133 2 is_stmt 0 view LVU503
LBE207:
LBE206:
 # mf.c:241: 			arg2 = pop();
	.loc 1 241 9 view LVU504
	movl	%edx, 44(%esp)	 # v, arg2
	.loc 1 242 4 is_stmt 1 view LVU505
 # mf.c:242: 			*(CELL *)arg1 = arg2;
	.loc 1 242 18 is_stmt 0 view LVU506
	movl	%edx, (%ecx)	 # v, *arg1.29_9
	.loc 1 243 4 is_stmt 1 view LVU507
	jmp	L28	 #
LVL157:
	.p2align 4,,10
	.p2align 3
L66:
	.loc 1 235 4 view LVU508
 # mf.c:235: 			arg1 = CELL_AT(TOS);
	.loc 1 235 11 is_stmt 0 view LVU509
	movl	_DSP, %eax	 # DSP, DSP.27_6
LVL158:
 # mf.c:235: 			arg1 = CELL_AT(TOS);
	.loc 1 235 9 view LVU510
	movl	(%eax), %edx	 # *DSP.27_6, *DSP.27_6
LVL159:
	.loc 1 235 9 view LVU511
	movl	(%edx), %edx	 # *_8, arg1
LVL160:
	.loc 1 236 4 is_stmt 1 view LVU512
 # mf.c:236: 			TOS = arg1;
	.loc 1 236 8 is_stmt 0 view LVU513
	movl	%edx, (%eax)	 # arg1,* DSP.27_6
LVL161:
	.loc 1 237 4 is_stmt 1 view LVU514
	jmp	L28	 #
LVL162:
	.p2align 4,,10
	.p2align 3
L67:
	.loc 1 231 4 view LVU515
	movl	_addr, %edx	 # addr, addr.26_5
LVL163:
LBB208:
LBI208:
	.loc 1 120 6 view LVU516
LBB209:
	.loc 1 122 2 view LVU517
	jmp	L101	 #
LVL164:
	.p2align 4,,10
	.p2align 3
L55:
	.loc 1 122 2 is_stmt 0 view LVU518
LBE209:
LBE208:
	.loc 1 290 4 is_stmt 1 view LVU519
LBB210:
LBI210:
	.loc 1 128 6 view LVU520
LBB211:
	.loc 1 130 2 view LVU521
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU522
	movl	_DSP, %eax	 # DSP, DSP.7_208
LVL165:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU523
	movl	(%eax), %edx	 # *DSP.7_208, v
LVL166:
	.loc 1 131 2 is_stmt 1 view LVU524
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU525
	subl	$4, %eax	 #, _210
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU526
	movl	%eax, _DSP	 # _210, DSP
LVL167:
	.loc 1 131 5 view LVU527
	cmpl	_DSS, %eax	 # DSS, _210
	jnb	L78	 #,
	.loc 1 132 3 is_stmt 1 view LVU528
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU529
	movl	_DSE, %eax	 # DSE, _210
	movl	%eax, _DSP	 # _210, DSP
L78:
	.loc 1 133 2 is_stmt 1 view LVU530
LVL168:
	.loc 1 133 2 is_stmt 0 view LVU531
LBE211:
LBE210:
	.loc 1 291 4 is_stmt 1 view LVU532
 # mf.c:291: 			TOS += arg1;
	.loc 1 291 8 is_stmt 0 view LVU533
	addl	%edx, (%eax)	 # v, *prephitmp_467
	.loc 1 292 4 is_stmt 1 view LVU534
	jmp	L28	 #
LVL169:
	.p2align 4,,10
	.p2align 3
L56:
	.loc 1 284 4 view LVU535
LBB212:
LBI212:
	.loc 1 157 6 view LVU536
LBB213:
	.loc 1 159 2 view LVU537
 # mf.c:159: 	CELL v = *RSP;
	.loc 1 159 11 is_stmt 0 view LVU538
	movl	_RSP, %eax	 # RSP, RSP.18_203
LVL170:
 # mf.c:159: 	CELL v = *RSP;
	.loc 1 159 7 view LVU539
	movl	(%eax), %ebp	 # *RSP.18_203, v
LVL171:
	.loc 1 160 2 is_stmt 1 view LVU540
 # mf.c:160: 	if (--RSP < RSS)
	.loc 1 160 6 is_stmt 0 view LVU541
	subl	$4, %eax	 #, _205
 # mf.c:160: 	if (--RSP < RSS)
	.loc 1 160 5 view LVU542
	movl	%eax, _RSP	 # _205, RSP
LVL172:
	.loc 1 160 5 view LVU543
	cmpl	_RSS, %eax	 # RSS, _205
	jnb	L77	 #,
	.loc 1 161 3 is_stmt 1 view LVU544
 # mf.c:161: 		RSP = RSE;
	.loc 1 161 7 is_stmt 0 view LVU545
	movl	_RSE, %eax	 # RSE, RSE
	movl	%eax, _RSP	 # RSE, RSP
L77:
	.loc 1 162 2 is_stmt 1 view LVU546
LVL173:
	.loc 1 162 2 is_stmt 0 view LVU547
LBE213:
LBE212:
 # mf.c:285: 			if (--call_depth < 1)
	.loc 1 285 8 view LVU548
	movl	_call_depth, %eax	 # call_depth, tmp351
 # mf.c:284: 			PC = rpop();
	.loc 1 284 7 view LVU549
	movl	%ebp, %esi	 # v, PC
	.loc 1 285 4 is_stmt 1 view LVU550
 # mf.c:285: 			if (--call_depth < 1)
	.loc 1 285 8 is_stmt 0 view LVU551
	subl	$1, %eax	 #, _29
 # mf.c:285: 			if (--call_depth < 1)
	.loc 1 285 7 view LVU552
	movl	%eax, _call_depth	 # _29, call_depth
	testl	%eax, %eax	 # _29
	jg	L28	 #,
	jmp	L27	 #
LVL174:
	.p2align 4,,10
	.p2align 3
L57:
	.loc 1 276 4 is_stmt 1 view LVU553
LBB214:
LBB215:
 # mf.c:151: 	if (++RSP > RSE)
	.loc 1 151 6 is_stmt 0 view LVU554
	movl	_RSP, %eax	 # RSP, tmp350
LVL175:
	.loc 1 151 6 view LVU555
LBE215:
LBE214:
 # mf.c:276: 			arg1 = CELL_AT(PC);
	.loc 1 276 9 view LVU556
	movl	(%ecx), %ebp	 # *PC.37_22, arg1
LVL176:
	.loc 1 277 4 is_stmt 1 view LVU557
 # mf.c:277: 			PC += CELL_SZ;
	.loc 1 277 7 is_stmt 0 view LVU558
	addl	$5, %edx	 #, _24
LVL177:
	.loc 1 278 4 is_stmt 1 view LVU559
LBB217:
LBI214:
	.loc 1 149 6 view LVU560
LBB216:
	.loc 1 151 2 view LVU561
 # mf.c:151: 	if (++RSP > RSE)
	.loc 1 151 6 is_stmt 0 view LVU562
	addl	$4, %eax	 #, _199
 # mf.c:151: 	if (++RSP > RSE)
	.loc 1 151 5 view LVU563
	movl	%eax, _RSP	 # _199, RSP
LVL178:
	.loc 1 151 5 view LVU564
	cmpl	_RSE, %eax	 # RSE, _199
	jbe	L76	 #,
	.loc 1 152 3 is_stmt 1 view LVU565
 # mf.c:152: 		RSP = RSS;
	.loc 1 152 7 is_stmt 0 view LVU566
	movl	_RSS, %eax	 # RSS, _199
	movl	%eax, _RSP	 # _199, RSP
L76:
	.loc 1 153 2 is_stmt 1 view LVU567
 # mf.c:153: 	*RSP = v;
	.loc 1 153 7 is_stmt 0 view LVU568
	movl	%edx, (%eax)	 # _24, *prephitmp_468
LVL179:
	.loc 1 153 7 view LVU569
LBE216:
LBE217:
	.loc 1 279 4 is_stmt 1 view LVU570
 # mf.c:279: 			PC = arg1;
	.loc 1 279 7 is_stmt 0 view LVU571
	movl	%ebp, %esi	 # arg1, PC
	.loc 1 280 4 is_stmt 1 view LVU572
	addl	$1, _call_depth	 #, call_depth
	.loc 1 281 4 view LVU573
	jmp	L28	 #
LVL180:
	.p2align 4,,10
	.p2align 3
L59:
	.loc 1 268 4 view LVU574
	movl	_DSP, %eax	 # DSP, DSP.33_15
LVL181:
 # mf.c:268: 			TOS--;
	.loc 1 268 7 is_stmt 0 view LVU575
	subl	$1, (%eax)	 #, *DSP.33_15
LVL182:
	.loc 1 269 4 is_stmt 1 view LVU576
	jmp	L28	 #
LVL183:
	.p2align 4,,10
	.p2align 3
L53:
	.loc 1 300 4 view LVU577
LBB218:
LBI218:
	.loc 1 128 6 view LVU578
LBB219:
	.loc 1 130 2 view LVU579
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU580
	movl	_DSP, %eax	 # DSP, DSP.7_218
LVL184:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU581
	movl	(%eax), %edx	 # *DSP.7_218, v
LVL185:
	.loc 1 131 2 is_stmt 1 view LVU582
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU583
	subl	$4, %eax	 #, _220
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU584
	movl	%eax, _DSP	 # _220, DSP
LVL186:
	.loc 1 131 5 view LVU585
	cmpl	_DSS, %eax	 # DSS, _220
	jnb	L80	 #,
	.loc 1 132 3 is_stmt 1 view LVU586
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU587
	movl	_DSE, %eax	 # DSE, _220
	movl	%eax, _DSP	 # _220, DSP
L80:
	.loc 1 133 2 is_stmt 1 view LVU588
LVL187:
	.loc 1 133 2 is_stmt 0 view LVU589
LBE219:
LBE218:
	.loc 1 301 4 is_stmt 1 view LVU590
 # mf.c:301: 			TOS *= arg1;
	.loc 1 301 8 is_stmt 0 view LVU591
	imull	(%eax), %edx	 # *prephitmp_465, tmp296
LVL188:
	.loc 1 301 8 view LVU592
	movl	%edx, (%eax)	 # tmp296,* _220
	.loc 1 302 4 is_stmt 1 view LVU593
	jmp	L28	 #
LVL189:
	.p2align 4,,10
	.p2align 3
L54:
	.loc 1 295 4 view LVU594
LBB220:
LBI220:
	.loc 1 128 6 view LVU595
LBB221:
	.loc 1 130 2 view LVU596
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU597
	movl	_DSP, %eax	 # DSP, DSP.7_213
LVL190:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU598
	movl	(%eax), %edx	 # *DSP.7_213, v
LVL191:
	.loc 1 131 2 is_stmt 1 view LVU599
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU600
	subl	$4, %eax	 #, _215
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU601
	movl	%eax, _DSP	 # _215, DSP
LVL192:
	.loc 1 131 5 view LVU602
	cmpl	_DSS, %eax	 # DSS, _215
	jnb	L79	 #,
	.loc 1 132 3 is_stmt 1 view LVU603
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU604
	movl	_DSE, %eax	 # DSE, _215
	movl	%eax, _DSP	 # _215, DSP
L79:
	.loc 1 133 2 is_stmt 1 view LVU605
LVL193:
	.loc 1 133 2 is_stmt 0 view LVU606
LBE221:
LBE220:
	.loc 1 296 4 is_stmt 1 view LVU607
 # mf.c:296: 			TOS -= arg1;
	.loc 1 296 8 is_stmt 0 view LVU608
	subl	%edx, (%eax)	 # v, *prephitmp_466
	.loc 1 297 4 is_stmt 1 view LVU609
	jmp	L28	 #
LVL194:
	.p2align 4,,10
	.p2align 3
L52:
	.loc 1 305 4 view LVU610
LBB222:
LBI222:
	.loc 1 128 6 view LVU611
LBB223:
	.loc 1 130 2 view LVU612
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU613
	movl	_DSP, %ecx	 # DSP, DSP.7_223
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU614
	movl	(%ecx), %edi	 # *DSP.7_223, v
LVL195:
	.loc 1 131 2 is_stmt 1 view LVU615
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU616
	subl	$4, %ecx	 #, _225
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU617
	movl	%ecx, _DSP	 # _225, DSP
	cmpl	_DSS, %ecx	 # DSS, _225
	jnb	L81	 #,
	.loc 1 132 3 is_stmt 1 view LVU618
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU619
	movl	_DSE, %ecx	 # DSE, _225
	movl	%ecx, _DSP	 # _225, DSP
L81:
	.loc 1 133 2 is_stmt 1 view LVU620
LVL196:
	.loc 1 133 2 is_stmt 0 view LVU621
LBE223:
LBE222:
	.loc 1 306 4 is_stmt 1 view LVU622
 # mf.c:306: 			TOS /= arg1;
	.loc 1 306 8 is_stmt 0 view LVU623
	movl	(%ecx), %eax	 # *prephitmp_464, *prephitmp_464
LVL197:
	.loc 1 306 8 view LVU624
	xorl	%edx, %edx	 # tmp299
	divl	%edi	 # v
	movl	%eax, (%ecx)	 # tmp298, *prephitmp_464
	.loc 1 307 4 is_stmt 1 view LVU625
	jmp	L28	 #
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	_define_word
	.def	_define_word;	.scl	2;	.type	32;	.endef
_define_word:
LVL198:
LFB87:
	.loc 1 431 1 view -0
	.cfi_startproc
	.loc 1 433 2 view LVU627
 # mf.c:431: {
	.loc 1 431 1 is_stmt 0 view LVU628
	pushl	%edi	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp	 #,
	.cfi_def_cfa_offset 32
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 37 view LVU629
	movl	_num_words, %eax	 # num_words, tmp105
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 11 view LVU630
	movl	_the_dict, %edx	 # the_dict,
 # mf.c:431: {
	.loc 1 431 1 view LVU631
	movl	32(%esp), %edi	 # word, word
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 37 view LVU632
	addl	$1, %eax	 #, _3
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 6 view LVU633
	movl	%edi, (%esp)	 # word,
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 11 view LVU634
	movl	%eax, _num_words	 # _3, num_words
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 36 view LVU635
	leal	(%eax,%eax,8), %eax	 #, tmp96
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 11 view LVU636
	leal	(%edx,%eax,4), %eax	 #, tmp97
	movl	%eax, %ebx	 # tmp97, ep
LVL199:
	.loc 1 434 2 is_stmt 1 view LVU637
	.loc 1 435 2 view LVU638
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 6 is_stmt 0 view LVU639
	call	_strlen	 #
LVL200:
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 5 view LVU640
	cmpl	$29, %eax	 #, tmp103
	jbe	L119	 #,
	.loc 1 436 3 is_stmt 1 view LVU641
 # mf.c:436: 		word[maxLen] = (char)0;
	.loc 1 436 16 is_stmt 0 view LVU642
	movb	$0, 29(%edi)	 #, MEM[(char *)word_13(D) + 29B]
L119:
	.loc 1 438 2 is_stmt 1 view LVU643
 # mf.c:438: 	ep->xt = HERE;
	.loc 1 438 9 is_stmt 0 view LVU644
	movl	_HERE, %eax	 # HERE, HERE
 # mf.c:439: 	ep->flags = 0;
	.loc 1 439 12 view LVU645
	movb	$0, 4(%ebx)	 #, ep_12->flags
 # mf.c:438: 	ep->xt = HERE;
	.loc 1 438 9 view LVU646
	movl	%eax, (%ebx)	 # HERE, ep_12->xt
	.loc 1 439 2 is_stmt 1 view LVU647
	.loc 1 440 2 view LVU648
LBB226:
LBB227:
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU649
	movzbl	(%edi), %edx	 #* word, _21
LBE227:
LBE226:
 # mf.c:440: 	strcpy_s(ep->name, sizeof(ep->name), word);
	.loc 1 440 13 view LVU650
	leal	5(%ebx), %eax	 #, dst
LVL201:
LBB229:
LBI226:
	.loc 1 102 6 is_stmt 1 view LVU651
LBB228:
	.loc 1 104 2 view LVU652
	.loc 1 104 8 view LVU653
	testb	%dl, %dl	 # _21
	je	L118	 #,
	.p2align 4,,10
	.p2align 3
L121:
	.loc 1 106 3 view LVU654
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 19 is_stmt 0 view LVU655
	addl	$1, %edi	 #, word
LVL202:
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 12 view LVU656
	movb	%dl, (%eax)	 # _21, MEM[base: dst_20, offset: 4294967295B]
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 8 view LVU657
	addl	$1, %eax	 #, dst
LVL203:
	.loc 1 104 8 is_stmt 1 view LVU658
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU659
	movzbl	(%edi), %edx	 #* word, _21
 # mf.c:104: 	while (*src)
	.loc 1 104 8 view LVU660
	testb	%dl, %dl	 # _21
	jne	L121	 #,
L118:
	.loc 1 104 8 view LVU661
LBE228:
LBE229:
 # mf.c:441: }
	.loc 1 441 1 view LVU662
	addl	$20, %esp	 #,
	.cfi_def_cfa_offset 12
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 8
LVL204:
	.loc 1 441 1 view LVU663
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 4
LVL205:
	.loc 1 441 1 view LVU664
	ret	
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	_find_word
	.def	_find_word;	.scl	2;	.type	32;	.endef
_find_word:
LVL206:
LFB88:
	.loc 1 444 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 445 2 view LVU666
LBB232:
	.loc 1 445 7 view LVU667
LBE232:
 # mf.c:444: {
	.loc 1 444 1 is_stmt 0 view LVU668
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp	 #,
	.cfi_def_cfa_offset 32
LBB234:
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 11 view LVU669
	movl	_num_words, %ebx	 # num_words, i
LVL207:
	.loc 1 445 26 is_stmt 1 view LVU670
LBE234:
 # mf.c:444: {
	.loc 1 444 1 is_stmt 0 view LVU671
	movl	32(%esp), %edi	 # word, word
LBB235:
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 view LVU672
	testl	%ebx, %ebx	 # i
	jg	L130	 #,
	jmp	L128	 #
LVL208:
	.p2align 4,,10
	.p2align 3
L136:
	.loc 1 445 33 is_stmt 1 discriminator 2 view LVU673
	.loc 1 445 26 discriminator 2 view LVU674
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 discriminator 2 view LVU675
	subl	$1, %ebx	 #, i
LVL209:
	.loc 1 445 2 discriminator 2 view LVU676
	je	L128	 #,
LVL210:
L130:
LBB233:
	.loc 1 447 3 is_stmt 1 view LVU677
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 is_stmt 0 view LVU678
	movl	_the_dict, %edx	 # the_dict, the_dict
	leal	(%ebx,%ebx,8), %eax	 #, tmp92
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU679
	movl	%edi, (%esp)	 # word,
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 view LVU680
	leal	(%edx,%eax,4), %ebp	 #, <retval>
LVL211:
	.loc 1 448 3 is_stmt 1 view LVU681
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 24 is_stmt 0 view LVU682
	leal	5(%ebp), %eax	 #, tmp95
	movl	%eax, 4(%esp)	 # tmp95,
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU683
	call	__stricmp	 #
LVL212:
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 6 view LVU684
	testl	%eax, %eax	 # tmp97
	jne	L136	 #,
	.loc 1 448 6 view LVU685
LBE233:
LBE235:
 # mf.c:454: }
	.loc 1 454 1 view LVU686
	addl	$16, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax	 # <retval>,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL213:
	.loc 1 454 1 view LVU687
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL214:
	.loc 1 454 1 view LVU688
	ret	
LVL215:
	.p2align 4,,10
	.p2align 3
L128:
	.cfi_restore_state
	.loc 1 454 1 view LVU689
	addl	$16, %esp	 #,
	.cfi_def_cfa_offset 16
 # mf.c:453: 	return NULL;
	.loc 1 453 9 view LVU690
	xorl	%ebp, %ebp	 # <retval>
 # mf.c:454: }
	.loc 1 454 1 view LVU691
	movl	%ebp, %eax	 # <retval>,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL216:
	.loc 1 454 1 view LVU692
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
	.cfi_endproc
LFE88:
	.section .rdata,"dr"
LC7:
	.ascii "\12%4d, %08lx, %08lx, %02x, %s\0"
	.text
	.p2align 4
	.globl	_dump_words
	.def	_dump_words;	.scl	2;	.type	32;	.endef
_dump_words:
LFB89:
	.loc 1 457 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 458 2 view LVU694
LBB236:
	.loc 1 458 7 view LVU695
LBE236:
 # mf.c:457: {
	.loc 1 457 1 is_stmt 0 view LVU696
	pushl	%ebx	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp	 #,
	.cfi_def_cfa_offset 48
LBB238:
 # mf.c:458: 	for (int i = num_words; i > 0; i--)
	.loc 1 458 11 view LVU697
	movl	_num_words, %ebx	 # num_words, i
LVL217:
	.loc 1 458 26 is_stmt 1 view LVU698
 # mf.c:458: 	for (int i = num_words; i > 0; i--)
	.loc 1 458 2 is_stmt 0 view LVU699
	testl	%ebx, %ebx	 # i
	jle	L137	 #,
	.p2align 4,,10
	.p2align 3
L139:
LBB237:
	.loc 1 460 3 is_stmt 1 discriminator 3 view LVU700
 # mf.c:460: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 460 12 is_stmt 0 discriminator 3 view LVU701
	movl	_the_dict, %eax	 # the_dict, the_dict
	leal	(%ebx,%ebx,8), %edx	 #, tmp94
	leal	(%eax,%edx,4), %eax	 #, ep
LVL218:
	.loc 1 461 3 is_stmt 1 discriminator 3 view LVU702
	leal	5(%eax), %edx	 #, tmp97
	movl	%edx, 20(%esp)	 # tmp97,
	movzbl	4(%eax), %edx	 # ep_13->flags, ep_13->flags
	movl	%edx, 16(%esp)	 # ep_13->flags,
	movl	(%eax), %edx	 # ep_13->xt, ep_13->xt
	movl	%ebx, 4(%esp)	 # i,
	movl	%edx, 12(%esp)	 # ep_13->xt,
	movl	%eax, 8(%esp)	 # ep,
	movl	$LC7, (%esp)	 #,
	call	_printf	 #
LVL219:
	.loc 1 461 3 is_stmt 0 discriminator 3 view LVU703
LBE237:
	.loc 1 458 33 is_stmt 1 discriminator 3 view LVU704
	.loc 1 458 26 discriminator 3 view LVU705
 # mf.c:458: 	for (int i = num_words; i > 0; i--)
	.loc 1 458 2 is_stmt 0 discriminator 3 view LVU706
	subl	$1, %ebx	 #, i
LVL220:
	.loc 1 458 2 discriminator 3 view LVU707
	jne	L139	 #,
L137:
	.loc 1 458 2 discriminator 3 view LVU708
LBE238:
 # mf.c:463: }
	.loc 1 463 1 view LVU709
	addl	$40, %esp	 #,
	.cfi_def_cfa_offset 8
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 4
LVL221:
	.loc 1 463 1 view LVU710
	ret	
	.cfi_endproc
LFE89:
	.p2align 4
	.globl	_getword
	.def	_getword;	.scl	2;	.type	32;	.endef
_getword:
LVL222:
LFB90:
	.loc 1 472 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 473 2 view LVU712
 # mf.c:472: {
	.loc 1 472 1 is_stmt 0 view LVU713
	movl	4(%esp), %edx	 # line, line
	movl	8(%esp), %ecx	 # word, word
LVL223:
	.loc 1 476 2 is_stmt 1 view LVU714
	.loc 1 476 8 view LVU715
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 10 is_stmt 0 view LVU716
	movzbl	(%edx), %eax	 #* line, prephitmp_5
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 8 view LVU717
	testb	%al, %al	 # prephitmp_5
	jne	L159	 #,
	jmp	L160	 #
LVL224:
	.p2align 4,,10
	.p2align 3
L161:
	.loc 1 478 3 is_stmt 1 view LVU718
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 10 is_stmt 0 view LVU719
	movzbl	1(%edx), %eax	 #, prephitmp_5
 # mf.c:478: 		line++;
	.loc 1 478 7 view LVU720
	addl	$1, %edx	 #, line
LVL225:
	.loc 1 476 8 is_stmt 1 view LVU721
	testb	%al, %al	 # prephitmp_5
	je	L160	 #,
L159:
	.loc 1 476 8 is_stmt 0 view LVU722
	cmpb	$32, %al	 #, prephitmp_5
	jle	L161	 #,
LVL226:
	.p2align 4,,10
	.p2align 3
L147:
	.loc 1 484 3 is_stmt 1 view LVU723
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 19 is_stmt 0 view LVU724
	addl	$1, %edx	 #, line
LVL227:
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 11 view LVU725
	movb	%al, (%ecx)	 # prephitmp_5, MEM[base: cp_17, offset: 4294967295B]
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 7 view LVU726
	addl	$1, %ecx	 #, word
LVL228:
	.loc 1 482 8 is_stmt 1 view LVU727
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 10 is_stmt 0 view LVU728
	movzbl	(%edx), %eax	 # MEM[base: line_16, offset: 0B], prephitmp_5
L160:
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 8 view LVU729
	cmpb	$32, %al	 #, prephitmp_5
	jg	L147	 #,
	.loc 1 486 2 is_stmt 1 view LVU730
 # mf.c:486: 	*cp = 0;
	.loc 1 486 6 is_stmt 0 view LVU731
	movb	$0, (%ecx)	 #, *cp_33
	.loc 1 488 2 is_stmt 1 view LVU732
 # mf.c:489: }
	.loc 1 489 1 is_stmt 0 view LVU733
	movl	%edx, %eax	 # line,
	ret	
	.cfi_endproc
LFE90:
	.section .rdata,"dr"
LC8:
	.ascii "0123456789abcdef\0"
	.text
	.p2align 4
	.globl	_is_number
	.def	_is_number;	.scl	2;	.type	32;	.endef
_is_number:
LVL229:
LFB91:
	.loc 1 492 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 493 2 view LVU735
	.loc 1 494 2 view LVU736
 # mf.c:492: {
	.loc 1 492 1 is_stmt 0 view LVU737
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$64, %esp	 #,
	.cfi_def_cfa_offset 80
 # mf.c:492: {
	.loc 1 492 1 view LVU738
	movl	80(%esp), %ebp	 # word, word
LVL230:
	.loc 1 495 2 is_stmt 1 view LVU739
	.loc 1 496 2 view LVU740
	.loc 1 497 2 view LVU741
	.loc 1 499 2 view LVU742
 # mf.c:499: 	if ((word[0] == '\'') && (word[2] == '\'') && (word[3] == (char)0))
	.loc 1 499 11 is_stmt 0 view LVU743
	movsbl	0(%ebp), %eax	 # *word_29(D),
 # mf.c:499: 	if ((word[0] == '\'') && (word[2] == '\'') && (word[3] == (char)0))
	.loc 1 499 5 view LVU744
	cmpb	$39, %al	 #, _17
	je	L189	 #,
	.loc 1 505 2 is_stmt 1 view LVU745
 # mf.c:505: 	if (*w == '%')
	.loc 1 505 5 is_stmt 0 view LVU746
	cmpb	$37, %al	 #, _17
	je	L190	 #,
	.loc 1 511 2 is_stmt 1 view LVU747
 # mf.c:511: 	if (*w == '#')
	.loc 1 511 5 is_stmt 0 view LVU748
	cmpb	$35, %al	 #, _17
	je	L191	 #,
L167:
	.loc 1 517 2 is_stmt 1 view LVU749
 # mf.c:517: 	if (*w == '$')
	.loc 1 517 5 is_stmt 0 view LVU750
	cmpb	$36, %al	 #, _17
	je	L192	 #,
LVL231:
	.p2align 4,,10
	.p2align 3
L164:
	.loc 1 523 2 is_stmt 1 view LVU751
LBB239:
LBI239:
	.loc 1 102 6 view LVU752
LBB240:
	.loc 1 104 2 view LVU753
	.loc 1 104 8 view LVU754
LBE240:
LBE239:
	xorl	%ecx, %ecx	 # ivtmp.287
LBB242:
LBB241:
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU755
	movl	$48, %ebx	 #, _53
	leal	40(%esp), %edi	 #, tmp119
LVL232:
	.p2align 4,,10
	.p2align 3
L168:
	.loc 1 106 3 is_stmt 1 view LVU756
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 12 is_stmt 0 view LVU757
	movb	%bl, (%edi,%ecx)	 # _53, MEM[symbol: valid_chars, index: ivtmp.287_93, offset: 0B]
	.loc 1 104 8 is_stmt 1 view LVU758
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU759
	movzbl	LC8+1(%ecx), %ebx	 # MEM[symbol: "0123456789abcdef", index: ivtmp.287_92, offset: 0B], _53
	addl	$1, %ecx	 #, ivtmp.287
LVL233:
 # mf.c:104: 	while (*src)
	.loc 1 104 8 view LVU760
	testb	%bl, %bl	 # _53
	jne	L168	 #,
LVL234:
	.loc 1 104 8 view LVU761
LBE241:
LBE242:
	.loc 1 524 2 is_stmt 1 view LVU762
 # mf.c:524: 	valid_chars[base] = (char)0;
	.loc 1 524 20 is_stmt 0 view LVU763
	movl	88(%esp), %edx	 # base, tmp129
	movb	$0, 40(%esp,%edx)	 #, valid_chars
	.loc 1 527 2 is_stmt 1 view LVU764
 # mf.c:527: 	if ((base == 10) && (*w == '-'))
	.loc 1 527 5 is_stmt 0 view LVU765
	cmpl	$10, %edx	 #,
	je	L193	 #,
L169:
	.loc 1 533 8 is_stmt 1 view LVU766
 # mf.c:493: 	int is_neg = 0;
	.loc 1 493 6 is_stmt 0 view LVU767
	movl	$0, 28(%esp)	 #, %sfp
 # mf.c:533: 	while (*w)
	.loc 1 533 8 view LVU768
	testb	%al, %al	 # _17
	je	L177	 #,
LVL235:
L174:
 # mf.c:493: 	int is_neg = 0;
	.loc 1 493 6 view LVU769
	xorl	%ebx, %ebx	 # my_num
	jmp	L172	 #
LVL236:
	.p2align 4,,10
	.p2align 3
L195:
LBB243:
	.loc 1 542 3 is_stmt 1 view LVU770
	.loc 1 543 3 view LVU771
 # mf.c:543: 		my_num = (my_num * base) + digit;
	.loc 1 543 20 is_stmt 0 view LVU772
	imull	88(%esp), %ebx	 # base, tmp115
LVL237:
 # mf.c:542: 		CELL digit = (CELL)(pos - valid_chars);
	.loc 1 542 27 view LVU773
	subl	%edi, %eax	 # tmp119, digit
LVL238:
 # mf.c:543: 		my_num = (my_num * base) + digit;
	.loc 1 543 10 view LVU774
	addl	%eax, %ebx	 # digit, my_num
LVL239:
	.loc 1 543 10 view LVU775
LBE243:
	.loc 1 533 8 is_stmt 1 view LVU776
 # mf.c:533: 	while (*w)
	.loc 1 533 9 is_stmt 0 view LVU777
	movsbl	0(%ebp), %eax	 # MEM[base: w_41, offset: 0B],
 # mf.c:533: 	while (*w)
	.loc 1 533 8 view LVU778
	testb	%al, %al	 # _17
	je	L194	 #,
LVL240:
L172:
LBB244:
	.loc 1 535 3 is_stmt 1 view LVU779
 # mf.c:536: 		ch = tolower(ch);
	.loc 1 536 8 is_stmt 0 view LVU780
	movl	%eax, (%esp)	 # _17,
 # mf.c:535: 		char ch = *(w++);
	.loc 1 535 16 view LVU781
	addl	$1, %ebp	 #, word
LVL241:
	.loc 1 536 3 is_stmt 1 view LVU782
 # mf.c:536: 		ch = tolower(ch);
	.loc 1 536 8 is_stmt 0 view LVU783
	call	_tolower	 #
LVL242:
	.loc 1 537 3 is_stmt 1 view LVU784
 # mf.c:537: 		char* pos = strchr(valid_chars, ch);
	.loc 1 537 15 is_stmt 0 view LVU785
	movl	%edi, (%esp)	 # tmp119,
	movsbl	%al, %eax	 # tmp124, _11
	.loc 1 537 15 view LVU786
	movl	%eax, 4(%esp)	 # _11,
	call	_strchr	 #
LVL243:
	.loc 1 538 3 is_stmt 1 view LVU787
 # mf.c:538: 		if (pos == 0)
	.loc 1 538 6 is_stmt 0 view LVU788
	testl	%eax, %eax	 # pos
	jne	L195	 #,
 # mf.c:540: 			return 0;
	.loc 1 540 11 view LVU789
	xorl	%eax, %eax	 # <retval>
LVL244:
L162:
	.loc 1 540 11 view LVU790
LBE244:
 # mf.c:552: }
	.loc 1 552 1 view LVU791
	addl	$64, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL245:
	.loc 1 552 1 view LVU792
	ret	
LVL246:
	.p2align 4,,10
	.p2align 3
L192:
	.cfi_restore_state
	.loc 1 519 3 is_stmt 1 view LVU793
	.loc 1 520 3 view LVU794
	.loc 1 520 3 is_stmt 0 view LVU795
	movsbl	1(%ebp), %eax	 # MEM[(char *)w_22 + 1B],
 # mf.c:519: 		base = 16;
	.loc 1 519 8 view LVU796
	movl	$16, 88(%esp)	 #, base
 # mf.c:520: 		++w;
	.loc 1 520 3 view LVU797
	addl	$1, %ebp	 #, word
LVL247:
	.loc 1 520 3 view LVU798
	jmp	L164	 #
LVL248:
	.p2align 4,,10
	.p2align 3
L191:
	.loc 1 513 3 is_stmt 1 view LVU799
	.loc 1 514 3 view LVU800
	.loc 1 514 3 is_stmt 0 view LVU801
	movsbl	1(%ebp), %eax	 # MEM[(char *)w_21 + 1B],
 # mf.c:513: 		base = 10;
	.loc 1 513 8 view LVU802
	movl	$10, 88(%esp)	 #, base
 # mf.c:514: 		++w;
	.loc 1 514 3 view LVU803
	addl	$1, %ebp	 #, word
LVL249:
	.loc 1 517 2 is_stmt 1 view LVU804
 # mf.c:517: 	if (*w == '$')
	.loc 1 517 5 is_stmt 0 view LVU805
	cmpb	$36, %al	 #, _17
	jne	L164	 #,
	jmp	L192	 #
	.p2align 4,,10
	.p2align 3
L190:
	.loc 1 507 3 is_stmt 1 view LVU806
LVL250:
	.loc 1 508 3 view LVU807
	.loc 1 508 3 is_stmt 0 view LVU808
	movsbl	1(%ebp), %eax	 # MEM[(char *)word_29(D) + 1B],
 # mf.c:507: 		base = 2;
	.loc 1 507 8 view LVU809
	movl	$2, 88(%esp)	 #, base
 # mf.c:508: 		++w;
	.loc 1 508 3 view LVU810
	addl	$1, %ebp	 #, word
LVL251:
	.loc 1 511 2 is_stmt 1 view LVU811
 # mf.c:511: 	if (*w == '#')
	.loc 1 511 5 is_stmt 0 view LVU812
	cmpb	$35, %al	 #, _17
	jne	L167	 #,
	jmp	L191	 #
LVL252:
	.p2align 4,,10
	.p2align 3
L194:
	.loc 1 546 2 is_stmt 1 view LVU813
 # mf.c:546: 	if (is_neg)
	.loc 1 546 5 is_stmt 0 view LVU814
	movl	28(%esp), %eax	 # %sfp,
	testl	%eax, %eax	 #
	je	L175	 #,
	negl	%ebx	 # my_num
LVL253:
L175:
	.loc 1 550 2 is_stmt 1 view LVU815
 # mf.c:550: 	*the_num = my_num;
	.loc 1 550 11 is_stmt 0 view LVU816
	movl	84(%esp), %eax	 # the_num, tmp131
	movl	%ebx, (%eax)	 # my_num, *the_num_31(D)
	.loc 1 551 2 is_stmt 1 view LVU817
 # mf.c:552: }
	.loc 1 552 1 is_stmt 0 view LVU818
	addl	$64, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
 # mf.c:551: 	return 1;
	.loc 1 551 9 view LVU819
	movl	$1, %eax	 #, <retval>
 # mf.c:552: }
	.loc 1 552 1 view LVU820
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL254:
	.loc 1 552 1 view LVU821
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL255:
	.p2align 4,,10
	.p2align 3
L189:
	.cfi_restore_state
 # mf.c:499: 	if ((word[0] == '\'') && (word[2] == '\'') && (word[3] == (char)0))
	.loc 1 499 24 discriminator 1 view LVU822
	cmpb	$39, 2(%ebp)	 #, MEM[(char *)word_29(D) + 2B]
	jne	L164	 #,
 # mf.c:499: 	if ((word[0] == '\'') && (word[2] == '\'') && (word[3] == (char)0))
	.loc 1 499 45 discriminator 2 view LVU823
	cmpb	$0, 3(%ebp)	 #, MEM[(char *)word_29(D) + 3B]
	jne	L164	 #,
	.loc 1 501 3 is_stmt 1 view LVU824
 # mf.c:501: 		*the_num = word[1];
	.loc 1 501 18 is_stmt 0 view LVU825
	movsbl	1(%ebp), %eax	 # MEM[(char *)word_29(D) + 1B], MEM[(char *)word_29(D) + 1B]
	movl	84(%esp), %edx	 # the_num, tmp128
	movl	%eax, (%edx)	 # MEM[(char *)word_29(D) + 1B], *the_num_31(D)
	.loc 1 502 3 is_stmt 1 view LVU826
 # mf.c:502: 		return 1;
	.loc 1 502 10 is_stmt 0 view LVU827
	movl	$1, %eax	 #, <retval>
	jmp	L162	 #
	.p2align 4,,10
	.p2align 3
L193:
 # mf.c:527: 	if ((base == 10) && (*w == '-'))
	.loc 1 527 19 discriminator 1 view LVU828
	cmpb	$45, %al	 #, _17
	jne	L169	 #,
	.loc 1 529 3 is_stmt 1 view LVU829
LVL256:
	.loc 1 530 3 view LVU830
 # mf.c:533: 	while (*w)
	.loc 1 533 9 is_stmt 0 view LVU831
	movsbl	1(%ebp), %eax	 # MEM[(char *)w_23 + 1B],
 # mf.c:530: 		w++;
	.loc 1 530 4 view LVU832
	leal	1(%ebp), %ecx	 #, w
LVL257:
	.loc 1 533 8 is_stmt 1 view LVU833
	testb	%al, %al	 # _17
	je	L177	 #,
 # mf.c:529: 		is_neg = 1;
	.loc 1 529 10 is_stmt 0 view LVU834
	movl	$1, 28(%esp)	 #, %sfp
 # mf.c:530: 		w++;
	.loc 1 530 4 view LVU835
	movl	%ecx, %ebp	 # w, word
	jmp	L174	 #
LVL258:
L177:
 # mf.c:533: 	while (*w)
	.loc 1 533 8 view LVU836
	xorl	%ebx, %ebx	 # my_num
	.loc 1 548 3 is_stmt 1 view LVU837
LVL259:
	.loc 1 548 3 is_stmt 0 view LVU838
	jmp	L175	 #
	.cfi_endproc
LFE91:
	.section .rdata,"dr"
LC9:
	.ascii ";\0"
LC10:
	.ascii "if\0"
LC11:
	.ascii "then\0"
LC12:
	.ascii "begin\0"
LC13:
	.ascii "again\0"
LC14:
	.ascii "jmp\0"
LC15:
	.ascii " ??%s??\0"
	.text
	.p2align 4
	.def	_parseword.part.0;	.scl	3;	.type	32;	.endef
_parseword.part.0:
LVL260:
LFB98:
	.loc 1 555 7 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 572 2 view LVU840
 # mf.c:555: char* parseword(char* line, char* word)
	.loc 1 555 7 is_stmt 0 view LVU841
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi	 # tmp229, line
	pushl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx	 # tmp230, word
	subl	$48, %esp	 #,
	.cfi_def_cfa_offset 64
 # mf.c:572: 	if (_stricmp(word, ";") == 0)
	.loc 1 572 6 view LVU842
	movl	$LC9, 4(%esp)	 #,
	movl	%edx, (%esp)	 # word,
	call	__stricmp	 #
LVL261:
 # mf.c:572: 	if (_stricmp(word, ";") == 0)
	.loc 1 572 5 view LVU843
	testl	%eax, %eax	 # tmp231
	jne	L197	 #,
	.loc 1 574 3 is_stmt 1 view LVU844
	movl	_HERE, %eax	 # HERE, HERE.101_3
	leal	1(%eax), %edx	 #, tmp196
	movl	%edx, _HERE	 # tmp196, HERE
	movb	$12, (%eax)	 #, *HERE.103_5
	.loc 1 575 3 view LVU845
 # mf.c:575: 		STATE = 0;
	.loc 1 575 9 is_stmt 0 view LVU846
	movl	$0, _STATE	 #, STATE
	.loc 1 576 3 is_stmt 1 view LVU847
L198:
 # mf.c:659: }
	.loc 1 659 1 is_stmt 0 view LVU848
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%edi, %eax	 # line,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL262:
	.loc 1 659 1 view LVU849
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL263:
	.loc 1 659 1 view LVU850
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL264:
	.p2align 4,,10
	.p2align 3
L197:
	.cfi_restore_state
	.loc 1 578 2 is_stmt 1 view LVU851
 # mf.c:578: 	if (_stricmp(word, "if") == 0)
	.loc 1 578 6 is_stmt 0 view LVU852
	movl	$LC10, 4(%esp)	 #,
	movl	%ebx, (%esp)	 # word,
	call	__stricmp	 #
LVL265:
 # mf.c:578: 	if (_stricmp(word, "if") == 0)
	.loc 1 578 5 view LVU853
	testl	%eax, %eax	 # tmp232
	jne	L199	 #,
	.loc 1 580 3 is_stmt 1 view LVU854
	movl	_HERE, %eax	 # HERE, HERE.104_7
	leal	1(%eax), %edx	 #, tmp197
	movl	%edx, _HERE	 # tmp197, HERE
	movb	$24, (%eax)	 #, *HERE.106_9
	.loc 1 581 3 view LVU855
LBB267:
LBB268:
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU856
	movl	_DSP, %eax	 # DSP, tmp241
LBE268:
LBE267:
 # mf.c:581: 		push(HERE);
	.loc 1 581 3 view LVU857
	movl	_HERE, %edx	 # HERE, HERE.107_10
LVL266:
LBB270:
LBI267:
	.loc 1 120 6 is_stmt 1 view LVU858
LBB269:
	.loc 1 122 2 view LVU859
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU860
	addl	$4, %eax	 #, _12
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU861
	movl	%eax, _DSP	 # _12, DSP
	cmpl	_DSE, %eax	 # DSE, _12
	jbe	L200	 #,
	.loc 1 123 3 is_stmt 1 view LVU862
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU863
	movl	_DSS, %eax	 # DSS, _12
	movl	%eax, _DSP	 # _12, DSP
L200:
	.loc 1 124 2 is_stmt 1 view LVU864
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU865
	movl	%edx, (%eax)	 # HERE.107_10, *prephitmp_224
LVL267:
	.loc 1 124 7 view LVU866
LBE269:
LBE270:
	.loc 1 582 3 is_stmt 1 view LVU867
	movl	_HERE, %eax	 # HERE, HERE
	movl	$-1, (%eax)	 #, *HERE.109_17
	.loc 1 582 3 view LVU868
 # mf.c:659: }
	.loc 1 659 1 is_stmt 0 view LVU869
	movl	%edi, %eax	 # line,
 # mf.c:582: 		Comma(0xFFFFFFFF);
	.loc 1 582 3 view LVU870
	addl	$4, _HERE	 #, HERE
	.loc 1 583 3 is_stmt 1 view LVU871
 # mf.c:659: }
	.loc 1 659 1 is_stmt 0 view LVU872
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL268:
	.loc 1 659 1 view LVU873
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL269:
	.loc 1 659 1 view LVU874
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL270:
	.p2align 4,,10
	.p2align 3
L199:
	.cfi_restore_state
	.loc 1 585 2 is_stmt 1 view LVU875
 # mf.c:585: 	if (_stricmp(word, "then") == 0)
	.loc 1 585 6 is_stmt 0 view LVU876
	movl	$LC11, 4(%esp)	 #,
	movl	%ebx, (%esp)	 # word,
	call	__stricmp	 #
LVL271:
 # mf.c:585: 	if (_stricmp(word, "then") == 0)
	.loc 1 585 5 view LVU877
	testl	%eax, %eax	 # tmp233
	jne	L201	 #,
	.loc 1 587 3 is_stmt 1 view LVU878
LBB271:
LBI271:
	.loc 1 128 6 view LVU879
LBB272:
	.loc 1 130 2 view LVU880
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU881
	movl	_DSP, %eax	 # DSP, DSP.7_21
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU882
	movl	(%eax), %edx	 # *DSP.7_21, v
LVL272:
	.loc 1 131 2 is_stmt 1 view LVU883
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU884
	subl	$4, %eax	 #, _23
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU885
	movl	%eax, _DSP	 # _23, DSP
	cmpl	_DSS, %eax	 # DSS, _23
	jnb	L202	 #,
	.loc 1 132 3 is_stmt 1 view LVU886
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU887
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L202:
	.loc 1 133 2 is_stmt 1 view LVU888
LVL273:
	.loc 1 133 2 is_stmt 0 view LVU889
LBE272:
LBE271:
 # mf.c:588: 		CELL_AT(tmp) = HERE;
	.loc 1 588 16 view LVU890
	movl	_HERE, %eax	 # HERE, HERE.113_27
 # mf.c:587: 		tmp = pop();
	.loc 1 587 7 view LVU891
	movl	%edx, _tmp	 # v, tmp
	.loc 1 588 3 is_stmt 1 view LVU892
 # mf.c:588: 		CELL_AT(tmp) = HERE;
	.loc 1 588 16 is_stmt 0 view LVU893
	movl	%eax, (%edx)	 # HERE.113_27, *tmp.112_26
	.loc 1 589 3 is_stmt 1 view LVU894
 # mf.c:659: }
	.loc 1 659 1 is_stmt 0 view LVU895
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%edi, %eax	 # line,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL274:
	.loc 1 659 1 view LVU896
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL275:
	.loc 1 659 1 view LVU897
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL276:
	.p2align 4,,10
	.p2align 3
L201:
	.cfi_restore_state
	.loc 1 591 2 is_stmt 1 view LVU898
 # mf.c:591: 	if (_stricmp(word, "begin") == 0)
	.loc 1 591 6 is_stmt 0 view LVU899
	movl	$LC12, 4(%esp)	 #,
	movl	%ebx, (%esp)	 # word,
	call	__stricmp	 #
LVL277:
 # mf.c:591: 	if (_stricmp(word, "begin") == 0)
	.loc 1 591 5 view LVU900
	testl	%eax, %eax	 # tmp234
	jne	L203	 #,
	.loc 1 593 3 is_stmt 1 view LVU901
LBB273:
LBB274:
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU902
	movl	_DSP, %eax	 # DSP, tmp242
LBE274:
LBE273:
 # mf.c:593: 		push(HERE);
	.loc 1 593 3 view LVU903
	movl	_HERE, %edx	 # HERE, HERE.114_29
LVL278:
LBB276:
LBI273:
	.loc 1 120 6 is_stmt 1 view LVU904
LBB275:
	.loc 1 122 2 view LVU905
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU906
	addl	$4, %eax	 #, _31
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU907
	movl	%eax, _DSP	 # _31, DSP
	cmpl	_DSE, %eax	 # DSE, _31
	jbe	L204	 #,
	.loc 1 123 3 is_stmt 1 view LVU908
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU909
	movl	_DSS, %eax	 # DSS, _31
	movl	%eax, _DSP	 # _31, DSP
L204:
	.loc 1 124 2 is_stmt 1 view LVU910
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU911
	movl	%edx, (%eax)	 # HERE.114_29, *prephitmp_223
LVL279:
	.loc 1 124 7 view LVU912
LBE275:
LBE276:
	.loc 1 594 3 is_stmt 1 view LVU913
 # mf.c:594: 		return line;
	.loc 1 594 10 is_stmt 0 view LVU914
	jmp	L198	 #
	.p2align 4,,10
	.p2align 3
L203:
	.loc 1 596 2 is_stmt 1 view LVU915
 # mf.c:596: 	if (_stricmp(word, "again") == 0)
	.loc 1 596 6 is_stmt 0 view LVU916
	movl	$LC13, 4(%esp)	 #,
	movl	%ebx, (%esp)	 # word,
	call	__stricmp	 #
LVL280:
 # mf.c:596: 	if (_stricmp(word, "again") == 0)
	.loc 1 596 5 view LVU917
	testl	%eax, %eax	 # tmp235
	jne	L205	 #,
L235:
	.loc 1 605 3 is_stmt 1 view LVU918
	movl	_HERE, %eax	 # HERE, HERE.121_49
	leal	1(%eax), %edx	 #, tmp204
	movl	%edx, _HERE	 # tmp204, HERE
	movb	$10, (%eax)	 #,* HERE.121_49
	.loc 1 606 3 view LVU919
L233:
	.loc 1 653 4 view LVU920
LBB277:
LBB278:
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU921
	movl	_DSP, %eax	 # DSP, DSP.7_108
LBE278:
LBE277:
 # mf.c:653: 			Comma(pop());
	.loc 1 653 4 view LVU922
	movl	_HERE, %edx	 # HERE, HERE.152_107
LBB280:
LBI277:
	.loc 1 128 6 is_stmt 1 view LVU923
LBB279:
	.loc 1 130 2 view LVU924
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 is_stmt 0 view LVU925
	movl	(%eax), %ecx	 #* DSP.7_108, v
LVL281:
	.loc 1 131 2 is_stmt 1 view LVU926
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU927
	subl	$4, %eax	 #, _110
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU928
	movl	%eax, _DSP	 # _110, DSP
	cmpl	_DSS, %eax	 # DSS, _110
	jnb	L219	 #,
	.loc 1 132 3 is_stmt 1 view LVU929
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU930
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L219:
	.loc 1 133 2 is_stmt 1 view LVU931
LVL282:
	.loc 1 133 2 is_stmt 0 view LVU932
LBE279:
LBE280:
 # mf.c:653: 			Comma(pop());
	.loc 1 653 4 view LVU933
	movl	%ecx, (%edx)	 # v,* HERE.152_107
	.loc 1 653 4 is_stmt 1 view LVU934
	addl	$4, _HERE	 #, HERE
	jmp	L198	 #
	.p2align 4,,10
	.p2align 3
L205:
	.loc 1 602 2 view LVU935
 # mf.c:602: 	if (_stricmp(word, "jmp") == 0)
	.loc 1 602 6 is_stmt 0 view LVU936
	movl	$LC14, 4(%esp)	 #,
	movl	%ebx, (%esp)	 # word,
	call	__stricmp	 #
LVL283:
 # mf.c:602: 	if (_stricmp(word, "jmp") == 0)
	.loc 1 602 5 view LVU937
	testl	%eax, %eax	 # tmp236
	je	L235	 #,
LVL284:
LBB281:
LBB282:
	.loc 1 611 3 is_stmt 1 view LVU938
 # mf.c:611: 		OPCODE_T op = theOpcodes[i];
	.loc 1 611 12 is_stmt 0 view LVU939
	movzbl	_theOpcodes+4, %ecx	 # MEM[(struct  *)&theOpcodes + 4B], op$opcode
	movl	_theOpcodes, %eax	 # MEM[(struct  *)&theOpcodes], op$asm_instr
LVL285:
	.loc 1 611 12 view LVU940
LBE282:
 # mf.c:609: 	for (int i = 0; ; i++)
	.loc 1 609 11 view LVU941
	xorl	%ebp, %ebp	 # i
LBB283:
 # mf.c:611: 		OPCODE_T op = theOpcodes[i];
	.loc 1 611 12 view LVU942
	movb	%cl, 28(%esp)	 # op$opcode, %sfp
LVL286:
	.loc 1 612 3 is_stmt 1 view LVU943
 # mf.c:612: 		if (op.asm_instr == NULL)
	.loc 1 612 6 is_stmt 0 view LVU944
	testl	%eax, %eax	 # op$asm_instr
	jne	L209	 #,
	jmp	L214	 #
LVL287:
	.p2align 4,,10
	.p2align 3
L212:
	.loc 1 612 6 view LVU945
LBE283:
	.loc 1 609 20 is_stmt 1 view LVU946
 # mf.c:609: 	for (int i = 0; ; i++)
	.loc 1 609 21 is_stmt 0 view LVU947
	addl	$1, %ebp	 #, i
LVL288:
	.loc 1 609 18 is_stmt 1 view LVU948
LBB284:
	.loc 1 611 3 view LVU949
 # mf.c:611: 		OPCODE_T op = theOpcodes[i];
	.loc 1 611 12 is_stmt 0 view LVU950
	movzbl	_theOpcodes+4(,%ebp,8), %ecx	 # MEM[symbol: theOpcodes, index: _220, step: 8, offset: 4B], op$opcode
	movl	_theOpcodes(,%ebp,8), %eax	 # MEM[symbol: theOpcodes, index: _220, step: 8, offset: 0B], op$asm_instr
LVL289:
	.loc 1 611 12 view LVU951
	movb	%cl, 28(%esp)	 # op$opcode, %sfp
LVL290:
	.loc 1 612 3 is_stmt 1 view LVU952
 # mf.c:612: 		if (op.asm_instr == NULL)
	.loc 1 612 6 is_stmt 0 view LVU953
	testl	%eax, %eax	 # op$asm_instr
	je	L214	 #,
LVL291:
L209:
	.loc 1 616 3 is_stmt 1 view LVU954
 # mf.c:616: 		if (_stricmp(word, op.asm_instr) == 0)
	.loc 1 616 7 is_stmt 0 view LVU955
	movl	%eax, 4(%esp)	 # op$asm_instr,
	movl	%ebx, (%esp)	 # word,
	call	__stricmp	 #
LVL292:
 # mf.c:616: 		if (_stricmp(word, op.asm_instr) == 0)
	.loc 1 616 6 view LVU956
	testl	%eax, %eax	 # tmp237
	jne	L212	 #,
	.loc 1 619 4 is_stmt 1 view LVU957
 # mf.c:619: 			if (STATE == 1)
	.loc 1 619 7 is_stmt 0 view LVU958
	cmpl	$1, _STATE	 #, STATE
	movl	_HERE, %eax	 # HERE, pretmp_218
	jne	L213	 #,
	.loc 1 620 5 is_stmt 1 view LVU959
	movzbl	28(%esp), %ecx	 # %sfp, op$opcode
	leal	1(%eax), %edx	 #, tmp208
	movl	%edx, _HERE	 # tmp208, HERE
	movb	%cl, (%eax)	 # op$opcode, *HERE.130_69
	jmp	L198	 #
LVL293:
L214:
	.loc 1 620 5 is_stmt 0 view LVU960
LBE284:
LBE281:
	.loc 1 631 2 is_stmt 1 view LVU961
LBB286:
LBI286:
	.loc 1 443 10 view LVU962
LBE286:
	.loc 1 445 2 view LVU963
LBB289:
LBB287:
	.loc 1 445 7 view LVU964
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 11 is_stmt 0 view LVU965
	movl	_num_words, %ebp	 # num_words, i
LVL294:
	.loc 1 445 26 is_stmt 1 view LVU966
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 view LVU967
	testl	%ebp, %ebp	 # i
	jg	L210	 #,
	jmp	L211	 #
LVL295:
	.p2align 4,,10
	.p2align 3
L236:
	.loc 1 445 33 is_stmt 1 view LVU968
	.loc 1 445 26 view LVU969
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 view LVU970
	subl	$1, %ebp	 #, i
LVL296:
	.loc 1 445 2 view LVU971
	je	L211	 #,
LVL297:
L210:
LBB288:
	.loc 1 447 3 is_stmt 1 view LVU972
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 is_stmt 0 view LVU973
	movl	_the_dict, %edx	 # the_dict, the_dict
	leal	0(%ebp,%ebp,8), %eax	 #, tmp214
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU974
	movl	%ebx, (%esp)	 # word,
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 view LVU975
	leal	(%edx,%eax,4), %edx	 #, ep
LVL298:
	.loc 1 448 3 is_stmt 1 view LVU976
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 24 is_stmt 0 view LVU977
	leal	5(%edx), %eax	 #, tmp217
	movl	%edx, 28(%esp)	 # ep, %sfp
	movl	%eax, 4(%esp)	 # tmp217,
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU978
	call	__stricmp	 #
LVL299:
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 6 view LVU979
	movl	28(%esp), %edx	 # %sfp, ep
	testl	%eax, %eax	 # tmp238
	jne	L236	 #,
LVL300:
	.loc 1 448 6 view LVU980
LBE288:
LBE287:
LBE289:
	.loc 1 632 2 is_stmt 1 view LVU981
 # mf.c:632: 	if (ep)
	.loc 1 632 5 is_stmt 0 view LVU982
	testl	%edx, %edx	 # ep
	je	L211	 #,
	.loc 1 634 3 is_stmt 1 view LVU983
 # mf.c:634: 		if (STATE == 1)
	.loc 1 634 6 is_stmt 0 view LVU984
	cmpl	$1, _STATE	 #, STATE
	jne	L216	 #,
	.loc 1 636 4 is_stmt 1 view LVU985
	movl	_HERE, %eax	 # HERE, HERE.137_83
	leal	1(%eax), %ecx	 #, tmp218
	movl	%ecx, _HERE	 # tmp218, HERE
	movb	$11, (%eax)	 #, *HERE.139_85
	.loc 1 637 4 view LVU986
	movl	(%edx), %edx	 # ep_199->xt, _88
LVL301:
	.loc 1 637 4 is_stmt 0 view LVU987
	movl	_HERE, %eax	 # HERE, HERE
	movl	%edx, (%eax)	 # _88, *HERE.141_87
	.loc 1 637 4 is_stmt 1 view LVU988
	addl	$4, _HERE	 #, HERE
	jmp	L198	 #
LVL302:
L211:
	.loc 1 646 2 view LVU989
 # mf.c:647: 	if (is_number(word, &num, BASE))
	.loc 1 647 6 is_stmt 0 view LVU990
	movl	_BASE, %eax	 # BASE, BASE
	movl	%ebx, (%esp)	 # word,
 # mf.c:646: 	long num = 0;
	.loc 1 646 7 view LVU991
	movl	$0, 44(%esp)	 #, num
	.loc 1 647 2 is_stmt 1 view LVU992
 # mf.c:647: 	if (is_number(word, &num, BASE))
	.loc 1 647 6 is_stmt 0 view LVU993
	movl	%eax, 8(%esp)	 # BASE,
	leal	44(%esp), %eax	 #, tmp222
	movl	%eax, 4(%esp)	 # tmp222,
	call	_is_number	 #
LVL303:
 # mf.c:647: 	if (is_number(word, &num, BASE))
	.loc 1 647 5 view LVU994
	testl	%eax, %eax	 # tmp239
	je	L217	 #,
	.loc 1 649 3 is_stmt 1 view LVU995
LBB290:
LBB291:
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU996
	movl	_DSP, %eax	 # DSP, tmp247
LBE291:
LBE290:
 # mf.c:649: 		push((CELL)num);
	.loc 1 649 3 view LVU997
	movl	44(%esp), %edx	 # num, num.146_96
LVL304:
LBB293:
LBI290:
	.loc 1 120 6 is_stmt 1 view LVU998
LBB292:
	.loc 1 122 2 view LVU999
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU1000
	addl	$4, %eax	 #, _98
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU1001
	movl	%eax, _DSP	 # _98, DSP
	cmpl	_DSE, %eax	 # DSE, _98
	jbe	L218	 #,
	.loc 1 123 3 is_stmt 1 view LVU1002
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 is_stmt 0 view LVU1003
	movl	_DSS, %eax	 # DSS, DSS
	movl	%eax, _DSP	 # DSS, DSP
L218:
	.loc 1 124 2 is_stmt 1 view LVU1004
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU1005
	movl	_DSP, %eax	 # DSP, DSP
	movl	%edx, (%eax)	 # num.146_96, *DSP.6_101
LVL305:
	.loc 1 124 7 view LVU1006
LBE292:
LBE293:
	.loc 1 650 3 is_stmt 1 view LVU1007
 # mf.c:650: 		if (STATE == 1)
	.loc 1 650 6 is_stmt 0 view LVU1008
	cmpl	$1, _STATE	 #, STATE
	jne	L198	 #,
	.loc 1 652 4 is_stmt 1 view LVU1009
	movl	_HERE, %eax	 # HERE, HERE.148_103
	leal	1(%eax), %edx	 #, tmp226
	movl	%edx, _HERE	 # tmp226, HERE
	movb	$28, (%eax)	 #, *HERE.150_105
	jmp	L233	 #
LVL306:
L213:
LBB294:
LBB285:
	.loc 1 623 5 view LVU1010
 # mf.c:624: 				CELL_AT(PC) = op.opcode;
	.loc 1 624 21 is_stmt 0 view LVU1011
	movzbl	28(%esp), %ebp	 # %sfp, op$opcode
LVL307:
 # mf.c:623: 				PC = HERE + 10;
	.loc 1 623 15 view LVU1012
	leal	10(%eax), %edx	 #, _72
 # mf.c:623: 				PC = HERE + 10;
	.loc 1 623 8 view LVU1013
	movl	%edx, %esi	 # _72, PC
	.loc 1 624 5 is_stmt 1 view LVU1014
 # mf.c:624: 				CELL_AT(PC) = op.opcode;
	.loc 1 624 21 is_stmt 0 view LVU1015
	movl	%ebp, 10(%eax)	 # op$opcode, *PC.133_74
	.loc 1 625 5 is_stmt 1 view LVU1016
 # mf.c:625: 				CELL_AT(PC+1) = RET;
	.loc 1 625 19 is_stmt 0 view LVU1017
	movl	$12, 11(%eax)	 #, *_78
	.loc 1 626 5 is_stmt 1 view LVU1018
	movl	%edx, (%esp)	 # _72,
	call	_run_program	 #
LVL308:
	jmp	L198	 #
LVL309:
L216:
	.loc 1 626 5 is_stmt 0 view LVU1019
LBE285:
LBE294:
	.loc 1 641 4 is_stmt 1 view LVU1020
	movl	(%edx), %eax	 # ep_199->xt, ep_199->xt
	movl	%eax, (%esp)	 # ep_199->xt,
	call	_run_program	 #
LVL310:
	.loc 1 641 4 is_stmt 0 view LVU1021
	jmp	L198	 #
LVL311:
L217:
	.loc 1 657 2 is_stmt 1 view LVU1022
	movl	%ebx, 4(%esp)	 # word,
	movl	$LC15, (%esp)	 #,
	call	_printf	 #
LVL312:
	.loc 1 658 2 view LVU1023
 # mf.c:658: 	return line;
	.loc 1 658 9 is_stmt 0 view LVU1024
	jmp	L198	 #
	.cfi_endproc
LFE98:
	.section .rdata,"dr"
LC16:
	.ascii ":\0"
	.text
	.p2align 4
	.globl	_parseword
	.def	_parseword;	.scl	2;	.type	32;	.endef
_parseword:
LVL313:
LFB92:
	.loc 1 556 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 557 2 view LVU1026
 # mf.c:556: {
	.loc 1 556 1 is_stmt 0 view LVU1027
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp	 #,
	.cfi_def_cfa_offset 32
 # mf.c:556: {
	.loc 1 556 1 view LVU1028
	movl	36(%esp), %edi	 # word, word
	movl	32(%esp), %ebx	 # line, line
 # mf.c:557: 	if (word[0] == '\\')
	.loc 1 557 5 view LVU1029
	cmpb	$92, (%edi)	 #, *word_11(D)
	je	L268	 #,
	.loc 1 562 2 is_stmt 1 view LVU1030
 # mf.c:562: 	if (_stricmp(word, ":") == 0)
	.loc 1 562 6 is_stmt 0 view LVU1031
	movl	$LC16, 4(%esp)	 #,
	movl	%edi, (%esp)	 # word,
	call	__stricmp	 #
LVL314:
 # mf.c:562: 	if (_stricmp(word, ":") == 0)
	.loc 1 562 5 view LVU1032
	testl	%eax, %eax	 # tmp125
	je	L267	 #,
 # mf.c:659: }
	.loc 1 659 1 view LVU1033
	addl	$16, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%edi, %edx	 # word,
	movl	%ebx, %eax	 # line,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_parseword.part.0	 #
LVL315:
	.p2align 4,,10
	.p2align 3
L269:
	.cfi_restore_state
LBB303:
LBB304:
	.loc 1 478 3 is_stmt 1 view LVU1034
 # mf.c:478: 		line++;
	.loc 1 478 7 is_stmt 0 view LVU1035
	addl	$1, %ebx	 #, line
LVL316:
L267:
	.loc 1 476 8 is_stmt 1 view LVU1036
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 10 is_stmt 0 view LVU1037
	movzbl	(%ebx), %eax	 #* line, _20
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 8 view LVU1038
	testb	%al, %al	 # _20
	je	L241	 #,
	cmpb	$32, %al	 #, _20
	jle	L269	 #,
L264:
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 8 view LVU1039
	movl	%edi, %edx	 # word, cp
	.p2align 4,,10
	.p2align 3
L245:
LVL317:
	.loc 1 484 3 is_stmt 1 view LVU1040
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 19 is_stmt 0 view LVU1041
	addl	$1, %ebx	 #, line
LVL318:
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 11 view LVU1042
	movb	%al, (%edx)	 # _20, MEM[base: cp_27, offset: 4294967295B]
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 7 view LVU1043
	addl	$1, %edx	 #, cp
LVL319:
	.loc 1 482 8 is_stmt 1 view LVU1044
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 10 is_stmt 0 view LVU1045
	movzbl	(%ebx), %eax	 # MEM[base: line_25, offset: 0B], _20
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 8 view LVU1046
	cmpb	$32, %al	 #, _20
	jg	L245	 #,
L244:
	.loc 1 486 2 is_stmt 1 view LVU1047
 # mf.c:486: 	*cp = 0;
	.loc 1 486 6 is_stmt 0 view LVU1048
	movb	$0, (%edx)	 #, *cp_67
	.loc 1 488 2 is_stmt 1 view LVU1049
LVL320:
	.loc 1 488 2 is_stmt 0 view LVU1050
LBE304:
LBE303:
	.loc 1 565 3 is_stmt 1 view LVU1051
 # mf.c:565: 		if (strlen(word) > 0)
	.loc 1 565 6 is_stmt 0 view LVU1052
	cmpb	$0, (%edi)	 #, MEM[(const char *)word_11(D)]
	jne	L270	 #,
 # mf.c:659: }
	.loc 1 659 1 view LVU1053
	addl	$16, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	 # line,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL321:
	.loc 1 659 1 view LVU1054
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL322:
	.p2align 4,,10
	.p2align 3
L268:
	.cfi_restore_state
	.loc 1 559 3 is_stmt 1 view LVU1055
 # mf.c:559: 		*line = 0;
	.loc 1 559 9 is_stmt 0 view LVU1056
	movb	$0, (%ebx)	 #, *line_14(D)
	.loc 1 560 3 is_stmt 1 view LVU1057
 # mf.c:659: }
	.loc 1 659 1 is_stmt 0 view LVU1058
	addl	$16, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	 # line,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL323:
	.p2align 4,,10
	.p2align 3
L241:
	.cfi_restore_state
LBB306:
LBB305:
	.loc 1 482 8 is_stmt 1 view LVU1059
	movl	%edi, %edx	 # word, cp
	cmpb	$32, %al	 #, _20
	jg	L264	 #,
LVL324:
	.loc 1 482 8 is_stmt 0 view LVU1060
	jmp	L244	 #
LVL325:
	.p2align 4,,10
	.p2align 3
L270:
	.loc 1 482 8 view LVU1061
LBE305:
LBE306:
	.loc 1 567 4 is_stmt 1 view LVU1062
LBB307:
LBI307:
	.loc 1 430 6 view LVU1063
LBB308:
	.loc 1 433 2 view LVU1064
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 37 is_stmt 0 view LVU1065
	movl	_num_words, %eax	 # num_words, tmp128
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 11 view LVU1066
	movl	_the_dict, %edx	 # the_dict,
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 6 view LVU1067
	movl	%edi, (%esp)	 # word,
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 37 view LVU1068
	addl	$1, %eax	 #, _34
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 11 view LVU1069
	movl	%eax, _num_words	 # _34, num_words
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 36 view LVU1070
	leal	(%eax,%eax,8), %eax	 #, tmp117
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 11 view LVU1071
	leal	(%edx,%eax,4), %eax	 #, tmp118
	movl	%eax, %ebp	 # tmp118, ep
LVL326:
	.loc 1 434 2 is_stmt 1 view LVU1072
	.loc 1 435 2 view LVU1073
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 6 is_stmt 0 view LVU1074
	call	_strlen	 #
LVL327:
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 5 view LVU1075
	cmpl	$29, %eax	 #, tmp126
	jbe	L246	 #,
	.loc 1 436 3 is_stmt 1 view LVU1076
 # mf.c:436: 		word[maxLen] = (char)0;
	.loc 1 436 16 is_stmt 0 view LVU1077
	movb	$0, 29(%edi)	 #, MEM[(char *)word_11(D) + 29B]
L246:
	.loc 1 438 2 is_stmt 1 view LVU1078
 # mf.c:438: 	ep->xt = HERE;
	.loc 1 438 9 is_stmt 0 view LVU1079
	movl	_HERE, %eax	 # HERE, HERE
 # mf.c:439: 	ep->flags = 0;
	.loc 1 439 12 view LVU1080
	movb	$0, 4(%ebp)	 #, ep_37->flags
 # mf.c:438: 	ep->xt = HERE;
	.loc 1 438 9 view LVU1081
	movl	%eax, 0(%ebp)	 # HERE, ep_37->xt
	.loc 1 439 2 is_stmt 1 view LVU1082
	.loc 1 440 2 view LVU1083
LBB309:
LBB310:
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU1084
	movzbl	(%edi), %edx	 #* word, _45
LBE310:
LBE309:
 # mf.c:440: 	strcpy_s(ep->name, sizeof(ep->name), word);
	.loc 1 440 13 view LVU1085
	leal	5(%ebp), %eax	 #, dst
LVL328:
LBB312:
LBI309:
	.loc 1 102 6 is_stmt 1 view LVU1086
LBB311:
	.loc 1 104 2 view LVU1087
	.loc 1 104 8 view LVU1088
	testb	%dl, %dl	 # _45
	je	L248	 #,
LVL329:
	.p2align 4,,10
	.p2align 3
L247:
	.loc 1 106 3 view LVU1089
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 19 is_stmt 0 view LVU1090
	addl	$1, %edi	 #, word
LVL330:
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 12 view LVU1091
	movb	%dl, (%eax)	 # _45, MEM[base: dst_44, offset: 4294967295B]
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 8 view LVU1092
	addl	$1, %eax	 #, dst
LVL331:
	.loc 1 104 8 is_stmt 1 view LVU1093
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU1094
	movzbl	(%edi), %edx	 #* word, _45
 # mf.c:104: 	while (*src)
	.loc 1 104 8 view LVU1095
	testb	%dl, %dl	 # _45
	jne	L247	 #,
L248:
LVL332:
	.loc 1 104 8 view LVU1096
LBE311:
LBE312:
LBE308:
LBE307:
	.loc 1 568 4 is_stmt 1 view LVU1097
 # mf.c:568: 			STATE = 1;
	.loc 1 568 10 is_stmt 0 view LVU1098
	movl	$1, _STATE	 #, STATE
 # mf.c:659: }
	.loc 1 659 1 view LVU1099
	addl	$16, %esp	 #,
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	 # line,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL333:
	.loc 1 659 1 view LVU1100
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	_parse
	.def	_parse;	.scl	2;	.type	32;	.endef
_parse:
LVL334:
LFB93:
	.loc 1 662 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 663 2 view LVU1102
	.loc 1 665 2 view LVU1103
 # mf.c:662: {
	.loc 1 662 1 is_stmt 0 view LVU1104
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$96, %esp	 #,
	.cfi_def_cfa_offset 112
 # mf.c:662: {
	.loc 1 662 1 view LVU1105
	movl	112(%esp), %ebx	 # line, line
LVL335:
LBB325:
LBI325:
	.loc 1 471 7 is_stmt 1 view LVU1106
LBB326:
	.loc 1 473 2 view LVU1107
	.loc 1 476 2 view LVU1108
	.loc 1 476 8 view LVU1109
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 10 is_stmt 0 view LVU1110
	movzbl	(%ebx), %eax	 #* line, _11
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 8 view LVU1111
	testb	%al, %al	 # _11
	jne	L345	 #,
	jmp	L272	 #
	.p2align 4,,10
	.p2align 3
L352:
	.loc 1 478 3 is_stmt 1 view LVU1112
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 10 is_stmt 0 view LVU1113
	movzbl	1(%ebx), %eax	 #, _11
 # mf.c:478: 		line++;
	.loc 1 478 7 view LVU1114
	addl	$1, %ebx	 #, line
LVL336:
	.loc 1 476 8 is_stmt 1 view LVU1115
	testb	%al, %al	 # _11
	je	L272	 #,
L345:
	.loc 1 476 8 is_stmt 0 view LVU1116
	cmpb	$32, %al	 #, _11
	jle	L352	 #,
L341:
 # mf.c:473: 	char* cp = word;
	.loc 1 473 8 view LVU1117
	leal	32(%esp), %edi	 #, cp
LVL337:
	.loc 1 473 8 view LVU1118
	movl	%edi, %edx	 # cp, cp
LVL338:
	.p2align 4,,10
	.p2align 3
L276:
	.loc 1 484 3 is_stmt 1 view LVU1119
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 19 is_stmt 0 view LVU1120
	addl	$1, %ebx	 #, line
LVL339:
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 11 view LVU1121
	movb	%al, (%edx)	 # _11, MEM[base: cp_18, offset: 4294967295B]
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 7 view LVU1122
	addl	$1, %edx	 #, cp
LVL340:
	.loc 1 482 8 is_stmt 1 view LVU1123
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 10 is_stmt 0 view LVU1124
	movzbl	(%ebx), %eax	 # MEM[base: line_16, offset: 0B], _11
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 8 view LVU1125
	cmpb	$32, %al	 #, _11
	jg	L276	 #,
LVL341:
L275:
	.loc 1 486 2 is_stmt 1 view LVU1126
 # mf.c:486: 	*cp = 0;
	.loc 1 486 6 is_stmt 0 view LVU1127
	movb	$0, (%edx)	 #,* cp
	.loc 1 488 2 is_stmt 1 view LVU1128
LVL342:
	.loc 1 488 2 is_stmt 0 view LVU1129
LBE326:
LBE325:
	.loc 1 666 2 is_stmt 1 view LVU1130
	.loc 1 666 8 view LVU1131
 # mf.c:666: 	while (word[0])
	.loc 1 666 13 is_stmt 0 view LVU1132
	movzbl	32(%esp), %eax	 # word, _1
 # mf.c:666: 	while (word[0])
	.loc 1 666 8 view LVU1133
	testb	%al, %al	 # _1
	je	L271	 #,
L355:
	.loc 1 668 3 is_stmt 1 view LVU1134
LVL343:
LBB330:
LBI330:
	.loc 1 555 7 view LVU1135
LBB331:
	.loc 1 557 2 view LVU1136
 # mf.c:557: 	if (word[0] == '\\')
	.loc 1 557 5 is_stmt 0 view LVU1137
	cmpb	$92, %al	 #, _1
	je	L353	 #,
	.loc 1 562 2 is_stmt 1 view LVU1138
 # mf.c:562: 	if (_stricmp(word, ":") == 0)
	.loc 1 562 6 is_stmt 0 view LVU1139
	movl	$LC16, 4(%esp)	 #,
	movl	%edi, (%esp)	 # cp,
	call	__stricmp	 #
LVL344:
 # mf.c:562: 	if (_stricmp(word, ":") == 0)
	.loc 1 562 5 view LVU1140
	testl	%eax, %eax	 # tmp160
	je	L347	 #,
	movl	%ebx, %eax	 # line,
	movl	%edi, %edx	 # cp,
	call	_parseword.part.0	 #
LVL345:
	movl	%eax, %ebx	 # tmp161, line
LVL346:
	.loc 1 562 5 view LVU1141
LBE331:
LBE330:
	.loc 1 669 3 is_stmt 1 view LVU1142
LBB345:
LBI345:
	.loc 1 471 7 view LVU1143
LBB346:
	.loc 1 473 2 view LVU1144
	.loc 1 476 2 view LVU1145
	.loc 1 476 8 view LVU1146
	jmp	L349	 #
LVL347:
	.p2align 4,,10
	.p2align 3
L354:
	.loc 1 478 3 view LVU1147
 # mf.c:478: 		line++;
	.loc 1 478 7 is_stmt 0 view LVU1148
	addl	$1, %ebx	 #, line
LVL348:
L349:
	.loc 1 476 8 is_stmt 1 view LVU1149
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 10 is_stmt 0 view LVU1150
	movzbl	(%ebx), %eax	 #* line, _23
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 8 view LVU1151
	testb	%al, %al	 # _23
	je	L293	 #,
L357:
	.loc 1 476 8 view LVU1152
	cmpb	$32, %al	 #, _23
	jle	L354	 #,
L343:
 # mf.c:473: 	char* cp = word;
	.loc 1 473 8 view LVU1153
	movl	%edi, %edx	 # cp, cp
	.p2align 4,,10
	.p2align 3
L296:
LVL349:
	.loc 1 484 3 is_stmt 1 view LVU1154
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 19 is_stmt 0 view LVU1155
	addl	$1, %ebx	 #, line
LVL350:
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 11 view LVU1156
	movb	%al, (%edx)	 # _23, MEM[base: cp_30, offset: 4294967295B]
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 7 view LVU1157
	addl	$1, %edx	 #, cp
LVL351:
	.loc 1 482 8 is_stmt 1 view LVU1158
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 10 is_stmt 0 view LVU1159
	movzbl	(%ebx), %eax	 # MEM[base: line_28, offset: 0B], _23
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 8 view LVU1160
	cmpb	$32, %al	 #, _23
	jg	L296	 #,
LBE346:
LBE345:
LBB349:
LBB327:
	.loc 1 486 2 is_stmt 1 view LVU1161
 # mf.c:486: 	*cp = 0;
	.loc 1 486 6 is_stmt 0 view LVU1162
	movb	$0, (%edx)	 #,* cp
	.loc 1 488 2 is_stmt 1 view LVU1163
LVL352:
	.loc 1 488 2 is_stmt 0 view LVU1164
LBE327:
LBE349:
	.loc 1 666 2 is_stmt 1 view LVU1165
	.loc 1 666 8 view LVU1166
 # mf.c:666: 	while (word[0])
	.loc 1 666 13 is_stmt 0 view LVU1167
	movzbl	32(%esp), %eax	 # word, _1
 # mf.c:666: 	while (word[0])
	.loc 1 666 8 view LVU1168
	testb	%al, %al	 # _1
	jne	L355	 #,
LVL353:
L271:
 # mf.c:671: }
	.loc 1 671 1 view LVU1169
	addl	$96, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL354:
	.loc 1 671 1 view LVU1170
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL355:
	.p2align 4,,10
	.p2align 3
L356:
	.cfi_restore_state
LBB350:
LBB342:
LBB332:
LBB333:
	.loc 1 478 3 is_stmt 1 view LVU1171
 # mf.c:478: 		line++;
	.loc 1 478 7 is_stmt 0 view LVU1172
	addl	$1, %ebx	 #, line
LVL356:
L347:
	.loc 1 476 8 is_stmt 1 view LVU1173
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 10 is_stmt 0 view LVU1174
	movzbl	(%ebx), %eax	 #* line, _53
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 8 view LVU1175
	testb	%al, %al	 # _53
	je	L281	 #,
	cmpb	$32, %al	 #, _53
	jle	L356	 #,
L342:
 # mf.c:473: 	char* cp = word;
	.loc 1 473 8 view LVU1176
	movl	%edi, %edx	 # cp, cp
	.p2align 4,,10
	.p2align 3
L285:
LVL357:
	.loc 1 484 3 is_stmt 1 view LVU1177
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 19 is_stmt 0 view LVU1178
	addl	$1, %ebx	 #, line
LVL358:
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 11 view LVU1179
	movb	%al, (%edx)	 # _53, MEM[base: cp_52, offset: 4294967295B]
 # mf.c:484: 		*(cp++) = *(line++);
	.loc 1 484 7 view LVU1180
	addl	$1, %edx	 #, cp
LVL359:
	.loc 1 482 8 is_stmt 1 view LVU1181
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 10 is_stmt 0 view LVU1182
	movzbl	(%ebx), %eax	 # MEM[base: line_50, offset: 0B], _53
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 8 view LVU1183
	cmpb	$32, %al	 #, _53
	jg	L285	 #,
	.loc 1 486 2 is_stmt 1 view LVU1184
 # mf.c:486: 	*cp = 0;
	.loc 1 486 6 is_stmt 0 view LVU1185
	movb	$0, (%edx)	 #, *cp_140
	.loc 1 488 2 is_stmt 1 view LVU1186
LVL360:
	.loc 1 488 2 is_stmt 0 view LVU1187
LBE333:
LBE332:
	.loc 1 565 3 is_stmt 1 view LVU1188
 # mf.c:565: 		if (strlen(word) > 0)
	.loc 1 565 6 is_stmt 0 view LVU1189
	cmpb	$0, 32(%esp)	 #, MEM[(const char *)&word]
	je	L349	 #,
L358:
	.loc 1 567 4 is_stmt 1 view LVU1190
LVL361:
LBB335:
LBI335:
	.loc 1 430 6 view LVU1191
LBB336:
	.loc 1 433 2 view LVU1192
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 37 is_stmt 0 view LVU1193
	movl	_num_words, %eax	 # num_words, tmp164
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 6 view LVU1194
	movl	%edi, %edx	 # cp, _65
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 37 view LVU1195
	addl	$1, %eax	 #, _61
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 36 view LVU1196
	leal	(%eax,%eax,8), %ecx	 #, tmp140
 # mf.c:433: 	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	.loc 1 433 11 view LVU1197
	movl	%eax, _num_words	 # _61, num_words
	movl	_the_dict, %eax	 # the_dict,
	leal	(%eax,%ecx,4), %ecx	 #, tmp141
	movl	%ecx, 28(%esp)	 # tmp141, %sfp
LVL362:
	.loc 1 434 2 is_stmt 1 view LVU1198
	.loc 1 435 2 view LVU1199
L287:
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 6 is_stmt 0 view LVU1200
	movl	(%edx), %ebp	 #* _65, tmp145
	addl	$4, %edx	 #, _65
	leal	-16843009(%ebp), %eax	 #, tmp144
	notl	%ebp	 # tmp145
	andl	%ebp, %eax	 # tmp145, tmp144
	andl	$-2139062144, %eax	 #, tmp144
	je	L287	 #,
	testl	$32896, %eax	 #, tmp144
	jne	L289	 #,
	shrl	$16, %eax	 #, tmp144
	addl	$2, %edx	 #, _65
L289:
	movl	%eax, %ecx	 # tmp144, tmp163
LVL363:
	.loc 1 435 6 view LVU1201
	addb	%al, %cl	 # tmp144, tmp163
	sbbl	$3, %edx	 #, _65
	subl	%edi, %edx	 # cp, _65
 # mf.c:435: 	if (strlen(word) > maxLen)
	.loc 1 435 5 view LVU1202
	cmpl	$29, %edx	 #, _65
	jbe	L290	 #,
	.loc 1 436 3 is_stmt 1 view LVU1203
 # mf.c:436: 		word[maxLen] = (char)0;
	.loc 1 436 16 is_stmt 0 view LVU1204
	movb	$0, 61(%esp)	 #, MEM[(char *)&word + 29B]
L290:
	.loc 1 438 2 is_stmt 1 view LVU1205
 # mf.c:438: 	ep->xt = HERE;
	.loc 1 438 9 is_stmt 0 view LVU1206
	movl	_HERE, %eax	 # HERE, HERE
	movl	28(%esp), %ecx	 # %sfp, ep
	movl	%eax, (%ecx)	 # HERE, ep_64->xt
	.loc 1 439 2 is_stmt 1 view LVU1207
LBB337:
LBB338:
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU1208
	movzbl	32(%esp), %edx	 # MEM[(const char *)&word], _72
 # mf.c:104: 	while (*src)
	.loc 1 104 8 view LVU1209
	xorl	%eax, %eax	 # ivtmp.348
LBE338:
LBE337:
 # mf.c:439: 	ep->flags = 0;
	.loc 1 439 12 view LVU1210
	movb	$0, 4(%ecx)	 #, ep_64->flags
	.loc 1 440 2 is_stmt 1 view LVU1211
LVL364:
LBB340:
LBI337:
	.loc 1 102 6 view LVU1212
LBB339:
	.loc 1 104 2 view LVU1213
	.loc 1 104 8 view LVU1214
	testb	%dl, %dl	 # _72
	je	L292	 #,
LVL365:
	.p2align 4,,10
	.p2align 3
L291:
	.loc 1 106 3 view LVU1215
 # mf.c:106: 		*(dst++) = *(src++);
	.loc 1 106 12 is_stmt 0 view LVU1216
	movl	28(%esp), %ecx	 # %sfp, ep
	movb	%dl, 5(%ecx,%eax)	 # _72, MEM[base: ep_64, index: ivtmp.348_100, offset: 5B]
	.loc 1 104 8 is_stmt 1 view LVU1217
	addl	$1, %eax	 #, ivtmp.348
LVL366:
 # mf.c:104: 	while (*src)
	.loc 1 104 9 is_stmt 0 view LVU1218
	movzbl	(%edi,%eax), %edx	 # MEM[symbol: word, index: ivtmp.348_99, offset: 0B], _72
 # mf.c:104: 	while (*src)
	.loc 1 104 8 view LVU1219
	testb	%dl, %dl	 # _72
	jne	L291	 #,
LVL367:
L292:
	.loc 1 104 8 view LVU1220
LBE339:
LBE340:
LBE336:
LBE335:
	.loc 1 568 4 is_stmt 1 view LVU1221
 # mf.c:568: 			STATE = 1;
	.loc 1 568 10 is_stmt 0 view LVU1222
	movl	$1, _STATE	 #, STATE
LVL368:
	.loc 1 568 10 view LVU1223
LBE342:
LBE350:
LBB351:
LBB347:
	.loc 1 476 8 is_stmt 1 view LVU1224
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 10 is_stmt 0 view LVU1225
	movzbl	(%ebx), %eax	 #* line, _23
 # mf.c:476: 	while ((*line) && (*line <= ' '))
	.loc 1 476 8 view LVU1226
	testb	%al, %al	 # _23
	jne	L357	 #,
LVL369:
	.p2align 4,,10
	.p2align 3
L293:
	.loc 1 482 8 is_stmt 1 view LVU1227
	cmpb	$32, %al	 #, _23
	jg	L343	 #,
	.loc 1 482 8 is_stmt 0 view LVU1228
LBE347:
LBE351:
LBB352:
LBB328:
 # mf.c:473: 	char* cp = word;
	.loc 1 473 8 view LVU1229
	movl	%edi, %edx	 # cp, cp
	jmp	L275	 #
LVL370:
	.p2align 4,,10
	.p2align 3
L353:
	.loc 1 473 8 view LVU1230
LBE328:
LBE352:
LBB353:
LBB343:
	.loc 1 559 3 is_stmt 1 view LVU1231
 # mf.c:559: 		*line = 0;
	.loc 1 559 9 is_stmt 0 view LVU1232
	movb	$0, (%ebx)	 #, *line_114
	.loc 1 560 3 is_stmt 1 view LVU1233
LVL371:
	.loc 1 560 3 is_stmt 0 view LVU1234
LBE343:
LBE353:
	.loc 1 669 3 is_stmt 1 view LVU1235
LBB354:
	.loc 1 471 7 view LVU1236
LBB348:
	.loc 1 473 2 view LVU1237
	.loc 1 476 2 view LVU1238
	.loc 1 476 8 view LVU1239
	.loc 1 482 8 view LVU1240
 # mf.c:473: 	char* cp = word;
	.loc 1 473 8 is_stmt 0 view LVU1241
	movl	%edi, %edx	 # cp, cp
	jmp	L275	 #
LVL372:
	.p2align 4,,10
	.p2align 3
L281:
	.loc 1 473 8 view LVU1242
LBE348:
LBE354:
LBB355:
LBB344:
LBB341:
LBB334:
	.loc 1 482 8 is_stmt 1 view LVU1243
 # mf.c:473: 	char* cp = word;
	.loc 1 473 8 is_stmt 0 view LVU1244
	movl	%edi, %edx	 # cp, cp
 # mf.c:482: 	while ((*line) && (*line > ' '))
	.loc 1 482 8 view LVU1245
	cmpb	$32, %al	 #, _53
	jg	L342	 #,
LVL373:
	.loc 1 486 2 is_stmt 1 view LVU1246
 # mf.c:486: 	*cp = 0;
	.loc 1 486 6 is_stmt 0 view LVU1247
	movb	$0, (%edx)	 #, *cp_140
	.loc 1 488 2 is_stmt 1 view LVU1248
LVL374:
	.loc 1 488 2 is_stmt 0 view LVU1249
LBE334:
LBE341:
	.loc 1 565 3 is_stmt 1 view LVU1250
 # mf.c:565: 		if (strlen(word) > 0)
	.loc 1 565 6 is_stmt 0 view LVU1251
	cmpb	$0, 32(%esp)	 #, MEM[(const char *)&word]
	je	L349	 #,
	jmp	L358	 #
LVL375:
L272:
	.loc 1 565 6 view LVU1252
LBE344:
LBE355:
LBB356:
LBB329:
	.loc 1 482 8 is_stmt 1 view LVU1253
	cmpb	$32, %al	 #, _11
	jg	L341	 #,
 # mf.c:473: 	char* cp = word;
	.loc 1 473 8 is_stmt 0 view LVU1254
	leal	32(%esp), %edi	 #, cp
LVL376:
	.loc 1 473 8 view LVU1255
	movl	%edi, %edx	 # cp, cp
	jmp	L275	 #
LBE329:
LBE356:
	.cfi_endproc
LFE93:
	.section .rdata,"dr"
LC17:
	.ascii "memory: 0x%08lX\12\0"
LC18:
	.ascii "Tests: push() ...\0"
LC19:
	.ascii " pop() ... \0"
LC20:
	.ascii " %d.%d seconds\12\0"
LC21:
	.ascii "test0\0"
LC22:
	.ascii "\12%lx\0"
LC23:
	.ascii "test1\0"
LC24:
	.ascii " %lx\0"
LC25:
	.ascii "test3\0"
	.text
	.p2align 4
	.globl	_doTest
	.def	_doTest;	.scl	2;	.type	32;	.endef
_doTest:
LFB94:
	.loc 1 674 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 676 2 view LVU1257
 # mf.c:674: {
	.loc 1 674 1 is_stmt 0 view LVU1258
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp	 #,
	.cfi_def_cfa_offset 32
 # mf.c:676: 	printf("memory: 0x%08lX\n", (CELL)the_memory);
	.loc 1 676 2 view LVU1259
	movl	_the_memory, %eax	 # the_memory, the_memory
	movl	$LC17, (%esp)	 #,
	movl	%eax, 4(%esp)	 # the_memory,
	call	_printf	 #
LVL377:
	.loc 1 679 2 is_stmt 1 view LVU1260
	.loc 1 680 2 view LVU1261
 # mf.c:680: 	CELL start = GetTickCount();
	.loc 1 680 15 is_stmt 0 view LVU1262
	call	_GetTickCount@0	 #
LVL378:
 # mf.c:682: 	printf("Tests: push() ...");
	.loc 1 682 2 view LVU1263
	movl	$LC18, (%esp)	 #,
 # mf.c:680: 	CELL start = GetTickCount();
	.loc 1 680 15 view LVU1264
	movl	%eax, %ebx	 # tmp159, start
LVL379:
	.loc 1 682 2 is_stmt 1 view LVU1265
	call	_printf	 #
LVL380:
	.loc 1 683 2 view LVU1266
LBB380:
	.loc 1 683 7 view LVU1267
	.loc 1 683 19 view LVU1268
	movl	_DSP, %ecx	 # DSP, DSP_lsm.379
 # mf.c:683: 	for (CELL i = 1; i <= stop; i++)
	.loc 1 683 12 is_stmt 0 view LVU1269
	movl	$1, %eax	 #, i
LBB381:
LBB382:
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 12 view LVU1270
	movl	_DSE, %ebp	 # DSE, DSE.4_38
 # mf.c:123: 		DSP = DSS;
	.loc 1 123 7 view LVU1271
	movl	_DSS, %edi	 # DSS, DSS.5_39
LVL381:
	.p2align 4,,10
	.p2align 3
L363:
	.loc 1 123 7 view LVU1272
LBE382:
LBE381:
	.loc 1 685 3 is_stmt 1 view LVU1273
LBB385:
LBI381:
	.loc 1 120 6 view LVU1274
LBB383:
	.loc 1 122 2 view LVU1275
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU1276
	leal	4(%ecx), %edx	 #, DSP_lsm.379
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU1277
	cmpl	%edx, %ebp	 # DSP_lsm.379, DSE.4_38
	jb	L360	 #,
L396:
	.loc 1 124 2 is_stmt 1 view LVU1278
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU1279
	movl	%eax, 4(%ecx)	 # i, MEM[(CELL *)DSP_lsm.379_50 + 4B]
LVL382:
	.loc 1 124 7 view LVU1280
LBE383:
LBE385:
	.loc 1 683 30 is_stmt 1 view LVU1281
 # mf.c:683: 	for (CELL i = 1; i <= stop; i++)
	.loc 1 683 31 is_stmt 0 view LVU1282
	addl	$1, %eax	 #, i
LVL383:
	.loc 1 683 19 is_stmt 1 view LVU1283
 # mf.c:683: 	for (CELL i = 1; i <= stop; i++)
	.loc 1 683 2 is_stmt 0 view LVU1284
	cmpl	$50000001, %eax	 #, i
	je	L362	 #,
	movl	%edx, %ecx	 # DSP_lsm.379, DSP_lsm.379
	.loc 1 685 3 is_stmt 1 view LVU1285
LVL384:
LBB386:
	.loc 1 120 6 view LVU1286
LBB384:
	.loc 1 122 2 view LVU1287
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 6 is_stmt 0 view LVU1288
	leal	4(%ecx), %edx	 #, DSP_lsm.379
 # mf.c:122: 	if (++DSP > DSE)
	.loc 1 122 5 view LVU1289
	cmpl	%edx, %ebp	 # DSP_lsm.379, DSE.4_38
	jnb	L396	 #,
L360:
	.loc 1 124 2 is_stmt 1 view LVU1290
 # mf.c:124: 	*DSP = v;
	.loc 1 124 7 is_stmt 0 view LVU1291
	movl	%eax, (%edi)	 # i, *DSS.5_39
LVL385:
	.loc 1 124 7 view LVU1292
LBE384:
LBE386:
	.loc 1 683 30 is_stmt 1 view LVU1293
 # mf.c:683: 	for (CELL i = 1; i <= stop; i++)
	.loc 1 683 31 is_stmt 0 view LVU1294
	addl	$1, %eax	 #, i
LVL386:
	.loc 1 683 19 is_stmt 1 view LVU1295
 # mf.c:683: 	for (CELL i = 1; i <= stop; i++)
	.loc 1 683 2 is_stmt 0 view LVU1296
	cmpl	$50000001, %eax	 #, i
	je	L383	 #,
	movl	%edi, %ecx	 # DSS.5_39, DSP_lsm.379
	jmp	L363	 #
L383:
	movl	%edi, %edx	 # DSS.5_39, DSP_lsm.379
L362:
	.loc 1 683 2 view LVU1297
LBE380:
 # mf.c:687: 	printf(" pop() ... ");
	.loc 1 687 2 view LVU1298
	movl	$LC19, (%esp)	 #,
LBB387:
LBB388:
LBB389:
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 view LVU1299
	movl	$50000000, %edi	 #, ivtmp_109
	movl	%edx, _DSP	 # DSP_lsm.379, DSP
LBE389:
LBE388:
LBE387:
	.loc 1 687 2 is_stmt 1 view LVU1300
	call	_printf	 #
LVL387:
	.loc 1 688 2 view LVU1301
LBB394:
	.loc 1 688 7 view LVU1302
	.loc 1 688 19 view LVU1303
	movl	_DSP, %eax	 # DSP, DSP_lsm.378
LBB392:
LBB390:
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 12 is_stmt 0 view LVU1304
	movl	_DSS, %ecx	 # DSS, DSS.10_44
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 view LVU1305
	movl	_DSE, %ebp	 # DSE, DSE.11_45
LVL388:
	.p2align 4,,10
	.p2align 3
L365:
	.loc 1 132 7 view LVU1306
LBE390:
LBE392:
	.loc 1 690 3 is_stmt 1 view LVU1307
LBB393:
LBI388:
	.loc 1 128 6 view LVU1308
LBB391:
	.loc 1 130 2 view LVU1309
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 is_stmt 0 view LVU1310
	movl	(%eax), %edx	 # *DSP_lsm.378_125, v
LVL389:
	.loc 1 131 2 is_stmt 1 view LVU1311
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU1312
	subl	$4, %eax	 #, DSP_lsm.378
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU1313
	cmpl	%eax, %ecx	 # DSP_lsm.378, DSS.10_44
	jbe	L364	 #,
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 view LVU1314
	movl	%ebp, %eax	 # DSE.11_45, DSP_lsm.378
L364:
	.loc 1 133 2 is_stmt 1 view LVU1315
LVL390:
	.loc 1 133 2 is_stmt 0 view LVU1316
LBE391:
LBE393:
 # mf.c:690: 		tmp = pop();
	.loc 1 690 7 view LVU1317
	movl	%edx, _tmp	 # v, tmp
	.loc 1 688 29 is_stmt 1 view LVU1318
	.loc 1 688 19 view LVU1319
 # mf.c:688: 	for (CELL i = 0; i < stop; i++)
	.loc 1 688 2 is_stmt 0 view LVU1320
	subl	$1, %edi	 #, ivtmp_109
	jne	L365	 #,
	movl	%eax, _DSP	 # DSP_lsm.378, DSP
LBE394:
	.loc 1 692 2 is_stmt 1 view LVU1321
 # mf.c:692: 	CELL end = GetTickCount();
	.loc 1 692 13 is_stmt 0 view LVU1322
	call	_GetTickCount@0	 #
LVL391:
	.loc 1 693 2 is_stmt 1 view LVU1323
 # mf.c:694: 	printf(" %d.%d seconds\n", tt / 1000, tt % 1000);
	.loc 1 694 2 is_stmt 0 view LVU1324
	movl	$274877907, %edx	 #, tmp131
	movl	$LC20, (%esp)	 #,
 # mf.c:693: 	CELL tt = end - start;
	.loc 1 693 7 view LVU1325
	subl	%ebx, %eax	 # start, tmp160
LVL392:
LBB395:
LBB396:
 # mf.c:140: 	printf("( ");
	.loc 1 140 2 view LVU1326
	movl	$8, %ebx	 #, ivtmp_42
LVL393:
	.loc 1 140 2 view LVU1327
LBE396:
LBE395:
 # mf.c:693: 	CELL tt = end - start;
	.loc 1 693 7 view LVU1328
	movl	%eax, %ecx	 # tmp160, tt
LVL394:
	.loc 1 694 2 is_stmt 1 view LVU1329
	mull	%edx	 # tmp131
LVL395:
	.loc 1 694 2 is_stmt 0 view LVU1330
	shrl	$6, %edx	 #, tmp129
	imull	$1000, %edx, %eax	 #, tmp129, tmp132
	movl	%edx, 4(%esp)	 # tmp129,
	subl	%eax, %ecx	 # tmp132, tmp133
LVL396:
	.loc 1 694 2 view LVU1331
	movl	%ecx, 8(%esp)	 # tmp133,
	call	_printf	 #
LVL397:
	.loc 1 695 2 is_stmt 1 view LVU1332
LBB402:
LBI395:
	.loc 1 137 6 view LVU1333
LBB400:
	.loc 1 139 2 view LVU1334
	.loc 1 140 2 view LVU1335
	movl	$LC0, (%esp)	 #,
	call	_printf	 #
LVL398:
	.loc 1 141 2 view LVU1336
LBB397:
	.loc 1 141 7 view LVU1337
	.loc 1 141 18 view LVU1338
	.p2align 4,,10
	.p2align 3
L369:
	.loc 1 142 3 view LVU1339
LBB398:
LBI398:
	.loc 1 128 6 view LVU1340
LBB399:
	.loc 1 130 2 view LVU1341
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 11 is_stmt 0 view LVU1342
	movl	_DSP, %eax	 # DSP, DSP.7_86
 # mf.c:130: 	CELL v = *DSP;
	.loc 1 130 7 view LVU1343
	movl	(%eax), %edx	 # *DSP.7_86, v
LVL399:
	.loc 1 131 2 is_stmt 1 view LVU1344
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 6 is_stmt 0 view LVU1345
	subl	$4, %eax	 #, _88
 # mf.c:131: 	if (--DSP < DSS)
	.loc 1 131 5 view LVU1346
	movl	%eax, _DSP	 # _88, DSP
	cmpl	_DSS, %eax	 # DSS, _88
	jnb	L366	 #,
	.loc 1 132 3 is_stmt 1 view LVU1347
 # mf.c:132: 		DSP = DSE;
	.loc 1 132 7 is_stmt 0 view LVU1348
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
	.loc 1 133 2 is_stmt 1 view LVU1349
LVL400:
L366:
	.loc 1 133 2 view LVU1350
LBE399:
LBE398:
 # mf.c:142: 		printf("%d ", pop());
	.loc 1 142 3 is_stmt 0 view LVU1351
	movl	%edx, 4(%esp)	 # v,
	movl	$LC1, (%esp)	 #,
	call	_printf	 #
LVL401:
	.loc 1 141 27 is_stmt 1 view LVU1352
	.loc 1 141 18 view LVU1353
 # mf.c:141: 	for (int i = 0; i < num; i++)
	.loc 1 141 2 is_stmt 0 view LVU1354
	subl	$1, %ebx	 #, ivtmp_42
	jne	L369	 #,
LBE397:
	.loc 1 143 2 is_stmt 1 view LVU1355
	movl	$41, (%esp)	 #,
	call	_putchar	 #
LVL402:
	.loc 1 143 2 is_stmt 0 view LVU1356
LBE400:
LBE402:
	.loc 1 695 16 is_stmt 1 view LVU1357
	movl	$10, (%esp)	 #,
	call	_putchar	 #
LVL403:
	.loc 1 703 2 view LVU1358
	.loc 1 704 2 view LVU1359
LBB403:
LBI403:
	.loc 1 443 10 view LVU1360
LBE403:
	.loc 1 445 2 view LVU1361
LBB406:
LBB404:
	.loc 1 445 7 view LVU1362
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 11 is_stmt 0 view LVU1363
	movl	_num_words, %ebx	 # num_words, i
LVL404:
	.loc 1 445 26 is_stmt 1 view LVU1364
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 view LVU1365
	testl	%ebx, %ebx	 # i
	jg	L370	 #,
	jmp	L373	 #
LVL405:
	.p2align 4,,10
	.p2align 3
L397:
	.loc 1 445 33 is_stmt 1 view LVU1366
	.loc 1 445 26 view LVU1367
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 view LVU1368
	subl	$1, %ebx	 #, i
LVL406:
	.loc 1 445 2 view LVU1369
	je	L373	 #,
LVL407:
L370:
LBB405:
	.loc 1 447 3 is_stmt 1 view LVU1370
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 is_stmt 0 view LVU1371
	movl	_the_dict, %edx	 # the_dict, the_dict
	leal	(%ebx,%ebx,8), %eax	 #, tmp140
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU1372
	movl	$LC21, (%esp)	 #,
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 view LVU1373
	leal	(%edx,%eax,4), %ebp	 #, ep
LVL408:
	.loc 1 448 3 is_stmt 1 view LVU1374
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 24 is_stmt 0 view LVU1375
	leal	5(%ebp), %eax	 #, tmp143
	movl	%eax, 4(%esp)	 # tmp143,
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU1376
	call	__stricmp	 #
LVL409:
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 6 view LVU1377
	testl	%eax, %eax	 # tmp161
	jne	L397	 #,
LVL410:
L371:
	.loc 1 448 6 view LVU1378
LBE405:
LBE404:
LBE406:
	.loc 1 704 27 is_stmt 1 view LVU1379
	movl	%ebp, 4(%esp)	 # _138,
	movl	$LC22, (%esp)	 #,
	call	_printf	 #
LVL411:
	.loc 1 705 2 view LVU1380
LBB407:
LBI407:
	.loc 1 443 10 view LVU1381
LBE407:
	.loc 1 445 2 view LVU1382
LBB410:
LBB408:
	.loc 1 445 7 view LVU1383
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 11 is_stmt 0 view LVU1384
	movl	_num_words, %ebx	 # num_words, i
LVL412:
	.loc 1 445 26 is_stmt 1 view LVU1385
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 view LVU1386
	testl	%ebx, %ebx	 # i
	jg	L374	 #,
	jmp	L377	 #
LVL413:
	.p2align 4,,10
	.p2align 3
L398:
	.loc 1 445 33 is_stmt 1 view LVU1387
	.loc 1 445 26 view LVU1388
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 view LVU1389
	subl	$1, %ebx	 #, i
LVL414:
	.loc 1 445 2 view LVU1390
	je	L377	 #,
LVL415:
L374:
LBB409:
	.loc 1 447 3 is_stmt 1 view LVU1391
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 is_stmt 0 view LVU1392
	movl	_the_dict, %edx	 # the_dict, the_dict
	leal	(%ebx,%ebx,8), %eax	 #, tmp146
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU1393
	movl	$LC23, (%esp)	 #,
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 view LVU1394
	leal	(%edx,%eax,4), %ebp	 #, ep
LVL416:
	.loc 1 448 3 is_stmt 1 view LVU1395
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 24 is_stmt 0 view LVU1396
	leal	5(%ebp), %eax	 #, tmp149
	movl	%eax, 4(%esp)	 # tmp149,
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU1397
	call	__stricmp	 #
LVL417:
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 6 view LVU1398
	testl	%eax, %eax	 # tmp162
	jne	L398	 #,
LVL418:
L375:
	.loc 1 448 6 view LVU1399
LBE409:
LBE408:
LBE410:
	.loc 1 705 27 is_stmt 1 view LVU1400
	movl	%ebp, 4(%esp)	 # _140,
	movl	$LC24, (%esp)	 #,
	call	_printf	 #
LVL419:
	.loc 1 706 2 view LVU1401
LBB411:
LBI411:
	.loc 1 443 10 view LVU1402
LBE411:
	.loc 1 445 2 view LVU1403
LBB414:
LBB412:
	.loc 1 445 7 view LVU1404
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 11 is_stmt 0 view LVU1405
	movl	_num_words, %ebx	 # num_words, i
LVL420:
	.loc 1 445 26 is_stmt 1 view LVU1406
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 view LVU1407
	testl	%ebx, %ebx	 # i
	jg	L378	 #,
	jmp	L379	 #
LVL421:
	.p2align 4,,10
	.p2align 3
L380:
	.loc 1 445 33 is_stmt 1 view LVU1408
	.loc 1 445 26 view LVU1409
 # mf.c:445: 	for (int i = num_words; i > 0; i--)
	.loc 1 445 2 is_stmt 0 view LVU1410
	subl	$1, %ebx	 #, i
LVL422:
	.loc 1 445 2 view LVU1411
	je	L379	 #,
LVL423:
L378:
LBB413:
	.loc 1 447 3 is_stmt 1 view LVU1412
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 is_stmt 0 view LVU1413
	movl	_the_dict, %edx	 # the_dict, the_dict
	leal	(%ebx,%ebx,8), %eax	 #, tmp152
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU1414
	movl	$LC25, (%esp)	 #,
 # mf.c:447: 		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
	.loc 1 447 12 view LVU1415
	leal	(%edx,%eax,4), %ebp	 #, ep
LVL424:
	.loc 1 448 3 is_stmt 1 view LVU1416
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 24 is_stmt 0 view LVU1417
	leal	5(%ebp), %eax	 #, tmp155
	movl	%eax, 4(%esp)	 # tmp155,
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 7 view LVU1418
	call	__stricmp	 #
LVL425:
 # mf.c:448: 		if (_stricmp(word, ep->name) == 0)
	.loc 1 448 6 view LVU1419
	testl	%eax, %eax	 # tmp163
	jne	L380	 #,
	.loc 1 448 6 view LVU1420
	movl	%ebp, %edi	 # ep, ivtmp_109
LVL426:
L379:
	.loc 1 448 6 view LVU1421
LBE413:
LBE412:
LBE414:
	.loc 1 706 27 is_stmt 1 view LVU1422
	movl	%edi, 4(%esp)	 # ivtmp_109,
	movl	$LC24, (%esp)	 #,
	call	_printf	 #
LVL427:
 # mf.c:707: }
	.loc 1 707 1 is_stmt 0 view LVU1423
	addl	$16, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	
LVL428:
L377:
	.cfi_restore_state
LBB415:
LBB401:
 # mf.c:140: 	printf("( ");
	.loc 1 140 2 view LVU1424
	xorl	%ebp, %ebp	 # _140
	jmp	L375	 #
LVL429:
L373:
	.loc 1 140 2 view LVU1425
	xorl	%ebp, %ebp	 # _138
	jmp	L371	 #
LBE401:
LBE415:
	.cfi_endproc
LFE94:
	.section .rdata,"dr"
LC26:
	.ascii "rt\0"
LC27:
	.ascii "mf.src\0"
LC28:
	.ascii "\12%02x, %-8s\0"
LC29:
	.ascii "can't open input file!\0"
	.text
	.p2align 4
	.globl	_compile
	.def	_compile;	.scl	2;	.type	32;	.endef
_compile:
LFB95:
	.loc 1 710 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 711 2 view LVU1427
 # mf.c:710: {
	.loc 1 710 1 is_stmt 0 view LVU1428
	pushl	%ebx	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ebx, %ebx	 # i
	subl	$280, %esp	 #,
	.cfi_def_cfa_offset 288
 # mf.c:711: 	HERE = (CELL)the_memory;
	.loc 1 711 9 view LVU1429
	movl	_the_memory, %eax	 # the_memory, the_memory.159_1
	.loc 1 712 2 is_stmt 1 view LVU1430
	leal	1(%eax), %edx	 #, tmp104
	movl	%edx, _HERE	 # tmp104, HERE
	movb	$10, (%eax)	 #, *the_memory.159_1
	.loc 1 713 2 view LVU1431
	movl	_HERE, %eax	 # HERE, HERE
LBB426:
LBB427:
 # mf.c:717: 		OPCODE_T op = theOpcodes[i];
	.loc 1 717 12 is_stmt 0 view LVU1432
	movl	_theOpcodes, %edx	 # MEM[(struct  *)&theOpcodes], op$asm_instr
LBE427:
LBE426:
 # mf.c:713: 	Comma(0xEEEEEEEE);
	.loc 1 713 2 view LVU1433
	movl	$-286331154, (%eax)	 #, *HERE.165_5
	.loc 1 713 2 is_stmt 1 view LVU1434
LBB432:
LBB428:
 # mf.c:717: 		OPCODE_T op = theOpcodes[i];
	.loc 1 717 12 is_stmt 0 view LVU1435
	movzbl	_theOpcodes+4, %eax	 # MEM[(struct  *)&theOpcodes + 4B],
LBE428:
LBE432:
 # mf.c:713: 	Comma(0xEEEEEEEE);
	.loc 1 713 2 view LVU1436
	addl	$4, _HERE	 #, HERE
	.loc 1 715 2 is_stmt 1 view LVU1437
LBB433:
	.loc 1 715 7 view LVU1438
LVL430:
LBB429:
	.loc 1 717 3 view LVU1439
	.loc 1 718 3 view LVU1440
 # mf.c:718: 		if (op.asm_instr == NULL)
	.loc 1 718 6 is_stmt 0 view LVU1441
	testl	%edx, %edx	 # op$asm_instr
	je	L403	 #,
LVL431:
	.p2align 4,,10
	.p2align 3
L400:
	.loc 1 722 3 is_stmt 1 view LVU1442
	movl	%edx, 8(%esp)	 # op$asm_instr,
LBE429:
 # mf.c:715: 	for (int i = 0; ; i++)
	.loc 1 715 21 is_stmt 0 view LVU1443
	addl	$1, %ebx	 #, i
LVL432:
LBB430:
 # mf.c:722: 		printf("\n%02x, %-8s", op.opcode, op.asm_instr);
	.loc 1 722 3 view LVU1444
	movl	%eax, 4(%esp)	 # op$opcode,
	movl	$LC28, (%esp)	 #,
	call	_printf	 #
LVL433:
	.loc 1 722 3 view LVU1445
LBE430:
	.loc 1 715 20 is_stmt 1 view LVU1446
	.loc 1 715 18 view LVU1447
LBB431:
	.loc 1 717 3 view LVU1448
 # mf.c:717: 		OPCODE_T op = theOpcodes[i];
	.loc 1 717 12 is_stmt 0 view LVU1449
	movl	_theOpcodes(,%ebx,8), %edx	 # MEM[symbol: theOpcodes, index: _53, step: 8, offset: 0B], op$asm_instr
LVL434:
	.loc 1 717 12 view LVU1450
	movzbl	_theOpcodes+4(,%ebx,8), %eax	 # MEM[symbol: theOpcodes, index: _53, step: 8, offset: 4B],
LVL435:
	.loc 1 718 3 is_stmt 1 view LVU1451
 # mf.c:718: 		if (op.asm_instr == NULL)
	.loc 1 718 6 is_stmt 0 view LVU1452
	testl	%edx, %edx	 # op$asm_instr
	jne	L400	 #,
LVL436:
L403:
	.loc 1 718 6 view LVU1453
LBE431:
LBE433:
	.loc 1 725 2 is_stmt 1 view LVU1454
	call	_doTest	 #
LVL437:
	.loc 1 728 2 view LVU1455
LBB434:
LBI434:
	.loc 1 110 6 view LVU1456
LBB435:
	.loc 1 112 2 view LVU1457
 # mf.c:112: 	FILE* fp = fopen(nm, mode);
	.loc 1 112 13 is_stmt 0 view LVU1458
	movl	$LC26, 4(%esp)	 #,
	movl	$LC27, (%esp)	 #,
	call	_fopen	 #
LVL438:
	.loc 1 113 2 is_stmt 1 view LVU1459
 # mf.c:113: 	*pfp = fp;
	.loc 1 113 7 is_stmt 0 view LVU1460
	movl	%eax, _input_fp	 # fp, input_fp
LVL439:
	.loc 1 113 7 view LVU1461
LBE435:
LBE434:
	.loc 1 729 2 is_stmt 1 view LVU1462
 # mf.c:729: 	if (!input_fp)
	.loc 1 729 5 is_stmt 0 view LVU1463
	testl	%eax, %eax	 # fp
	je	L401	 #,
	leal	16(%esp), %ebx	 #, tmp124
	jmp	L402	 #
	.p2align 4,,10
	.p2align 3
L404:
LBB436:
LBB437:
	.loc 1 738 3 is_stmt 1 view LVU1464
	movl	%ebx, (%esp)	 # tmp124,
	call	_parse	 #
LVL440:
	movl	_input_fp, %eax	 # input_fp, fp
L402:
	.loc 1 736 8 view LVU1465
 # mf.c:736: 	while (fgets(buf, 256, input_fp) == buf)
	.loc 1 736 9 is_stmt 0 view LVU1466
	movl	%eax, 8(%esp)	 # fp,
	movl	$256, 4(%esp)	 #,
	movl	%ebx, (%esp)	 # tmp124,
	call	_fgets	 #
LVL441:
 # mf.c:736: 	while (fgets(buf, 256, input_fp) == buf)
	.loc 1 736 8 view LVU1467
	cmpl	%eax, %ebx	 # tmp126, tmp124
	je	L404	 #,
	.loc 1 742 2 is_stmt 1 view LVU1468
 # mf.c:742: 	CELL_AT(the_memory + 1) = the_dict[num_words].xt;
	.loc 1 742 36 is_stmt 0 view LVU1469
	movl	_num_words, %eax	 # num_words, num_words
 # mf.c:742: 	CELL_AT(the_memory + 1) = the_dict[num_words].xt;
	.loc 1 742 47 view LVU1470
	movl	_the_dict, %edx	 # the_dict,
	leal	(%eax,%eax,8), %eax	 #, tmp119
	leal	(%edx,%eax,4), %eax	 #, tmp121
	movl	(%eax), %edx	 # _37->xt, _39
 # mf.c:742: 	CELL_AT(the_memory + 1) = the_dict[num_words].xt;
	.loc 1 742 26 view LVU1471
	movl	_the_memory, %eax	 # the_memory, the_memory
	movl	%edx, 1(%eax)	 # _39, MEM[(CELL *)the_memory.172_38 + 1B]
	.loc 1 744 2 is_stmt 1 view LVU1472
	movl	_input_fp, %eax	 # input_fp, input_fp
	movl	%eax, (%esp)	 # input_fp,
	call	_fclose	 #
LVL442:
	.loc 1 745 2 view LVU1473
 # mf.c:745: 	input_fp = NULL;
	.loc 1 745 11 is_stmt 0 view LVU1474
	movl	$0, _input_fp	 #, input_fp
LBE437:
LBE436:
 # mf.c:746: }
	.loc 1 746 1 view LVU1475
	addl	$280, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	
L401:
	.cfi_restore_state
	.loc 1 731 3 is_stmt 1 view LVU1476
	movl	$LC29, (%esp)	 #,
	call	_printf	 #
LVL443:
	.loc 1 732 3 view LVU1477
	movl	$1, (%esp)	 #,
	call	_exit	 #
LVL444:
	.cfi_endproc
LFE95:
	.section .rdata,"dr"
LC30:
	.ascii "wb\0"
LC31:
	.ascii "mf.bin\0"
	.align 4
LC32:
	.ascii "ERROR: Can't open output file!\0"
LC33:
	.ascii "\12%s, %d bytes written.\12\0"
	.text
	.p2align 4
	.globl	_write_output_file
	.def	_write_output_file;	.scl	2;	.type	32;	.endef
_write_output_file:
LFB96:
	.loc 1 750 1 view -0
	.cfi_startproc
	.loc 1 751 2 view LVU1479
LVL445:
LBB444:
LBI444:
	.loc 1 110 6 view LVU1480
LBB445:
	.loc 1 112 2 view LVU1481
LBE445:
LBE444:
 # mf.c:750: {
	.loc 1 750 1 is_stmt 0 view LVU1482
	pushl	%ebx	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp	 #,
	.cfi_def_cfa_offset 32
LBB447:
LBB446:
 # mf.c:112: 	FILE* fp = fopen(nm, mode);
	.loc 1 112 13 view LVU1483
	movl	$LC30, 4(%esp)	 #,
	movl	$LC31, (%esp)	 #,
	call	_fopen	 #
LVL446:
	.loc 1 113 2 is_stmt 1 view LVU1484
 # mf.c:113: 	*pfp = fp;
	.loc 1 113 7 is_stmt 0 view LVU1485
	movl	%eax, _output_fp	 # fp, output_fp
LVL447:
	.loc 1 113 7 view LVU1486
LBE446:
LBE447:
	.loc 1 752 2 is_stmt 1 view LVU1487
 # mf.c:752: 	if (!output_fp)
	.loc 1 752 5 is_stmt 0 view LVU1488
	testl	%eax, %eax	 # fp
	je	L415	 #,
	.loc 1 758 2 is_stmt 1 view LVU1489
 # mf.c:758: 	int num = fwrite(the_memory, 1, MEM_SZ, output_fp);
	.loc 1 758 12 is_stmt 0 view LVU1490
	movl	%eax, 12(%esp)	 # fp,
	movl	_MEM_SZ, %eax	 # MEM_SZ, MEM_SZ
	movl	$1, 4(%esp)	 #,
	movl	%eax, 8(%esp)	 # MEM_SZ,
	movl	_the_memory, %eax	 # the_memory, the_memory
	movl	%eax, (%esp)	 # the_memory,
	call	_fwrite	 #
LVL448:
	movl	%eax, %ebx	 # tmp92, _4
LVL449:
	.loc 1 759 2 is_stmt 1 view LVU1491
	movl	_output_fp, %eax	 # output_fp, output_fp
LVL450:
	.loc 1 759 2 is_stmt 0 view LVU1492
	movl	%eax, (%esp)	 # output_fp,
	call	_fclose	 #
LVL451:
	.loc 1 760 2 is_stmt 1 view LVU1493
 # mf.c:761: 	printf("\n%s, %d bytes written.\n", MF_BIN, num);
	.loc 1 761 2 is_stmt 0 view LVU1494
	movl	%ebx, 8(%esp)	 # _4,
	movl	$LC31, 4(%esp)	 #,
	movl	$LC33, (%esp)	 #,
 # mf.c:760: 	output_fp = NULL;
	.loc 1 760 12 view LVU1495
	movl	$0, _output_fp	 #, output_fp
	.loc 1 761 2 is_stmt 1 view LVU1496
	call	_printf	 #
LVL452:
 # mf.c:762: }
	.loc 1 762 1 is_stmt 0 view LVU1497
	addl	$24, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 4
LVL453:
	.loc 1 762 1 view LVU1498
	ret	
L415:
	.cfi_restore_state
LBB448:
LBI448:
	.loc 1 749 6 is_stmt 1 view LVU1499
LBB449:
	.loc 1 754 3 view LVU1500
	movl	$LC32, (%esp)	 #,
	call	_printf	 #
LVL454:
	.loc 1 755 3 view LVU1501
	movl	$1, (%esp)	 #,
	call	_exit	 #
LVL455:
LBE449:
LBE448:
	.cfi_endproc
LFE96:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC34:
	.ascii " %d.%03d seconds\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LVL456:
LFB97:
	.loc 1 765 1 view -0
	.cfi_startproc
	.loc 1 765 1 is_stmt 0 view LVU1503
	leal	4(%esp), %ecx	 #,
	.cfi_def_cfa 1, 0
	andl	$-16, %esp	 #,
	pushl	-4(%ecx)	 #
	pushl	%ebp	 #
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp	 #,
	pushl	%ebx	 #
	pushl	%ecx	 #
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$16, %esp	 #,
 # mf.c:765: {
	.loc 1 765 1 view LVU1504
	call	___main	 #
LVL457:
	.loc 1 766 2 is_stmt 1 view LVU1505
 # mf.c:766: 	hStdin = GetStdHandle(STD_INPUT_HANDLE);
	.loc 1 766 11 is_stmt 0 view LVU1506
	movl	$-10, (%esp)	 #,
	call	_GetStdHandle@4	 #
LVL458:
	subl	$4, %esp	 #,
 # mf.c:766: 	hStdin = GetStdHandle(STD_INPUT_HANDLE);
	.loc 1 766 9 view LVU1507
	movl	%eax, _hStdin	 # tmp112, hStdin
	.loc 1 767 2 is_stmt 1 view LVU1508
 # mf.c:767: 	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	.loc 1 767 12 is_stmt 0 view LVU1509
	movl	$-11, (%esp)	 #,
	call	_GetStdHandle@4	 #
LVL459:
 # mf.c:767: 	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	.loc 1 767 10 view LVU1510
	movl	%eax, _hStdout	 # tmp113, hStdout
	.loc 1 769 2 is_stmt 1 view LVU1511
 # mf.c:769: 	the_memory = (BYTE*)malloc(MEM_SZ);
	.loc 1 769 22 is_stmt 0 view LVU1512
	movl	_MEM_SZ, %eax	 # MEM_SZ, MEM_SZ
 # mf.c:767: 	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	.loc 1 767 12 view LVU1513
	subl	$4, %esp	 #,
 # mf.c:769: 	the_memory = (BYTE*)malloc(MEM_SZ);
	.loc 1 769 22 view LVU1514
	movl	$1, 4(%esp)	 #,
	movl	%eax, (%esp)	 # MEM_SZ,
	call	_calloc	 #
LVL460:
 # mf.c:773: 	the_dict = (ENTRY_T*)malloc(dict_sz);
	.loc 1 773 23 view LVU1515
	movl	$1, 4(%esp)	 #,
	movl	$73728, (%esp)	 #,
 # mf.c:769: 	the_memory = (BYTE*)malloc(MEM_SZ);
	.loc 1 769 13 view LVU1516
	movl	%eax, _the_memory	 # tmp114, the_memory
	.loc 1 770 2 is_stmt 1 view LVU1517
	.loc 1 772 2 view LVU1518
LVL461:
	.loc 1 773 2 view LVU1519
 # mf.c:773: 	the_dict = (ENTRY_T*)malloc(dict_sz);
	.loc 1 773 23 is_stmt 0 view LVU1520
	call	_calloc	 #
LVL462:
 # mf.c:773: 	the_dict = (ENTRY_T*)malloc(dict_sz);
	.loc 1 773 11 view LVU1521
	movl	%eax, _the_dict	 # tmp115, the_dict
	.loc 1 774 2 is_stmt 1 view LVU1522
	.loc 1 776 2 view LVU1523
	call	_compile	 #
LVL463:
	.loc 1 777 2 view LVU1524
	call	_write_output_file	 #
LVL464:
	.loc 1 778 2 view LVU1525
	call	_dump_words	 #
LVL465:
	.loc 1 779 2 view LVU1526
	movl	$10, (%esp)	 #,
	call	_putchar	 #
LVL466:
	.loc 1 781 2 view LVU1527
 # mf.c:781: 	CELL st = GetTickCount();
	.loc 1 781 12 is_stmt 0 view LVU1528
	call	_GetTickCount@0	 #
LVL467:
	movl	%eax, %ebx	 # tmp116, st
LVL468:
	.loc 1 782 2 is_stmt 1 view LVU1529
 # mf.c:782: 	if (all_ok)
	.loc 1 782 5 is_stmt 0 view LVU1530
	movl	_all_ok, %eax	 # all_ok,
LVL469:
	.loc 1 782 5 view LVU1531
	testl	%eax, %eax	 #
	jne	L419	 #,
L417:
	.loc 1 784 2 is_stmt 1 view LVU1532
 # mf.c:784: 	CELL ee = GetTickCount();
	.loc 1 784 12 is_stmt 0 view LVU1533
	call	_GetTickCount@0	 #
LVL470:
	.loc 1 785 2 is_stmt 1 view LVU1534
 # mf.c:786: 	printf(" %d.%03d seconds\n", tt / 1000, tt % 1000);
	.loc 1 786 2 is_stmt 0 view LVU1535
	movl	$274877907, %edx	 #, tmp104
	movl	$LC34, (%esp)	 #,
 # mf.c:785: 	CELL tt = ee - st;
	.loc 1 785 7 view LVU1536
	subl	%ebx, %eax	 # st, tmp117
LVL471:
	.loc 1 785 7 view LVU1537
	movl	%eax, %ecx	 # tmp117, tt
LVL472:
	.loc 1 786 2 is_stmt 1 view LVU1538
	mull	%edx	 # tmp104
LVL473:
	.loc 1 786 2 is_stmt 0 view LVU1539
	shrl	$6, %edx	 #, tmp102
	imull	$1000, %edx, %eax	 #, tmp102, tmp105
	movl	%edx, 4(%esp)	 # tmp102,
	subl	%eax, %ecx	 # tmp105, tmp106
LVL474:
	.loc 1 786 2 view LVU1540
	movl	%ecx, 8(%esp)	 # tmp106,
	call	_printf	 #
LVL475:
	.loc 1 788 2 is_stmt 1 view LVU1541
 # mf.c:789: }
	.loc 1 789 1 is_stmt 0 view LVU1542
	leal	-8(%ebp), %esp	 #,
	xorl	%eax, %eax	 #
	popl	%ecx	 #
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx	 #
	.cfi_restore 3
LVL476:
	.loc 1 789 1 view LVU1543
	popl	%ebp	 #
	.cfi_restore 5
	leal	-4(%ecx), %esp	 #,
	.cfi_def_cfa 4, 4
	ret	
LVL477:
L419:
	.cfi_restore_state
	.loc 1 783 3 is_stmt 1 view LVU1544
	movl	_the_memory, %eax	 # the_memory, the_memory
	movl	%eax, (%esp)	 # the_memory,
	call	_run_program	 #
LVL478:
	jmp	L417	 #
	.cfi_endproc
LFE97:
	.globl	_theOpcodes
	.section .rdata,"dr"
LC35:
	.ascii "nop\0"
LC36:
	.ascii "a\0"
LC37:
	.ascii "@\0"
LC38:
	.ascii "!\0"
LC39:
	.ascii "drop\0"
LC40:
	.ascii "dup\0"
LC41:
	.ascii "a!\0"
LC42:
	.ascii "call\0"
LC43:
	.ascii "emit\0"
LC44:
	.ascii "ret\0"
LC45:
	.ascii "+\0"
LC46:
	.ascii "-\0"
LC47:
	.ascii "*\0"
LC48:
	.ascii "/\0"
LC49:
	.ascii "@+\0"
LC50:
	.ascii "!+\0"
LC51:
	.ascii "+*\0"
LC52:
	.ascii "over\0"
LC53:
	.ascii "until\0"
LC54:
	.ascii "-until\0"
LC55:
	.ascii "invert\0"
LC56:
	.ascii "gotoRC\0"
LC57:
	.ascii "cls\0"
LC58:
	.ascii "T=0\0"
LC59:
	.ascii "C=0\0"
LC60:
	.ascii "(:)\0"
LC61:
	.ascii ">r\0"
LC62:
	.ascii "r>\0"
LC63:
	.ascii "and\0"
LC64:
	.ascii "xor\0"
LC65:
	.ascii "2*\0"
LC66:
	.ascii "2/\0"
LC67:
	.ascii "1+\0"
LC68:
	.ascii "1-\0"
LC69:
	.ascii "\0"
LC70:
	.ascii "bye\0"
	.data
	.align 32
_theOpcodes:
 # asm_instr:
	.long	LC35
 # opcode:
	.byte	0
	.space 3
 # asm_instr:
	.long	LC36
 # opcode:
	.byte	1
	.space 3
 # asm_instr:
	.long	LC37
 # opcode:
	.byte	2
	.space 3
 # asm_instr:
	.long	LC38
 # opcode:
	.byte	3
	.space 3
 # asm_instr:
	.long	LC39
 # opcode:
	.byte	4
	.space 3
 # asm_instr:
	.long	LC40
 # opcode:
	.byte	5
	.space 3
 # asm_instr:
	.long	LC41
 # opcode:
	.byte	6
	.space 3
 # asm_instr:
	.long	LC14
 # opcode:
	.byte	10
	.space 3
 # asm_instr:
	.long	LC42
 # opcode:
	.byte	11
	.space 3
 # asm_instr:
	.long	LC43
 # opcode:
	.byte	7
	.space 3
 # asm_instr:
	.long	LC9
 # opcode:
	.byte	12
	.space 3
 # asm_instr:
	.long	LC44
 # opcode:
	.byte	12
	.space 3
 # asm_instr:
	.long	LC45
 # opcode:
	.byte	13
	.space 3
 # asm_instr:
	.long	LC46
 # opcode:
	.byte	14
	.space 3
 # asm_instr:
	.long	LC47
 # opcode:
	.byte	15
	.space 3
 # asm_instr:
	.long	LC48
 # opcode:
	.byte	16
	.space 3
 # asm_instr:
	.long	LC49
 # opcode:
	.byte	17
	.space 3
 # asm_instr:
	.long	LC50
 # opcode:
	.byte	18
	.space 3
 # asm_instr:
	.long	LC51
 # opcode:
	.byte	19
	.space 3
 # asm_instr:
	.long	LC52
 # opcode:
	.byte	20
	.space 3
 # asm_instr:
	.long	LC53
 # opcode:
	.byte	21
	.space 3
 # asm_instr:
	.long	LC54
 # opcode:
	.byte	22
	.space 3
 # asm_instr:
	.long	LC55
 # opcode:
	.byte	23
	.space 3
 # asm_instr:
	.long	LC56
 # opcode:
	.byte	26
	.space 3
 # asm_instr:
	.long	LC57
 # opcode:
	.byte	27
	.space 3
 # asm_instr:
	.long	LC58
 # opcode:
	.byte	24
	.space 3
 # asm_instr:
	.long	LC59
 # opcode:
	.byte	25
	.space 3
 # asm_instr:
	.long	LC60
 # opcode:
	.byte	29
	.space 3
 # asm_instr:
	.long	LC61
 # opcode:
	.byte	30
	.space 3
 # asm_instr:
	.long	LC62
 # opcode:
	.byte	31
	.space 3
 # asm_instr:
	.long	LC63
 # opcode:
	.byte	32
	.space 3
 # asm_instr:
	.long	LC64
 # opcode:
	.byte	33
	.space 3
 # asm_instr:
	.long	LC65
 # opcode:
	.byte	34
	.space 3
 # asm_instr:
	.long	LC66
 # opcode:
	.byte	35
	.space 3
 # asm_instr:
	.long	LC67
 # opcode:
	.byte	8
	.space 3
 # asm_instr:
	.long	LC68
 # opcode:
	.byte	9
	.space 3
 # asm_instr:
	.long	LC69
 # opcode:
	.byte	28
	.space 3
 # asm_instr:
	.long	LC70
 # opcode:
	.byte	36
	.space 3
 # asm_instr:
	.long	0
 # opcode:
	.byte	0
	.space 3
	.globl	_all_ok
	.align 4
_all_ok:
	.long	1
	.comm	__QUIT_HIT, 4, 2
	.globl	_num_words
	.bss
	.align 4
_num_words:
	.space 4
	.globl	_the_dict
	.align 4
_the_dict:
	.space 4
	.globl	_the_memory
	.align 4
_the_memory:
	.space 4
	.globl	_RSP
	.data
	.align 4
_RSP:
	.long	_rstk
	.globl	_RSE
	.align 4
_RSE:
	.long	_rstk+252
	.globl	_RSS
	.align 4
_RSS:
	.long	_rstk
	.comm	_rstk, 256, 5
	.globl	_DSP
	.align 4
_DSP:
	.long	_dstk
	.globl	_DSE
	.align 4
_DSE:
	.long	_dstk+252
	.globl	_DSS
	.align 4
_DSS:
	.long	_dstk
	.comm	_dstk, 256, 5
	.globl	_call_depth
	.bss
	.align 4
_call_depth:
	.space 4
	.comm	_tmp, 4, 2
	.comm	_addr, 4, 2
	.globl	_BASE
	.data
	.align 4
_BASE:
	.long	10
	.globl	_STATE
	.bss
	.align 4
_STATE:
	.space 4
	.comm	_HERE, 4, 2
	.globl	_output_fp
	.align 4
_output_fp:
	.space 4
	.globl	_input_fp
	.align 4
_input_fp:
	.space 4
	.comm	_csbi, 22, 2
	.comm	_hStdin, 4, 2
	.comm	_hStdout, 4, 2
	.comm	_OPCODES, 4, 2
	.globl	_MEM_SZ
	.data
	.align 4
_MEM_SZ:
	.long	1024
	.text
Letext0:
	.file 2 "c:/mingw/include/windef.h"
	.file 3 "c:/mingw/lib/gcc/mingw32/9.2.0/include/stddef.h"
	.file 4 "c:/mingw/include/winnt.h"
	.file 5 "c:/mingw/include/wincon.h"
	.file 6 "c:/mingw/include/basetyps.h"
	.file 7 "c:/mingw/include/unknwn.h"
	.file 8 "c:/mingw/include/stdlib.h"
	.file 9 "c:/mingw/include/objidl.h"
	.file 10 "c:/mingw/include/cguid.h"
	.file 11 "c:/mingw/include/olectlid.h"
	.file 12 "c:/mingw/include/oaidl.h"
	.file 13 "c:/mingw/include/stdio.h"
	.file 14 "c:/mingw/include/ctype.h"
	.file 15 "c:/mingw/include/winsock.h"
	.file 16 "<built-in>"
	.file 17 "c:/mingw/include/winbase.h"
	.file 18 "c:/mingw/include/string.h"
	.file 19 "c:/mingw/include/wtypes.h"
	.file 20 "c:/mingw/include/strings.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x400f
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C17 9.2.0 -mtune=generic -march=i586 -g -Ofast\0"
	.byte	0xc
	.ascii "mf.c\0"
	.ascii "C:\\Users\\Chris\\Documents\\Code\\MachineForth\0"
	.secrel32	Ldebug_ranges0+0x410
	.long	0
	.secrel32	Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0x7c
	.uleb128 0x4
	.ascii "DWORD\0"
	.byte	0x2
	.byte	0xf5
	.byte	0x17
	.long	0x97
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.ascii "BYTE\0"
	.byte	0x2
	.byte	0xfe
	.byte	0x17
	.long	0xc5
	.uleb128 0x3
	.long	0xb3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x5
	.ascii "WORD\0"
	.byte	0x2
	.word	0x101
	.byte	0x18
	.long	0xe4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x4
	.long	0xb3
	.uleb128 0x6
	.byte	0x4
	.long	0x10f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x4
	.ascii "size_t\0"
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x11b
	.uleb128 0x4
	.ascii "SHORT\0"
	.byte	0x4
	.byte	0x5c
	.byte	0x10
	.long	0x148
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x7c
	.uleb128 0x6
	.byte	0x4
	.long	0xe4
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x4
	.ascii "HANDLE\0"
	.byte	0x4
	.byte	0xa2
	.byte	0xf
	.long	0x161
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x8
	.ascii "_GUID\0"
	.byte	0x10
	.byte	0x4
	.word	0x706
	.byte	0x10
	.long	0x1fd
	.uleb128 0x9
	.ascii "Data1\0"
	.byte	0x4
	.word	0x707
	.byte	0x12
	.long	0x97
	.byte	0
	.uleb128 0x9
	.ascii "Data2\0"
	.byte	0x4
	.word	0x708
	.byte	0x12
	.long	0xe4
	.byte	0x4
	.uleb128 0x9
	.ascii "Data3\0"
	.byte	0x4
	.word	0x709
	.byte	0x12
	.long	0xe4
	.byte	0x6
	.uleb128 0x9
	.ascii "Data4\0"
	.byte	0x4
	.word	0x70a
	.byte	0x12
	.long	0x1fd
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0xc5
	.long	0x20d
	.uleb128 0xb
	.long	0x11b
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.ascii "GUID\0"
	.byte	0x4
	.word	0x70b
	.byte	0x3
	.long	0x1ac
	.uleb128 0x3
	.long	0x20d
	.uleb128 0xc
	.ascii "_SMALL_RECT\0"
	.byte	0x8
	.byte	0x5
	.byte	0x7e
	.byte	0x8
	.long	0x270
	.uleb128 0xd
	.ascii "Left\0"
	.byte	0x5
	.byte	0x7f
	.byte	0xc
	.long	0x13a
	.byte	0
	.uleb128 0xd
	.ascii "Top\0"
	.byte	0x5
	.byte	0x80
	.byte	0xc
	.long	0x13a
	.byte	0x2
	.uleb128 0xd
	.ascii "Right\0"
	.byte	0x5
	.byte	0x81
	.byte	0xc
	.long	0x13a
	.byte	0x4
	.uleb128 0xd
	.ascii "Bottom\0"
	.byte	0x5
	.byte	0x82
	.byte	0xc
	.long	0x13a
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.ascii "SMALL_RECT\0"
	.byte	0x5
	.byte	0x83
	.byte	0x3
	.long	0x220
	.uleb128 0xc
	.ascii "_COORD\0"
	.byte	0x4
	.byte	0x5
	.byte	0x8c
	.byte	0x8
	.long	0x2aa
	.uleb128 0xd
	.ascii "X\0"
	.byte	0x5
	.byte	0x8d
	.byte	0xc
	.long	0x13a
	.byte	0
	.uleb128 0xd
	.ascii "Y\0"
	.byte	0x5
	.byte	0x8e
	.byte	0xc
	.long	0x13a
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.ascii "COORD\0"
	.byte	0x5
	.byte	0x8f
	.byte	0x3
	.long	0x283
	.uleb128 0xc
	.ascii "_CONSOLE_SCREEN_BUFFER_INFO\0"
	.byte	0x16
	.byte	0x5
	.byte	0x92
	.byte	0x8
	.long	0x34c
	.uleb128 0xd
	.ascii "dwSize\0"
	.byte	0x5
	.byte	0x93
	.byte	0xc
	.long	0x2aa
	.byte	0
	.uleb128 0xd
	.ascii "dwCursorPosition\0"
	.byte	0x5
	.byte	0x94
	.byte	0xc
	.long	0x2aa
	.byte	0x4
	.uleb128 0xd
	.ascii "wAttributes\0"
	.byte	0x5
	.byte	0x95
	.byte	0xb
	.long	0xd6
	.byte	0x8
	.uleb128 0xd
	.ascii "srWindow\0"
	.byte	0x5
	.byte	0x96
	.byte	0x10
	.long	0x270
	.byte	0xa
	.uleb128 0xd
	.ascii "dwMaximumWindowSize\0"
	.byte	0x5
	.byte	0x97
	.byte	0xc
	.long	0x2aa
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.ascii "CONSOLE_SCREEN_BUFFER_INFO\0"
	.byte	0x5
	.byte	0x98
	.byte	0x3
	.long	0x2b8
	.uleb128 0x4
	.ascii "IID\0"
	.byte	0x6
	.byte	0x81
	.byte	0xe
	.long	0x20d
	.uleb128 0x3
	.long	0x36f
	.uleb128 0x4
	.ascii "CLSID\0"
	.byte	0x6
	.byte	0x83
	.byte	0xe
	.long	0x20d
	.uleb128 0x3
	.long	0x380
	.uleb128 0x4
	.ascii "FMTID\0"
	.byte	0x6
	.byte	0x88
	.byte	0xe
	.long	0x20d
	.uleb128 0x3
	.long	0x393
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0xe
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0x11b
	.byte	0x13
	.byte	0xdd
	.byte	0x6
	.long	0x625
	.uleb128 0xf
	.ascii "VT_EMPTY\0"
	.byte	0
	.uleb128 0xf
	.ascii "VT_NULL\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "VT_I2\0"
	.byte	0x2
	.uleb128 0xf
	.ascii "VT_I4\0"
	.byte	0x3
	.uleb128 0xf
	.ascii "VT_R4\0"
	.byte	0x4
	.uleb128 0xf
	.ascii "VT_R8\0"
	.byte	0x5
	.uleb128 0xf
	.ascii "VT_CY\0"
	.byte	0x6
	.uleb128 0xf
	.ascii "VT_DATE\0"
	.byte	0x7
	.uleb128 0xf
	.ascii "VT_BSTR\0"
	.byte	0x8
	.uleb128 0xf
	.ascii "VT_DISPATCH\0"
	.byte	0x9
	.uleb128 0xf
	.ascii "VT_ERROR\0"
	.byte	0xa
	.uleb128 0xf
	.ascii "VT_BOOL\0"
	.byte	0xb
	.uleb128 0xf
	.ascii "VT_VARIANT\0"
	.byte	0xc
	.uleb128 0xf
	.ascii "VT_UNKNOWN\0"
	.byte	0xd
	.uleb128 0xf
	.ascii "VT_DECIMAL\0"
	.byte	0xe
	.uleb128 0xf
	.ascii "VT_I1\0"
	.byte	0x10
	.uleb128 0xf
	.ascii "VT_UI1\0"
	.byte	0x11
	.uleb128 0xf
	.ascii "VT_UI2\0"
	.byte	0x12
	.uleb128 0xf
	.ascii "VT_UI4\0"
	.byte	0x13
	.uleb128 0xf
	.ascii "VT_I8\0"
	.byte	0x14
	.uleb128 0xf
	.ascii "VT_UI8\0"
	.byte	0x15
	.uleb128 0xf
	.ascii "VT_INT\0"
	.byte	0x16
	.uleb128 0xf
	.ascii "VT_UINT\0"
	.byte	0x17
	.uleb128 0xf
	.ascii "VT_VOID\0"
	.byte	0x18
	.uleb128 0xf
	.ascii "VT_HRESULT\0"
	.byte	0x19
	.uleb128 0xf
	.ascii "VT_PTR\0"
	.byte	0x1a
	.uleb128 0xf
	.ascii "VT_SAFEARRAY\0"
	.byte	0x1b
	.uleb128 0xf
	.ascii "VT_CARRAY\0"
	.byte	0x1c
	.uleb128 0xf
	.ascii "VT_USERDEFINED\0"
	.byte	0x1d
	.uleb128 0xf
	.ascii "VT_LPSTR\0"
	.byte	0x1e
	.uleb128 0xf
	.ascii "VT_LPWSTR\0"
	.byte	0x1f
	.uleb128 0xf
	.ascii "VT_RECORD\0"
	.byte	0x24
	.uleb128 0xf
	.ascii "VT_INT_PTR\0"
	.byte	0x25
	.uleb128 0xf
	.ascii "VT_UINT_PTR\0"
	.byte	0x26
	.uleb128 0xf
	.ascii "VT_FILETIME\0"
	.byte	0x40
	.uleb128 0xf
	.ascii "VT_BLOB\0"
	.byte	0x41
	.uleb128 0xf
	.ascii "VT_STREAM\0"
	.byte	0x42
	.uleb128 0xf
	.ascii "VT_STORAGE\0"
	.byte	0x43
	.uleb128 0xf
	.ascii "VT_STREAMED_OBJECT\0"
	.byte	0x44
	.uleb128 0xf
	.ascii "VT_STORED_OBJECT\0"
	.byte	0x45
	.uleb128 0xf
	.ascii "VT_BLOB_OBJECT\0"
	.byte	0x46
	.uleb128 0xf
	.ascii "VT_CF\0"
	.byte	0x47
	.uleb128 0xf
	.ascii "VT_CLSID\0"
	.byte	0x48
	.uleb128 0x10
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x10
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x10
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x10
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x10
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x10
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x10
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x10
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x11
	.ascii "IID_IUnknown\0"
	.byte	0x7
	.byte	0x13
	.byte	0x14
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IClassFactory\0"
	.byte	0x7
	.byte	0x14
	.byte	0x14
	.long	0x37b
	.uleb128 0x6
	.byte	0x4
	.long	0x155
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x11b
	.byte	0xf
	.word	0x222
	.byte	0x1
	.long	0x733
	.uleb128 0xf
	.ascii "FD_READ_BIT\0"
	.byte	0
	.uleb128 0xf
	.ascii "FD_WRITE_BIT\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "FD_OOB_BIT\0"
	.byte	0x2
	.uleb128 0xf
	.ascii "FD_ACCEPT_BIT\0"
	.byte	0x3
	.uleb128 0xf
	.ascii "FD_CONNECT_BIT\0"
	.byte	0x4
	.uleb128 0xf
	.ascii "FD_CLOSE_BIT\0"
	.byte	0x5
	.uleb128 0xf
	.ascii "FD_QOS_BIT\0"
	.byte	0x6
	.uleb128 0xf
	.ascii "FD_GROUP_QOS_BIT\0"
	.byte	0x7
	.uleb128 0xf
	.ascii "FD_ROUTING_INTERFACE_CHANGE_BIT\0"
	.byte	0x8
	.uleb128 0xf
	.ascii "FD_ADDRESS_LIST_CHANGE_BIT\0"
	.byte	0x9
	.uleb128 0xf
	.ascii "FD_MAX_EVENTS\0"
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x84
	.uleb128 0x11
	.ascii "_argc\0"
	.byte	0x8
	.byte	0x63
	.byte	0x10
	.long	0xac
	.uleb128 0x11
	.ascii "_argv\0"
	.byte	0x8
	.byte	0x64
	.byte	0x10
	.long	0x654
	.uleb128 0x11
	.ascii "__mb_cur_max\0"
	.byte	0x8
	.byte	0x8e
	.byte	0x17
	.long	0xac
	.uleb128 0x11
	.ascii "_sys_nerr\0"
	.byte	0x8
	.byte	0xe5
	.byte	0x14
	.long	0xac
	.uleb128 0xa
	.long	0x155
	.long	0x787
	.uleb128 0x13
	.byte	0
	.uleb128 0x11
	.ascii "_sys_errlist\0"
	.byte	0x8
	.byte	0xfe
	.byte	0x16
	.long	0x77c
	.uleb128 0x14
	.ascii "_osver\0"
	.byte	0x8
	.word	0x115
	.byte	0x1e
	.long	0x11b
	.uleb128 0x14
	.ascii "_winver\0"
	.byte	0x8
	.word	0x116
	.byte	0x1e
	.long	0x11b
	.uleb128 0x14
	.ascii "_winmajor\0"
	.byte	0x8
	.word	0x117
	.byte	0x1e
	.long	0x11b
	.uleb128 0x14
	.ascii "_winminor\0"
	.byte	0x8
	.word	0x118
	.byte	0x1e
	.long	0x11b
	.uleb128 0x14
	.ascii "_fmode\0"
	.byte	0x8
	.word	0x160
	.byte	0x15
	.long	0xac
	.uleb128 0x14
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x9
	.word	0x1c2
	.byte	0x16
	.long	0x3a1
	.uleb128 0x14
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x9
	.word	0x1c3
	.byte	0x16
	.long	0x3a1
	.uleb128 0x14
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x9
	.word	0x1c4
	.byte	0x16
	.long	0x3a1
	.uleb128 0x14
	.ascii "IID_ISequentialStream\0"
	.byte	0x9
	.word	0x1d0
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IStream\0"
	.byte	0x9
	.word	0x1dc
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IMarshal\0"
	.byte	0x9
	.word	0x1f1
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0x9
	.word	0x201
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IMalloc\0"
	.byte	0x9
	.word	0x20c
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IMallocSpy\0"
	.byte	0x9
	.word	0x21c
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IMessageFilter\0"
	.byte	0x9
	.word	0x232
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IPersist\0"
	.byte	0x9
	.word	0x23f
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IPersistStream\0"
	.byte	0x9
	.word	0x24a
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x9
	.word	0x259
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IBindCtx\0"
	.byte	0x9
	.word	0x26a
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IMoniker\0"
	.byte	0x9
	.word	0x27e
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IPersistStorage\0"
	.byte	0x9
	.word	0x29c
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IPersistFile\0"
	.byte	0x9
	.word	0x2ad
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IAdviseSink\0"
	.byte	0x9
	.word	0x2bd
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IAdviseSink2\0"
	.byte	0x9
	.word	0x2cc
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IDataObject\0"
	.byte	0x9
	.word	0x2dc
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x9
	.word	0x2ef
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IStorage\0"
	.byte	0x9
	.word	0x2fd
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IRootStorage\0"
	.byte	0x9
	.word	0x316
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0x9
	.word	0x321
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0x9
	.word	0x330
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0x9
	.word	0x33d
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0x9
	.word	0x34e
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_ILockBytes\0"
	.byte	0x9
	.word	0x35b
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IExternalConnection\0"
	.byte	0x9
	.word	0x36c
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IRunnableObject\0"
	.byte	0x9
	.word	0x378
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IROTData\0"
	.byte	0x9
	.word	0x387
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IChannelHook\0"
	.byte	0x9
	.word	0x392
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IPropertyStorage\0"
	.byte	0x9
	.word	0x3a2
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x9
	.word	0x3b8
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IClientSecurity\0"
	.byte	0x9
	.word	0x3c6
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IServerSecurity\0"
	.byte	0x9
	.word	0x3d3
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IClassActivator\0"
	.byte	0x9
	.word	0x3e1
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IFillLockBytes\0"
	.byte	0x9
	.word	0x3ec
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IProgressNotify\0"
	.byte	0x9
	.word	0x3fa
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_ILayoutStorage\0"
	.byte	0x9
	.word	0x405
	.byte	0x14
	.long	0x37b
	.uleb128 0x14
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0x9
	.word	0x413
	.byte	0x14
	.long	0x37b
	.uleb128 0x11
	.ascii "GUID_NULL\0"
	.byte	0xa
	.byte	0xa
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IRpcChannel\0"
	.byte	0xa
	.byte	0xb
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IRpcStub\0"
	.byte	0xa
	.byte	0xc
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IStubManager\0"
	.byte	0xa
	.byte	0xd
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IRpcProxy\0"
	.byte	0xa
	.byte	0xe
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IProxyManager\0"
	.byte	0xa
	.byte	0xf
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IPSFactory\0"
	.byte	0xa
	.byte	0x10
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IInternalMoniker\0"
	.byte	0xa
	.byte	0x11
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IDfReserved1\0"
	.byte	0xa
	.byte	0x12
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IDfReserved2\0"
	.byte	0xa
	.byte	0x13
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IDfReserved3\0"
	.byte	0xa
	.byte	0x14
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "CLSID_StdMarshal\0"
	.byte	0xa
	.byte	0x15
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "IID_IStub\0"
	.byte	0xa
	.byte	0x16
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IProxy\0"
	.byte	0xa
	.byte	0x17
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IEnumGeneric\0"
	.byte	0xa
	.byte	0x18
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IEnumHolder\0"
	.byte	0xa
	.byte	0x19
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IEnumCallback\0"
	.byte	0xa
	.byte	0x1a
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IOleManager\0"
	.byte	0xa
	.byte	0x1b
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IOlePresObj\0"
	.byte	0xa
	.byte	0x1c
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IDebug\0"
	.byte	0xa
	.byte	0x1d
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IDebugStream\0"
	.byte	0xa
	.byte	0x1e
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "CLSID_PSGenObject\0"
	.byte	0xa
	.byte	0x1f
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_PSClientSite\0"
	.byte	0xa
	.byte	0x20
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_PSClassObject\0"
	.byte	0xa
	.byte	0x21
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xa
	.byte	0x22
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xa
	.byte	0x23
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xa
	.byte	0x24
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xa
	.byte	0x25
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xa
	.byte	0x26
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xa
	.byte	0x27
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_StaticDib\0"
	.byte	0xa
	.byte	0x28
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CID_CDfsVolume\0"
	.byte	0xa
	.byte	0x29
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xa
	.byte	0x2a
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xa
	.byte	0x2b
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xa
	.byte	0x2c
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xa
	.byte	0x2d
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xa
	.byte	0x2e
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xa
	.byte	0x2f
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xa
	.byte	0x30
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDLabel\0"
	.byte	0xa
	.byte	0x31
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xa
	.byte	0x32
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDListBox\0"
	.byte	0xa
	.byte	0x33
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xa
	.byte	0x34
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xa
	.byte	0x35
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xa
	.byte	0x36
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xa
	.byte	0x37
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xa
	.byte	0x38
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xa
	.byte	0x39
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xa
	.byte	0x3a
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3b
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3c
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xa
	.byte	0x3d
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3e
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xa
	.byte	0x3f
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xa
	.byte	0x40
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xa
	.byte	0x41
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xa
	.byte	0x42
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xa
	.byte	0x43
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xa
	.byte	0x44
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xa
	.byte	0x45
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xa
	.byte	0x46
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xa
	.byte	0x47
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_CSystemPage\0"
	.byte	0xa
	.byte	0x48
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xa
	.byte	0x49
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xa
	.byte	0x4a
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xa
	.byte	0x4b
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xa
	.byte	0x4c
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xa
	.byte	0x4d
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xa
	.byte	0x4e
	.byte	0x14
	.long	0x38e
	.uleb128 0x11
	.ascii "GUID_TRISTATE\0"
	.byte	0xa
	.byte	0x4f
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IDispatch\0"
	.byte	0xb
	.byte	0xb
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPropertyNotifySink\0"
	.byte	0xb
	.byte	0xc
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IClassFactory2\0"
	.byte	0xb
	.byte	0xd
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IProvideClassInfo\0"
	.byte	0xb
	.byte	0xe
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IProvideClassInfo2\0"
	.byte	0xb
	.byte	0xf
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IConnectionPointContainer\0"
	.byte	0xb
	.byte	0x10
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumConnectionPoints\0"
	.byte	0xb
	.byte	0x11
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IConnectionPoint\0"
	.byte	0xb
	.byte	0x12
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumConnections\0"
	.byte	0xb
	.byte	0x13
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleControl\0"
	.byte	0xb
	.byte	0x14
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleControlSite\0"
	.byte	0xb
	.byte	0x15
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_ISimpleFrameSite\0"
	.byte	0xb
	.byte	0x16
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPersistStreamInit\0"
	.byte	0xb
	.byte	0x17
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPersistMemory\0"
	.byte	0xb
	.byte	0x18
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPersistPropertyBag\0"
	.byte	0xb
	.byte	0x19
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPropertyBag\0"
	.byte	0xb
	.byte	0x1a
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IErrorLog\0"
	.byte	0xb
	.byte	0x1b
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPropertyFrame\0"
	.byte	0xb
	.byte	0x1c
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_ISpecifyPropertyPages\0"
	.byte	0xb
	.byte	0x1d
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPerPropertyBrowsing\0"
	.byte	0xb
	.byte	0x1e
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPropertyPageSite\0"
	.byte	0xb
	.byte	0x1f
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPropertyPage\0"
	.byte	0xb
	.byte	0x20
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPropertyPage2\0"
	.byte	0xb
	.byte	0x21
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "CLSID_CFontPropPage\0"
	.byte	0xb
	.byte	0x22
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "CLSID_CColorPropPage\0"
	.byte	0xb
	.byte	0x23
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "CLSID_CPicturePropPage\0"
	.byte	0xb
	.byte	0x24
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "CLSID_PersistPropset\0"
	.byte	0xb
	.byte	0x25
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "CLSID_ConvertVBX\0"
	.byte	0xb
	.byte	0x26
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "CLSID_StdFont\0"
	.byte	0xb
	.byte	0x27
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "CLSID_StdPicture\0"
	.byte	0xb
	.byte	0x28
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IFont\0"
	.byte	0xb
	.byte	0x29
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IFontDisp\0"
	.byte	0xb
	.byte	0x2a
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPicture\0"
	.byte	0xb
	.byte	0x2b
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IPictureDisp\0"
	.byte	0xb
	.byte	0x2c
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_HIMETRIC\0"
	.byte	0xb
	.byte	0x2d
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_COLOR\0"
	.byte	0xb
	.byte	0x2e
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_XPOSPIXEL\0"
	.byte	0xb
	.byte	0x2f
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_YPOSPIXEL\0"
	.byte	0xb
	.byte	0x30
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_XSIZEPIXEL\0"
	.byte	0xb
	.byte	0x31
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_YSIZEPIXEL\0"
	.byte	0xb
	.byte	0x32
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_XPOS\0"
	.byte	0xb
	.byte	0x33
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_YPOS\0"
	.byte	0xb
	.byte	0x34
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_XSIZE\0"
	.byte	0xb
	.byte	0x35
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_YSIZE\0"
	.byte	0xb
	.byte	0x36
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_OPTIONVALUEEXCLUSIVE\0"
	.byte	0xb
	.byte	0x38
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_CHECKVALUEEXCLUSIVE\0"
	.byte	0xb
	.byte	0x39
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_FONTNAME\0"
	.byte	0xb
	.byte	0x3a
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_FONTSIZE\0"
	.byte	0xb
	.byte	0x3b
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_FONTBOLD\0"
	.byte	0xb
	.byte	0x3c
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_FONTITALIC\0"
	.byte	0xb
	.byte	0x3d
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_FONTUNDERSCORE\0"
	.byte	0xb
	.byte	0x3e
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_FONTSTRIKETHROUGH\0"
	.byte	0xb
	.byte	0x3f
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "GUID_HANDLE\0"
	.byte	0xb
	.byte	0x40
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumUnknown\0"
	.byte	0xb
	.byte	0x41
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumString\0"
	.byte	0xb
	.byte	0x42
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumMoniker\0"
	.byte	0xb
	.byte	0x43
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0xb
	.byte	0x44
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0xb
	.byte	0x45
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0xb
	.byte	0x46
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0xb
	.byte	0x47
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IViewObject\0"
	.byte	0xb
	.byte	0x4f
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0xb
	.byte	0x53
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleObject\0"
	.byte	0xb
	.byte	0x54
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0xb
	.byte	0x55
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleWindow\0"
	.byte	0xb
	.byte	0x56
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0xb
	.byte	0x57
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0xb
	.byte	0x58
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0xb
	.byte	0x59
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleClientSite\0"
	.byte	0xb
	.byte	0x5a
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0xb
	.byte	0x5b
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IParseDisplayName\0"
	.byte	0xb
	.byte	0x5c
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleContainer\0"
	.byte	0xb
	.byte	0x5d
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleItemContainer\0"
	.byte	0xb
	.byte	0x5e
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleLink\0"
	.byte	0xb
	.byte	0x5f
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleCache\0"
	.byte	0xb
	.byte	0x60
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IDropSource\0"
	.byte	0xb
	.byte	0x63
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IDropTarget\0"
	.byte	0xb
	.byte	0x64
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IViewObject2\0"
	.byte	0xb
	.byte	0x69
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleCache2\0"
	.byte	0xb
	.byte	0x6a
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_IOleCacheControl\0"
	.byte	0xb
	.byte	0x6b
	.byte	0x13
	.long	0x21b
	.uleb128 0x11
	.ascii "IID_ITypeLib\0"
	.byte	0xc
	.byte	0x52
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ITypeLib2\0"
	.byte	0xc
	.byte	0x53
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0xc
	.byte	0x54
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0xc
	.byte	0x55
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ICreateTypeLib\0"
	.byte	0xc
	.byte	0x56
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0xc
	.byte	0x57
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ITypeInfo\0"
	.byte	0xc
	.byte	0x58
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ITypeInfo2\0"
	.byte	0xc
	.byte	0x59
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IErrorInfo\0"
	.byte	0xc
	.byte	0x5a
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IEnumVARIANT\0"
	.byte	0xc
	.byte	0x5c
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0xc
	.byte	0x5d
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0xc
	.byte	0x5e
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_IRecordInfo\0"
	.byte	0xc
	.byte	0x5f
	.byte	0x12
	.long	0x37b
	.uleb128 0x11
	.ascii "IID_ITypeMarshal\0"
	.byte	0xc
	.byte	0x60
	.byte	0x12
	.long	0x37b
	.uleb128 0xc
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0xd
	.byte	0xd2
	.byte	0x10
	.long	0x1e65
	.uleb128 0xd
	.ascii "_ptr\0"
	.byte	0xd
	.byte	0xd4
	.byte	0x9
	.long	0x155
	.byte	0
	.uleb128 0xd
	.ascii "_cnt\0"
	.byte	0xd
	.byte	0xd5
	.byte	0x8
	.long	0xac
	.byte	0x4
	.uleb128 0xd
	.ascii "_base\0"
	.byte	0xd
	.byte	0xd6
	.byte	0x9
	.long	0x155
	.byte	0x8
	.uleb128 0xd
	.ascii "_flag\0"
	.byte	0xd
	.byte	0xd7
	.byte	0x8
	.long	0xac
	.byte	0xc
	.uleb128 0xd
	.ascii "_file\0"
	.byte	0xd
	.byte	0xd8
	.byte	0x8
	.long	0xac
	.byte	0x10
	.uleb128 0xd
	.ascii "_charbuf\0"
	.byte	0xd
	.byte	0xd9
	.byte	0x8
	.long	0xac
	.byte	0x14
	.uleb128 0xd
	.ascii "_bufsiz\0"
	.byte	0xd
	.byte	0xda
	.byte	0x8
	.long	0xac
	.byte	0x18
	.uleb128 0xd
	.ascii "_tmpfname\0"
	.byte	0xd
	.byte	0xdb
	.byte	0x9
	.long	0x155
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.ascii "FILE\0"
	.byte	0xd
	.byte	0xdc
	.byte	0x3
	.long	0x1dd5
	.uleb128 0xa
	.long	0x1e65
	.long	0x1e7d
	.uleb128 0x13
	.byte	0
	.uleb128 0x11
	.ascii "_iob\0"
	.byte	0xd
	.byte	0xef
	.byte	0x15
	.long	0x1e72
	.uleb128 0xa
	.long	0xe4
	.long	0x1e95
	.uleb128 0x13
	.byte	0
	.uleb128 0x11
	.ascii "_ctype\0"
	.byte	0xe
	.byte	0x8c
	.byte	0x23
	.long	0x1e8a
	.uleb128 0x11
	.ascii "_pctype\0"
	.byte	0xe
	.byte	0x90
	.byte	0x23
	.long	0x15b
	.uleb128 0x4
	.ascii "CELL\0"
	.byte	0x1
	.byte	0xb
	.byte	0x17
	.long	0x97
	.uleb128 0x15
	.ascii "MEM_SZ\0"
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.long	0x1eb4
	.uleb128 0x5
	.byte	0x3
	.long	_MEM_SZ
	.uleb128 0x16
	.byte	0x8
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.long	0x1f03
	.uleb128 0xd
	.ascii "asm_instr\0"
	.byte	0x1
	.byte	0x1f
	.byte	0xe
	.long	0x733
	.byte	0
	.uleb128 0xd
	.ascii "opcode\0"
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.long	0xc0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.ascii "OPCODE_T\0"
	.byte	0x1
	.byte	0x21
	.byte	0x3
	.long	0x1ed6
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0x11b
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.long	0x203b
	.uleb128 0xf
	.ascii "NOP\0"
	.byte	0
	.uleb128 0xf
	.ascii "A\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "FETCH\0"
	.byte	0x2
	.uleb128 0xf
	.ascii "STORE\0"
	.byte	0x3
	.uleb128 0xf
	.ascii "DROP\0"
	.byte	0x4
	.uleb128 0xf
	.ascii "DUP\0"
	.byte	0x5
	.uleb128 0xf
	.ascii "SETA\0"
	.byte	0x6
	.uleb128 0xf
	.ascii "EMIT\0"
	.byte	0x7
	.uleb128 0xf
	.ascii "INC\0"
	.byte	0x8
	.uleb128 0xf
	.ascii "DEC\0"
	.byte	0x9
	.uleb128 0xf
	.ascii "JMP\0"
	.byte	0xa
	.uleb128 0xf
	.ascii "CALL\0"
	.byte	0xb
	.uleb128 0xf
	.ascii "RET\0"
	.byte	0xc
	.uleb128 0xf
	.ascii "ADD\0"
	.byte	0xd
	.uleb128 0xf
	.ascii "SUB\0"
	.byte	0xe
	.uleb128 0xf
	.ascii "MULT\0"
	.byte	0xf
	.uleb128 0xf
	.ascii "DIV\0"
	.byte	0x10
	.uleb128 0xf
	.ascii "AT_PLUS\0"
	.byte	0x11
	.uleb128 0xf
	.ascii "STORE_PLUS\0"
	.byte	0x12
	.uleb128 0xf
	.ascii "PLUS_STAR\0"
	.byte	0x13
	.uleb128 0xf
	.ascii "OVER\0"
	.byte	0x14
	.uleb128 0xf
	.ascii "UNTIL\0"
	.byte	0x15
	.uleb128 0xf
	.ascii "UNTIL_NEG\0"
	.byte	0x16
	.uleb128 0xf
	.ascii "INVERT\0"
	.byte	0x17
	.uleb128 0xf
	.ascii "T_EQ_0\0"
	.byte	0x18
	.uleb128 0xf
	.ascii "C_EQ_0\0"
	.byte	0x19
	.uleb128 0xf
	.ascii "GOTORC\0"
	.byte	0x1a
	.uleb128 0xf
	.ascii "CLS\0"
	.byte	0x1b
	.uleb128 0xf
	.ascii "LIT\0"
	.byte	0x1c
	.uleb128 0xf
	.ascii "p_COLON\0"
	.byte	0x1d
	.uleb128 0xf
	.ascii "DTOR\0"
	.byte	0x1e
	.uleb128 0xf
	.ascii "RTOD\0"
	.byte	0x1f
	.uleb128 0xf
	.ascii "AND\0"
	.byte	0x20
	.uleb128 0xf
	.ascii "XOR\0"
	.byte	0x21
	.uleb128 0xf
	.ascii "TIMES2\0"
	.byte	0x22
	.uleb128 0xf
	.ascii "DIVIDE2\0"
	.byte	0x23
	.uleb128 0xf
	.ascii "BYE\0"
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.ascii "OPCODES\0"
	.byte	0x1
	.byte	0x28
	.byte	0x3
	.long	0x1f14
	.uleb128 0x5
	.byte	0x3
	.long	_OPCODES
	.uleb128 0x15
	.ascii "hStdout\0"
	.byte	0x1
	.byte	0x2c
	.byte	0x8
	.long	0x163
	.uleb128 0x5
	.byte	0x3
	.long	_hStdout
	.uleb128 0x15
	.ascii "hStdin\0"
	.byte	0x1
	.byte	0x2c
	.byte	0x11
	.long	0x163
	.uleb128 0x5
	.byte	0x3
	.long	_hStdin
	.uleb128 0x15
	.ascii "csbi\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x1c
	.long	0x34c
	.uleb128 0x5
	.byte	0x3
	.long	_csbi
	.uleb128 0x15
	.ascii "input_fp\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x7
	.long	0x20a6
	.uleb128 0x5
	.byte	0x3
	.long	_input_fp
	.uleb128 0x6
	.byte	0x4
	.long	0x1e65
	.uleb128 0x15
	.ascii "output_fp\0"
	.byte	0x1
	.byte	0x30
	.byte	0x7
	.long	0x20a6
	.uleb128 0x5
	.byte	0x3
	.long	_output_fp
	.uleb128 0x15
	.ascii "HERE\0"
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.long	0x1eb4
	.uleb128 0x5
	.byte	0x3
	.long	_HERE
	.uleb128 0x15
	.ascii "STATE\0"
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.long	0x1eb4
	.uleb128 0x5
	.byte	0x3
	.long	_STATE
	.uleb128 0x15
	.ascii "BASE\0"
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.long	0x1eb4
	.uleb128 0x5
	.byte	0x3
	.long	_BASE
	.uleb128 0x18
	.ascii "PC\0"
	.byte	0x1
	.byte	0x3a
	.byte	0xf
	.long	0x1eb4
	.uleb128 0x15
	.ascii "addr\0"
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.long	0x1eb4
	.uleb128 0x5
	.byte	0x3
	.long	_addr
	.uleb128 0x15
	.ascii "tmp\0"
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.long	0x1eb4
	.uleb128 0x5
	.byte	0x3
	.long	_tmp
	.uleb128 0x15
	.ascii "call_depth\0"
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.long	0xac
	.uleb128 0x5
	.byte	0x3
	.long	_call_depth
	.uleb128 0xa
	.long	0x1eb4
	.long	0x2157
	.uleb128 0xb
	.long	0x11b
	.byte	0x3f
	.byte	0
	.uleb128 0x15
	.ascii "dstk\0"
	.byte	0x1
	.byte	0x45
	.byte	0x6
	.long	0x2147
	.uleb128 0x5
	.byte	0x3
	.long	_dstk
	.uleb128 0x15
	.ascii "DSS\0"
	.byte	0x1
	.byte	0x46
	.byte	0x8
	.long	0x217c
	.uleb128 0x5
	.byte	0x3
	.long	_DSS
	.uleb128 0x6
	.byte	0x4
	.long	0x1eb4
	.uleb128 0x15
	.ascii "DSE\0"
	.byte	0x1
	.byte	0x47
	.byte	0x8
	.long	0x217c
	.uleb128 0x5
	.byte	0x3
	.long	_DSE
	.uleb128 0x15
	.ascii "DSP\0"
	.byte	0x1
	.byte	0x48
	.byte	0x8
	.long	0x217c
	.uleb128 0x5
	.byte	0x3
	.long	_DSP
	.uleb128 0x15
	.ascii "rstk\0"
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.long	0x2147
	.uleb128 0x5
	.byte	0x3
	.long	_rstk
	.uleb128 0x15
	.ascii "RSS\0"
	.byte	0x1
	.byte	0x4b
	.byte	0x8
	.long	0x217c
	.uleb128 0x5
	.byte	0x3
	.long	_RSS
	.uleb128 0x15
	.ascii "RSE\0"
	.byte	0x1
	.byte	0x4c
	.byte	0x8
	.long	0x217c
	.uleb128 0x5
	.byte	0x3
	.long	_RSE
	.uleb128 0x15
	.ascii "RSP\0"
	.byte	0x1
	.byte	0x4d
	.byte	0x8
	.long	0x217c
	.uleb128 0x5
	.byte	0x3
	.long	_RSP
	.uleb128 0x16
	.byte	0x24
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.long	0x2222
	.uleb128 0xd
	.ascii "xt\0"
	.byte	0x1
	.byte	0x53
	.byte	0x7
	.long	0x1eb4
	.byte	0
	.uleb128 0xd
	.ascii "flags\0"
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.long	0xb3
	.byte	0x4
	.uleb128 0xd
	.ascii "name\0"
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.long	0x2222
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x7c
	.long	0x2232
	.uleb128 0xb
	.long	0x11b
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.ascii "ENTRY_T\0"
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.long	0x21ef
	.uleb128 0x15
	.ascii "the_memory\0"
	.byte	0x1
	.byte	0x58
	.byte	0x7
	.long	0x103
	.uleb128 0x5
	.byte	0x3
	.long	_the_memory
	.uleb128 0x15
	.ascii "the_dict\0"
	.byte	0x1
	.byte	0x59
	.byte	0xa
	.long	0x2272
	.uleb128 0x5
	.byte	0x3
	.long	_the_dict
	.uleb128 0x6
	.byte	0x4
	.long	0x2232
	.uleb128 0x15
	.ascii "num_words\0"
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.long	0xac
	.uleb128 0x5
	.byte	0x3
	.long	_num_words
	.uleb128 0x15
	.ascii "_QUIT_HIT\0"
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.long	0xac
	.uleb128 0x5
	.byte	0x3
	.long	__QUIT_HIT
	.uleb128 0x15
	.ascii "all_ok\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.long	0xac
	.uleb128 0x5
	.byte	0x3
	.long	_all_ok
	.uleb128 0xa
	.long	0x1f03
	.long	0x22cd
	.uleb128 0xb
	.long	0x11b
	.byte	0x26
	.byte	0
	.uleb128 0x15
	.ascii "theOpcodes\0"
	.byte	0x1
	.byte	0xa9
	.byte	0xa
	.long	0x22bd
	.uleb128 0x5
	.byte	0x3
	.long	_theOpcodes
	.uleb128 0x19
	.ascii "main\0"
	.byte	0x1
	.word	0x2fc
	.byte	0x5
	.long	0xac
	.long	LFB97
	.long	LFE97-LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x2432
	.uleb128 0x1a
	.ascii "argc\0"
	.byte	0x1
	.word	0x2fc
	.byte	0xe
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.ascii "argv\0"
	.byte	0x1
	.word	0x2fc
	.byte	0x1b
	.long	0x654
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "dict_sz\0"
	.byte	0x1
	.word	0x304
	.byte	0x7
	.long	0x1eb4
	.long	0x12000
	.uleb128 0x1c
	.ascii "st\0"
	.byte	0x1
	.word	0x30d
	.byte	0x7
	.long	0x1eb4
	.secrel32	LLST130
	.secrel32	LVUS130
	.uleb128 0x1c
	.ascii "ee\0"
	.byte	0x1
	.word	0x310
	.byte	0x7
	.long	0x1eb4
	.secrel32	LLST131
	.secrel32	LVUS131
	.uleb128 0x1c
	.ascii "tt\0"
	.byte	0x1
	.word	0x311
	.byte	0x7
	.long	0x1eb4
	.secrel32	LLST132
	.secrel32	LVUS132
	.uleb128 0x1d
	.long	LVL458
	.long	0x3e36
	.long	0x238a
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xf6
	.byte	0
	.uleb128 0x1d
	.long	LVL459
	.long	0x3e36
	.long	0x239f
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xf5
	.byte	0
	.uleb128 0x1d
	.long	LVL460
	.long	0x3e57
	.long	0x23b3
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	LVL462
	.long	0x3e57
	.long	0x23cf
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.byte	0x42
	.byte	0x3c
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	LVL463
	.long	0x245c
	.uleb128 0x1f
	.long	LVL464
	.long	0x2432
	.uleb128 0x1f
	.long	LVL465
	.long	0x2cd2
	.uleb128 0x1d
	.long	LVL466
	.long	0x3e72
	.long	0x23fe
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1f
	.long	LVL467
	.long	0x3e8f
	.uleb128 0x1f
	.long	LVL470
	.long	0x3e8f
	.uleb128 0x1d
	.long	LVL475
	.long	0x3eb0
	.long	0x2428
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC34
	.byte	0
	.uleb128 0x1f
	.long	LVL478
	.long	0x2ddc
	.byte	0
	.uleb128 0x20
	.ascii "write_output_file\0"
	.byte	0x1
	.word	0x2ed
	.byte	0x6
	.byte	0x1
	.long	0x245c
	.uleb128 0x21
	.ascii "num\0"
	.byte	0x1
	.word	0x2f6
	.byte	0x6
	.long	0xac
	.byte	0
	.uleb128 0x20
	.ascii "compile\0"
	.byte	0x1
	.word	0x2c5
	.byte	0x6
	.byte	0x1
	.long	0x24ab
	.uleb128 0x21
	.ascii "buf\0"
	.byte	0x1
	.word	0x2df
	.byte	0x7
	.long	0x24ab
	.uleb128 0x22
	.uleb128 0x21
	.ascii "i\0"
	.byte	0x1
	.word	0x2cb
	.byte	0xb
	.long	0xac
	.uleb128 0x22
	.uleb128 0x21
	.ascii "op\0"
	.byte	0x1
	.word	0x2cd
	.byte	0xc
	.long	0x1f03
	.uleb128 0x23
	.long	LVL433
	.long	0x3eb0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x7c
	.long	0x24bb
	.uleb128 0xb
	.long	0x11b
	.byte	0xff
	.byte	0
	.uleb128 0x24
	.ascii "doTest\0"
	.byte	0x1
	.word	0x2a1
	.byte	0x6
	.long	LFB94
	.long	LFE94-LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x28a4
	.uleb128 0x1b
	.ascii "stop\0"
	.byte	0x1
	.word	0x2a7
	.byte	0x7
	.long	0x1eb4
	.long	0x2faf080
	.uleb128 0x1c
	.ascii "start\0"
	.byte	0x1
	.word	0x2a8
	.byte	0x7
	.long	0x1eb4
	.secrel32	LLST100
	.secrel32	LVUS100
	.uleb128 0x1c
	.ascii "end\0"
	.byte	0x1
	.word	0x2b4
	.byte	0x7
	.long	0x1eb4
	.secrel32	LLST101
	.secrel32	LVUS101
	.uleb128 0x1c
	.ascii "tt\0"
	.byte	0x1
	.word	0x2b5
	.byte	0x7
	.long	0x1eb4
	.secrel32	LLST102
	.secrel32	LVUS102
	.uleb128 0x21
	.ascii "ep\0"
	.byte	0x1
	.word	0x2bf
	.byte	0xb
	.long	0x2272
	.uleb128 0x25
	.long	LBB380
	.long	LBE380-LBB380
	.long	0x2575
	.uleb128 0x1c
	.ascii "i\0"
	.byte	0x1
	.word	0x2ab
	.byte	0xc
	.long	0x1eb4
	.secrel32	LLST103
	.secrel32	LVUS103
	.uleb128 0x26
	.long	0x34c3
	.long	LBI381
	.word	LVU1274
	.secrel32	Ldebug_ranges0+0x2e8
	.byte	0x1
	.word	0x2ad
	.byte	0x3
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST104
	.secrel32	LVUS104
	.byte	0
	.byte	0
	.uleb128 0x28
	.secrel32	Ldebug_ranges0+0x308
	.long	0x25b9
	.uleb128 0x1c
	.ascii "i\0"
	.byte	0x1
	.word	0x2b0
	.byte	0xc
	.long	0x1eb4
	.secrel32	LLST105
	.secrel32	LVUS105
	.uleb128 0x26
	.long	0x34a7
	.long	LBI388
	.word	LVU1308
	.secrel32	Ldebug_ranges0+0x320
	.byte	0x1
	.word	0x2b2
	.byte	0x9
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x320
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST106
	.secrel32	LVUS106
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x3467
	.long	LBI395
	.word	LVU1333
	.secrel32	Ldebug_ranges0+0x340
	.byte	0x1
	.word	0x2b7
	.byte	0x2
	.long	0x2662
	.uleb128 0x27
	.long	0x347a
	.secrel32	LLST107
	.secrel32	LVUS107
	.uleb128 0x2c
	.long	0x3486
	.long	LBB397
	.long	LBE397-LBB397
	.long	0x2638
	.uleb128 0x2a
	.long	0x3487
	.secrel32	LLST108
	.secrel32	LVUS108
	.uleb128 0x2d
	.long	0x34a7
	.long	LBI398
	.word	LVU1340
	.long	LBB398
	.long	LBE398-LBB398
	.byte	0x1
	.byte	0x8e
	.byte	0x3
	.long	0x2623
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST109
	.secrel32	LVUS109
	.byte	0
	.uleb128 0x23
	.long	LVL401
	.long	0x3eb0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL398
	.long	0x3eb0
	.long	0x2650
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC0
	.byte	0
	.uleb128 0x23
	.long	LVL402
	.long	0x3e72
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x2d43
	.long	LBI403
	.word	LVU1360
	.secrel32	Ldebug_ranges0+0x360
	.byte	0x1
	.word	0x2c0
	.byte	0x7
	.long	0x26d8
	.uleb128 0x27
	.long	0x2d5b
	.secrel32	LLST110
	.secrel32	LVUS110
	.uleb128 0x2e
	.long	0x2d68
	.long	LBB404
	.long	LBE404-LBB404
	.uleb128 0x2a
	.long	0x2d69
	.secrel32	LLST111
	.secrel32	LVUS111
	.uleb128 0x2e
	.long	0x2d74
	.long	LBB405
	.long	LBE405-LBB405
	.uleb128 0x2a
	.long	0x2d75
	.secrel32	LLST112
	.secrel32	LVUS112
	.uleb128 0x23
	.long	LVL409
	.long	0x3ec3
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC21
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x2d43
	.long	LBI407
	.word	LVU1381
	.secrel32	Ldebug_ranges0+0x378
	.byte	0x1
	.word	0x2c1
	.byte	0x7
	.long	0x274e
	.uleb128 0x27
	.long	0x2d5b
	.secrel32	LLST113
	.secrel32	LVUS113
	.uleb128 0x2e
	.long	0x2d68
	.long	LBB408
	.long	LBE408-LBB408
	.uleb128 0x2a
	.long	0x2d69
	.secrel32	LLST114
	.secrel32	LVUS114
	.uleb128 0x2e
	.long	0x2d74
	.long	LBB409
	.long	LBE409-LBB409
	.uleb128 0x2a
	.long	0x2d75
	.secrel32	LLST115
	.secrel32	LVUS115
	.uleb128 0x23
	.long	LVL417
	.long	0x3ec3
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC23
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x2d43
	.long	LBI411
	.word	LVU1402
	.secrel32	Ldebug_ranges0+0x390
	.byte	0x1
	.word	0x2c2
	.byte	0x7
	.long	0x27c4
	.uleb128 0x27
	.long	0x2d5b
	.secrel32	LLST116
	.secrel32	LVUS116
	.uleb128 0x2e
	.long	0x2d68
	.long	LBB412
	.long	LBE412-LBB412
	.uleb128 0x2a
	.long	0x2d69
	.secrel32	LLST117
	.secrel32	LVUS117
	.uleb128 0x2e
	.long	0x2d74
	.long	LBB413
	.long	LBE413-LBB413
	.uleb128 0x2a
	.long	0x2d75
	.secrel32	LLST118
	.secrel32	LVUS118
	.uleb128 0x23
	.long	LVL425
	.long	0x3ec3
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC25
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL377
	.long	0x3eb0
	.long	0x27dc
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC17
	.byte	0
	.uleb128 0x1f
	.long	LVL378
	.long	0x3e8f
	.uleb128 0x1d
	.long	LVL380
	.long	0x3eb0
	.long	0x27fd
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC18
	.byte	0
	.uleb128 0x1d
	.long	LVL387
	.long	0x3eb0
	.long	0x2815
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC19
	.byte	0
	.uleb128 0x1f
	.long	LVL391
	.long	0x3e8f
	.uleb128 0x1d
	.long	LVL397
	.long	0x3eb0
	.long	0x2836
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC20
	.byte	0
	.uleb128 0x1d
	.long	LVL403
	.long	0x3e72
	.long	0x284a
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1d
	.long	LVL411
	.long	0x3eb0
	.long	0x2869
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC22
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	LVL419
	.long	0x3eb0
	.long	0x2888
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC24
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	LVL427
	.long	0x3eb0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC24
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.ascii "parse\0"
	.byte	0x1
	.word	0x295
	.byte	0x6
	.long	LFB93
	.long	LFE93-LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a97
	.uleb128 0x30
	.ascii "line\0"
	.byte	0x1
	.word	0x295
	.byte	0x12
	.long	0x155
	.secrel32	LLST83
	.secrel32	LVUS83
	.uleb128 0x31
	.secrel32	LASF0
	.byte	0x1
	.word	0x297
	.byte	0x7
	.long	0x2a97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	0x2c94
	.long	LBI325
	.word	LVU1106
	.secrel32	Ldebug_ranges0+0x248
	.byte	0x1
	.word	0x299
	.byte	0x9
	.long	0x2929
	.uleb128 0x27
	.long	0x2cb8
	.secrel32	LLST84
	.secrel32	LVUS84
	.uleb128 0x27
	.long	0x2caa
	.secrel32	LLST85
	.secrel32	LVUS85
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x248
	.uleb128 0x2a
	.long	0x2cc5
	.secrel32	LLST86
	.secrel32	LVUS86
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x2aa7
	.long	LBI330
	.word	LVU1135
	.secrel32	Ldebug_ranges0+0x270
	.byte	0x1
	.word	0x29c
	.byte	0xa
	.long	0x2a55
	.uleb128 0x27
	.long	0x2acd
	.secrel32	LLST87
	.secrel32	LVUS87
	.uleb128 0x27
	.long	0x2abf
	.secrel32	LLST88
	.secrel32	LVUS88
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x270
	.uleb128 0x32
	.long	0x2ada
	.uleb128 0x32
	.long	0x2ae6
	.uleb128 0x33
	.long	0x2c94
	.secrel32	Ldebug_ranges0+0x298
	.byte	0x1
	.word	0x234
	.byte	0xa
	.long	0x29a0
	.uleb128 0x34
	.long	0x2cb8
	.uleb128 0x27
	.long	0x2caa
	.secrel32	LLST89
	.secrel32	LVUS89
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x298
	.uleb128 0x2a
	.long	0x2cc5
	.secrel32	LLST90
	.secrel32	LVUS90
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x2d9c
	.long	LBI335
	.word	LVU1191
	.long	LBB335
	.long	LBE335-LBB335
	.byte	0x1
	.word	0x237
	.byte	0x4
	.long	0x2a1e
	.uleb128 0x27
	.long	0x2db2
	.secrel32	LLST91
	.secrel32	LVUS91
	.uleb128 0x2a
	.long	0x2dbf
	.secrel32	LLST92
	.secrel32	LVUS92
	.uleb128 0x2a
	.long	0x2dcb
	.secrel32	LLST93
	.secrel32	LVUS93
	.uleb128 0x26
	.long	0x3523
	.long	LBI337
	.word	LVU1212
	.secrel32	Ldebug_ranges0+0x2b0
	.byte	0x1
	.word	0x1b8
	.byte	0x2
	.uleb128 0x27
	.long	0x354d
	.secrel32	LLST94
	.secrel32	LVUS94
	.uleb128 0x27
	.long	0x3541
	.secrel32	LLST95
	.secrel32	LVUS95
	.uleb128 0x27
	.long	0x3535
	.secrel32	LLST96
	.secrel32	LVUS96
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL344
	.long	0x3ec3
	.long	0x2a3d
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC16
	.byte	0
	.uleb128 0x23
	.long	LVL345
	.long	0x37e3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x2c94
	.long	LBI345
	.word	LVU1143
	.secrel32	Ldebug_ranges0+0x2c8
	.byte	0x1
	.word	0x29d
	.byte	0xa
	.uleb128 0x27
	.long	0x2cb8
	.secrel32	LLST97
	.secrel32	LVUS97
	.uleb128 0x27
	.long	0x2caa
	.secrel32	LLST98
	.secrel32	LVUS98
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x2c8
	.uleb128 0x2a
	.long	0x2cc5
	.secrel32	LLST99
	.secrel32	LVUS99
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x7c
	.long	0x2aa7
	.uleb128 0xb
	.long	0x11b
	.byte	0x3f
	.byte	0
	.uleb128 0x36
	.ascii "parseword\0"
	.byte	0x1
	.word	0x22b
	.byte	0x7
	.long	0x155
	.byte	0x1
	.long	0x2b0f
	.uleb128 0x37
	.ascii "line\0"
	.byte	0x1
	.word	0x22b
	.byte	0x17
	.long	0x155
	.uleb128 0x38
	.secrel32	LASF0
	.byte	0x1
	.word	0x22b
	.byte	0x23
	.long	0x155
	.uleb128 0x21
	.ascii "ep\0"
	.byte	0x1
	.word	0x277
	.byte	0xb
	.long	0x2272
	.uleb128 0x21
	.ascii "num\0"
	.byte	0x1
	.word	0x286
	.byte	0x7
	.long	0x10f
	.uleb128 0x22
	.uleb128 0x21
	.ascii "i\0"
	.byte	0x1
	.word	0x261
	.byte	0xb
	.long	0xac
	.uleb128 0x22
	.uleb128 0x21
	.ascii "op\0"
	.byte	0x1
	.word	0x263
	.byte	0xc
	.long	0x1f03
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.ascii "is_number\0"
	.byte	0x1
	.word	0x1eb
	.byte	0x5
	.long	0xac
	.long	LFB91
	.long	LFE91-LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c84
	.uleb128 0x3a
	.secrel32	LASF0
	.byte	0x1
	.word	0x1eb
	.byte	0x15
	.long	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.ascii "the_num\0"
	.byte	0x1
	.word	0x1eb
	.byte	0x21
	.long	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.ascii "base\0"
	.byte	0x1
	.word	0x1eb
	.byte	0x2e
	.long	0xac
	.secrel32	LLST52
	.secrel32	LVUS52
	.uleb128 0x1c
	.ascii "is_neg\0"
	.byte	0x1
	.word	0x1ed
	.byte	0x6
	.long	0xac
	.secrel32	LLST53
	.secrel32	LVUS53
	.uleb128 0x1c
	.ascii "w\0"
	.byte	0x1
	.word	0x1ee
	.byte	0x8
	.long	0x155
	.secrel32	LLST54
	.secrel32	LVUS54
	.uleb128 0x1c
	.ascii "my_num\0"
	.byte	0x1
	.word	0x1ef
	.byte	0x7
	.long	0x10f
	.secrel32	LLST55
	.secrel32	LVUS55
	.uleb128 0x3b
	.ascii "possible_chars\0"
	.byte	0x1
	.word	0x1f0
	.byte	0xe
	.long	0x733
	.uleb128 0x6
	.byte	0x3
	.long	LC8
	.byte	0x9f
	.uleb128 0x3b
	.ascii "valid_chars\0"
	.byte	0x1
	.word	0x1f1
	.byte	0x7
	.long	0x2c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.secrel32	Ldebug_ranges0+0x148
	.long	0x2c48
	.uleb128 0x1c
	.ascii "ch\0"
	.byte	0x1
	.word	0x217
	.byte	0x8
	.long	0x7c
	.secrel32	LLST59
	.secrel32	LVUS59
	.uleb128 0x1c
	.ascii "pos\0"
	.byte	0x1
	.word	0x219
	.byte	0x9
	.long	0x155
	.secrel32	LLST60
	.secrel32	LVUS60
	.uleb128 0x1c
	.ascii "digit\0"
	.byte	0x1
	.word	0x21e
	.byte	0x8
	.long	0x1eb4
	.secrel32	LLST61
	.secrel32	LVUS61
	.uleb128 0x1f
	.long	LVL242
	.long	0x3ecf
	.uleb128 0x23
	.long	LVL243
	.long	0x3ee3
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x3523
	.long	LBI239
	.word	LVU752
	.secrel32	Ldebug_ranges0+0x130
	.byte	0x1
	.word	0x20b
	.byte	0x2
	.uleb128 0x27
	.long	0x354d
	.secrel32	LLST56
	.secrel32	LVUS56
	.uleb128 0x27
	.long	0x3541
	.secrel32	LLST57
	.secrel32	LVUS57
	.uleb128 0x27
	.long	0x3535
	.secrel32	LLST58
	.secrel32	LVUS58
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x7c
	.long	0x2c94
	.uleb128 0xb
	.long	0x11b
	.byte	0x17
	.byte	0
	.uleb128 0x36
	.ascii "getword\0"
	.byte	0x1
	.word	0x1d7
	.byte	0x7
	.long	0x155
	.byte	0x1
	.long	0x2cd2
	.uleb128 0x37
	.ascii "line\0"
	.byte	0x1
	.word	0x1d7
	.byte	0x15
	.long	0x155
	.uleb128 0x38
	.secrel32	LASF0
	.byte	0x1
	.word	0x1d7
	.byte	0x21
	.long	0x155
	.uleb128 0x21
	.ascii "cp\0"
	.byte	0x1
	.word	0x1d9
	.byte	0x8
	.long	0x155
	.byte	0
	.uleb128 0x24
	.ascii "dump_words\0"
	.byte	0x1
	.word	0x1c8
	.byte	0x6
	.long	LFB89
	.long	LFE89-LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d43
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x118
	.uleb128 0x1c
	.ascii "i\0"
	.byte	0x1
	.word	0x1ca
	.byte	0xb
	.long	0xac
	.secrel32	LLST48
	.secrel32	LVUS48
	.uleb128 0x3c
	.long	LBB237
	.long	LBE237-LBB237
	.uleb128 0x1c
	.ascii "ep\0"
	.byte	0x1
	.word	0x1cc
	.byte	0xc
	.long	0x2272
	.secrel32	LLST49
	.secrel32	LVUS49
	.uleb128 0x23
	.long	LVL219
	.long	0x3eb0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC7
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.ascii "find_word\0"
	.byte	0x1
	.word	0x1bb
	.byte	0xa
	.long	0x2272
	.byte	0x1
	.long	0x2d9c
	.uleb128 0x38
	.secrel32	LASF0
	.byte	0x1
	.word	0x1bb
	.byte	0x20
	.long	0x733
	.uleb128 0x22
	.uleb128 0x21
	.ascii "i\0"
	.byte	0x1
	.word	0x1bd
	.byte	0xb
	.long	0xac
	.uleb128 0x22
	.uleb128 0x21
	.ascii "ep\0"
	.byte	0x1
	.word	0x1bf
	.byte	0xc
	.long	0x2272
	.uleb128 0x23
	.long	LVL212
	.long	0x3ec3
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.ascii "define_word\0"
	.byte	0x1
	.word	0x1ae
	.byte	0x6
	.byte	0x1
	.long	0x2ddc
	.uleb128 0x38
	.secrel32	LASF0
	.byte	0x1
	.word	0x1ae
	.byte	0x18
	.long	0x155
	.uleb128 0x21
	.ascii "ep\0"
	.byte	0x1
	.word	0x1b1
	.byte	0xb
	.long	0x2272
	.uleb128 0x21
	.ascii "maxLen\0"
	.byte	0x1
	.word	0x1b2
	.byte	0x9
	.long	0x12b
	.byte	0
	.uleb128 0x3e
	.ascii "run_program\0"
	.byte	0x1
	.byte	0xd5
	.byte	0x6
	.long	LFB86
	.long	LFE86-LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x3430
	.uleb128 0x3f
	.ascii "start\0"
	.byte	0x1
	.byte	0xd5
	.byte	0x17
	.long	0x1eb4
	.secrel32	LLST8
	.secrel32	LVUS8
	.uleb128 0x40
	.ascii "IR\0"
	.byte	0x1
	.byte	0xd7
	.byte	0x7
	.long	0xb3
	.secrel32	LLST9
	.secrel32	LVUS9
	.uleb128 0x40
	.ascii "arg1\0"
	.byte	0x1
	.byte	0xd8
	.byte	0x7
	.long	0x1eb4
	.secrel32	LLST10
	.secrel32	LVUS10
	.uleb128 0x41
	.ascii "arg2\0"
	.byte	0x1
	.byte	0xd8
	.byte	0xd
	.long	0x1eb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x42
	.ascii "arg3\0"
	.byte	0x1
	.byte	0xd8
	.byte	0x13
	.long	0x1eb4
	.uleb128 0x25
	.long	LBB183
	.long	LBE183-LBB183
	.long	0x2edb
	.uleb128 0x1c
	.ascii "pos\0"
	.byte	0x1
	.word	0x169
	.byte	0xa
	.long	0x2aa
	.secrel32	LLST23
	.secrel32	LVUS23
	.uleb128 0x35
	.long	0x34a7
	.long	LBI184
	.word	LVU336
	.long	LBB184
	.long	LBE184-LBB184
	.byte	0x1
	.word	0x16a
	.byte	0xb
	.long	0x2ea0
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST24
	.secrel32	LVUS24
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI186
	.word	LVU349
	.long	LBB186
	.long	LBE186-LBB186
	.byte	0x1
	.word	0x16b
	.byte	0xb
	.long	0x2ec9
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST25
	.secrel32	LVUS25
	.byte	0
	.uleb128 0x23
	.long	LVL113
	.long	0x3ef5
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	LBB182
	.long	LBE182-LBB182
	.long	0x2f2c
	.uleb128 0x21
	.ascii "pos\0"
	.byte	0x1
	.word	0x174
	.byte	0xa
	.long	0x2aa
	.uleb128 0x1d
	.long	LVL97
	.long	0x3f2e
	.long	0x2f0d
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	_csbi
	.byte	0
	.uleb128 0x23
	.long	LVL101
	.long	0x3f6a
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI140
	.word	LVU137
	.long	LBB140
	.long	LBE140-LBB140
	.byte	0x1
	.word	0x195
	.byte	0xb
	.long	0x2f55
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST11
	.secrel32	LVUS11
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI142
	.word	LVU153
	.long	LBB142
	.long	LBE142-LBB142
	.byte	0x1
	.word	0x190
	.byte	0xb
	.long	0x2f7e
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST12
	.secrel32	LVUS12
	.byte	0
	.uleb128 0x35
	.long	0x34c3
	.long	LBI144
	.word	LVU173
	.long	LBB144
	.long	LBE144-LBB144
	.byte	0x1
	.word	0x136
	.byte	0x4
	.long	0x2fa7
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST13
	.secrel32	LVUS13
	.byte	0
	.uleb128 0x2b
	.long	0x34a7
	.long	LBI146
	.word	LVU199
	.secrel32	Ldebug_ranges0+0x20
	.byte	0x1
	.word	0x147
	.byte	0xb
	.long	0x2fd2
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x20
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST14
	.secrel32	LVUS14
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x34c3
	.long	LBI150
	.word	LVU215
	.secrel32	Ldebug_ranges0+0x40
	.byte	0x1
	.word	0x149
	.byte	0x4
	.long	0x2ff7
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST15
	.secrel32	LVUS15
	.byte	0
	.uleb128 0x2b
	.long	0x34c3
	.long	LBI155
	.word	LVU226
	.secrel32	Ldebug_ranges0+0x58
	.byte	0x1
	.word	0x14a
	.byte	0x4
	.long	0x301c
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST16
	.secrel32	LVUS16
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI162
	.word	LVU238
	.long	LBB162
	.long	LBE162-LBB162
	.byte	0x1
	.word	0x141
	.byte	0xb
	.long	0x3045
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST17
	.secrel32	LVUS17
	.byte	0
	.uleb128 0x35
	.long	0x34c3
	.long	LBI164
	.word	LVU253
	.long	LBB164
	.long	LBE164-LBB164
	.byte	0x1
	.word	0x143
	.byte	0x4
	.long	0x306e
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST18
	.secrel32	LVUS18
	.byte	0
	.uleb128 0x2b
	.long	0x34c3
	.long	LBI166
	.word	LVU296
	.secrel32	Ldebug_ranges0+0x78
	.byte	0x1
	.word	0x184
	.byte	0x4
	.long	0x3093
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST19
	.secrel32	LVUS19
	.byte	0
	.uleb128 0x2b
	.long	0x34a7
	.long	LBI170
	.word	LVU281
	.secrel32	Ldebug_ranges0+0x98
	.byte	0x1
	.word	0x182
	.byte	0xb
	.long	0x30be
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x98
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST20
	.secrel32	LVUS20
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI174
	.word	LVU266
	.long	LBB174
	.long	LBE174-LBB174
	.byte	0x1
	.word	0x13b
	.byte	0xb
	.long	0x30e7
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST21
	.secrel32	LVUS21
	.byte	0
	.uleb128 0x2b
	.long	0x34c3
	.long	LBI178
	.word	LVU306
	.secrel32	Ldebug_ranges0+0xb0
	.byte	0x1
	.word	0x17d
	.byte	0x4
	.long	0x310c
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST22
	.secrel32	LVUS22
	.byte	0
	.uleb128 0x35
	.long	0x3430
	.long	LBI188
	.word	LVU373
	.long	LBB188
	.long	LBE188-LBB188
	.byte	0x1
	.word	0x18c
	.byte	0x4
	.long	0x3135
	.uleb128 0x2a
	.long	0x3442
	.secrel32	LLST26
	.secrel32	LVUS26
	.byte	0
	.uleb128 0x35
	.long	0x34c3
	.long	LBI190
	.word	LVU385
	.long	LBB190
	.long	LBE190-LBB190
	.byte	0x1
	.word	0x18c
	.byte	0x4
	.long	0x315e
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST27
	.secrel32	LVUS27
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI192
	.word	LVU397
	.long	LBB192
	.long	LBE192-LBB192
	.byte	0x1
	.word	0x188
	.byte	0x4
	.long	0x3187
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST28
	.secrel32	LVUS28
	.byte	0
	.uleb128 0x35
	.long	0x344d
	.long	LBI194
	.word	LVU409
	.long	LBB194
	.long	LBE194-LBB194
	.byte	0x1
	.word	0x188
	.byte	0x4
	.long	0x31b0
	.uleb128 0x27
	.long	0x345c
	.secrel32	LLST29
	.secrel32	LVUS29
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI196
	.word	LVU424
	.long	LBB196
	.long	LBE196-LBB196
	.byte	0x1
	.word	0x103
	.byte	0xb
	.long	0x31d9
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST30
	.secrel32	LVUS30
	.byte	0
	.uleb128 0x2d
	.long	0x34a7
	.long	LBI198
	.word	LVU439
	.long	LBB198
	.long	LBE198-LBB198
	.byte	0x1
	.byte	0xff
	.byte	0xb
	.long	0x3201
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST31
	.secrel32	LVUS31
	.byte	0
	.uleb128 0x2d
	.long	0x34c3
	.long	LBI200
	.word	LVU457
	.long	LBB200
	.long	LBE200-LBB200
	.byte	0x1
	.byte	0xfb
	.byte	0x4
	.long	0x3229
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST32
	.secrel32	LVUS32
	.byte	0
	.uleb128 0x2d
	.long	0x34a7
	.long	LBI202
	.word	LVU467
	.long	LBB202
	.long	LBE202-LBB202
	.byte	0x1
	.byte	0xf6
	.byte	0xb
	.long	0x3251
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST33
	.secrel32	LVUS33
	.byte	0
	.uleb128 0x2d
	.long	0x34a7
	.long	LBI204
	.word	LVU480
	.long	LBB204
	.long	LBE204-LBB204
	.byte	0x1
	.byte	0xf0
	.byte	0xb
	.long	0x3279
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST34
	.secrel32	LVUS34
	.byte	0
	.uleb128 0x2d
	.long	0x34a7
	.long	LBI206
	.word	LVU493
	.long	LBB206
	.long	LBE206-LBB206
	.byte	0x1
	.byte	0xf1
	.byte	0xb
	.long	0x32a1
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST35
	.secrel32	LVUS35
	.byte	0
	.uleb128 0x2d
	.long	0x34c3
	.long	LBI208
	.word	LVU516
	.long	LBB208
	.long	LBE208-LBB208
	.byte	0x1
	.byte	0xe7
	.byte	0x4
	.long	0x32c9
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST36
	.secrel32	LVUS36
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI210
	.word	LVU520
	.long	LBB210
	.long	LBE210-LBB210
	.byte	0x1
	.word	0x122
	.byte	0xb
	.long	0x32f2
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST37
	.secrel32	LVUS37
	.byte	0
	.uleb128 0x35
	.long	0x3430
	.long	LBI212
	.word	LVU536
	.long	LBB212
	.long	LBE212-LBB212
	.byte	0x1
	.word	0x11c
	.byte	0x9
	.long	0x331b
	.uleb128 0x2a
	.long	0x3442
	.secrel32	LLST38
	.secrel32	LVUS38
	.byte	0
	.uleb128 0x2b
	.long	0x344d
	.long	LBI214
	.word	LVU560
	.secrel32	Ldebug_ranges0+0xc8
	.byte	0x1
	.word	0x116
	.byte	0x4
	.long	0x3340
	.uleb128 0x27
	.long	0x345c
	.secrel32	LLST39
	.secrel32	LVUS39
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI218
	.word	LVU578
	.long	LBB218
	.long	LBE218-LBB218
	.byte	0x1
	.word	0x12c
	.byte	0xb
	.long	0x3369
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST40
	.secrel32	LVUS40
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI220
	.word	LVU595
	.long	LBB220
	.long	LBE220-LBB220
	.byte	0x1
	.word	0x127
	.byte	0xb
	.long	0x3392
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST41
	.secrel32	LVUS41
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI222
	.word	LVU611
	.long	LBB222
	.long	LBE222-LBB222
	.byte	0x1
	.word	0x131
	.byte	0xb
	.long	0x33bb
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST42
	.secrel32	LVUS42
	.byte	0
	.uleb128 0x1d
	.long	LVL25
	.long	0x3eb0
	.long	0x33d3
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x1d
	.long	LVL56
	.long	0x3eb0
	.long	0x33eb
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC5
	.byte	0
	.uleb128 0x1d
	.long	LVL58
	.long	0x3eb0
	.long	0x3403
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.uleb128 0x1d
	.long	LVL60
	.long	0x3eb0
	.long	0x341b
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC3
	.byte	0
	.uleb128 0x23
	.long	LVL135
	.long	0x3eb0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC2
	.byte	0
	.byte	0
	.uleb128 0x43
	.ascii "rpop\0"
	.byte	0x1
	.byte	0x9d
	.byte	0x6
	.long	0x1eb4
	.byte	0x1
	.long	0x344d
	.uleb128 0x42
	.ascii "v\0"
	.byte	0x1
	.byte	0x9f
	.byte	0x7
	.long	0x1eb4
	.byte	0
	.uleb128 0x44
	.ascii "rpush\0"
	.byte	0x1
	.byte	0x95
	.byte	0x6
	.byte	0x1
	.long	0x3467
	.uleb128 0x45
	.ascii "v\0"
	.byte	0x1
	.byte	0x95
	.byte	0x11
	.long	0x1eb4
	.byte	0
	.uleb128 0x44
	.ascii "dumpStack\0"
	.byte	0x1
	.byte	0x89
	.byte	0x6
	.byte	0x1
	.long	0x34a7
	.uleb128 0x45
	.ascii "num\0"
	.byte	0x1
	.byte	0x89
	.byte	0x14
	.long	0xac
	.uleb128 0x22
	.uleb128 0x42
	.ascii "i\0"
	.byte	0x1
	.byte	0x8d
	.byte	0xb
	.long	0xac
	.uleb128 0x23
	.long	LVL16
	.long	0x3eb0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.ascii "pop\0"
	.byte	0x1
	.byte	0x80
	.byte	0x6
	.long	0x1eb4
	.byte	0x1
	.long	0x34c3
	.uleb128 0x42
	.ascii "v\0"
	.byte	0x1
	.byte	0x82
	.byte	0x7
	.long	0x1eb4
	.byte	0
	.uleb128 0x44
	.ascii "push\0"
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.byte	0x1
	.long	0x34dc
	.uleb128 0x45
	.ascii "v\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.long	0x1eb4
	.byte	0
	.uleb128 0x44
	.ascii "fopen_s\0"
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.byte	0x1
	.long	0x351d
	.uleb128 0x45
	.ascii "pfp\0"
	.byte	0x1
	.byte	0x6e
	.byte	0x15
	.long	0x351d
	.uleb128 0x45
	.ascii "nm\0"
	.byte	0x1
	.byte	0x6e
	.byte	0x26
	.long	0x733
	.uleb128 0x45
	.ascii "mode\0"
	.byte	0x1
	.byte	0x6e
	.byte	0x36
	.long	0x733
	.uleb128 0x42
	.ascii "fp\0"
	.byte	0x1
	.byte	0x70
	.byte	0x8
	.long	0x20a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x20a6
	.uleb128 0x44
	.ascii "strcpy_s\0"
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.byte	0x1
	.long	0x355a
	.uleb128 0x45
	.ascii "dst\0"
	.byte	0x1
	.byte	0x66
	.byte	0x15
	.long	0x155
	.uleb128 0x45
	.ascii "num\0"
	.byte	0x1
	.byte	0x66
	.byte	0x1f
	.long	0x1eb4
	.uleb128 0x45
	.ascii "src\0"
	.byte	0x1
	.byte	0x66
	.byte	0x30
	.long	0x733
	.byte	0
	.uleb128 0x46
	.long	0x3523
	.long	LFB79
	.long	LFE79-LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x3590
	.uleb128 0x27
	.long	0x3535
	.secrel32	LLST0
	.secrel32	LVUS0
	.uleb128 0x47
	.long	0x3541
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	0x354d
	.secrel32	LLST1
	.secrel32	LVUS1
	.byte	0
	.uleb128 0x46
	.long	0x34dc
	.long	LFB80
	.long	LFE80-LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x35e3
	.uleb128 0x47
	.long	0x34ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x47
	.long	0x34f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x47
	.long	0x3504
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	0x3511
	.secrel32	LLST2
	.secrel32	LVUS2
	.uleb128 0x23
	.long	LVL5
	.long	0x3fa9
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x34c3
	.long	LFB81
	.long	LFE81-LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ff
	.uleb128 0x47
	.long	0x34d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.long	0x34a7
	.long	LFB82
	.long	LFE82-LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x3620
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST3
	.secrel32	LVUS3
	.byte	0
	.uleb128 0x46
	.long	0x3467
	.long	LFB83
	.long	LFE83-LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x36aa
	.uleb128 0x27
	.long	0x347a
	.secrel32	LLST4
	.secrel32	LVUS4
	.uleb128 0x48
	.long	0x3486
	.secrel32	Ldebug_ranges0+0
	.long	0x367f
	.uleb128 0x2a
	.long	0x3487
	.secrel32	LLST5
	.secrel32	LVUS5
	.uleb128 0x49
	.long	0x34a7
	.long	LBI136
	.word	LVU55
	.long	LBB136
	.long	LBE136-LBB136
	.byte	0x1
	.byte	0x8e
	.byte	0x3
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST6
	.secrel32	LVUS6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL10
	.long	0x3eb0
	.long	0x3697
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC0
	.byte	0
	.uleb128 0x4a
	.long	LVL18
	.long	0x3e72
	.uleb128 0x1f
	.long	LVL19
	.long	0x3eb0
	.byte	0
	.uleb128 0x46
	.long	0x344d
	.long	LFB84
	.long	LFE84-LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c6
	.uleb128 0x47
	.long	0x345c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.long	0x3430
	.long	LFB85
	.long	LFE85-LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x36e7
	.uleb128 0x2a
	.long	0x3442
	.secrel32	LLST7
	.secrel32	LVUS7
	.byte	0
	.uleb128 0x46
	.long	0x2d9c
	.long	LFB87
	.long	LFE87-LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x375f
	.uleb128 0x47
	.long	0x2db2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	0x2dbf
	.secrel32	LLST43
	.secrel32	LVUS43
	.uleb128 0x4b
	.long	0x2dcb
	.byte	0x1d
	.uleb128 0x2b
	.long	0x3523
	.long	LBI226
	.word	LVU651
	.secrel32	Ldebug_ranges0+0xe0
	.byte	0x1
	.word	0x1b8
	.byte	0x2
	.long	0x374d
	.uleb128 0x27
	.long	0x354d
	.secrel32	LLST44
	.secrel32	LVUS44
	.uleb128 0x4c
	.long	0x3541
	.byte	0x1e
	.uleb128 0x27
	.long	0x3535
	.secrel32	LLST45
	.secrel32	LVUS45
	.byte	0
	.uleb128 0x23
	.long	LVL200
	.long	0x3fba
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x2d43
	.long	LFB88
	.long	LFE88-LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x37ad
	.uleb128 0x47
	.long	0x2d5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4d
	.long	0x2d68
	.secrel32	Ldebug_ranges0+0xf8
	.uleb128 0x2a
	.long	0x2d69
	.secrel32	LLST46
	.secrel32	LVUS46
	.uleb128 0x2e
	.long	0x2d74
	.long	LBB233
	.long	LBE233-LBB233
	.uleb128 0x2a
	.long	0x2d75
	.secrel32	LLST47
	.secrel32	LVUS47
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x2c94
	.long	LFB90
	.long	LFE90-LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x37e3
	.uleb128 0x27
	.long	0x2caa
	.secrel32	LLST50
	.secrel32	LVUS50
	.uleb128 0x47
	.long	0x2cb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	0x2cc5
	.secrel32	LLST51
	.secrel32	LVUS51
	.byte	0
	.uleb128 0x46
	.long	0x2aa7
	.long	LFB98
	.long	LFE98-LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aa9
	.uleb128 0x27
	.long	0x2abf
	.secrel32	LLST62
	.secrel32	LVUS62
	.uleb128 0x27
	.long	0x2acd
	.secrel32	LLST63
	.secrel32	LVUS63
	.uleb128 0x2a
	.long	0x2ada
	.secrel32	LLST64
	.secrel32	LVUS64
	.uleb128 0x4e
	.long	0x2ae6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	0x34c3
	.long	LBI267
	.word	LVU858
	.secrel32	Ldebug_ranges0+0x160
	.byte	0x1
	.word	0x245
	.byte	0x3
	.long	0x384a
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST65
	.secrel32	LVUS65
	.byte	0
	.uleb128 0x35
	.long	0x34a7
	.long	LBI271
	.word	LVU879
	.long	LBB271
	.long	LBE271-LBB271
	.byte	0x1
	.word	0x24b
	.byte	0x9
	.long	0x3873
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST66
	.secrel32	LVUS66
	.byte	0
	.uleb128 0x2b
	.long	0x34c3
	.long	LBI273
	.word	LVU904
	.secrel32	Ldebug_ranges0+0x178
	.byte	0x1
	.word	0x251
	.byte	0x3
	.long	0x3898
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST67
	.secrel32	LVUS67
	.byte	0
	.uleb128 0x2b
	.long	0x34a7
	.long	LBI277
	.word	LVU923
	.secrel32	Ldebug_ranges0+0x190
	.byte	0x1
	.word	0x28d
	.byte	0x4
	.long	0x38c3
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x190
	.uleb128 0x2a
	.long	0x34b8
	.secrel32	LLST68
	.secrel32	LVUS68
	.byte	0
	.byte	0
	.uleb128 0x48
	.long	0x2af3
	.secrel32	Ldebug_ranges0+0x1a8
	.long	0x3913
	.uleb128 0x2a
	.long	0x2af4
	.secrel32	LLST69
	.secrel32	LVUS69
	.uleb128 0x4d
	.long	0x2aff
	.secrel32	Ldebug_ranges0+0x1c0
	.uleb128 0x2a
	.long	0x2b00
	.secrel32	LLST70
	.secrel32	LVUS70
	.uleb128 0x1d
	.long	LVL292
	.long	0x3ec3
	.long	0x3908
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	LVL308
	.long	0x2ddc
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x2d43
	.long	LBI286
	.word	LVU962
	.secrel32	Ldebug_ranges0+0x1e8
	.byte	0x1
	.word	0x277
	.byte	0x10
	.long	0x3989
	.uleb128 0x27
	.long	0x2d5b
	.secrel32	LLST71
	.secrel32	LVUS71
	.uleb128 0x2e
	.long	0x2d68
	.long	LBB287
	.long	LBE287-LBB287
	.uleb128 0x2a
	.long	0x2d69
	.secrel32	LLST72
	.secrel32	LVUS72
	.uleb128 0x2e
	.long	0x2d74
	.long	LBB288
	.long	LBE288-LBB288
	.uleb128 0x2a
	.long	0x2d75
	.secrel32	LLST73
	.secrel32	LVUS73
	.uleb128 0x23
	.long	LVL299
	.long	0x3ec3
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x34c3
	.long	LBI290
	.word	LVU998
	.secrel32	Ldebug_ranges0+0x200
	.byte	0x1
	.word	0x289
	.byte	0x3
	.long	0x39ae
	.uleb128 0x27
	.long	0x34d1
	.secrel32	LLST74
	.secrel32	LVUS74
	.byte	0
	.uleb128 0x1d
	.long	LVL261
	.long	0x3ec3
	.long	0x39cd
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC9
	.byte	0
	.uleb128 0x1d
	.long	LVL265
	.long	0x3ec3
	.long	0x39ec
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC10
	.byte	0
	.uleb128 0x1d
	.long	LVL271
	.long	0x3ec3
	.long	0x3a0b
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC11
	.byte	0
	.uleb128 0x1d
	.long	LVL277
	.long	0x3ec3
	.long	0x3a2a
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC12
	.byte	0
	.uleb128 0x1d
	.long	LVL280
	.long	0x3ec3
	.long	0x3a49
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC13
	.byte	0
	.uleb128 0x1d
	.long	LVL283
	.long	0x3ec3
	.long	0x3a68
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC14
	.byte	0
	.uleb128 0x1d
	.long	LVL303
	.long	0x2b0f
	.long	0x3a84
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	LVL310
	.long	0x2ddc
	.uleb128 0x23
	.long	LVL312
	.long	0x3eb0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC15
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x2aa7
	.long	LFB92
	.long	LFE92-LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bd6
	.uleb128 0x27
	.long	0x2abf
	.secrel32	LLST75
	.secrel32	LVUS75
	.uleb128 0x47
	.long	0x2acd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	0x2ada
	.uleb128 0x32
	.long	0x2ae6
	.uleb128 0x33
	.long	0x2c94
	.secrel32	Ldebug_ranges0+0x218
	.byte	0x1
	.word	0x234
	.byte	0xa
	.long	0x3b12
	.uleb128 0x34
	.long	0x2cb8
	.uleb128 0x27
	.long	0x2caa
	.secrel32	LLST76
	.secrel32	LVUS76
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x218
	.uleb128 0x2a
	.long	0x2cc5
	.secrel32	LLST77
	.secrel32	LVUS77
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x2d9c
	.long	LBI307
	.word	LVU1063
	.long	LBB307
	.long	LBE307-LBB307
	.byte	0x1
	.word	0x237
	.byte	0x4
	.long	0x3b9e
	.uleb128 0x27
	.long	0x2db2
	.secrel32	LLST78
	.secrel32	LVUS78
	.uleb128 0x2a
	.long	0x2dbf
	.secrel32	LLST79
	.secrel32	LVUS79
	.uleb128 0x4b
	.long	0x2dcb
	.byte	0x1d
	.uleb128 0x2b
	.long	0x3523
	.long	LBI309
	.word	LVU1086
	.secrel32	Ldebug_ranges0+0x230
	.byte	0x1
	.word	0x1b8
	.byte	0x2
	.long	0x3b8c
	.uleb128 0x27
	.long	0x354d
	.secrel32	LLST80
	.secrel32	LVUS80
	.uleb128 0x27
	.long	0x3541
	.secrel32	LLST81
	.secrel32	LVUS81
	.uleb128 0x27
	.long	0x3535
	.secrel32	LLST82
	.secrel32	LVUS82
	.byte	0
	.uleb128 0x23
	.long	LVL327
	.long	0x3fba
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL314
	.long	0x3ec3
	.long	0x3bbd
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC16
	.byte	0
	.uleb128 0x4f
	.long	LVL315
	.long	0x37e3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x245c
	.long	LFB95
	.long	LFE95-LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d1a
	.uleb128 0x32
	.long	0x246e
	.uleb128 0x48
	.long	0x247b
	.secrel32	Ldebug_ranges0+0x3a8
	.long	0x3c20
	.uleb128 0x2a
	.long	0x247c
	.secrel32	LLST119
	.secrel32	LVUS119
	.uleb128 0x4d
	.long	0x2487
	.secrel32	Ldebug_ranges0+0x3c8
	.uleb128 0x2a
	.long	0x2488
	.secrel32	LLST120
	.secrel32	LVUS120
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x34dc
	.long	LBI434
	.word	LVU1456
	.long	LBB434
	.long	LBE434-LBB434
	.byte	0x1
	.word	0x2d8
	.byte	0x2
	.long	0x3c8e
	.uleb128 0x27
	.long	0x3504
	.secrel32	LLST121
	.secrel32	LVUS121
	.uleb128 0x27
	.long	0x34f9
	.secrel32	LLST122
	.secrel32	LVUS122
	.uleb128 0x27
	.long	0x34ed
	.secrel32	LLST123
	.secrel32	LVUS123
	.uleb128 0x2a
	.long	0x3511
	.secrel32	LLST124
	.secrel32	LVUS124
	.uleb128 0x23
	.long	LVL438
	.long	0x3fa9
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC27
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC26
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x245c
	.long	LBB436
	.long	LBE436-LBB436
	.byte	0x1
	.word	0x2c5
	.byte	0x6
	.long	0x3ce8
	.uleb128 0x4e
	.long	0x246e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1d
	.long	LVL440
	.long	0x28a4
	.long	0x3cc1
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	LVL441
	.long	0x3fcc
	.long	0x3cde
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x3
	.byte	0xa
	.word	0x100
	.byte	0
	.uleb128 0x1f
	.long	LVL442
	.long	0x3fdd
	.byte	0
	.uleb128 0x1f
	.long	LVL437
	.long	0x24bb
	.uleb128 0x1d
	.long	LVL443
	.long	0x3eb0
	.long	0x3d09
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC29
	.byte	0
	.uleb128 0x23
	.long	LVL444
	.long	0x3ff0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x2432
	.long	LFB96
	.long	LFE96-LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e36
	.uleb128 0x2a
	.long	0x244e
	.secrel32	LLST125
	.secrel32	LVUS125
	.uleb128 0x2b
	.long	0x34dc
	.long	LBI444
	.word	LVU1480
	.secrel32	Ldebug_ranges0+0x3f8
	.byte	0x1
	.word	0x2ef
	.byte	0x2
	.long	0x3daa
	.uleb128 0x27
	.long	0x3504
	.secrel32	LLST126
	.secrel32	LVUS126
	.uleb128 0x27
	.long	0x34f9
	.secrel32	LLST127
	.secrel32	LVUS127
	.uleb128 0x27
	.long	0x34ed
	.secrel32	LLST128
	.secrel32	LVUS128
	.uleb128 0x29
	.secrel32	Ldebug_ranges0+0x3f8
	.uleb128 0x2a
	.long	0x3511
	.secrel32	LLST129
	.secrel32	LVUS129
	.uleb128 0x23
	.long	LVL446
	.long	0x3fa9
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC31
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x2432
	.long	LBI448
	.word	LVU1499
	.long	LBB448
	.long	LBE448-LBB448
	.byte	0x1
	.word	0x2ed
	.byte	0x6
	.long	0x3df3
	.uleb128 0x32
	.long	0x244e
	.uleb128 0x1d
	.long	LVL454
	.long	0x3eb0
	.long	0x3de2
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC32
	.byte	0
	.uleb128 0x23
	.long	LVL455
	.long	0x3ff0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL448
	.long	0x3fff
	.long	0x3e07
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	LVL451
	.long	0x3fdd
	.uleb128 0x23
	.long	LVL452
	.long	0x3eb0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC33
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC31
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x51
	.ascii "GetStdHandle@4\0"
	.ascii "GetStdHandle\0"
	.byte	0x11
	.word	0x750
	.byte	0x1a
	.uleb128 0x52
	.ascii "calloc\0"
	.ascii "__builtin_calloc\0"
	.byte	0x10
	.byte	0
	.uleb128 0x52
	.ascii "putchar\0"
	.ascii "__builtin_putchar\0"
	.byte	0x10
	.byte	0
	.uleb128 0x51
	.ascii "GetTickCount@0\0"
	.ascii "GetTickCount\0"
	.byte	0x11
	.word	0x76d
	.byte	0x19
	.uleb128 0x51
	.ascii "printf\0"
	.ascii "printf\0"
	.byte	0xd
	.word	0x1ce
	.byte	0x26
	.uleb128 0x53
	.secrel32	LASF1
	.secrel32	LASF1
	.byte	0x14
	.byte	0x50
	.byte	0x26
	.uleb128 0x54
	.ascii "tolower\0"
	.ascii "tolower\0"
	.byte	0xe
	.byte	0x5f
	.byte	0x26
	.uleb128 0x54
	.ascii "strchr\0"
	.ascii "strchr\0"
	.byte	0x12
	.byte	0x4c
	.byte	0x28
	.uleb128 0x51
	.ascii "SetConsoleCursorPosition@8\0"
	.ascii "SetConsoleCursorPosition\0"
	.byte	0x5
	.word	0x110
	.byte	0xd
	.uleb128 0x54
	.ascii "GetConsoleScreenBufferInfo@8\0"
	.ascii "GetConsoleScreenBufferInfo\0"
	.byte	0x5
	.byte	0xe5
	.byte	0xd
	.uleb128 0x54
	.ascii "FillConsoleOutputCharacterA@20\0"
	.ascii "FillConsoleOutputCharacterA\0"
	.byte	0x5
	.byte	0xd6
	.byte	0xd
	.uleb128 0x51
	.ascii "fopen\0"
	.ascii "fopen\0"
	.byte	0xd
	.word	0x104
	.byte	0x29
	.uleb128 0x54
	.ascii "strlen\0"
	.ascii "strlen\0"
	.byte	0x12
	.byte	0x53
	.byte	0x29
	.uleb128 0x51
	.ascii "fgets\0"
	.ascii "fgets\0"
	.byte	0xd
	.word	0x2c2
	.byte	0x29
	.uleb128 0x51
	.ascii "fclose\0"
	.ascii "fclose\0"
	.byte	0xd
	.word	0x107
	.byte	0x29
	.uleb128 0x51
	.ascii "exit\0"
	.ascii "exit\0"
	.byte	0x8
	.word	0x221
	.byte	0x27
	.uleb128 0x51
	.ascii "fwrite\0"
	.ascii "fwrite\0"
	.byte	0xd
	.word	0x300
	.byte	0x29
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
Ldebug_loc0:
LVUS130:
	.uleb128 LVU1529
	.uleb128 LVU1531
	.uleb128 LVU1531
	.uleb128 LVU1543
	.uleb128 LVU1544
	.uleb128 0
LLST130:
	.long	LVL468
	.long	LVL469
	.word	0x1
	.byte	0x50
	.long	LVL469
	.long	LVL476
	.word	0x1
	.byte	0x53
	.long	LVL477
	.long	LFE97
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS131:
	.uleb128 LVU1534
	.uleb128 LVU1537
LLST131:
	.long	LVL470
	.long	LVL471
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS132:
	.uleb128 LVU1538
	.uleb128 LVU1539
	.uleb128 LVU1539
	.uleb128 LVU1540
LLST132:
	.long	LVL472
	.long	LVL473
	.word	0x1
	.byte	0x50
	.long	LVL473
	.long	LVL474
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LVUS100:
	.uleb128 LVU1265
	.uleb128 LVU1266
	.uleb128 LVU1266
	.uleb128 LVU1327
LLST100:
	.long	LVL379
	.long	LVL380-1
	.word	0x1
	.byte	0x50
	.long	LVL380-1
	.long	LVL393
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS101:
	.uleb128 LVU1323
	.uleb128 LVU1326
LLST101:
	.long	LVL391
	.long	LVL392
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS102:
	.uleb128 LVU1329
	.uleb128 LVU1330
	.uleb128 LVU1330
	.uleb128 LVU1331
LLST102:
	.long	LVL394
	.long	LVL395
	.word	0x1
	.byte	0x50
	.long	LVL395
	.long	LVL396
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LVUS103:
	.uleb128 LVU1268
	.uleb128 LVU1272
	.uleb128 LVU1272
	.uleb128 LVU1301
LLST103:
	.long	LVL380
	.long	LVL381
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	LVL381
	.long	LVL387-1
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS104:
	.uleb128 LVU1274
	.uleb128 LVU1280
	.uleb128 LVU1286
	.uleb128 LVU1292
LLST104:
	.long	LVL381
	.long	LVL382
	.word	0x1
	.byte	0x50
	.long	LVL384
	.long	LVL385
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS105:
	.uleb128 LVU1303
	.uleb128 LVU1306
LLST105:
	.long	LVL387
	.long	LVL388
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LVUS106:
	.uleb128 LVU1311
	.uleb128 LVU1316
LLST106:
	.long	LVL389
	.long	LVL390
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS107:
	.uleb128 LVU1333
	.uleb128 LVU1356
LLST107:
	.long	LVL397
	.long	LVL402
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
LVUS108:
	.uleb128 LVU1338
	.uleb128 LVU1339
LLST108:
	.long	LVL398
	.long	LVL398
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LVUS109:
	.uleb128 LVU1344
	.uleb128 LVU1350
LLST109:
	.long	LVL399
	.long	LVL400
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS110:
	.uleb128 LVU1360
	.uleb128 LVU1378
	.uleb128 LVU1425
	.uleb128 0
LLST110:
	.long	LVL403
	.long	LVL410
	.word	0x6
	.byte	0x3
	.long	LC21
	.byte	0x9f
	.long	LVL429
	.long	LFE94
	.word	0x6
	.byte	0x3
	.long	LC21
	.byte	0x9f
	.long	0
	.long	0
LVUS111:
	.uleb128 LVU1364
	.uleb128 LVU1367
	.uleb128 LVU1367
	.uleb128 LVU1369
	.uleb128 LVU1369
	.uleb128 LVU1378
	.uleb128 LVU1425
	.uleb128 0
LLST111:
	.long	LVL404
	.long	LVL405
	.word	0x1
	.byte	0x53
	.long	LVL405
	.long	LVL406
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	LVL406
	.long	LVL410
	.word	0x1
	.byte	0x53
	.long	LVL429
	.long	LFE94
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS112:
	.uleb128 LVU1366
	.uleb128 LVU1370
	.uleb128 LVU1374
	.uleb128 LVU1378
LLST112:
	.long	LVL405
	.long	LVL407
	.word	0x1
	.byte	0x55
	.long	LVL408
	.long	LVL410
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS113:
	.uleb128 LVU1381
	.uleb128 LVU1399
	.uleb128 LVU1424
	.uleb128 LVU1425
LLST113:
	.long	LVL411
	.long	LVL418
	.word	0x6
	.byte	0x3
	.long	LC23
	.byte	0x9f
	.long	LVL428
	.long	LVL429
	.word	0x6
	.byte	0x3
	.long	LC23
	.byte	0x9f
	.long	0
	.long	0
LVUS114:
	.uleb128 LVU1385
	.uleb128 LVU1388
	.uleb128 LVU1388
	.uleb128 LVU1390
	.uleb128 LVU1390
	.uleb128 LVU1399
	.uleb128 LVU1424
	.uleb128 LVU1425
LLST114:
	.long	LVL412
	.long	LVL413
	.word	0x1
	.byte	0x53
	.long	LVL413
	.long	LVL414
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	LVL414
	.long	LVL418
	.word	0x1
	.byte	0x53
	.long	LVL428
	.long	LVL429
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS115:
	.uleb128 LVU1387
	.uleb128 LVU1391
	.uleb128 LVU1395
	.uleb128 LVU1399
LLST115:
	.long	LVL413
	.long	LVL415
	.word	0x1
	.byte	0x55
	.long	LVL416
	.long	LVL418
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS116:
	.uleb128 LVU1402
	.uleb128 LVU1421
LLST116:
	.long	LVL419
	.long	LVL426
	.word	0x6
	.byte	0x3
	.long	LC25
	.byte	0x9f
	.long	0
	.long	0
LVUS117:
	.uleb128 LVU1406
	.uleb128 LVU1409
	.uleb128 LVU1409
	.uleb128 LVU1411
	.uleb128 LVU1411
	.uleb128 LVU1421
LLST117:
	.long	LVL420
	.long	LVL421
	.word	0x1
	.byte	0x53
	.long	LVL421
	.long	LVL422
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	LVL422
	.long	LVL426
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS118:
	.uleb128 LVU1408
	.uleb128 LVU1412
	.uleb128 LVU1416
	.uleb128 LVU1421
LLST118:
	.long	LVL421
	.long	LVL423
	.word	0x1
	.byte	0x55
	.long	LVL424
	.long	LVL426
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS83:
	.uleb128 0
	.uleb128 LVU1126
	.uleb128 LVU1129
	.uleb128 LVU1141
	.uleb128 LVU1141
	.uleb128 LVU1147
	.uleb128 LVU1164
	.uleb128 LVU1170
	.uleb128 LVU1230
	.uleb128 LVU1242
	.uleb128 LVU1252
	.uleb128 0
LLST83:
	.long	LVL334
	.long	LVL341
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL342
	.long	LVL346
	.word	0x1
	.byte	0x53
	.long	LVL346
	.long	LVL347
	.word	0x1
	.byte	0x50
	.long	LVL352
	.long	LVL354
	.word	0x1
	.byte	0x53
	.long	LVL370
	.long	LVL372
	.word	0x1
	.byte	0x53
	.long	LVL375
	.long	LFE93
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
LVUS84:
	.uleb128 LVU1106
	.uleb128 LVU1118
	.uleb128 LVU1118
	.uleb128 LVU1126
	.uleb128 LVU1252
	.uleb128 LVU1255
	.uleb128 LVU1255
	.uleb128 0
LLST84:
	.long	LVL335
	.long	LVL337
	.word	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.long	LVL337
	.long	LVL341
	.word	0x1
	.byte	0x57
	.long	LVL375
	.long	LVL376
	.word	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.long	LVL376
	.long	LFE93
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS85:
	.uleb128 LVU1106
	.uleb128 LVU1126
	.uleb128 LVU1252
	.uleb128 0
LLST85:
	.long	LVL335
	.long	LVL341
	.word	0x1
	.byte	0x53
	.long	LVL375
	.long	LFE93
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS86:
	.uleb128 LVU1108
	.uleb128 LVU1118
	.uleb128 LVU1118
	.uleb128 LVU1119
	.uleb128 LVU1119
	.uleb128 LVU1126
	.uleb128 LVU1252
	.uleb128 LVU1255
	.uleb128 LVU1255
	.uleb128 0
LLST86:
	.long	LVL335
	.long	LVL337
	.word	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.long	LVL337
	.long	LVL338
	.word	0x1
	.byte	0x57
	.long	LVL338
	.long	LVL341
	.word	0x1
	.byte	0x52
	.long	LVL375
	.long	LVL376
	.word	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.long	LVL376
	.long	LFE93
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS87:
	.uleb128 LVU1135
	.uleb128 LVU1141
	.uleb128 LVU1171
	.uleb128 LVU1227
	.uleb128 LVU1230
	.uleb128 LVU1234
	.uleb128 LVU1242
	.uleb128 LVU1246
	.uleb128 LVU1246
	.uleb128 LVU1252
LLST87:
	.long	LVL343
	.long	LVL346
	.word	0x1
	.byte	0x57
	.long	LVL355
	.long	LVL369
	.word	0x1
	.byte	0x57
	.long	LVL370
	.long	LVL371
	.word	0x1
	.byte	0x57
	.long	LVL372
	.long	LVL373
	.word	0x1
	.byte	0x57
	.long	LVL373
	.long	LVL375
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS88:
	.uleb128 LVU1135
	.uleb128 LVU1141
	.uleb128 LVU1187
	.uleb128 LVU1227
	.uleb128 LVU1230
	.uleb128 LVU1234
	.uleb128 LVU1249
	.uleb128 LVU1252
LLST88:
	.long	LVL343
	.long	LVL346
	.word	0x1
	.byte	0x53
	.long	LVL360
	.long	LVL369
	.word	0x1
	.byte	0x53
	.long	LVL370
	.long	LVL371
	.word	0x1
	.byte	0x53
	.long	LVL374
	.long	LVL375
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS89:
	.uleb128 LVU1171
	.uleb128 LVU1187
	.uleb128 LVU1242
	.uleb128 LVU1249
LLST89:
	.long	LVL355
	.long	LVL360
	.word	0x1
	.byte	0x53
	.long	LVL372
	.long	LVL374
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS90:
	.uleb128 LVU1177
	.uleb128 LVU1187
	.uleb128 LVU1242
	.uleb128 LVU1246
	.uleb128 LVU1246
	.uleb128 LVU1249
LLST90:
	.long	LVL357
	.long	LVL360
	.word	0x1
	.byte	0x52
	.long	LVL372
	.long	LVL373
	.word	0x1
	.byte	0x57
	.long	LVL373
	.long	LVL374
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS91:
	.uleb128 LVU1191
	.uleb128 LVU1220
LLST91:
	.long	LVL361
	.long	LVL367
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS92:
	.uleb128 LVU1198
	.uleb128 LVU1201
	.uleb128 LVU1201
	.uleb128 LVU1220
LLST92:
	.long	LVL362
	.long	LVL363
	.word	0x1
	.byte	0x51
	.long	LVL363
	.long	LVL367
	.word	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
LVUS93:
	.uleb128 LVU1199
	.uleb128 LVU1227
LLST93:
	.long	LVL362
	.long	LVL369
	.word	0x2
	.byte	0x4d
	.byte	0x9f
	.long	0
	.long	0
LVUS94:
	.uleb128 LVU1212
	.uleb128 LVU1215
	.uleb128 LVU1215
	.uleb128 LVU1216
	.uleb128 LVU1216
	.uleb128 LVU1218
	.uleb128 LVU1218
	.uleb128 LVU1220
LLST94:
	.long	LVL364
	.long	LVL365
	.word	0x1
	.byte	0x57
	.long	LVL365
	.long	LVL365
	.word	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.long	LVL365
	.long	LVL366
	.word	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x4f
	.byte	0x1c
	.byte	0x9f
	.long	LVL366
	.long	LVL367
	.word	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
LVUS95:
	.uleb128 LVU1212
	.uleb128 LVU1220
LLST95:
	.long	LVL364
	.long	LVL367
	.word	0x2
	.byte	0x4e
	.byte	0x9f
	.long	0
	.long	0
LVUS96:
	.uleb128 LVU1212
	.uleb128 LVU1215
	.uleb128 LVU1215
	.uleb128 LVU1216
	.uleb128 LVU1216
	.uleb128 LVU1218
	.uleb128 LVU1218
	.uleb128 LVU1220
LLST96:
	.long	LVL364
	.long	LVL365
	.word	0x3
	.byte	0x71
	.sleb128 5
	.byte	0x9f
	.long	LVL365
	.long	LVL365
	.word	0xa
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.long	LVL365
	.long	LVL366
	.word	0xa
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.long	LVL366
	.long	LVL367
	.word	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.long	0
	.long	0
LVUS97:
	.uleb128 LVU1143
	.uleb128 LVU1147
	.uleb128 LVU1236
	.uleb128 LVU1242
LLST97:
	.long	LVL346
	.long	LVL347
	.word	0x1
	.byte	0x57
	.long	LVL371
	.long	LVL372
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS98:
	.uleb128 LVU1143
	.uleb128 LVU1147
	.uleb128 LVU1147
	.uleb128 LVU1169
	.uleb128 LVU1223
	.uleb128 LVU1230
	.uleb128 LVU1236
	.uleb128 LVU1242
LLST98:
	.long	LVL346
	.long	LVL347
	.word	0x1
	.byte	0x50
	.long	LVL347
	.long	LVL353
	.word	0x1
	.byte	0x53
	.long	LVL368
	.long	LVL370
	.word	0x1
	.byte	0x53
	.long	LVL371
	.long	LVL372
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS99:
	.uleb128 LVU1145
	.uleb128 LVU1147
	.uleb128 LVU1154
	.uleb128 LVU1169
	.uleb128 LVU1227
	.uleb128 LVU1230
	.uleb128 LVU1238
	.uleb128 LVU1242
LLST99:
	.long	LVL346
	.long	LVL347
	.word	0x1
	.byte	0x57
	.long	LVL349
	.long	LVL353
	.word	0x1
	.byte	0x52
	.long	LVL369
	.long	LVL370
	.word	0x1
	.byte	0x57
	.long	LVL371
	.long	LVL372
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS52:
	.uleb128 0
	.uleb128 LVU751
	.uleb128 LVU751
	.uleb128 LVU794
	.uleb128 LVU794
	.uleb128 LVU799
	.uleb128 LVU799
	.uleb128 LVU800
	.uleb128 LVU800
	.uleb128 LVU804
	.uleb128 LVU804
	.uleb128 LVU807
	.uleb128 LVU807
	.uleb128 LVU811
	.uleb128 LVU811
	.uleb128 0
LLST52:
	.long	LVL229
	.long	LVL231
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	LVL231
	.long	LVL246
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	LVL246
	.long	LVL248
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	LVL248
	.long	LVL248
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	LVL248
	.long	LVL249
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	LVL249
	.long	LVL250
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	LVL250
	.long	LVL251
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	LVL251
	.long	LFE91
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
LVUS53:
	.uleb128 LVU736
	.uleb128 LVU769
	.uleb128 LVU770
	.uleb128 LVU790
	.uleb128 LVU793
	.uleb128 LVU813
	.uleb128 LVU813
	.uleb128 LVU815
	.uleb128 LVU822
	.uleb128 LVU830
	.uleb128 LVU830
	.uleb128 LVU836
LLST53:
	.long	LVL229
	.long	LVL235
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL236
	.long	LVL244
	.word	0x2
	.byte	0x91
	.sleb128 -52
	.long	LVL246
	.long	LVL252
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL252
	.long	LVL253
	.word	0x2
	.byte	0x91
	.sleb128 -52
	.long	LVL255
	.long	LVL256
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL256
	.long	LVL258
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
LVUS54:
	.uleb128 LVU739
	.uleb128 LVU792
	.uleb128 LVU793
	.uleb128 LVU795
	.uleb128 LVU795
	.uleb128 LVU798
	.uleb128 LVU798
	.uleb128 LVU801
	.uleb128 LVU801
	.uleb128 LVU804
	.uleb128 LVU804
	.uleb128 LVU808
	.uleb128 LVU808
	.uleb128 LVU811
	.uleb128 LVU811
	.uleb128 LVU815
	.uleb128 LVU822
	.uleb128 LVU833
	.uleb128 LVU833
	.uleb128 LVU836
LLST54:
	.long	LVL230
	.long	LVL245
	.word	0x1
	.byte	0x55
	.long	LVL246
	.long	LVL246
	.word	0x1
	.byte	0x55
	.long	LVL246
	.long	LVL247
	.word	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	LVL247
	.long	LVL248
	.word	0x1
	.byte	0x55
	.long	LVL248
	.long	LVL249
	.word	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	LVL249
	.long	LVL250
	.word	0x1
	.byte	0x55
	.long	LVL250
	.long	LVL251
	.word	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	LVL251
	.long	LVL253
	.word	0x1
	.byte	0x55
	.long	LVL255
	.long	LVL257
	.word	0x1
	.byte	0x55
	.long	LVL257
	.long	LVL258
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LVUS55:
	.uleb128 LVU740
	.uleb128 LVU770
	.uleb128 LVU770
	.uleb128 LVU773
	.uleb128 LVU775
	.uleb128 LVU790
	.uleb128 LVU793
	.uleb128 LVU813
	.uleb128 LVU813
	.uleb128 LVU821
	.uleb128 LVU821
	.uleb128 LVU822
	.uleb128 LVU822
	.uleb128 LVU838
LLST55:
	.long	LVL230
	.long	LVL236
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL236
	.long	LVL237
	.word	0x1
	.byte	0x53
	.long	LVL239
	.long	LVL244
	.word	0x1
	.byte	0x53
	.long	LVL246
	.long	LVL252
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL252
	.long	LVL254
	.word	0x1
	.byte	0x53
	.long	LVL254
	.long	LVL255
	.word	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	LVL255
	.long	LVL259
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LVUS59:
	.uleb128 LVU782
	.uleb128 LVU784
	.uleb128 LVU784
	.uleb128 LVU787
LLST59:
	.long	LVL241
	.long	LVL242-1
	.word	0x1
	.byte	0x50
	.long	LVL242
	.long	LVL243-1
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS60:
	.uleb128 LVU770
	.uleb128 LVU774
	.uleb128 LVU787
	.uleb128 LVU790
LLST60:
	.long	LVL236
	.long	LVL238
	.word	0x1
	.byte	0x50
	.long	LVL243
	.long	LVL244
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS61:
	.uleb128 LVU771
	.uleb128 LVU774
LLST61:
	.long	LVL236
	.long	LVL238
	.word	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.long	0
	.long	0
LVUS56:
	.uleb128 LVU752
	.uleb128 LVU756
	.uleb128 LVU756
	.uleb128 LVU757
	.uleb128 LVU757
	.uleb128 LVU760
	.uleb128 LVU760
	.uleb128 LVU761
LLST56:
	.long	LVL231
	.long	LVL232
	.word	0x6
	.byte	0x3
	.long	LC8
	.byte	0x9f
	.long	LVL232
	.long	LVL232
	.word	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	LC8
	.byte	0x22
	.byte	0x9f
	.long	LVL232
	.long	LVL233
	.word	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	LC8+1
	.byte	0x22
	.byte	0x9f
	.long	LVL233
	.long	LVL234
	.word	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	LC8
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
LVUS57:
	.uleb128 LVU752
	.uleb128 LVU761
LLST57:
	.long	LVL231
	.long	LVL234
	.word	0x2
	.byte	0x48
	.byte	0x9f
	.long	0
	.long	0
LVUS58:
	.uleb128 LVU752
	.uleb128 LVU756
	.uleb128 LVU756
	.uleb128 LVU757
	.uleb128 LVU757
	.uleb128 LVU760
	.uleb128 LVU760
	.uleb128 LVU761
LLST58:
	.long	LVL231
	.long	LVL232
	.word	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.long	LVL232
	.long	LVL232
	.word	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0x9f
	.long	LVL232
	.long	LVL233
	.word	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x27
	.byte	0x1c
	.byte	0x9f
	.long	LVL233
	.long	LVL234
	.word	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
LVUS48:
	.uleb128 LVU698
	.uleb128 LVU705
	.uleb128 LVU705
	.uleb128 LVU707
	.uleb128 LVU707
	.uleb128 LVU710
LLST48:
	.long	LVL217
	.long	LVL219
	.word	0x1
	.byte	0x53
	.long	LVL219
	.long	LVL220
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	LVL220
	.long	LVL221
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS49:
	.uleb128 LVU702
	.uleb128 LVU703
LLST49:
	.long	LVL218
	.long	LVL219-1
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS8:
	.uleb128 0
	.uleb128 LVU109
LLST8:
	.long	LVL22
	.long	LVL23
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
LVUS9:
	.uleb128 LVU113
	.uleb128 LVU118
	.uleb128 LVU121
	.uleb128 LVU123
	.uleb128 LVU123
	.uleb128 LVU127
	.uleb128 LVU127
	.uleb128 LVU130
	.uleb128 LVU130
	.uleb128 LVU131
	.uleb128 LVU132
	.uleb128 LVU134
	.uleb128 LVU134
	.uleb128 LVU135
	.uleb128 LVU136
	.uleb128 LVU140
	.uleb128 LVU140
	.uleb128 LVU141
	.uleb128 LVU141
	.uleb128 LVU144
	.uleb128 LVU152
	.uleb128 LVU156
	.uleb128 LVU156
	.uleb128 LVU157
	.uleb128 LVU157
	.uleb128 LVU160
	.uleb128 LVU168
	.uleb128 LVU170
	.uleb128 LVU170
	.uleb128 LVU171
	.uleb128 LVU171
	.uleb128 LVU172
	.uleb128 LVU184
	.uleb128 LVU186
	.uleb128 LVU186
	.uleb128 LVU188
	.uleb128 LVU188
	.uleb128 LVU191
	.uleb128 LVU191
	.uleb128 LVU192
	.uleb128 LVU192
	.uleb128 LVU193
	.uleb128 LVU194
	.uleb128 LVU195
	.uleb128 LVU196
	.uleb128 LVU197
	.uleb128 LVU198
	.uleb128 LVU202
	.uleb128 LVU202
	.uleb128 LVU204
	.uleb128 LVU204
	.uleb128 LVU214
	.uleb128 LVU237
	.uleb128 LVU241
	.uleb128 LVU241
	.uleb128 LVU243
	.uleb128 LVU243
	.uleb128 LVU252
	.uleb128 LVU264
	.uleb128 LVU269
	.uleb128 LVU269
	.uleb128 LVU270
	.uleb128 LVU270
	.uleb128 LVU273
	.uleb128 LVU280
	.uleb128 LVU284
	.uleb128 LVU284
	.uleb128 LVU286
	.uleb128 LVU286
	.uleb128 LVU295
	.uleb128 LVU300
	.uleb128 LVU303
	.uleb128 LVU303
	.uleb128 LVU305
	.uleb128 LVU305
	.uleb128 LVU310
	.uleb128 LVU319
	.uleb128 LVU321
	.uleb128 LVU321
	.uleb128 LVU322
	.uleb128 LVU334
	.uleb128 LVU339
	.uleb128 LVU339
	.uleb128 LVU341
	.uleb128 LVU341
	.uleb128 LVU355
	.uleb128 LVU372
	.uleb128 LVU376
	.uleb128 LVU376
	.uleb128 LVU377
	.uleb128 LVU377
	.uleb128 LVU380
	.uleb128 LVU396
	.uleb128 LVU400
	.uleb128 LVU400
	.uleb128 LVU401
	.uleb128 LVU401
	.uleb128 LVU404
	.uleb128 LVU420
	.uleb128 LVU421
	.uleb128 LVU421
	.uleb128 LVU422
	.uleb128 LVU423
	.uleb128 LVU427
	.uleb128 LVU427
	.uleb128 LVU428
	.uleb128 LVU428
	.uleb128 LVU431
	.uleb128 LVU438
	.uleb128 LVU442
	.uleb128 LVU442
	.uleb128 LVU443
	.uleb128 LVU443
	.uleb128 LVU446
	.uleb128 LVU453
	.uleb128 LVU455
	.uleb128 LVU455
	.uleb128 LVU456
	.uleb128 LVU456
	.uleb128 LVU461
	.uleb128 LVU466
	.uleb128 LVU471
	.uleb128 LVU471
	.uleb128 LVU473
	.uleb128 LVU478
	.uleb128 LVU483
	.uleb128 LVU483
	.uleb128 LVU496
	.uleb128 LVU496
	.uleb128 LVU499
	.uleb128 LVU508
	.uleb128 LVU510
	.uleb128 LVU510
	.uleb128 LVU511
	.uleb128 LVU511
	.uleb128 LVU514
	.uleb128 LVU515
	.uleb128 LVU523
	.uleb128 LVU523
	.uleb128 LVU524
	.uleb128 LVU524
	.uleb128 LVU527
	.uleb128 LVU535
	.uleb128 LVU539
	.uleb128 LVU539
	.uleb128 LVU543
	.uleb128 LVU553
	.uleb128 LVU555
	.uleb128 LVU555
	.uleb128 LVU559
	.uleb128 LVU559
	.uleb128 LVU564
	.uleb128 LVU574
	.uleb128 LVU575
	.uleb128 LVU575
	.uleb128 LVU576
	.uleb128 LVU577
	.uleb128 LVU581
	.uleb128 LVU581
	.uleb128 LVU582
	.uleb128 LVU582
	.uleb128 LVU585
	.uleb128 LVU594
	.uleb128 LVU598
	.uleb128 LVU598
	.uleb128 LVU599
	.uleb128 LVU599
	.uleb128 LVU602
	.uleb128 LVU610
	.uleb128 LVU624
LLST9:
	.long	LVL24
	.long	LVL25-1
	.word	0x1
	.byte	0x50
	.long	LVL27
	.long	LVL28
	.word	0x1
	.byte	0x50
	.long	LVL28
	.long	LVL29
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL29
	.long	LVL30
	.word	0x1
	.byte	0x50
	.long	LVL30
	.long	LVL31
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL32
	.long	LVL33
	.word	0x1
	.byte	0x50
	.long	LVL33
	.long	LVL34
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL35
	.long	LVL36
	.word	0x1
	.byte	0x50
	.long	LVL36
	.long	LVL37
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL37
	.long	LVL38
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL40
	.long	LVL41
	.word	0x1
	.byte	0x50
	.long	LVL41
	.long	LVL42
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL42
	.long	LVL43
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL45
	.long	LVL46
	.word	0x1
	.byte	0x50
	.long	LVL46
	.long	LVL47
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL47
	.long	LVL48
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL51
	.long	LVL52
	.word	0x1
	.byte	0x50
	.long	LVL52
	.long	LVL53
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL53
	.long	LVL54
	.word	0x2
	.byte	0x76
	.sleb128 -5
	.long	LVL54
	.long	LVL55
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL55
	.long	LVL56-1
	.word	0x1
	.byte	0x50
	.long	LVL57
	.long	LVL58-1
	.word	0x1
	.byte	0x50
	.long	LVL59
	.long	LVL60-1
	.word	0x1
	.byte	0x50
	.long	LVL61
	.long	LVL62
	.word	0x1
	.byte	0x50
	.long	LVL62
	.long	LVL63
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL63
	.long	LVL66
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL70
	.long	LVL71
	.word	0x1
	.byte	0x50
	.long	LVL71
	.long	LVL72
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL72
	.long	LVL75
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL77
	.long	LVL78
	.word	0x1
	.byte	0x50
	.long	LVL78
	.long	LVL79
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL79
	.long	LVL80
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL82
	.long	LVL83
	.word	0x1
	.byte	0x50
	.long	LVL83
	.long	LVL84
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL84
	.long	LVL87
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL89
	.long	LVL90
	.word	0x1
	.byte	0x50
	.long	LVL90
	.long	LVL91
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL91
	.long	LVL92
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL94
	.long	LVL95
	.word	0x1
	.byte	0x50
	.long	LVL95
	.long	LVL96
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL102
	.long	LVL103
	.word	0x1
	.byte	0x50
	.long	LVL103
	.long	LVL104
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL104
	.long	LVL107
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL114
	.long	LVL115
	.word	0x1
	.byte	0x50
	.long	LVL115
	.long	LVL116
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL116
	.long	LVL117
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL121
	.long	LVL122
	.word	0x1
	.byte	0x50
	.long	LVL122
	.long	LVL123
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL123
	.long	LVL124
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL127
	.long	LVL128
	.word	0x1
	.byte	0x50
	.long	LVL128
	.long	LVL129
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL130
	.long	LVL131
	.word	0x1
	.byte	0x50
	.long	LVL131
	.long	LVL132
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL132
	.long	LVL133
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL136
	.long	LVL137
	.word	0x1
	.byte	0x50
	.long	LVL137
	.long	LVL138
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL138
	.long	LVL139
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL141
	.long	LVL142
	.word	0x1
	.byte	0x50
	.long	LVL142
	.long	LVL143
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL143
	.long	LVL144
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL145
	.long	LVL146
	.word	0x1
	.byte	0x50
	.long	LVL146
	.long	LVL147
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL150
	.long	LVL151
	.word	0x1
	.byte	0x50
	.long	LVL151
	.long	LVL154
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL154
	.long	LVL155
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL157
	.long	LVL158
	.word	0x1
	.byte	0x50
	.long	LVL158
	.long	LVL159
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL159
	.long	LVL161
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL162
	.long	LVL165
	.word	0x1
	.byte	0x50
	.long	LVL165
	.long	LVL166
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL166
	.long	LVL167
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL169
	.long	LVL170
	.word	0x1
	.byte	0x50
	.long	LVL170
	.long	LVL172
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL174
	.long	LVL175
	.word	0x1
	.byte	0x50
	.long	LVL175
	.long	LVL177
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL177
	.long	LVL178
	.word	0x2
	.byte	0x72
	.sleb128 -5
	.long	LVL180
	.long	LVL181
	.word	0x1
	.byte	0x50
	.long	LVL181
	.long	LVL182
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL183
	.long	LVL184
	.word	0x1
	.byte	0x50
	.long	LVL184
	.long	LVL185
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL185
	.long	LVL186
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL189
	.long	LVL190
	.word	0x1
	.byte	0x50
	.long	LVL190
	.long	LVL191
	.word	0x2
	.byte	0x72
	.sleb128 0
	.long	LVL191
	.long	LVL192
	.word	0x2
	.byte	0x71
	.sleb128 -1
	.long	LVL194
	.long	LVL197
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS10:
	.uleb128 LVU148
	.uleb128 LVU152
	.uleb128 LVU164
	.uleb128 LVU168
	.uleb128 LVU210
	.uleb128 LVU233
	.uleb128 LVU233
	.uleb128 LVU237
	.uleb128 LVU249
	.uleb128 LVU264
	.uleb128 LVU277
	.uleb128 LVU280
	.uleb128 LVU292
	.uleb128 LVU300
	.uleb128 LVU305
	.uleb128 LVU319
	.uleb128 LVU326
	.uleb128 LVU330
	.uleb128 LVU330
	.uleb128 LVU331
	.uleb128 LVU331
	.uleb128 LVU332
	.uleb128 LVU347
	.uleb128 LVU370
	.uleb128 LVU392
	.uleb128 LVU396
	.uleb128 LVU416
	.uleb128 LVU420
	.uleb128 LVU435
	.uleb128 LVU437
	.uleb128 LVU456
	.uleb128 LVU466
	.uleb128 LVU491
	.uleb128 LVU508
	.uleb128 LVU512
	.uleb128 LVU515
	.uleb128 LVU531
	.uleb128 LVU535
	.uleb128 LVU557
	.uleb128 LVU574
	.uleb128 LVU589
	.uleb128 LVU592
	.uleb128 LVU606
	.uleb128 LVU610
	.uleb128 LVU621
	.uleb128 0
LLST10:
	.long	LVL39
	.long	LVL40
	.word	0x1
	.byte	0x52
	.long	LVL44
	.long	LVL45
	.word	0x1
	.byte	0x52
	.long	LVL65
	.long	LVL69
	.word	0x1
	.byte	0x55
	.long	LVL69
	.long	LVL70
	.word	0x1
	.byte	0x52
	.long	LVL74
	.long	LVL77
	.word	0x1
	.byte	0x55
	.long	LVL81
	.long	LVL82
	.word	0x1
	.byte	0x52
	.long	LVL86
	.long	LVL89
	.word	0x1
	.byte	0x55
	.long	LVL91
	.long	LVL94
	.word	0x1
	.byte	0x52
	.long	LVL98
	.long	LVL99
	.word	0x18
	.byte	0x3
	.long	_csbi
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.long	_csbi+2
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x9f
	.long	LVL99
	.long	LVL100
	.word	0x1
	.byte	0x50
	.long	LVL100
	.long	LVL101-1
	.word	0x2
	.byte	0x91
	.sleb128 -56
	.long	LVL105
	.long	LVL113-1
	.word	0x1
	.byte	0x52
	.long	LVL120
	.long	LVL121
	.word	0x1
	.byte	0x52
	.long	LVL126
	.long	LVL127
	.word	0x1
	.byte	0x52
	.long	LVL134
	.long	LVL135-1
	.word	0x1
	.byte	0x52
	.long	LVL143
	.long	LVL145
	.word	0x1
	.byte	0x52
	.long	LVL153
	.long	LVL157
	.word	0x1
	.byte	0x51
	.long	LVL160
	.long	LVL162
	.word	0x1
	.byte	0x52
	.long	LVL168
	.long	LVL169
	.word	0x1
	.byte	0x52
	.long	LVL176
	.long	LVL180
	.word	0x1
	.byte	0x55
	.long	LVL187
	.long	LVL188
	.word	0x1
	.byte	0x52
	.long	LVL193
	.long	LVL194
	.word	0x1
	.byte	0x52
	.long	LVL196
	.long	LFE86
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS23:
	.uleb128 LVU109
	.uleb128 LVU120
	.uleb128 LVU121
	.uleb128 LVU361
	.uleb128 LVU364
	.uleb128 LVU365
	.uleb128 LVU369
	.uleb128 0
LLST23:
	.long	LVL23
	.long	LVL26
	.word	0x1
	.byte	0x53
	.long	LVL27
	.long	LVL109
	.word	0x1
	.byte	0x53
	.long	LVL110
	.long	LVL111
	.word	0x1
	.byte	0x53
	.long	LVL112
	.long	LFE86
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS24:
	.uleb128 LVU341
	.uleb128 LVU347
LLST24:
	.long	LVL104
	.long	LVL105
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS25:
	.uleb128 LVU352
	.uleb128 LVU359
LLST25:
	.long	LVL106
	.long	LVL108
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS11:
	.uleb128 LVU141
	.uleb128 LVU148
LLST11:
	.long	LVL37
	.long	LVL39
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS12:
	.uleb128 LVU157
	.uleb128 LVU164
LLST12:
	.long	LVL42
	.long	LVL44
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS13:
	.uleb128 LVU173
	.uleb128 LVU180
LLST13:
	.long	LVL49
	.long	LVL50
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS14:
	.uleb128 LVU205
	.uleb128 LVU210
LLST14:
	.long	LVL64
	.long	LVL65
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS15:
	.uleb128 LVU215
	.uleb128 LVU222
LLST15:
	.long	LVL66
	.long	LVL67
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS16:
	.uleb128 LVU226
	.uleb128 LVU233
LLST16:
	.long	LVL68
	.long	LVL69
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS17:
	.uleb128 LVU244
	.uleb128 LVU249
LLST17:
	.long	LVL73
	.long	LVL74
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS18:
	.uleb128 LVU253
	.uleb128 LVU256
LLST18:
	.long	LVL75
	.long	LVL76
	.word	0x6
	.byte	0xc
	.long	0x1869f
	.byte	0x9f
	.long	0
	.long	0
LVUS19:
	.uleb128 LVU296
	.uleb128 LVU299
LLST19:
	.long	LVL87
	.long	LVL88
	.word	0x6
	.byte	0xc
	.long	0x1869f
	.byte	0x9f
	.long	0
	.long	0
LVUS20:
	.uleb128 LVU287
	.uleb128 LVU292
LLST20:
	.long	LVL85
	.long	LVL86
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS21:
	.uleb128 LVU270
	.uleb128 LVU277
LLST21:
	.long	LVL79
	.long	LVL81
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS22:
	.uleb128 LVU306
	.uleb128 LVU315
LLST22:
	.long	LVL91
	.long	LVL93
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS26:
	.uleb128 LVU377
	.uleb128 LVU383
LLST26:
	.long	LVL116
	.long	LVL118
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS27:
	.uleb128 LVU384
	.uleb128 LVU389
LLST27:
	.long	LVL118
	.long	LVL119
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS28:
	.uleb128 LVU401
	.uleb128 LVU408
LLST28:
	.long	LVL123
	.long	LVL125
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS29:
	.uleb128 LVU408
	.uleb128 LVU420
LLST29:
	.long	LVL125
	.long	LVL127
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS30:
	.uleb128 LVU428
	.uleb128 LVU435
LLST30:
	.long	LVL132
	.long	LVL134
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS31:
	.uleb128 LVU443
	.uleb128 LVU450
LLST31:
	.long	LVL138
	.long	LVL140
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS32:
	.uleb128 LVU457
	.uleb128 LVU466
LLST32:
	.long	LVL143
	.long	LVL145
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS33:
	.uleb128 LVU469
	.uleb128 LVU473
	.uleb128 LVU473
	.uleb128 LVU476
	.uleb128 LVU476
	.uleb128 LVU477
LLST33:
	.long	LVL145
	.long	LVL147
	.word	0x6
	.byte	0x3
	.long	_DSP
	.byte	0x6
	.long	LVL147
	.long	LVL148
	.word	0x2
	.byte	0x70
	.sleb128 4
	.long	LVL148
	.long	LVL149
	.word	0x8
	.byte	0x3
	.long	_DSP
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	0
	.long	0
LVUS34:
	.uleb128 LVU485
	.uleb128 LVU491
LLST34:
	.long	LVL152
	.long	LVL153
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LVUS35:
	.uleb128 LVU496
	.uleb128 LVU503
LLST35:
	.long	LVL154
	.long	LVL156
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS36:
	.uleb128 LVU516
	.uleb128 LVU518
LLST36:
	.long	LVL163
	.long	LVL164
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS37:
	.uleb128 LVU524
	.uleb128 LVU531
LLST37:
	.long	LVL166
	.long	LVL168
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS38:
	.uleb128 LVU540
	.uleb128 LVU547
LLST38:
	.long	LVL171
	.long	LVL173
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS39:
	.uleb128 LVU560
	.uleb128 LVU569
LLST39:
	.long	LVL177
	.long	LVL179
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS40:
	.uleb128 LVU582
	.uleb128 LVU589
LLST40:
	.long	LVL185
	.long	LVL187
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS41:
	.uleb128 LVU599
	.uleb128 LVU606
LLST41:
	.long	LVL191
	.long	LVL193
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS42:
	.uleb128 LVU615
	.uleb128 LVU621
LLST42:
	.long	LVL195
	.long	LVL196
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS0:
	.uleb128 0
	.uleb128 LVU7
	.uleb128 LVU7
	.uleb128 0
LLST0:
	.long	LVL0
	.long	LVL1
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL1
	.long	LFE79
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LVUS1:
	.uleb128 0
	.uleb128 LVU7
	.uleb128 LVU7
	.uleb128 0
LLST1:
	.long	LVL0
	.long	LVL1
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	LVL1
	.long	LFE79
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS2:
	.uleb128 LVU19
	.uleb128 0
LLST2:
	.long	LVL5
	.long	LFE80
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS3:
	.uleb128 LVU35
	.uleb128 0
LLST3:
	.long	LVL7
	.long	LFE82
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS4:
	.uleb128 0
	.uleb128 LVU48
	.uleb128 LVU48
	.uleb128 LVU53
	.uleb128 LVU76
	.uleb128 0
LLST4:
	.long	LVL8
	.long	LVL9
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL9
	.long	LVL11
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	LVL18
	.long	LFE83
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS5:
	.uleb128 LVU51
	.uleb128 LVU54
	.uleb128 LVU54
	.uleb128 LVU68
	.uleb128 LVU68
	.uleb128 LVU70
	.uleb128 LVU70
	.uleb128 LVU72
	.uleb128 LVU79
	.uleb128 0
LLST5:
	.long	LVL10
	.long	LVL12
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL12
	.long	LVL15
	.word	0x1
	.byte	0x57
	.long	LVL15
	.long	LVL16
	.word	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	LVL16
	.long	LVL17
	.word	0x1
	.byte	0x57
	.long	LVL19
	.long	LFE83
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LVUS6:
	.uleb128 LVU59
	.uleb128 LVU65
LLST6:
	.long	LVL13
	.long	LVL14
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS7:
	.uleb128 LVU94
	.uleb128 0
LLST7:
	.long	LVL21
	.long	LFE85
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS43:
	.uleb128 LVU637
	.uleb128 LVU640
	.uleb128 LVU640
	.uleb128 LVU663
LLST43:
	.long	LVL199
	.long	LVL200-1
	.word	0x1
	.byte	0x50
	.long	LVL200-1
	.long	LVL204
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS44:
	.uleb128 LVU651
	.uleb128 LVU664
LLST44:
	.long	LVL201
	.long	LVL205
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS45:
	.uleb128 LVU651
	.uleb128 0
LLST45:
	.long	LVL201
	.long	LFE87
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS46:
	.uleb128 LVU670
	.uleb128 LVU674
	.uleb128 LVU674
	.uleb128 LVU676
	.uleb128 LVU676
	.uleb128 LVU687
	.uleb128 LVU689
	.uleb128 LVU692
LLST46:
	.long	LVL207
	.long	LVL208
	.word	0x1
	.byte	0x53
	.long	LVL208
	.long	LVL209
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	LVL209
	.long	LVL213
	.word	0x1
	.byte	0x53
	.long	LVL215
	.long	LVL216
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS47:
	.uleb128 LVU673
	.uleb128 LVU677
	.uleb128 LVU681
	.uleb128 LVU688
	.uleb128 LVU688
	.uleb128 LVU689
LLST47:
	.long	LVL208
	.long	LVL210
	.word	0x1
	.byte	0x55
	.long	LVL211
	.long	LVL214
	.word	0x1
	.byte	0x55
	.long	LVL214
	.long	LVL215
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS50:
	.uleb128 0
	.uleb128 LVU718
	.uleb128 LVU718
	.uleb128 0
LLST50:
	.long	LVL222
	.long	LVL224
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL224
	.long	LFE90
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS51:
	.uleb128 LVU714
	.uleb128 LVU723
	.uleb128 LVU723
	.uleb128 0
LLST51:
	.long	LVL223
	.long	LVL226
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	LVL226
	.long	LFE90
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LVUS62:
	.uleb128 0
	.uleb128 LVU843
	.uleb128 LVU843
	.uleb128 LVU850
	.uleb128 LVU850
	.uleb128 LVU851
	.uleb128 LVU851
	.uleb128 LVU874
	.uleb128 LVU874
	.uleb128 LVU875
	.uleb128 LVU875
	.uleb128 LVU897
	.uleb128 LVU897
	.uleb128 LVU898
	.uleb128 LVU898
	.uleb128 0
LLST62:
	.long	LVL260
	.long	LVL261-1
	.word	0x1
	.byte	0x50
	.long	LVL261-1
	.long	LVL263
	.word	0x1
	.byte	0x57
	.long	LVL263
	.long	LVL264
	.word	0x1
	.byte	0x50
	.long	LVL264
	.long	LVL269
	.word	0x1
	.byte	0x57
	.long	LVL269
	.long	LVL270
	.word	0x1
	.byte	0x50
	.long	LVL270
	.long	LVL275
	.word	0x1
	.byte	0x57
	.long	LVL275
	.long	LVL276
	.word	0x1
	.byte	0x50
	.long	LVL276
	.long	LFE98
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS63:
	.uleb128 0
	.uleb128 LVU843
	.uleb128 LVU843
	.uleb128 LVU849
	.uleb128 LVU849
	.uleb128 LVU851
	.uleb128 LVU851
	.uleb128 LVU873
	.uleb128 LVU873
	.uleb128 LVU875
	.uleb128 LVU875
	.uleb128 LVU896
	.uleb128 LVU896
	.uleb128 LVU898
	.uleb128 LVU898
	.uleb128 0
LLST63:
	.long	LVL260
	.long	LVL261-1
	.word	0x1
	.byte	0x52
	.long	LVL261-1
	.long	LVL262
	.word	0x1
	.byte	0x53
	.long	LVL262
	.long	LVL264
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	LVL264
	.long	LVL268
	.word	0x1
	.byte	0x53
	.long	LVL268
	.long	LVL270
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	LVL270
	.long	LVL274
	.word	0x1
	.byte	0x53
	.long	LVL274
	.long	LVL276
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	LVL276
	.long	LFE98
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS64:
	.uleb128 LVU980
	.uleb128 LVU987
	.uleb128 LVU987
	.uleb128 LVU989
	.uleb128 LVU1019
	.uleb128 LVU1021
	.uleb128 LVU1021
	.uleb128 LVU1022
LLST64:
	.long	LVL300
	.long	LVL301
	.word	0x1
	.byte	0x52
	.long	LVL301
	.long	LVL302
	.word	0x2
	.byte	0x91
	.sleb128 -36
	.long	LVL309
	.long	LVL310-1
	.word	0x1
	.byte	0x52
	.long	LVL310-1
	.long	LVL311
	.word	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
LVUS65:
	.uleb128 LVU858
	.uleb128 LVU866
LLST65:
	.long	LVL266
	.long	LVL267
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS66:
	.uleb128 LVU883
	.uleb128 LVU889
LLST66:
	.long	LVL272
	.long	LVL273
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS67:
	.uleb128 LVU904
	.uleb128 LVU912
LLST67:
	.long	LVL278
	.long	LVL279
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS68:
	.uleb128 LVU926
	.uleb128 LVU932
LLST68:
	.long	LVL281
	.long	LVL282
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LVUS69:
	.uleb128 LVU938
	.uleb128 LVU945
	.uleb128 LVU945
	.uleb128 LVU960
	.uleb128 LVU1010
	.uleb128 LVU1012
LLST69:
	.long	LVL284
	.long	LVL287
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL287
	.long	LVL293
	.word	0x1
	.byte	0x55
	.long	LVL306
	.long	LVL307
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS70:
	.uleb128 LVU940
	.uleb128 LVU943
	.uleb128 LVU943
	.uleb128 LVU945
	.uleb128 LVU951
	.uleb128 LVU952
	.uleb128 LVU952
	.uleb128 LVU954
	.uleb128 LVU954
	.uleb128 LVU956
	.uleb128 LVU956
	.uleb128 LVU960
	.uleb128 LVU1010
	.uleb128 LVU1019
LLST70:
	.long	LVL285
	.long	LVL286
	.word	0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	LVL286
	.long	LVL287
	.word	0x8
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL289
	.long	LVL290
	.word	0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	LVL290
	.long	LVL291
	.word	0x8
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL291
	.long	LVL292-1
	.word	0x9
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL292-1
	.long	LVL293
	.word	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL306
	.long	LVL309
	.word	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	0
	.long	0
LVUS71:
	.uleb128 LVU962
	.uleb128 LVU980
LLST71:
	.long	LVL293
	.long	LVL300
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS72:
	.uleb128 LVU966
	.uleb128 LVU969
	.uleb128 LVU969
	.uleb128 LVU971
	.uleb128 LVU971
	.uleb128 LVU980
LLST72:
	.long	LVL294
	.long	LVL295
	.word	0x1
	.byte	0x55
	.long	LVL295
	.long	LVL296
	.word	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.long	LVL296
	.long	LVL300
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS73:
	.uleb128 LVU968
	.uleb128 LVU972
	.uleb128 LVU976
	.uleb128 LVU979
	.uleb128 LVU979
	.uleb128 LVU980
LLST73:
	.long	LVL295
	.long	LVL297
	.word	0x2
	.byte	0x91
	.sleb128 -36
	.long	LVL298
	.long	LVL299-1
	.word	0x1
	.byte	0x52
	.long	LVL299-1
	.long	LVL300
	.word	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
LVUS74:
	.uleb128 LVU998
	.uleb128 LVU1006
LLST74:
	.long	LVL304
	.long	LVL305
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS75:
	.uleb128 0
	.uleb128 LVU1050
	.uleb128 LVU1050
	.uleb128 LVU1054
	.uleb128 LVU1054
	.uleb128 LVU1055
	.uleb128 LVU1055
	.uleb128 LVU1061
	.uleb128 LVU1061
	.uleb128 LVU1100
	.uleb128 LVU1100
	.uleb128 0
LLST75:
	.long	LVL313
	.long	LVL320
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL320
	.long	LVL321
	.word	0x1
	.byte	0x53
	.long	LVL321
	.long	LVL322
	.word	0x1
	.byte	0x50
	.long	LVL322
	.long	LVL325
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL325
	.long	LVL333
	.word	0x1
	.byte	0x53
	.long	LVL333
	.long	LFE92
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS76:
	.uleb128 LVU1034
	.uleb128 LVU1050
	.uleb128 LVU1059
	.uleb128 LVU1061
LLST76:
	.long	LVL315
	.long	LVL320
	.word	0x1
	.byte	0x53
	.long	LVL323
	.long	LVL325
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS77:
	.uleb128 LVU1040
	.uleb128 LVU1050
	.uleb128 LVU1059
	.uleb128 LVU1060
	.uleb128 LVU1060
	.uleb128 LVU1061
LLST77:
	.long	LVL317
	.long	LVL320
	.word	0x1
	.byte	0x52
	.long	LVL323
	.long	LVL324
	.word	0x1
	.byte	0x57
	.long	LVL324
	.long	LVL325
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS78:
	.uleb128 LVU1063
	.uleb128 LVU1089
	.uleb128 LVU1089
	.uleb128 LVU1096
LLST78:
	.long	LVL325
	.long	LVL329
	.word	0x1
	.byte	0x57
	.long	LVL329
	.long	LVL332
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
LVUS79:
	.uleb128 LVU1072
	.uleb128 LVU1075
	.uleb128 LVU1075
	.uleb128 LVU1096
LLST79:
	.long	LVL326
	.long	LVL327-1
	.word	0x1
	.byte	0x50
	.long	LVL327-1
	.long	LVL332
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
LVUS80:
	.uleb128 LVU1086
	.uleb128 LVU1096
LLST80:
	.long	LVL328
	.long	LVL332
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS81:
	.uleb128 LVU1086
	.uleb128 LVU1096
LLST81:
	.long	LVL328
	.long	LVL332
	.word	0x2
	.byte	0x4e
	.byte	0x9f
	.long	0
	.long	0
LVUS82:
	.uleb128 LVU1086
	.uleb128 LVU1096
LLST82:
	.long	LVL328
	.long	LVL332
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS119:
	.uleb128 LVU1439
	.uleb128 LVU1442
	.uleb128 LVU1442
	.uleb128 LVU1444
	.uleb128 LVU1444
	.uleb128 LVU1447
	.uleb128 LVU1447
	.uleb128 LVU1453
LLST119:
	.long	LVL430
	.long	LVL431
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL431
	.long	LVL432
	.word	0x1
	.byte	0x53
	.long	LVL432
	.long	LVL433
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	LVL433
	.long	LVL436
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS120:
	.uleb128 LVU1440
	.uleb128 LVU1445
	.uleb128 LVU1450
	.uleb128 LVU1451
	.uleb128 LVU1451
	.uleb128 LVU1453
LLST120:
	.long	LVL430
	.long	LVL433-1
	.word	0x8
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL434
	.long	LVL435
	.word	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	LVL435
	.long	LVL436
	.word	0x8
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	0
	.long	0
LVUS121:
	.uleb128 LVU1456
	.uleb128 LVU1461
LLST121:
	.long	LVL437
	.long	LVL439
	.word	0x6
	.byte	0x3
	.long	LC26
	.byte	0x9f
	.long	0
	.long	0
LVUS122:
	.uleb128 LVU1456
	.uleb128 LVU1461
LLST122:
	.long	LVL437
	.long	LVL439
	.word	0x6
	.byte	0x3
	.long	LC27
	.byte	0x9f
	.long	0
	.long	0
LVUS123:
	.uleb128 LVU1456
	.uleb128 LVU1461
LLST123:
	.long	LVL437
	.long	LVL439
	.word	0x6
	.byte	0x3
	.long	_input_fp
	.byte	0x9f
	.long	0
	.long	0
LVUS124:
	.uleb128 LVU1459
	.uleb128 LVU1461
LLST124:
	.long	LVL438
	.long	LVL439
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS125:
	.uleb128 LVU1491
	.uleb128 LVU1492
	.uleb128 LVU1492
	.uleb128 LVU1498
LLST125:
	.long	LVL449
	.long	LVL450
	.word	0x1
	.byte	0x50
	.long	LVL450
	.long	LVL453
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS126:
	.uleb128 LVU1480
	.uleb128 LVU1486
LLST126:
	.long	LVL445
	.long	LVL447
	.word	0x6
	.byte	0x3
	.long	LC30
	.byte	0x9f
	.long	0
	.long	0
LVUS127:
	.uleb128 LVU1480
	.uleb128 LVU1486
LLST127:
	.long	LVL445
	.long	LVL447
	.word	0x6
	.byte	0x3
	.long	LC31
	.byte	0x9f
	.long	0
	.long	0
LVUS128:
	.uleb128 LVU1480
	.uleb128 LVU1486
LLST128:
	.long	LVL445
	.long	LVL447
	.word	0x6
	.byte	0x3
	.long	_output_fp
	.byte	0x9f
	.long	0
	.long	0
LVUS129:
	.uleb128 LVU1484
	.uleb128 LVU1486
LLST129:
	.long	LVL446
	.long	LVL447
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"dr"
	.long	0x24
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	LFB97
	.long	LFE97-LFB97
	.long	0
	.long	0
	.section	.debug_ranges,"dr"
Ldebug_ranges0:
	.long	LBB135
	.long	LBE135
	.long	LBB138
	.long	LBE138
	.long	LBB139
	.long	LBE139
	.long	0
	.long	0
	.long	LBB146
	.long	LBE146
	.long	LBB153
	.long	LBE153
	.long	LBB160
	.long	LBE160
	.long	0
	.long	0
	.long	LBB150
	.long	LBE150
	.long	LBB154
	.long	LBE154
	.long	0
	.long	0
	.long	LBB155
	.long	LBE155
	.long	LBB159
	.long	LBE159
	.long	LBB161
	.long	LBE161
	.long	0
	.long	0
	.long	LBB166
	.long	LBE166
	.long	LBB173
	.long	LBE173
	.long	LBB177
	.long	LBE177
	.long	0
	.long	0
	.long	LBB170
	.long	LBE170
	.long	LBB176
	.long	LBE176
	.long	0
	.long	0
	.long	LBB178
	.long	LBE178
	.long	LBB181
	.long	LBE181
	.long	0
	.long	0
	.long	LBB214
	.long	LBE214
	.long	LBB217
	.long	LBE217
	.long	0
	.long	0
	.long	LBB226
	.long	LBE226
	.long	LBB229
	.long	LBE229
	.long	0
	.long	0
	.long	LBB232
	.long	LBE232
	.long	LBB234
	.long	LBE234
	.long	LBB235
	.long	LBE235
	.long	0
	.long	0
	.long	LBB236
	.long	LBE236
	.long	LBB238
	.long	LBE238
	.long	0
	.long	0
	.long	LBB239
	.long	LBE239
	.long	LBB242
	.long	LBE242
	.long	0
	.long	0
	.long	LBB243
	.long	LBE243
	.long	LBB244
	.long	LBE244
	.long	0
	.long	0
	.long	LBB267
	.long	LBE267
	.long	LBB270
	.long	LBE270
	.long	0
	.long	0
	.long	LBB273
	.long	LBE273
	.long	LBB276
	.long	LBE276
	.long	0
	.long	0
	.long	LBB277
	.long	LBE277
	.long	LBB280
	.long	LBE280
	.long	0
	.long	0
	.long	LBB281
	.long	LBE281
	.long	LBB294
	.long	LBE294
	.long	0
	.long	0
	.long	LBB282
	.long	LBE282
	.long	LBB283
	.long	LBE283
	.long	LBB284
	.long	LBE284
	.long	LBB285
	.long	LBE285
	.long	0
	.long	0
	.long	LBB286
	.long	LBE286
	.long	LBB289
	.long	LBE289
	.long	0
	.long	0
	.long	LBB290
	.long	LBE290
	.long	LBB293
	.long	LBE293
	.long	0
	.long	0
	.long	LBB303
	.long	LBE303
	.long	LBB306
	.long	LBE306
	.long	0
	.long	0
	.long	LBB309
	.long	LBE309
	.long	LBB312
	.long	LBE312
	.long	0
	.long	0
	.long	LBB325
	.long	LBE325
	.long	LBB349
	.long	LBE349
	.long	LBB352
	.long	LBE352
	.long	LBB356
	.long	LBE356
	.long	0
	.long	0
	.long	LBB330
	.long	LBE330
	.long	LBB350
	.long	LBE350
	.long	LBB353
	.long	LBE353
	.long	LBB355
	.long	LBE355
	.long	0
	.long	0
	.long	LBB332
	.long	LBE332
	.long	LBB341
	.long	LBE341
	.long	0
	.long	0
	.long	LBB337
	.long	LBE337
	.long	LBB340
	.long	LBE340
	.long	0
	.long	0
	.long	LBB345
	.long	LBE345
	.long	LBB351
	.long	LBE351
	.long	LBB354
	.long	LBE354
	.long	0
	.long	0
	.long	LBB381
	.long	LBE381
	.long	LBB385
	.long	LBE385
	.long	LBB386
	.long	LBE386
	.long	0
	.long	0
	.long	LBB387
	.long	LBE387
	.long	LBB394
	.long	LBE394
	.long	0
	.long	0
	.long	LBB388
	.long	LBE388
	.long	LBB392
	.long	LBE392
	.long	LBB393
	.long	LBE393
	.long	0
	.long	0
	.long	LBB395
	.long	LBE395
	.long	LBB402
	.long	LBE402
	.long	LBB415
	.long	LBE415
	.long	0
	.long	0
	.long	LBB403
	.long	LBE403
	.long	LBB406
	.long	LBE406
	.long	0
	.long	0
	.long	LBB407
	.long	LBE407
	.long	LBB410
	.long	LBE410
	.long	0
	.long	0
	.long	LBB411
	.long	LBE411
	.long	LBB414
	.long	LBE414
	.long	0
	.long	0
	.long	LBB426
	.long	LBE426
	.long	LBB432
	.long	LBE432
	.long	LBB433
	.long	LBE433
	.long	0
	.long	0
	.long	LBB427
	.long	LBE427
	.long	LBB428
	.long	LBE428
	.long	LBB429
	.long	LBE429
	.long	LBB430
	.long	LBE430
	.long	LBB431
	.long	LBE431
	.long	0
	.long	0
	.long	LBB444
	.long	LBE444
	.long	LBB447
	.long	LBE447
	.long	0
	.long	0
	.long	Ltext0
	.long	Letext0
	.long	LFB97
	.long	LFE97
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF0:
	.ascii "word\0"
LASF1:
	.ascii "_stricmp\0"
	.ident	"GCC: (MinGW.org GCC Build-20200227-1) 9.2.0"
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_GetConsoleScreenBufferInfo@8;	.scl	2;	.type	32;	.endef
	.def	_FillConsoleOutputCharacterA@20;	.scl	2;	.type	32;	.endef
	.def	_SetConsoleCursorPosition@8;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__stricmp;	.scl	2;	.type	32;	.endef
	.def	_tolower;	.scl	2;	.type	32;	.endef
	.def	_strchr;	.scl	2;	.type	32;	.endef
	.def	_GetTickCount@0;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_GetStdHandle@4;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
