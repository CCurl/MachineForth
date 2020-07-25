	.file	"mf.c"
 # GNU C11 (MinGW.org GCC-6.3.0-1) version 6.3.0 (mingw32)
 #	compiled by GNU C version 6.3.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -iprefix c:\mingw\bin\../lib/gcc/mingw32/6.3.0/ mf.c
 # -mtune=generic -march=i586 -g -Ofast -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations -falign-labels
 # -fassociative-math -fasynchronous-unwind-tables -fauto-inc-dec
 # -fbranch-count-reg -fcaller-saves -fchkp-check-incomplete-type
 # -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 # -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 # -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 # -fchkp-use-wrappers -fcombine-stack-adjustments -fcommon -fcompare-elim
 # -fcprop-registers -fcrossjumping -fcse-follow-jumps -fcx-limited-range
 # -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize
 # -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
 # -feliminate-unused-debug-types -fexpensive-optimizations
 # -ffinite-math-only -fforward-propagate -ffunction-cse -fgcse
 # -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
 # -fguess-branch-probability -fhoist-adjacent-loads -fident
 # -fif-conversion -fif-conversion2 -findirect-inlining -finline
 # -finline-atomics -finline-functions -finline-functions-called-once
 # -finline-small-functions -fipa-cp -fipa-cp-alignment -fipa-cp-clone
 # -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
 # -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fira-hoist-pressure
 # -fira-share-save-slots -fira-share-spill-slots
 # -fisolate-erroneous-paths-dereference -fivopts -fkeep-inline-dllexport
 # -fkeep-static-consts -fleading-underscore -flifetime-dse -flra-remat
 # -flto-odr-type-merging -fmerge-constants -fmerge-debug-strings
 # -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
 # -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
 # -fpredictive-commoning -fprefetch-loop-arrays -freciprocal-math -free
 # -freg-struct-return -freorder-blocks -freorder-functions
 # -frerun-cse-after-loop -fsched-critical-path-heuristic
 # -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 # -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 # -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
 # -fschedule-insns2 -fsemantic-interposition -fset-stack-executable
 # -fshow-column -fshrink-wrap -fsplit-ivs-in-unroller -fsplit-paths
 # -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
 # -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
 # -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftree-bit-ccp
 # -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
 # -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
 # -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
 # -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 # -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
 # -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
 # -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr
 # -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
 # -ftree-vrp -funit-at-a-time -funsafe-math-optimizations -funswitch-loops
 # -funwind-tables -fvar-tracking -fvar-tracking-assignments -fverbose-asm
 # -fzero-initialized-in-bss -m32 -m80387 -m96bit-long-double
 # -maccumulate-outgoing-args -malign-double -malign-stringops
 # -mavx256-split-unaligned-load -mavx256-split-unaligned-store
 # -mfancy-math-387 -mfp-ret-in-387 -mlong-double-80 -mms-bitfields
 # -mno-red-zone -mno-sse4 -mpush-args -msahf -mstack-arg-probe -mstv
 # -mvzeroupper

	.text
Ltext0:
	.p2align 4,,15
	.globl	_strcpy_s
	.def	_strcpy_s;	.scl	2;	.type	32;	.endef
_strcpy_s:
LFB70:
	.file 1 "mf.c"
	.loc 1 99 0
	.cfi_startproc
LVL0:
	.loc 1 99 0
	movl	12(%esp), %edx	 # src, src
	movl	4(%esp), %ecx	 # dst, dst
	.loc 1 100 0
	movzbl	(%edx), %eax	 #* src, _14
	testb	%al, %al	 # _14
	je	L1	 #,
LVL1:
	.p2align 4,,10
L5:
	.loc 1 102 0
	addl	$1, %ecx	 #, dst
LVL2:
	addl	$1, %edx	 #, src
LVL3:
	movb	%al, -1(%ecx)	 # _14, MEM[base: dst_8, offset: 4294967295B]
	.loc 1 100 0
	movzbl	(%edx), %eax	 #* src, _14
	testb	%al, %al	 # _14
	jne	L5	 #,
L1:
	rep ret
	.cfi_endproc
LFE70:
	.p2align 4,,15
	.globl	_fopen_s
	.def	_fopen_s;	.scl	2;	.type	32;	.endef
_fopen_s:
LFB71:
	.loc 1 107 0
	.cfi_startproc
LVL4:
	subl	$28, %esp	 #,
	.cfi_def_cfa_offset 32
	.loc 1 108 0
	movl	40(%esp), %eax	 # mode, mode
	movl	%eax, 4(%esp)	 # mode,
	movl	36(%esp), %eax	 # nm, nm
	movl	%eax, (%esp)	 # nm,
	call	_fopen	 #
LVL5:
	.loc 1 109 0
	movl	32(%esp), %edx	 # pfp, pfp
	movl	%eax, (%edx)	 # fp, *pfp_6(D)
	.loc 1 110 0
	addl	$28, %esp	 #,
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE71:
	.p2align 4,,15
	.globl	_push
	.def	_push;	.scl	2;	.type	32;	.endef
_push:
LFB72:
	.loc 1 117 0
	.cfi_startproc
LVL6:
	.loc 1 118 0
	movl	_DSP, %eax	 # DSP, tmp92
	addl	$4, %eax	 #, _4
	cmpl	_DSE, %eax	 # DSE, _4
	movl	%eax, _DSP	 # _4, DSP
	jbe	L11	 #,
	.loc 1 119 0
	movl	_DSS, %eax	 # DSS, _4
	movl	%eax, _DSP	 # _4, DSP
L11:
	.loc 1 120 0
	movl	4(%esp), %edx	 # v, v
	movl	%edx, (%eax)	 # v, *prephitmp_12
	ret
	.cfi_endproc
LFE72:
	.p2align 4,,15
	.globl	_pop
	.def	_pop;	.scl	2;	.type	32;	.endef
_pop:
LFB73:
	.loc 1 125 0
	.cfi_startproc
	.loc 1 126 0
	movl	_DSP, %edx	 # DSP, DSP.5_3
	movl	(%edx), %eax	 # *DSP.5_3, <retval>
LVL7:
	.loc 1 127 0
	subl	$4, %edx	 #, _5
	cmpl	_DSS, %edx	 # DSS, _5
	movl	%edx, _DSP	 # _5, DSP
	jnb	L12	 #,
	.loc 1 128 0
	movl	_DSE, %edx	 # DSE, DSE
	movl	%edx, _DSP	 # DSE, DSP
L12:
	.loc 1 130 0
	rep ret
	.cfi_endproc
LFE73:
	.section .rdata,"dr"
LC0:
	.ascii "( \0"
LC1:
	.ascii "%d \0"
	.text
	.p2align 4,,15
	.globl	_dumpStack
	.def	_dumpStack;	.scl	2;	.type	32;	.endef
_dumpStack:
LFB74:
	.loc 1 134 0
	.cfi_startproc
LVL8:
	pushl	%edi	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp	 #,
	.cfi_def_cfa_offset 32
	.loc 1 134 0
	movl	32(%esp), %ebx	 # num, num
	.loc 1 136 0
	movl	$LC0, (%esp)	 #,
	.loc 1 135 0
	testl	%ebx, %ebx	 # num
	je	L15	 #,
LVL9:
	.loc 1 136 0 discriminator 4
	call	_printf	 #
LVL10:
LBB131:
	.loc 1 137 0 discriminator 4
	testl	%ebx, %ebx	 # num
	jle	L19	 #,
LVL11:
L16:
LBE131:
	.loc 1 135 0
	xorl	%edi, %edi	 # i
LVL12:
	.p2align 4,,10
L18:
LBB134:
LBB132:
LBB133:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_10
	movl	(%eax), %edx	 # *DSP.5_10, v
LVL13:
	.loc 1 127 0
	subl	$4, %eax	 #, _12
	cmpl	_DSS, %eax	 # DSS, _12
	movl	%eax, _DSP	 # _12, DSP
	jnb	L17	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L17:
LVL14:
LBE133:
LBE132:
	.loc 1 138 0
	movl	%edx, 4(%esp)	 # v,
	movl	$LC1, (%esp)	 #,
	.loc 1 137 0
	addl	$1, %edi	 #, i
LVL15:
	.loc 1 138 0
	call	_printf	 #
LVL16:
	.loc 1 137 0
	cmpl	%ebx, %edi	 # num, i
	jl	L18	 #,
LVL17:
L19:
LBE134:
	.loc 1 139 0
	movl	$41, 32(%esp)	 #,
	.loc 1 140 0
	addl	$20, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	.loc 1 139 0
	jmp	_putchar	 #
LVL18:
	.p2align 4,,10
L15:
	.cfi_restore_state
	.loc 1 136 0
	call	_printf	 #
LVL19:
	.loc 1 135 0
	movl	$64, %ebx	 #, num
	jmp	L16	 #
	.cfi_endproc
LFE74:
	.p2align 4,,15
	.globl	_rpush
	.def	_rpush;	.scl	2;	.type	32;	.endef
_rpush:
LFB75:
	.loc 1 146 0
	.cfi_startproc
LVL20:
	.loc 1 147 0
	movl	_RSP, %eax	 # RSP, tmp92
	addl	$4, %eax	 #, _4
	cmpl	_RSE, %eax	 # RSE, _4
	movl	%eax, _RSP	 # _4, RSP
	jbe	L23	 #,
	.loc 1 148 0
	movl	_RSS, %eax	 # RSS, _4
	movl	%eax, _RSP	 # _4, RSP
L23:
	.loc 1 149 0
	movl	4(%esp), %edx	 # v, v
	movl	%edx, (%eax)	 # v, *prephitmp_12
	ret
	.cfi_endproc
LFE75:
	.p2align 4,,15
	.globl	_rpop
	.def	_rpop;	.scl	2;	.type	32;	.endef
_rpop:
LFB76:
	.loc 1 154 0
	.cfi_startproc
	.loc 1 155 0
	movl	_RSP, %edx	 # RSP, RSP.12_3
	movl	(%edx), %eax	 # *RSP.12_3, <retval>
LVL21:
	.loc 1 156 0
	subl	$4, %edx	 #, _5
	cmpl	_RSS, %edx	 # RSS, _5
	movl	%edx, _RSP	 # _5, RSP
	jnb	L24	 #,
	.loc 1 157 0
	movl	_RSE, %edx	 # RSE, RSE
	movl	%edx, _RSP	 # RSE, RSP
L24:
	.loc 1 159 0
	rep ret
	.cfi_endproc
LFE76:
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
	.p2align 4,,15
	.globl	_run_program
	.def	_run_program;	.scl	2;	.type	32;	.endef
_run_program:
LFB77:
	.loc 1 210 0
	.cfi_startproc
LVL22:
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
	.loc 1 215 0
	movl	$1, _call_depth	 #, call_depth
	.loc 1 214 0
	movl	64(%esp), %esi	 # start, PC
LVL23:
	.p2align 4,,10
L27:
	movl	%esi, %ecx	 # PC, PC_lsm0.138
L28:
	leal	1(%ecx), %edx	 #, PC_lsm0.138
	.loc 1 220 0
	movzbl	-1(%edx), %eax	 # MEM[base: 0B, index: _60, offset: 4294967295B],
LVL24:
	movl	%edx, %esi	 # PC_lsm0.138, PC
	.loc 1 221 0
	cmpb	$36, %al	 #, IR
	ja	L29	 #,
	jmp	*L30(,%eax,4)	 #
	.section .rdata,"dr"
	.align 4
L30:
	.long	L108
	.long	L31
	.long	L32
	.long	L33
	.long	L34
	.long	L35
	.long	L36
	.long	L37
	.long	L38
	.long	L39
	.long	L113
	.long	L41
	.long	L42
	.long	L43
	.long	L44
	.long	L45
	.long	L46
	.long	L47
	.long	L48
	.long	L49
	.long	L50
	.long	L51
	.long	L52
	.long	L53
	.long	L54
	.long	L55
	.long	L56
	.long	L57
	.long	L58
	.long	L59
	.long	L60
	.long	L61
	.long	L62
	.long	L63
	.long	L64
	.long	L65
	.long	L26
	.text
	.p2align 4,,10
L29:
	.loc 1 417 0
	movl	%ecx, 8(%esp)	 # PC_lsm0.138,
	.loc 1 221 0
	movl	%eax, 4(%esp)	 # IR,
	.loc 1 417 0
	movl	$LC6, (%esp)	 #,
	call	_printf	 #
LVL25:
L26:
	.loc 1 421 0
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL26:
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL27:
	.p2align 4,,10
L55:
	.cfi_restore_state
	.loc 1 349 0
	movl	_DSP, %eax	 # DSP, DSP
LVL28:
	.loc 1 352 0
	leal	5(%ecx), %esi	 #, PC
	.loc 1 349 0
	movl	(%eax), %eax	 # *DSP.19_14,
	testl	%eax, %eax	 #
	jne	L27	 #,
L113:
	.loc 1 350 0
	movl	(%edx), %esi	 #* PC_lsm0.138, PC
	jmp	L27	 #
LVL29:
	.p2align 4,,10
L108:
	.loc 1 221 0
	movl	%edx, %ecx	 # PC_lsm0.138, PC_lsm0.138
	jmp	L28	 #
	.p2align 4,,10
L65:
	.loc 1 410 0
	movl	_DSP, %eax	 # DSP, DSP.19_32
LVL30:
	shrl	(%eax)	 # *DSP.19_32
LVL31:
	.loc 1 411 0
	jmp	L27	 #
LVL32:
	.p2align 4,,10
L64:
	.loc 1 406 0
	movl	_DSP, %eax	 # DSP, DSP.19_37
LVL33:
	sall	(%eax)	 # *DSP.19_37
LVL34:
	.loc 1 407 0
	jmp	L27	 #
LVL35:
	.p2align 4,,10
L63:
LBB135:
LBB136:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_300
LVL36:
	movl	(%eax), %edx	 # *DSP.5_300, v
LVL37:
	.loc 1 127 0
	subl	$4, %eax	 #, _302
	cmpl	_DSS, %eax	 # DSS, _302
	movl	%eax, _DSP	 # _302, DSP
LVL38:
	jnb	L107	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, _302
	movl	%eax, _DSP	 # _302, DSP
L107:
LVL39:
LBE136:
LBE135:
	.loc 1 402 0
	xorl	%edx, (%eax)	 # v, *prephitmp_432
	.loc 1 403 0
	jmp	L27	 #
LVL40:
	.p2align 4,,10
L62:
LBB137:
LBB138:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_295
LVL41:
	movl	(%eax), %edx	 # *DSP.5_295, v
LVL42:
	.loc 1 127 0
	subl	$4, %eax	 #, _297
	cmpl	_DSS, %eax	 # DSS, _297
	movl	%eax, _DSP	 # _297, DSP
LVL43:
	jnb	L106	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, _297
	movl	%eax, _DSP	 # _297, DSP
L106:
LVL44:
LBE138:
LBE137:
	.loc 1 397 0
	andl	%edx, (%eax)	 # v, *prephitmp_422
	.loc 1 398 0
	jmp	L27	 #
LVL45:
	.p2align 4,,10
L46:
LBB139:
LBB140:
	.loc 1 126 0
	movl	_DSP, %ecx	 # DSP, DSP.5_220
	movl	(%ecx), %edi	 # *DSP.5_220, v
LVL46:
	.loc 1 127 0
	subl	$4, %ecx	 #, _222
	cmpl	_DSS, %ecx	 # DSS, _222
	movl	%ecx, _DSP	 # _222, DSP
	jnb	L80	 #,
	.loc 1 128 0
	movl	_DSE, %ecx	 # DSE, _222
	movl	%ecx, _DSP	 # _222, DSP
L80:
LVL47:
LBE140:
LBE139:
	.loc 1 302 0
	movl	(%ecx), %eax	 # *prephitmp_465, *prephitmp_465
LVL48:
	xorl	%edx, %edx	 # tmp307
	divl	%edi	 # v
	movl	%eax, (%ecx)	 # tmp306, *prephitmp_465
	.loc 1 303 0
	jmp	L27	 #
LVL49:
	.p2align 4,,10
L54:
	.loc 1 342 0
	movl	_DSP, %eax	 # DSP, DSP
LVL50:
	.loc 1 345 0
	leal	5(%ecx), %esi	 #, PC
	.loc 1 342 0
	movl	(%eax), %ecx	 # *DSP.19_23,
LVL51:
	testl	%ecx, %ecx	 #
	je	L27	 #,
	.loc 1 350 0
	movl	(%edx), %esi	 #* PC_lsm0.138, PC
LVL52:
	jmp	L27	 #
LVL53:
	.p2align 4,,10
L53:
	.loc 1 338 0
	movl	$LC5, (%esp)	 #,
	call	_printf	 #
LVL54:
	.loc 1 339 0
	jmp	L27	 #
LVL55:
	.p2align 4,,10
L52:
	.loc 1 334 0
	movl	$LC4, (%esp)	 #,
	call	_printf	 #
LVL56:
	.loc 1 335 0
	jmp	L27	 #
LVL57:
	.p2align 4,,10
L51:
	.loc 1 330 0
	movl	$LC3, (%esp)	 #,
	call	_printf	 #
LVL58:
	.loc 1 331 0
	jmp	L27	 #
LVL59:
	.p2align 4,,10
L50:
LBB141:
LBB142:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_248
LVL60:
	.loc 1 127 0
	movl	_DSS, %edx	 # DSS, DSS.6_251
	.loc 1 128 0
	movl	_DSE, %ecx	 # DSE, pretmp_425
LVL61:
	.loc 1 126 0
	movl	(%eax), %edi	 # *DSP.5_248, v
LVL62:
	.loc 1 127 0
	subl	$4, %eax	 #, _250
	cmpl	%edx, %eax	 # DSS.6_251, _250
	movl	%eax, _DSP	 # _250, DSP
LVL63:
	jnb	L88	 #,
	.loc 1 128 0
	movl	%ecx, _DSP	 # pretmp_425, DSP
	movl	%ecx, %eax	 # pretmp_425, DSP.19_83
L88:
LVL64:
LBE142:
LBE141:
	.loc 1 324 0
	movl	(%eax), %ebp	 # *DSP.19_83, tmp357
LBB145:
LBB146:
	.loc 1 118 0
	addl	$4, %eax	 #, _245
	cmpl	%ecx, %eax	 # pretmp_425, _245
LBE146:
LBE145:
	.loc 1 324 0
	movl	%ebp, 44(%esp)	 # tmp357, arg2
LBB149:
LBB147:
	.loc 1 118 0
	jbe	L90	 #,
LBE147:
LBE149:
LBB150:
LBB143:
	.loc 1 127 0
	movl	%edx, %eax	 # DSS.6_251, _245
L90:
LBE143:
LBE150:
LBB151:
LBB148:
	.loc 1 120 0
	movl	%edi, (%eax)	 # v, *prephitmp_459
LBE148:
LBE151:
LBB152:
LBB153:
	.loc 1 118 0
	addl	$4, %eax	 #, _243
LBE153:
LBE152:
	.loc 1 326 0
	movl	44(%esp), %edi	 # arg2, arg2.22_86
LVL65:
LBB156:
LBB154:
	.loc 1 118 0
	cmpl	%ecx, %eax	 # pretmp_425, _243
	ja	L91	 #,
	movl	%eax, _DSP	 # _243, DSP
	.loc 1 120 0
	movl	%edi, (%eax)	 # arg2.22_86, *prephitmp_460
	jmp	L27	 #
LVL66:
	.p2align 4,,10
L49:
LBE154:
LBE156:
LBB157:
LBB158:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_238
LVL67:
	.loc 1 127 0
	movl	_DSS, %edx	 # DSS, DSS.6_241
	.loc 1 128 0
	movl	_DSE, %edi	 # DSE, pretmp_461
	.loc 1 126 0
	movl	(%eax), %ecx	 # *DSP.5_238, v
LVL68:
	.loc 1 127 0
	subl	$4, %eax	 #, _240
	cmpl	%edx, %eax	 # DSS.6_241, _240
	movl	%eax, _DSP	 # _240, DSP
LVL69:
	jnb	L84	 #,
	.loc 1 128 0
	movl	%edi, _DSP	 # pretmp_461, DSP
	movl	%edi, %eax	 # pretmp_461, DSP.19_87
L84:
LVL70:
LBE158:
LBE157:
	.loc 1 318 0
	addl	%ecx, (%eax)	 # v, *DSP.19_87
LVL71:
LBB159:
LBB160:
	.loc 1 118 0
	addl	$4, %eax	 #, _235
	cmpl	%edi, %eax	 # pretmp_461, _235
	jbe	L115	 #,
LVL72:
L100:
LBE160:
LBE159:
LBB161:
LBB162:
	.loc 1 119 0
	movl	%edx, _DSP	 # DSS.6_273, DSP
LBE162:
LBE161:
LBB165:
LBB166:
	.loc 1 127 0
	movl	%edx, %eax	 # DSS.6_273, _267
L101:
LBE166:
LBE165:
LBB168:
LBB163:
	.loc 1 120 0
	movl	$99999, (%eax)	 #,* _267
	jmp	L27	 #
LVL73:
	.p2align 4,,10
L48:
LBE163:
LBE168:
LBB169:
LBB170:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_230
LVL74:
	movl	(%eax), %edx	 # *DSP.5_230, v
LVL75:
	.loc 1 127 0
	subl	$4, %eax	 #, _232
	cmpl	_DSS, %eax	 # DSS, _232
	movl	%eax, _DSP	 # _232, DSP
LVL76:
	jnb	L82	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L82:
LVL77:
LBE170:
LBE169:
	.loc 1 312 0
	movl	_addr, %eax	 # addr, addr
L112:
	movl	%edx, (%eax)	 # v,* addr
	.loc 1 313 0
	addl	$1, _addr	 #, addr
	.loc 1 314 0
	jmp	L27	 #
LVL78:
	.p2align 4,,10
L47:
	.loc 1 306 0
	movl	_addr, %eax	 # addr, addr.18_97
LVL79:
	leal	1(%eax), %edx	 #, tmp309
	movl	%edx, _addr	 # tmp309, addr
LVL80:
	movl	(%eax), %edx	 # *addr.26_100, _101
LVL81:
LBB171:
LBB172:
	.loc 1 118 0
	movl	_DSP, %eax	 # DSP, tmp356
	addl	$4, %eax	 #, _226
	cmpl	_DSE, %eax	 # DSE, _226
	movl	%eax, _DSP	 # _226, DSP
	jbe	L112	 #,
	.loc 1 119 0
	movl	_DSS, %eax	 # DSS, _226
	movl	%eax, _DSP	 # _226, DSP
	jmp	L112	 #
LVL82:
	.p2align 4,,10
L58:
LBE172:
LBE171:
LBB173:
LBB174:
	.loc 1 118 0
	movl	_DSP, %eax	 # DSP, tmp360
LVL83:
LBE174:
LBE173:
	.loc 1 376 0
	movl	(%edx), %edx	 # *PC.23_54, arg1
LVL84:
LBB176:
LBB175:
	.loc 1 118 0
	addl	$4, %eax	 #, _263
	cmpl	_DSE, %eax	 # DSE, _263
	movl	%eax, _DSP	 # _263, DSP
LVL85:
	jbe	L97	 #,
	.loc 1 119 0
	movl	_DSS, %eax	 # DSS, _263
	movl	%eax, _DSP	 # _263, DSP
L97:
	.loc 1 120 0
	movl	%edx, (%eax)	 # arg1, *prephitmp_429
LVL86:
LBE175:
LBE176:
	.loc 1 378 0
	addl	$4, %esi	 #, PC
	.loc 1 379 0
	jmp	L27	 #
LVL87:
	.p2align 4,,10
L57:
LBB177:
	.loc 1 369 0 discriminator 7
	movl	_hStdout, %eax	 # hStdout, hStdout
LVL88:
	movl	$_csbi, 4(%esp)	 #,
LVL89:
	movl	%eax, (%esp)	 # hStdout,
	call	_GetConsoleScreenBufferInfo@8	 #
	.cfi_def_cfa_offset 56
LVL90:
	subl	$8, %esp	 #,
	.cfi_def_cfa_offset 64
LVL91:
	.loc 1 370 0 discriminator 7
	movswl	_csbi+2, %edx	 # csbi.dwSize.Y, csbi.dwSize.Y
	.loc 1 371 0 discriminator 7
	leal	44(%esp), %eax	 #, tmp359
	movl	$0, 12(%esp)	 #,
	movl	$32, 4(%esp)	 #,
	movl	%eax, 16(%esp)	 # tmp359,
	.loc 1 370 0 discriminator 7
	movswl	_csbi, %eax	 # csbi.dwSize.X, csbi.dwSize.X
	imull	%edx, %eax	 # csbi.dwSize.Y, arg1
LVL92:
	.loc 1 371 0 discriminator 7
	movl	%eax, 8(%esp)	 # arg1,
	movl	_hStdout, %eax	 # hStdout, hStdout
LVL93:
	movl	%eax, (%esp)	 # hStdout,
	call	_FillConsoleOutputCharacterA@20	 #
	.cfi_def_cfa_offset 44
LVL94:
	subl	$20, %esp	 #,
	.cfi_def_cfa_offset 64
LBE177:
	.loc 1 373 0 discriminator 7
	jmp	L27	 #
LVL95:
	.p2align 4,,10
L56:
LBB178:
LBB179:
LBB180:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_257
LVL96:
	.loc 1 127 0
	movl	_DSS, %ecx	 # DSS, DSS.6_260
LVL97:
	.loc 1 126 0
	movl	(%eax), %edx	 # *DSP.5_257, v
LVL98:
	.loc 1 127 0
	subl	$4, %eax	 #, _259
	cmpl	%ecx, %eax	 # DSS.6_260, _259
	movl	%eax, _DSP	 # _259, DSP
LVL99:
	jnb	L95	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, _259
L95:
LVL100:
LBE180:
LBE179:
LBB181:
LBB182:
	.loc 1 126 0
	movl	(%eax), %edi	 # *prephitmp_427, v
LVL101:
	.loc 1 127 0
	subl	$4, %eax	 #, _255
	cmpl	%ecx, %eax	 # DSS.6_260, _255
	movl	%eax, _DSP	 # _255, DSP
	jnb	L96	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L96:
LVL102:
LBE182:
LBE181:
	.loc 1 360 0
	movl	%edi, %eax	 # v, v
	movzwl	%bx, %ebx	 # pos, pos
LVL103:
	.loc 1 359 0
	movl	%edi, 44(%esp)	 # v, arg2
	.loc 1 360 0
	sall	$16, %eax	 #, v
LVL104:
	orl	%eax, %ebx	 # tmp317, pos
LVL105:
	.loc 1 362 0
	movl	_hStdout, %eax	 # hStdout, hStdout
	.loc 1 361 0
	movw	%dx, %bx	 # v, pos
LVL106:
	.loc 1 362 0
	movl	%ebx, 4(%esp)	 # pos,
	movl	%eax, (%esp)	 # hStdout,
	call	_SetConsoleCursorPosition@8	 #
	.cfi_def_cfa_offset 56
LVL107:
	subl	$8, %esp	 #,
	.cfi_def_cfa_offset 64
LBE178:
	.loc 1 364 0
	jmp	L27	 #
LVL108:
	.p2align 4,,10
L60:
LBB183:
LBB184:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_280
LVL109:
	movl	(%eax), %edx	 # *DSP.5_280, v
LVL110:
	.loc 1 127 0
	subl	$4, %eax	 #, _282
	cmpl	_DSS, %eax	 # DSS, _282
	movl	%eax, _DSP	 # _282, DSP
LVL111:
	jnb	L102	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L102:
LVL112:
LBE184:
LBE183:
LBB185:
LBB186:
	.loc 1 147 0
	movl	_RSP, %eax	 # RSP, tmp361
	addl	$4, %eax	 #, _276
	cmpl	_RSE, %eax	 # RSE, _276
	movl	%eax, _RSP	 # _276, RSP
	jbe	L110	 #,
	.loc 1 148 0
	movl	_RSS, %eax	 # RSS, _276
	movl	%eax, _RSP	 # _276, RSP
L110:
LVL113:
LBE186:
LBE185:
	.loc 1 232 0
	movl	%edx, (%eax)	 # arg1,* DSP.19_152
	.loc 1 233 0
	jmp	L27	 #
LVL114:
	.p2align 4,,10
L59:
LBB187:
LBB167:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_270
LVL115:
	.loc 1 127 0
	movl	_DSS, %edx	 # DSS, DSS.6_273
	movl	_DSE, %ecx	 # DSE, pretmp_424
LVL116:
	.loc 1 126 0
	movl	(%eax), %edi	 # *DSP.5_270, v
LVL117:
	.loc 1 127 0
	subl	$4, %eax	 #, DSE.7_274
	cmpl	%edx, %eax	 # DSS.6_273, DSE.7_274
	movl	%eax, _DSP	 # DSE.7_274, DSP
LVL118:
	jnb	L99	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE.7_274
	movl	%eax, _DSP	 # DSE.7_274, DSP
	movl	%eax, %ecx	 # DSE.7_274, pretmp_424
L99:
LVL119:
LBE167:
LBE187:
	.loc 1 383 0
	addl	%edi, (%eax)	 # v, *prephitmp_430
LVL120:
LBB188:
LBB164:
	.loc 1 118 0
	addl	$4, %eax	 #, _267
	cmpl	%ecx, %eax	 # pretmp_424, _267
	ja	L100	 #,
LVL121:
L115:
	movl	%eax, _DSP	 # _267, DSP
	jmp	L101	 #
LVL122:
	.p2align 4,,10
L61:
LBE164:
LBE188:
LBB189:
LBB190:
	.loc 1 155 0
	movl	_RSP, %eax	 # RSP, RSP.12_290
LVL123:
	movl	(%eax), %edx	 # *RSP.12_290, v
LVL124:
	.loc 1 156 0
	subl	$4, %eax	 #, _292
	cmpl	_RSS, %eax	 # RSS, _292
	movl	%eax, _RSP	 # _292, RSP
LVL125:
	jnb	L104	 #,
	.loc 1 157 0
	movl	_RSE, %eax	 # RSE, RSE
	movl	%eax, _RSP	 # RSE, RSP
LVL126:
L104:
LBE190:
LBE189:
LBB191:
LBB192:
	.loc 1 118 0
	movl	_DSP, %eax	 # DSP, tmp362
	addl	$4, %eax	 #, _286
	cmpl	_DSE, %eax	 # DSE, _286
	movl	%eax, _DSP	 # _286, DSP
	jbe	L110	 #,
L116:
	.loc 1 119 0
	movl	_DSS, %eax	 # DSS, _286
	movl	%eax, _DSP	 # _286, DSP
LVL127:
LBE192:
LBE191:
	.loc 1 232 0
	movl	%edx, (%eax)	 # arg1,* DSP.19_152
	jmp	L27	 #
LVL128:
	.p2align 4,,10
L37:
LBB193:
LBB194:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_190
LVL129:
	movl	(%eax), %edx	 # *DSP.5_190, v
LVL130:
	.loc 1 127 0
	subl	$4, %eax	 #, _192
	cmpl	_DSS, %eax	 # DSS, _192
	movl	%eax, _DSP	 # _192, DSP
LVL131:
	jnb	L74	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L74:
LVL132:
LBE194:
LBE193:
	.loc 1 256 0
	movzbl	%dl, %eax	 # v, v
	movl	$LC2, (%esp)	 #,
	movl	%eax, 4(%esp)	 # v,
	call	_printf	 #
LVL133:
	.loc 1 257 0
	jmp	L27	 #
LVL134:
	.p2align 4,,10
L36:
LBB195:
LBB196:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_185
LVL135:
	movl	(%eax), %edx	 # *DSP.5_185, v
LVL136:
	.loc 1 127 0
	subl	$4, %eax	 #, _187
	cmpl	_DSS, %eax	 # DSS, _187
	movl	%eax, _DSP	 # _187, DSP
LVL137:
	jnb	L73	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L73:
LVL138:
LBE196:
LBE195:
	.loc 1 251 0
	movl	%edx, _addr	 # v, addr
	.loc 1 252 0
	jmp	L27	 #
LVL139:
	.p2align 4,,10
L35:
	.loc 1 246 0
	movl	_DSP, %eax	 # DSP, DSP.19_147
LVL140:
	movl	(%eax), %edx	 # *DSP.19_147, arg1
LVL141:
LBB197:
LBB198:
	.loc 1 118 0
	addl	$4, %eax	 #, _181
	cmpl	_DSE, %eax	 # DSE, _181
	movl	%eax, _DSP	 # _181, DSP
LVL142:
	ja	L116	 #,
LBE198:
LBE197:
	.loc 1 232 0
	movl	%edx, (%eax)	 # arg1,* DSP.19_152
	jmp	L27	 #
LVL143:
	.p2align 4,,10
L34:
LBB199:
LBB200:
	.loc 1 127 0
	movl	_DSP, %eax	 # DSP, tmp353
LVL144:
	subl	$4, %eax	 #, _178
	cmpl	_DSS, %eax	 # DSS, _178
	movl	%eax, _DSP	 # _178, DSP
LVL145:
	jnb	L27	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
LVL146:
	movl	%eax, _DSP	 # DSE, DSP
LVL147:
	jmp	L27	 #
LVL148:
	.p2align 4,,10
L33:
LBE200:
LBE199:
LBB201:
LBB202:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_172
LVL149:
	.loc 1 127 0
	movl	_DSS, %edi	 # DSS, DSS.6_175
	.loc 1 126 0
	movl	(%eax), %ecx	 # *DSP.5_172, v
LVL150:
	.loc 1 127 0
	subl	$4, %eax	 #, _174
	cmpl	%edi, %eax	 # DSS.6_175, _174
	movl	%eax, _DSP	 # _174, DSP
LVL151:
	jnb	L69	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, _174
L69:
LVL152:
LBE202:
LBE201:
LBB203:
LBB204:
	.loc 1 126 0
	movl	(%eax), %edx	 # *prephitmp_471, v
LVL153:
	.loc 1 127 0
	subl	$4, %eax	 #, _170
	cmpl	%edi, %eax	 # DSS.6_175, _170
	movl	%eax, _DSP	 # _170, DSP
	jnb	L70	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L70:
LVL154:
LBE204:
LBE203:
	.loc 1 237 0
	movl	%edx, 44(%esp)	 # v, arg2
	.loc 1 238 0
	movl	%edx, (%ecx)	 # v, *arg1.21_150
	.loc 1 239 0
	jmp	L27	 #
LVL155:
	.p2align 4,,10
L32:
	.loc 1 231 0
	movl	_DSP, %eax	 # DSP, DSP.19_152
LVL156:
	movl	(%eax), %edx	 # *DSP.19_152, *DSP.19_152
	movl	(%edx), %edx	 # *_154, arg1
LVL157:
	.loc 1 232 0
	movl	%edx, (%eax)	 # arg1,* DSP.19_152
LVL158:
	jmp	L27	 #
LVL159:
	.p2align 4,,10
L31:
	.loc 1 227 0
	movl	_addr, %edx	 # addr, addr.18_13
LVL160:
	jmp	L104	 #
LVL161:
	.p2align 4,,10
L42:
LBB205:
LBB206:
	.loc 1 155 0
	movl	_RSP, %eax	 # RSP, RSP.12_200
LVL162:
	movl	(%eax), %edx	 # *RSP.12_200, v
LVL163:
	.loc 1 156 0
	subl	$4, %eax	 #, _202
	cmpl	_RSS, %eax	 # RSS, _202
	movl	%eax, _RSP	 # _202, RSP
LVL164:
	jnb	L76	 #,
	.loc 1 157 0
	movl	_RSE, %eax	 # RSE, RSE
	movl	%eax, _RSP	 # RSE, RSP
L76:
LVL165:
LBE206:
LBE205:
	.loc 1 281 0
	movl	_call_depth, %eax	 # call_depth, tmp355
	.loc 1 280 0
	movl	%edx, %esi	 # v, PC
	.loc 1 281 0
	subl	$1, %eax	 #, _159
	testl	%eax, %eax	 # _159
	movl	%eax, _call_depth	 # _159, call_depth
	jg	L27	 #,
	jmp	L26	 #
LVL166:
	.p2align 4,,10
L41:
LBB207:
LBB208:
	.loc 1 147 0
	movl	_RSP, %eax	 # RSP, tmp354
LVL167:
LBE208:
LBE207:
	.loc 1 273 0
	addl	$5, %ecx	 #, _125
LVL168:
	.loc 1 272 0
	movl	(%edx), %edx	 # *PC.23_122, arg1
LVL169:
	.loc 1 273 0
	movl	%ecx, %esi	 # _125, PC
LVL170:
LBB210:
LBB209:
	.loc 1 147 0
	addl	$4, %eax	 #, _196
	cmpl	_RSE, %eax	 # RSE, _196
	movl	%eax, _RSP	 # _196, RSP
LVL171:
	jbe	L75	 #,
	.loc 1 148 0
	movl	_RSS, %eax	 # RSS, _196
	movl	%eax, _RSP	 # _196, RSP
L75:
	.loc 1 149 0
	movl	%ecx, (%eax)	 # _125, *prephitmp_469
LVL172:
LBE209:
LBE210:
	.loc 1 275 0
	movl	%edx, %esi	 # arg1, PC
	.loc 1 276 0
	addl	$1, _call_depth	 #, call_depth
	.loc 1 277 0
	jmp	L27	 #
LVL173:
	.p2align 4,,10
L39:
	.loc 1 264 0
	movl	_DSP, %eax	 # DSP, DSP.19_136
LVL174:
	subl	$1, (%eax)	 #, *DSP.19_136
LVL175:
	.loc 1 265 0
	jmp	L27	 #
LVL176:
	.p2align 4,,10
L38:
	.loc 1 260 0
	movl	_DSP, %eax	 # DSP, DSP.19_140
LVL177:
	addl	$1, (%eax)	 #, *DSP.19_140
LVL178:
	.loc 1 261 0
	jmp	L27	 #
LVL179:
	.p2align 4,,10
L44:
LBB211:
LBB212:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_210
LVL180:
	movl	(%eax), %edx	 # *DSP.5_210, v
LVL181:
	.loc 1 127 0
	subl	$4, %eax	 #, _212
	cmpl	_DSS, %eax	 # DSS, _212
	movl	%eax, _DSP	 # _212, DSP
LVL182:
	jnb	L78	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, _212
	movl	%eax, _DSP	 # _212, DSP
L78:
LVL183:
LBE212:
LBE211:
	.loc 1 292 0
	subl	%edx, (%eax)	 # v, *prephitmp_467
	.loc 1 293 0
	jmp	L27	 #
LVL184:
	.p2align 4,,10
L43:
LBB213:
LBB214:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_205
LVL185:
	movl	(%eax), %edx	 # *DSP.5_205, v
LVL186:
	.loc 1 127 0
	subl	$4, %eax	 #, _207
	cmpl	_DSS, %eax	 # DSS, _207
	movl	%eax, _DSP	 # _207, DSP
LVL187:
	jnb	L77	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, _207
	movl	%eax, _DSP	 # _207, DSP
L77:
LVL188:
LBE214:
LBE213:
	.loc 1 287 0
	addl	%edx, (%eax)	 # v, *prephitmp_468
	.loc 1 288 0
	jmp	L27	 #
LVL189:
	.p2align 4,,10
L45:
LBB215:
LBB216:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_215
LVL190:
	movl	(%eax), %edx	 # *DSP.5_215, v
LVL191:
	.loc 1 127 0
	subl	$4, %eax	 #, _217
	cmpl	_DSS, %eax	 # DSS, _217
	movl	%eax, _DSP	 # _217, DSP
LVL192:
	jnb	L79	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, _217
	movl	%eax, _DSP	 # _217, DSP
L79:
LVL193:
LBE216:
LBE215:
	.loc 1 297 0
	imull	(%eax), %edx	 # *prephitmp_466, tmp304
	movl	%edx, (%eax)	 # tmp304,* _217
	.loc 1 298 0
	jmp	L27	 #
LVL194:
	.p2align 4,,10
L91:
LBB217:
LBB144:
	.loc 1 127 0
	movl	%edx, %eax	 # DSS.6_251, _243
LBE144:
LBE217:
LBB218:
LBB155:
	.loc 1 119 0
	movl	%edx, _DSP	 # DSS.6_251, DSP
	.loc 1 120 0
	movl	%edi, (%eax)	 # arg2.22_86, *prephitmp_460
	jmp	L27	 #
LBE155:
LBE218:
	.cfi_endproc
LFE77:
	.p2align 4,,15
	.globl	_define_word
	.def	_define_word;	.scl	2;	.type	32;	.endef
_define_word:
LFB78:
	.loc 1 427 0
	.cfi_startproc
LVL195:
	pushl	%edi	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp	 #,
	.cfi_def_cfa_offset 32
	.loc 1 429 0
	movl	_num_words, %eax	 # num_words, tmp112
	.loc 1 427 0
	movl	32(%esp), %ebx	 # word, word
	.loc 1 429 0
	addl	$1, %eax	 #, _5
	leal	(%eax,%eax,8), %edx	 #, tmp103
	movl	%eax, _num_words	 # _5, num_words
	movl	_the_dict, %eax	 # the_dict, the_dict.31_3
	.loc 1 431 0
	movl	%ebx, (%esp)	 # word,
	.loc 1 429 0
	leal	(%eax,%edx,4), %edi	 #, ep
LVL196:
	.loc 1 431 0
	call	_strlen	 #
LVL197:
	cmpl	$29, %eax	 #, tmp106
	jbe	L120	 #,
	.loc 1 432 0
	movb	$0, 29(%ebx)	 #, MEM[(char *)word_10(D) + 29B]
L120:
LVL198:
	.loc 1 434 0
	movl	_HERE, %eax	 # HERE, HERE
	.loc 1 435 0
	movb	$0, 4(%edi)	 #, ep_9->flags
LBB221:
LBB222:
	.loc 1 100 0
	leal	5(%edi), %ecx	 #, dst
LVL199:
LBE222:
LBE221:
	.loc 1 434 0
	movl	%eax, (%edi)	 # HERE, ep_9->xt
LBB224:
LBB223:
	.loc 1 100 0
	movzbl	(%ebx), %edx	 # MEM[(const char *)word_10(D)], _24
	movl	%ebx, %eax	 # word, src
	testb	%dl, %dl	 # _24
	je	L119	 #,
LVL200:
	.p2align 4,,10
L124:
	.loc 1 102 0
	addl	$1, %ecx	 #, dst
LVL201:
	addl	$1, %eax	 #, src
LVL202:
	movb	%dl, -1(%ecx)	 # _24, MEM[base: dst_18, offset: 4294967295B]
	.loc 1 100 0
	movzbl	(%eax), %edx	 # MEM[base: src_20, offset: 0B], _24
	testb	%dl, %dl	 # _24
	jne	L124	 #,
L119:
LBE223:
LBE224:
	.loc 1 437 0
	addl	$20, %esp	 #,
	.cfi_def_cfa_offset 12
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 4
LVL203:
	ret
	.cfi_endproc
LFE78:
	.p2align 4,,15
	.globl	_find_word
	.def	_find_word;	.scl	2;	.type	32;	.endef
_find_word:
LFB79:
	.loc 1 440 0
	.cfi_startproc
LVL204:
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
LBB227:
	.loc 1 441 0
	movl	_num_words, %ebx	 # num_words, i
LVL205:
	leal	(%ebx,%ebx,8), %edi	 #, tmp97
	sall	$2, %edi	 #, ivtmp.157
	testl	%ebx, %ebx	 # i
	jg	L130	 #,
	jmp	L131	 #
LVL206:
	.p2align 4,,10
L137:
	subl	$36, %edi	 #, ivtmp.157
	.loc 1 441 0 is_stmt 0 discriminator 2
	subl	$1, %ebx	 #, i
LVL207:
	je	L131	 #,
LVL208:
L130:
LBB228:
	.loc 1 443 0 is_stmt 1
	movl	_the_dict, %ebp	 # the_dict, <retval>
	addl	%edi, %ebp	 # ivtmp.157, <retval>
LVL209:
	.loc 1 444 0
	leal	5(%ebp), %eax	 #, tmp100
	movl	%eax, 4(%esp)	 # tmp100,
	movl	32(%esp), %eax	 # word, tmp103
	movl	%eax, (%esp)	 # tmp103,
	call	__stricmp	 #
LVL210:
	testl	%eax, %eax	 # _14
	jne	L137	 #,
LBE228:
LBE227:
	.loc 1 450 0
	addl	$16, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax	 # <retval>,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL211:
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
LVL212:
	ret
LVL213:
	.p2align 4,,10
L131:
	.cfi_restore_state
	addl	$16, %esp	 #,
	.cfi_def_cfa_offset 16
	.loc 1 449 0
	xorl	%ebp, %ebp	 # <retval>
	.loc 1 450 0
	movl	%ebp, %eax	 # <retval>,
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL214:
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE79:
	.section .rdata,"dr"
LC7:
	.ascii "\12%4d, %08lx, %08lx, %02x, %s\0"
	.text
	.p2align 4,,15
	.globl	_dump_words
	.def	_dump_words;	.scl	2;	.type	32;	.endef
_dump_words:
LFB80:
	.loc 1 453 0
	.cfi_startproc
	pushl	%edi	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp	 #,
	.cfi_def_cfa_offset 48
LBB229:
	.loc 1 454 0
	movl	_num_words, %ebx	 # num_words, i
LVL215:
	leal	(%ebx,%ebx,8), %edi	 #, tmp99
	sall	$2, %edi	 #, ivtmp.164
	testl	%ebx, %ebx	 # i
	jle	L138	 #,
	.p2align 4,,10
L140:
LBB230:
	.loc 1 456 0 discriminator 3
	movl	_the_dict, %eax	 # the_dict, ep
	addl	%edi, %eax	 # ivtmp.164, ep
LVL216:
	subl	$36, %edi	 #, ivtmp.164
	.loc 1 457 0 discriminator 3
	leal	5(%eax), %edx	 #, tmp102
	movl	%edx, 20(%esp)	 # tmp102,
	movzbl	4(%eax), %edx	 # ep_8->flags, ep_8->flags
	movl	%edx, 16(%esp)	 # ep_8->flags,
	movl	(%eax), %edx	 # ep_8->xt, ep_8->xt
	movl	%ebx, 4(%esp)	 # i,
	movl	%eax, 8(%esp)	 # ep,
	movl	$LC7, (%esp)	 #,
	movl	%edx, 12(%esp)	 # ep_8->xt,
	call	_printf	 #
LVL217:
LBE230:
	.loc 1 454 0 discriminator 3
	subl	$1, %ebx	 #, i
LVL218:
	jne	L140	 #,
L138:
LBE229:
	.loc 1 459 0
	addl	$36, %esp	 #,
	.cfi_def_cfa_offset 12
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 8
LVL219:
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE80:
	.p2align 4,,15
	.globl	_getword
	.def	_getword;	.scl	2;	.type	32;	.endef
_getword:
LFB81:
	.loc 1 468 0
	.cfi_startproc
LVL220:
	.loc 1 468 0
	movl	4(%esp), %eax	 # line, line
	movl	8(%esp), %ecx	 # word, word
LVL221:
	.loc 1 472 0
	movzbl	(%eax), %edx	 #* line, prephitmp_2
	testb	%dl, %dl	 # prephitmp_2
	jne	L162	 #,
	jmp	L163	 #
LVL222:
	.p2align 4,,10
L165:
	.loc 1 474 0
	addl	$1, %eax	 #, <retval>
LVL223:
	.loc 1 472 0
	movzbl	(%eax), %edx	 #* <retval>, prephitmp_2
	testb	%dl, %dl	 # prephitmp_2
	je	L163	 #,
L162:
	cmpb	$32, %dl	 #, prephitmp_2
	jle	L165	 #,
	.loc 1 478 0
	cmpb	$32, %dl	 #, prephitmp_2
	jle	L166	 #,
LVL224:
	.p2align 4,,10
L149:
	.loc 1 480 0
	addl	$1, %ecx	 #, word
LVL225:
	addl	$1, %eax	 #, <retval>
LVL226:
	movb	%dl, -1(%ecx)	 # prephitmp_2, MEM[base: cp_15, offset: 4294967295B]
	.loc 1 478 0
	movzbl	(%eax), %edx	 # MEM[base: line_16, offset: 0B], prephitmp_2
L163:
	cmpb	$32, %dl	 #, prephitmp_2
	jg	L149	 #,
L166:
	.loc 1 482 0
	movb	$0, (%ecx)	 #, *cp_34
	.loc 1 485 0
	ret
	.cfi_endproc
LFE81:
	.section .rdata,"dr"
LC8:
	.ascii "0123456789abcdef\0"
	.text
	.p2align 4,,15
	.globl	_is_number
	.def	_is_number;	.scl	2;	.type	32;	.endef
_is_number:
LFB82:
	.loc 1 488 0
	.cfi_startproc
LVL227:
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
	.loc 1 488 0
	movl	80(%esp), %ebp	 # word, word
LVL228:
	.loc 1 495 0
	movsbl	0(%ebp), %eax	 # *word_13(D),
	cmpb	$39, %al	 #, _33
	je	L189	 #,
	.loc 1 501 0
	cmpb	$37, %al	 #, _33
	je	L190	 #,
	.loc 1 507 0
	cmpb	$35, %al	 #, _33
	je	L191	 #,
L172:
	.loc 1 513 0
	cmpb	$36, %al	 #, _33
	je	L192	 #,
LVL229:
L169:
	leal	40(%esp), %edi	 #, tmp125
LVL230:
	movl	$48, %edx	 #, _56
	movl	$LC8, %ebx	 #, src
	movl	%edi, %ecx	 # tmp125, dst
LVL231:
	.p2align 4,,10
L173:
LBB231:
LBB232:
	.loc 1 102 0
	addl	$1, %ecx	 #, dst
LVL232:
	addl	$1, %ebx	 #, src
LVL233:
	movb	%dl, -1(%ecx)	 # _56, MEM[base: dst_53, offset: 4294967295B]
	.loc 1 100 0
	movzbl	(%ebx), %edx	 # MEM[base: src_55, offset: 0B], _56
	testb	%dl, %dl	 # _56
	jne	L173	 #,
LVL234:
LBE232:
LBE231:
	.loc 1 520 0
	movl	88(%esp), %ecx	 # base, tmp141
	.loc 1 523 0
	cmpl	$10, %ecx	 #,
	.loc 1 520 0
	movb	$0, 40(%esp,%ecx)	 #, valid_chars
	.loc 1 523 0
	je	L193	 #,
L174:
	.loc 1 529 0
	testb	%al, %al	 # _33
	movl	$0, 28(%esp)	 #, %sfp
	je	L180	 #,
LVL235:
L178:
	.loc 1 525 0
	xorl	%ebx, %ebx	 # my_num
	jmp	L176	 #
LVL236:
	.p2align 4,,10
L195:
LBB233:
	.loc 1 539 0
	imull	88(%esp), %ebx	 # base, tmp123
LVL237:
	.loc 1 538 0
	subl	%edi, %eax	 # tmp125, digit
LVL238:
	.loc 1 539 0
	addl	%eax, %ebx	 # digit, my_num
LVL239:
LBE233:
	.loc 1 529 0
	movsbl	0(%ebp), %eax	 # MEM[base: w_34, offset: 0B],
	testb	%al, %al	 # _33
	je	L194	 #,
LVL240:
L176:
LBB234:
	.loc 1 532 0
	movl	%eax, (%esp)	 # _33,
	.loc 1 531 0
	addl	$1, %ebp	 #, word
LVL241:
	.loc 1 532 0
	call	_tolower	 #
LVL242:
	.loc 1 533 0
	movsbl	%al, %eax	 # _37, _37
	movl	%edi, (%esp)	 # tmp125,
	movl	%eax, 4(%esp)	 # _37,
	call	_strchr	 #
LVL243:
	.loc 1 534 0
	testl	%eax, %eax	 # pos
	jne	L195	 #,
	.loc 1 536 0
	xorl	%eax, %eax	 # <retval>
LVL244:
L167:
LBE234:
	.loc 1 548 0
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
	ret
LVL246:
	.p2align 4,,10
L192:
	.cfi_restore_state
	movsbl	1(%ebp), %eax	 # MEM[(char *)w_6 + 1B],
	.loc 1 515 0
	movl	$16, 88(%esp)	 #, base
	.loc 1 516 0
	addl	$1, %ebp	 #, word
LVL247:
	jmp	L169	 #
LVL248:
	.p2align 4,,10
L191:
	movsbl	1(%ebp), %eax	 # MEM[(char *)w_5 + 1B],
	.loc 1 510 0
	addl	$1, %ebp	 #, word
LVL249:
	.loc 1 509 0
	movl	$10, 88(%esp)	 #, base
LVL250:
	.loc 1 513 0
	cmpb	$36, %al	 #, _33
	jne	L169	 #,
	jmp	L192	 #
	.p2align 4,,10
L190:
LVL251:
	movsbl	1(%ebp), %eax	 # MEM[(char *)word_13(D) + 1B],
	.loc 1 504 0
	addl	$1, %ebp	 #, word
LVL252:
	.loc 1 503 0
	movl	$2, 88(%esp)	 #, base
LVL253:
	.loc 1 507 0
	cmpb	$35, %al	 #, _33
	jne	L172	 #,
	jmp	L191	 #
LVL254:
	.p2align 4,,10
L194:
	.loc 1 542 0
	movl	28(%esp), %eax	 # %sfp,
	testl	%eax, %eax	 #
	je	L177	 #,
	negl	%ebx	 # my_num
LVL255:
L177:
	.loc 1 546 0
	movl	84(%esp), %eax	 # the_num, tmp143
	movl	%ebx, (%eax)	 # my_num, *the_num_21(D)
	.loc 1 548 0
	addl	$64, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	.loc 1 547 0
	movl	$1, %eax	 #, <retval>
	.loc 1 548 0
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL256:
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL257:
	.p2align 4,,10
L189:
	.cfi_restore_state
	.loc 1 495 0 discriminator 1
	cmpb	$39, 2(%ebp)	 #, MEM[(char *)word_13(D) + 2B]
	jne	L169	 #,
	.loc 1 495 0 is_stmt 0 discriminator 2
	cmpb	$0, 3(%ebp)	 #, MEM[(char *)word_13(D) + 3B]
	jne	L169	 #,
	.loc 1 497 0 is_stmt 1
	movsbl	1(%ebp), %eax	 # MEM[(char *)word_13(D) + 1B], MEM[(char *)word_13(D) + 1B]
	movl	84(%esp), %edi	 # the_num, tmp140
	movl	%eax, (%edi)	 # MEM[(char *)word_13(D) + 1B], *the_num_21(D)
	.loc 1 498 0
	movl	$1, %eax	 #, <retval>
	jmp	L167	 #
	.p2align 4,,10
L193:
	.loc 1 523 0 discriminator 1
	cmpb	$45, %al	 #, _33
	jne	L174	 #,
LVL258:
	.loc 1 529 0
	movsbl	1(%ebp), %eax	 # MEM[(char *)w_7 + 1B],
	.loc 1 526 0
	leal	1(%ebp), %ecx	 #, w
LVL259:
	.loc 1 529 0
	testb	%al, %al	 # _33
	je	L180	 #,
	.loc 1 526 0
	movl	%ecx, %ebp	 # w, word
	.loc 1 525 0
	movl	$1, 28(%esp)	 #, %sfp
	jmp	L178	 #
LVL260:
L180:
	.loc 1 529 0
	xorl	%ebx, %ebx	 # my_num
LVL261:
	jmp	L177	 #
	.cfi_endproc
LFE82:
	.section .rdata,"dr"
LC9:
	.ascii ":\0"
LC10:
	.ascii ";\0"
LC11:
	.ascii "if\0"
LC12:
	.ascii "then\0"
LC13:
	.ascii "begin\0"
LC14:
	.ascii "again\0"
LC15:
	.ascii "jmp\0"
LC16:
	.ascii " ??%s??\0"
	.text
	.p2align 4,,15
	.globl	_parseword
	.def	_parseword;	.scl	2;	.type	32;	.endef
_parseword:
LFB83:
	.loc 1 552 0
	.cfi_startproc
LVL262:
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
	.loc 1 552 0
	movl	68(%esp), %edi	 # word, word
	movl	64(%esp), %ebx	 # line, line
	.loc 1 553 0
	cmpb	$92, (%edi)	 #, *word_6(D)
	je	L261	 #,
	.loc 1 558 0
	movl	$LC9, 4(%esp)	 #,
	movl	%edi, (%esp)	 # word,
	call	__stricmp	 #
LVL263:
	testl	%eax, %eax	 # _11
	je	L254	 #,
LVL264:
LBB261:
LBB262:
	.loc 1 568 0
	movl	$LC10, 4(%esp)	 #,
	movl	%edi, (%esp)	 # word,
	call	__stricmp	 #
LVL265:
	testl	%eax, %eax	 # _46
	jne	L209	 #,
	.loc 1 570 0
	movl	_HERE, %eax	 # HERE, HERE.45_47
	leal	1(%eax), %edx	 #, tmp237
	movl	%edx, _HERE	 # tmp237, HERE
	movb	$12, (%eax)	 #, *HERE.47_49
LBE262:
LBE261:
	.loc 1 655 0
	movl	%ebx, %eax	 # <retval>,
LBB287:
LBB285:
	.loc 1 571 0
	movl	$0, _STATE	 #, STATE
LBE285:
LBE287:
	.loc 1 655 0
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 12
LVL266:
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 8
LVL267:
	popl	%ebp	 #
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL268:
	.p2align 4,,10
L259:
	.cfi_restore_state
LBB288:
LBB289:
	.loc 1 472 0
	cmpb	$32, %al	 #, _20
	jg	L200	 #,
	.loc 1 474 0
	addl	$1, %ebx	 #, <retval>
LVL269:
L254:
	.loc 1 472 0
	movzbl	(%ebx), %eax	 #* <retval>, _20
	testb	%al, %al	 # _20
	jne	L259	 #,
L200:
LVL270:
	.loc 1 478 0
	cmpb	$32, %al	 #, _20
	movl	%edi, %edx	 # word, cp
	jle	L203	 #,
LVL271:
	.p2align 4,,10
L204:
	.loc 1 480 0
	addl	$1, %edx	 #, cp
LVL272:
	addl	$1, %ebx	 #, <retval>
LVL273:
	movb	%al, -1(%edx)	 # _20, MEM[base: cp_25, offset: 4294967295B]
	.loc 1 478 0
	movzbl	(%ebx), %eax	 # MEM[base: line_27, offset: 0B], _20
	cmpb	$32, %al	 #, _20
	jg	L204	 #,
L203:
	.loc 1 482 0
	movb	$0, (%edx)	 #, *cp_255
LVL274:
LBE289:
LBE288:
	.loc 1 561 0
	cmpb	$0, (%edi)	 #, MEM[(const char *)word_6(D)]
	jne	L262	 #,
LVL275:
L196:
	.loc 1 655 0
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	 # <retval>,
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
LVL276:
	.p2align 4,,10
L261:
	.cfi_restore_state
	.loc 1 555 0
	movb	$0, (%ebx)	 #, *line_8(D)
	.loc 1 655 0
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	 # <retval>,
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
LVL277:
	.p2align 4,,10
L262:
	.cfi_restore_state
LBB290:
LBB291:
	.loc 1 429 0
	movl	_num_words, %eax	 # num_words, tmp266
	.loc 1 431 0
	movl	%edi, (%esp)	 # word,
	.loc 1 429 0
	addl	$1, %eax	 #, _34
	leal	(%eax,%eax,8), %edx	 #, tmp231
	movl	%eax, _num_words	 # _34, num_words
	movl	_the_dict, %eax	 # the_dict, the_dict.31_32
	leal	(%eax,%edx,4), %ebp	 #, ep
LVL278:
	.loc 1 431 0
	call	_strlen	 #
LVL279:
	cmpl	$29, %eax	 #, tmp234
	jbe	L205	 #,
	.loc 1 432 0
	movb	$0, 29(%edi)	 #, MEM[(char *)word_6(D) + 29B]
L205:
LVL280:
	.loc 1 434 0
	movl	_HERE, %eax	 # HERE, HERE
	.loc 1 435 0
	movb	$0, 4(%ebp)	 #, ep_37->flags
LBB292:
LBB293:
	.loc 1 100 0
	leal	5(%ebp), %edx	 #, dst
LVL281:
LBE293:
LBE292:
	.loc 1 434 0
	movl	%eax, 0(%ebp)	 # HERE, ep_37->xt
LBB295:
LBB294:
	.loc 1 100 0
	movzbl	(%edi), %eax	 # MEM[(const char *)word_6(D)], _123
	testb	%al, %al	 # _123
	je	L208	 #,
LVL282:
	.p2align 4,,10
L242:
	.loc 1 102 0
	addl	$1, %edx	 #, dst
LVL283:
	addl	$1, %edi	 #, src
LVL284:
	movb	%al, -1(%edx)	 # _123, MEM[base: dst_42, offset: 4294967295B]
	.loc 1 100 0
	movzbl	(%edi), %eax	 # MEM[base: src_44, offset: 0B], _123
	testb	%al, %al	 # _123
	jne	L242	 #,
L208:
LVL285:
LBE294:
LBE295:
LBE291:
LBE290:
	.loc 1 564 0
	movl	$1, _STATE	 #, STATE
	.loc 1 655 0
	addl	$48, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	 # <retval>,
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
LVL286:
	.p2align 4,,10
L209:
	.cfi_restore_state
LBB296:
LBB286:
	.loc 1 574 0
	movl	$LC11, 4(%esp)	 #,
	movl	%edi, (%esp)	 # word,
	call	__stricmp	 #
LVL287:
	testl	%eax, %eax	 # _50
	jne	L211	 #,
	.loc 1 576 0
	movl	_HERE, %eax	 # HERE, HERE.45_51
	leal	1(%eax), %edx	 #, tmp238
	movl	%edx, _HERE	 # tmp238, HERE
	movb	$24, (%eax)	 #, *HERE.49_53
LBB263:
LBB264:
	.loc 1 118 0
	movl	_DSP, %eax	 # DSP, tmp267
LBE264:
LBE263:
	.loc 1 577 0
	movl	_HERE, %edx	 # HERE, HERE.45_54
LVL288:
LBB266:
LBB265:
	.loc 1 118 0
	addl	$4, %eax	 #, _56
	cmpl	_DSE, %eax	 # DSE, _56
	movl	%eax, _DSP	 # _56, DSP
	jbe	L212	 #,
	.loc 1 119 0
	movl	_DSS, %eax	 # DSS, _56
	movl	%eax, _DSP	 # _56, DSP
L212:
	.loc 1 120 0
	movl	%edx, (%eax)	 # HERE.45_54, *prephitmp_167
LVL289:
LBE265:
LBE266:
	.loc 1 578 0
	movl	_HERE, %eax	 # HERE, HERE
	movl	$-1, (%eax)	 #, *HERE.50_61
	addl	$4, _HERE	 #, HERE
	jmp	L196	 #
L211:
	.loc 1 581 0
	movl	$LC12, 4(%esp)	 #,
	movl	%edi, (%esp)	 # word,
	call	__stricmp	 #
LVL290:
	testl	%eax, %eax	 # _64
	jne	L213	 #,
LBB267:
LBB268:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_65
	movl	(%eax), %edx	 # *DSP.5_65, v
LVL291:
	.loc 1 127 0
	subl	$4, %eax	 #, _67
	cmpl	_DSS, %eax	 # DSS, _67
	movl	%eax, _DSP	 # _67, DSP
	jnb	L214	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L214:
LVL292:
LBE268:
LBE267:
	.loc 1 584 0
	movl	_HERE, %eax	 # HERE, HERE.45_71
	.loc 1 583 0
	movl	%edx, _tmp	 # v, tmp
	.loc 1 584 0
	movl	%eax, (%edx)	 # HERE.45_71, *tmp.52_70
	jmp	L196	 #
L213:
	.loc 1 587 0
	movl	$LC13, 4(%esp)	 #,
	movl	%edi, (%esp)	 # word,
	call	__stricmp	 #
LVL293:
	testl	%eax, %eax	 # _72
	jne	L215	 #,
LBB269:
LBB270:
	.loc 1 118 0
	movl	_DSP, %eax	 # DSP, tmp268
LBE270:
LBE269:
	.loc 1 589 0
	movl	_HERE, %edx	 # HERE, HERE.45_73
LVL294:
LBB272:
LBB271:
	.loc 1 118 0
	addl	$4, %eax	 #, _75
	cmpl	_DSE, %eax	 # DSE, _75
	movl	%eax, _DSP	 # _75, DSP
	jbe	L216	 #,
	.loc 1 119 0
	movl	_DSS, %eax	 # DSS, _75
	movl	%eax, _DSP	 # _75, DSP
L216:
	.loc 1 120 0
	movl	%edx, (%eax)	 # HERE.45_73, *prephitmp_105
LVL295:
	jmp	L196	 #
L215:
LBE271:
LBE272:
	.loc 1 592 0
	movl	$LC14, 4(%esp)	 #,
	movl	%edi, (%esp)	 # word,
	call	__stricmp	 #
LVL296:
	testl	%eax, %eax	 # _79
	jne	L263	 #,
L219:
	.loc 1 601 0
	movl	_HERE, %eax	 # HERE, HERE.45_93
	leal	1(%eax), %edx	 #, tmp247
	movl	%edx, _HERE	 # tmp247, HERE
	movb	$10, (%eax)	 #,* HERE.45_93
LVL297:
L257:
LBB273:
LBB274:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_151
LBE274:
LBE273:
	.loc 1 649 0
	movl	_HERE, %edx	 # HERE, HERE.50_150
LBB276:
LBB275:
	.loc 1 126 0
	movl	(%eax), %ecx	 #* DSP.5_151, v
LVL298:
	.loc 1 127 0
	subl	$4, %eax	 #, _153
	cmpl	_DSS, %eax	 # DSS, _153
	movl	%eax, _DSP	 # _153, DSP
	jnb	L231	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L231:
LVL299:
LBE275:
LBE276:
	.loc 1 649 0
	movl	%ecx, (%edx)	 # v,* HERE.50_150
	addl	$4, _HERE	 #, HERE
	jmp	L196	 #
LVL300:
L263:
	.loc 1 598 0
	movl	$LC15, 4(%esp)	 #,
	movl	%edi, (%esp)	 # word,
	call	__stricmp	 #
LVL301:
	testl	%eax, %eax	 # _92
	je	L219	 #,
LVL302:
LBB277:
LBB278:
	.loc 1 607 0
	movl	_theOpcodes, %eax	 # MEM[(struct  *)&theOpcodes], op$asm_instr
LVL303:
	movzbl	_theOpcodes+4, %edx	 # MEM[(struct  *)&theOpcodes + 4B], op$opcode
LVL304:
	movl	$_theOpcodes, %ebp	 #, ivtmp.207
	.loc 1 608 0
	testl	%eax, %eax	 # op$asm_instr
	jne	L246	 #,
	jmp	L226	 #
LVL305:
	.p2align 4,,10
L224:
	.loc 1 607 0
	movl	8(%ebp), %eax	 # MEM[base: _158, offset: 8B], op$asm_instr
LVL306:
	addl	$8, %ebp	 #, ivtmp.207
	movzbl	4(%ebp), %edx	 # MEM[base: _249, offset: 4B], op$opcode
LVL307:
	.loc 1 608 0
	testl	%eax, %eax	 # op$asm_instr
	je	L226	 #,
L246:
	.loc 1 612 0
	movl	%eax, 4(%esp)	 # op$asm_instr,
	movl	%edi, (%esp)	 # word,
	movb	%dl, 31(%esp)	 # op$opcode, %sfp
LVL308:
	call	__stricmp	 #
LVL309:
	testl	%eax, %eax	 # _109
	movzbl	31(%esp), %edx	 # %sfp,
	jne	L224	 #,
	.loc 1 615 0
	cmpl	$1, _STATE	 #, STATE
	jne	L225	 #,
	.loc 1 616 0
	movl	_HERE, %eax	 # HERE, HERE.45_111
	leal	1(%eax), %ecx	 #, tmp249
	movl	%ecx, _HERE	 # tmp249, HERE
	movb	%dl, (%eax)	 # op$opcode, *HERE.59_113
	jmp	L196	 #
LVL310:
L226:
LBE278:
LBE277:
	.loc 1 627 0
	movl	%edi, (%esp)	 # word,
	call	_find_word	 #
LVL311:
	.loc 1 628 0
	testl	%eax, %eax	 # ep
	je	L264	 #,
	.loc 1 630 0
	cmpl	$1, _STATE	 #, STATE
	jne	L228	 #,
	.loc 1 632 0
	movl	_HERE, %edx	 # HERE, HERE.45_126
	leal	1(%edx), %ecx	 #, tmp252
	movl	%ecx, _HERE	 # tmp252, HERE
	movb	$11, (%edx)	 #, *HERE.63_128
	.loc 1 633 0
	movl	(%eax), %edx	 # ep_124->xt, _131
	movl	_HERE, %eax	 # HERE, HERE
LVL312:
	movl	%edx, (%eax)	 # _131, *HERE.50_130
	addl	$4, _HERE	 #, HERE
	jmp	L196	 #
LVL313:
L228:
	.loc 1 637 0
	movl	(%eax), %eax	 # ep_124->xt, ep_124->xt
LVL314:
	movl	%eax, (%esp)	 # ep_124->xt,
	call	_run_program	 #
LVL315:
	jmp	L196	 #
LVL316:
L264:
	.loc 1 643 0
	movl	_BASE, %eax	 # BASE, BASE
LVL317:
	movl	%edi, (%esp)	 # word,
	.loc 1 642 0
	movl	$0, 44(%esp)	 #, num
	.loc 1 643 0
	movl	%eax, 8(%esp)	 # BASE,
	leal	44(%esp), %eax	 #, tmp256
	movl	%eax, 4(%esp)	 # tmp256,
	call	_is_number	 #
LVL318:
	testl	%eax, %eax	 # _137
	je	L229	 #,
LBB280:
LBB281:
	.loc 1 118 0
	movl	_DSP, %eax	 # DSP, tmp269
LBE281:
LBE280:
	.loc 1 645 0
	movl	44(%esp), %edx	 # num, num.67_139
LVL319:
LBB283:
LBB282:
	.loc 1 118 0
	addl	$4, %eax	 #, _141
	cmpl	_DSE, %eax	 # DSE, _141
	movl	%eax, _DSP	 # _141, DSP
	jbe	L230	 #,
	.loc 1 119 0
	movl	_DSS, %eax	 # DSS, DSS
	movl	%eax, _DSP	 # DSS, DSP
L230:
	.loc 1 120 0
	movl	_DSP, %eax	 # DSP, DSP
	movl	%edx, (%eax)	 # num.67_139, *DSP.2_144
LVL320:
LBE282:
LBE283:
	.loc 1 646 0
	cmpl	$1, _STATE	 #, STATE
	jne	L196	 #,
	.loc 1 648 0
	movl	_HERE, %eax	 # HERE, HERE.45_146
	leal	1(%eax), %edx	 #, tmp260
	movl	%edx, _HERE	 # tmp260, HERE
	movb	$28, (%eax)	 #, *HERE.69_148
	jmp	L257	 #
L229:
	.loc 1 653 0
	movl	%edi, 4(%esp)	 # word,
	movl	$LC16, (%esp)	 #,
	call	_printf	 #
LVL321:
	jmp	L196	 #
LVL322:
L225:
LBB284:
LBB279:
	.loc 1 619 0
	movl	_HERE, %ecx	 # HERE, HERE
	leal	10(%ecx), %eax	 #, _115
	.loc 1 620 0
	movl	%edx, 10(%ecx)	 # op$opcode, *PC.61_117
	.loc 1 621 0
	movl	$12, 11(%ecx)	 #, *_121
	.loc 1 619 0
	movl	%eax, %esi	 # _115, PC
	.loc 1 622 0
	movl	%eax, (%esp)	 # _115,
	call	_run_program	 #
LVL323:
	jmp	L196	 #
LBE279:
LBE284:
LBE286:
LBE296:
	.cfi_endproc
LFE83:
	.p2align 4,,15
	.globl	_parse
	.def	_parse;	.scl	2;	.type	32;	.endef
_parse:
LFB84:
	.loc 1 658 0
	.cfi_startproc
LVL324:
	pushl	%ebx	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$88, %esp	 #,
	.cfi_def_cfa_offset 96
LVL325:
	.loc 1 658 0
	movl	96(%esp), %eax	 # line, line
LVL326:
LBB301:
LBB302:
	.loc 1 472 0
	movzbl	(%eax), %edx	 #* line, _12
	testb	%dl, %dl	 # _12
	jne	L306	 #,
	jmp	L266	 #
	.p2align 4,,10
L308:
	.loc 1 474 0
	addl	$1, %eax	 #, line
LVL327:
	.loc 1 472 0
	movzbl	(%eax), %edx	 #* line, _12
	testb	%dl, %dl	 # _12
	je	L266	 #,
L306:
	cmpb	$32, %dl	 #, _12
	jle	L308	 #,
L266:
	.loc 1 478 0
	leal	16(%esp), %ebx	 #, cp
LVL328:
	cmpb	$32, %dl	 #, _12
	movl	%ebx, %ecx	 # cp, cp
	jle	L269	 #,
LVL329:
	.p2align 4,,10
L270:
	.loc 1 480 0
	addl	$1, %ecx	 #, cp
LVL330:
	addl	$1, %eax	 #, line
LVL331:
	movb	%dl, -1(%ecx)	 # _12, MEM[base: cp_17, offset: 4294967295B]
	.loc 1 478 0
	movzbl	(%eax), %edx	 # MEM[base: line_19, offset: 0B], _12
	cmpb	$32, %dl	 #, _12
	jg	L270	 #,
LVL332:
L269:
	.loc 1 482 0
	movb	$0, (%ecx)	 #,* cp
LVL333:
LBE302:
LBE301:
	.loc 1 662 0
	cmpb	$0, 16(%esp)	 #, word
	je	L265	 #,
	.p2align 4,,10
L310:
	.loc 1 664 0
	movl	%ebx, 4(%esp)	 # cp,
	movl	%eax, (%esp)	 # line,
	call	_parseword	 #
LVL334:
LBB304:
LBB305:
	.loc 1 472 0
	movzbl	(%eax), %edx	 #* line, _25
	testb	%dl, %dl	 # _25
	jne	L307	 #,
	jmp	L272	 #
LVL335:
	.p2align 4,,10
L309:
	.loc 1 474 0
	addl	$1, %eax	 #, line
LVL336:
	.loc 1 472 0
	movzbl	(%eax), %edx	 #* line, _25
	testb	%dl, %dl	 # _25
	je	L272	 #,
L307:
	cmpb	$32, %dl	 #, _25
	jle	L309	 #,
L272:
	.loc 1 478 0
	cmpb	$32, %dl	 #, _25
	movl	%ebx, %ecx	 # cp, cp
	jle	L269	 #,
LVL337:
	.p2align 4,,10
L276:
	.loc 1 480 0
	addl	$1, %ecx	 #, cp
LVL338:
	addl	$1, %eax	 #, line
LVL339:
	movb	%dl, -1(%ecx)	 # _25, MEM[base: cp_30, offset: 4294967295B]
	.loc 1 478 0
	movzbl	(%eax), %edx	 # MEM[base: line_32, offset: 0B], _25
	cmpb	$32, %dl	 #, _25
	jg	L276	 #,
LBE305:
LBE304:
LBB306:
LBB303:
	.loc 1 482 0
	movb	$0, (%ecx)	 #,* cp
LVL340:
LBE303:
LBE306:
	.loc 1 662 0
	cmpb	$0, 16(%esp)	 #, word
	jne	L310	 #,
LVL341:
L265:
	.loc 1 667 0
	addl	$88, %esp	 #,
	.cfi_def_cfa_offset 8
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE84:
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
	.p2align 4,,15
	.globl	_doTest
	.def	_doTest;	.scl	2;	.type	32;	.endef
_doTest:
LFB85:
	.loc 1 670 0
	.cfi_startproc
	pushl	%ebp	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%ebx	 #
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$32, %esp	 #,
	.cfi_def_cfa_offset 48
	.loc 1 672 0
	movl	_the_memory, %eax	 # the_memory, the_memory
	movl	$LC17, (%esp)	 #,
	movl	%eax, 4(%esp)	 # the_memory,
	call	_printf	 #
LVL342:
	.loc 1 676 0
	call	_GetTickCount@0	 #
LVL343:
	.loc 1 678 0
	movl	$LC18, (%esp)	 #,
	.loc 1 676 0
	movl	%eax, 28(%esp)	 #, %sfp
LVL344:
	.loc 1 678 0
	call	_printf	 #
LVL345:
	movl	_DSP, %eax	 # DSP, prephitmp_130
	movl	_DSE, %edi	 # DSE, pretmp_131
LBB330:
	.loc 1 679 0
	movl	$1, %edx	 #, i
LBB331:
LBB332:
	.loc 1 119 0
	movl	_DSS, %ebx	 # DSS, DSS.4_39
LVL346:
	.p2align 4,,10
L314:
	.loc 1 118 0
	addl	$4, %eax	 #, _37
	movl	%ebx, %ecx	 # DSS.4_39, _37
	cmpl	%edi, %eax	 # pretmp_131, _37
	ja	L313	 #,
	movl	%eax, %ecx	 # _37, _37
L313:
	.loc 1 120 0
	movl	%edx, (%ecx)	 # i, *prephitmp_133
LBE332:
LBE331:
	.loc 1 679 0
	addl	$1, %edx	 #, i
LVL347:
	movl	%ecx, %eax	 # _37, prephitmp_130
	cmpl	$50000001, %edx	 #, i
	jne	L314	 #,
LBE330:
	.loc 1 683 0
	movl	$LC19, (%esp)	 #,
	movl	%ecx, _DSP	 # _37, DSP
LBB333:
LBB334:
LBB335:
	.loc 1 128 0
	movl	$50000000, %ebx	 #, ivtmp_72
LBE335:
LBE334:
LBE333:
	.loc 1 683 0
	call	_printf	 #
LVL348:
	movl	_DSS, %ebp	 # DSS, pretmp_135
	movl	_DSP, %eax	 # DSP, prephitmp_138
LBB338:
LBB337:
LBB336:
	.loc 1 128 0
	movl	_DSE, %edi	 # DSE, DSE.7_45
LVL349:
	.p2align 4,,10
L317:
	.loc 1 126 0
	movl	(%eax), %ecx	 # *prephitmp_153, v
	.loc 1 127 0
	subl	$4, %eax	 #, _43
	movl	%edi, %edx	 # DSE.7_45, _43
	cmpl	%ebp, %eax	 # pretmp_135, _43
	jb	L316	 #,
	movl	%eax, %edx	 # _43, _43
L316:
LBE336:
LBE337:
	.loc 1 684 0
	subl	$1, %ebx	 #, ivtmp_72
	movl	%edx, %eax	 # _43, prephitmp_138
	.loc 1 686 0
	movl	%ecx, _tmp	 # v, tmp
	.loc 1 684 0
	jne	L317	 #,
	movl	%edx, _DSP	 # _43, DSP
LBE338:
LBB339:
LBB340:
	.loc 1 136 0
	movl	$8, %edi	 #, ivtmp_62
LBE340:
LBE339:
	.loc 1 688 0
	call	_GetTickCount@0	 #
LVL350:
	.loc 1 689 0
	subl	28(%esp), %eax	 # %sfp, end
LVL351:
	.loc 1 690 0
	movl	$274877907, %edx	 #, tmp141
	movl	$LC20, (%esp)	 #,
	.loc 1 689 0
	movl	%eax, %ecx	 # end, tt
LVL352:
	.loc 1 690 0
	mull	%edx	 # tmp141
LVL353:
	shrl	$6, %edx	 #, tmp139
	imull	$1000, %edx, %eax	 #, tmp139, tmp142
	movl	%edx, 4(%esp)	 # tmp139,
	subl	%eax, %ecx	 # tmp142, tmp143
LVL354:
	movl	%ecx, 8(%esp)	 # tmp143,
	call	_printf	 #
LVL355:
LBB347:
LBB344:
	.loc 1 136 0
	movl	$LC0, (%esp)	 #,
	call	_printf	 #
LVL356:
	.p2align 4,,10
L319:
LBB341:
LBB342:
LBB343:
	.loc 1 126 0
	movl	_DSP, %eax	 # DSP, DSP.5_83
	movl	(%eax), %edx	 # *DSP.5_83, v
LVL357:
	.loc 1 127 0
	subl	$4, %eax	 #, _85
	cmpl	_DSS, %eax	 # DSS, _85
	movl	%eax, _DSP	 # _85, DSP
	jnb	L318	 #,
	.loc 1 128 0
	movl	_DSE, %eax	 # DSE, DSE
	movl	%eax, _DSP	 # DSE, DSP
L318:
LVL358:
LBE343:
LBE342:
	.loc 1 138 0
	movl	%edx, 4(%esp)	 # v,
	movl	$LC1, (%esp)	 #,
	call	_printf	 #
LVL359:
	.loc 1 137 0
	subl	$1, %edi	 #, ivtmp_62
	jne	L319	 #,
LBE341:
	.loc 1 139 0
	movl	$41, (%esp)	 #,
	call	_putchar	 #
LVL360:
LBE344:
LBE347:
	.loc 1 691 0
	movl	$10, (%esp)	 #,
	call	_putchar	 #
LVL361:
LBB348:
LBB349:
	.loc 1 441 0
	movl	_num_words, %eax	 # num_words, i
LVL362:
	leal	(%eax,%eax,8), %ebp	 #, tmp150
	sall	$2, %ebp	 #, ivtmp.250
	testl	%eax, %eax	 # i
	jle	L324	 #,
	movl	%eax, %edi	 # i, i
	movl	%ebx, 28(%esp)	 # ivtmp_72, %sfp
LVL363:
	jmp	L323	 #
LVL364:
	.p2align 4,,10
L322:
	subl	$36, %ebp	 #, ivtmp.250
	subl	$1, %edi	 #, i
LVL365:
	je	L344	 #,
LVL366:
L323:
LBB350:
	.loc 1 443 0
	movl	_the_dict, %ebx	 # the_dict, ep
	.loc 1 444 0
	movl	$LC21, (%esp)	 #,
	.loc 1 443 0
	addl	%ebp, %ebx	 # ivtmp.250, ep
LVL367:
	.loc 1 444 0
	leal	5(%ebx), %eax	 #, tmp153
	movl	%eax, 4(%esp)	 # tmp153,
	call	__stricmp	 #
LVL368:
	testl	%eax, %eax	 # _80
	jne	L322	 #,
	movl	%ebx, %edi	 # ep, ep
LVL369:
	movl	28(%esp), %ebx	 # %sfp, ivtmp_72
LVL370:
	movl	%edi, %edx	 # ep, _142
	jmp	L321	 #
LVL371:
L344:
	movl	28(%esp), %ebx	 # %sfp, ivtmp_72
LVL372:
L324:
LBE350:
LBE349:
LBE348:
LBB351:
LBB345:
	.loc 1 136 0
	xorl	%edx, %edx	 # _142
L321:
LVL373:
LBE345:
LBE351:
	.loc 1 700 0
	movl	%edx, 4(%esp)	 # _142,
	movl	$LC22, (%esp)	 #,
	call	_printf	 #
LVL374:
LBB352:
LBB353:
	.loc 1 441 0
	movl	_num_words, %eax	 # num_words, i
LVL375:
	leal	(%eax,%eax,8), %ebp	 #, tmp156
	sall	$2, %ebp	 #, ivtmp.245
	testl	%eax, %eax	 # i
	jle	L329	 #,
	movl	%eax, %edi	 # i, i
	movl	%ebx, 28(%esp)	 # ivtmp_72, %sfp
	jmp	L328	 #
LVL376:
	.p2align 4,,10
L327:
	subl	$36, %ebp	 #, ivtmp.245
	subl	$1, %edi	 #, i
LVL377:
	je	L345	 #,
LVL378:
L328:
LBB354:
	.loc 1 443 0
	movl	_the_dict, %ebx	 # the_dict, ep
	.loc 1 444 0
	movl	$LC23, (%esp)	 #,
	.loc 1 443 0
	addl	%ebp, %ebx	 # ivtmp.245, ep
LVL379:
	.loc 1 444 0
	leal	5(%ebx), %eax	 #, tmp159
	movl	%eax, 4(%esp)	 # tmp159,
	call	__stricmp	 #
LVL380:
	testl	%eax, %eax	 # _70
	jne	L327	 #,
	movl	%ebx, %edi	 # ep, ep
LVL381:
	movl	28(%esp), %ebx	 # %sfp, ivtmp_72
LVL382:
	movl	%edi, %edx	 # ep, _146
	jmp	L326	 #
LVL383:
L345:
	movl	28(%esp), %ebx	 # %sfp, ivtmp_72
LVL384:
L329:
LBE354:
LBE353:
LBE352:
LBB355:
LBB346:
	.loc 1 136 0
	xorl	%edx, %edx	 # _146
L326:
LVL385:
LBE346:
LBE355:
	.loc 1 701 0
	movl	%edx, 4(%esp)	 # _146,
	movl	$LC24, (%esp)	 #,
	call	_printf	 #
LVL386:
LBB356:
LBB357:
	.loc 1 441 0
	movl	_num_words, %eax	 # num_words, i
LVL387:
	leal	(%eax,%eax,8), %ebp	 #, tmp162
	sall	$2, %ebp	 #, ivtmp.240
	testl	%eax, %eax	 # i
	jle	L331	 #,
	movl	%eax, %edi	 # i, i
	movl	%ebx, 28(%esp)	 # ivtmp_72, %sfp
	jmp	L333	 #
LVL388:
	.p2align 4,,10
L332:
	subl	$36, %ebp	 #, ivtmp.240
	subl	$1, %edi	 #, i
LVL389:
	je	L346	 #,
LVL390:
L333:
LBB358:
	.loc 1 443 0
	movl	_the_dict, %ebx	 # the_dict, ep
	.loc 1 444 0
	movl	$LC25, (%esp)	 #,
	.loc 1 443 0
	addl	%ebp, %ebx	 # ivtmp.240, ep
LVL391:
	.loc 1 444 0
	leal	5(%ebx), %eax	 #, tmp165
	movl	%eax, 4(%esp)	 # tmp165,
	call	__stricmp	 #
LVL392:
	testl	%eax, %eax	 # _60
	jne	L332	 #,
LVL393:
L331:
LBE358:
LBE357:
LBE356:
	.loc 1 702 0
	movl	%ebx, 4(%esp)	 # ivtmp_72,
	movl	$LC24, (%esp)	 #,
	call	_printf	 #
LVL394:
	.loc 1 703 0
	addl	$32, %esp	 #,
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
LVL395:
L346:
	.cfi_restore_state
	movl	28(%esp), %ebx	 # %sfp, ivtmp_72
LVL396:
	jmp	L331	 #
	.cfi_endproc
LFE85:
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
	.p2align 4,,15
	.globl	_compile
	.def	_compile;	.scl	2;	.type	32;	.endef
_compile:
LFB86:
	.loc 1 706 0
	.cfi_startproc
	pushl	%edi	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx	 #
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$_theOpcodes, %ebx	 #, ivtmp.290
	subl	$340, %esp	 #,
	.cfi_def_cfa_offset 352
	.loc 1 707 0
	movl	_the_memory, %eax	 # the_memory, the_memory.73_5
	.loc 1 708 0
	leal	1(%eax), %edx	 #, tmp129
	movl	%edx, _HERE	 # tmp129, HERE
	movb	$10, (%eax)	 #, *the_memory.73_5
	.loc 1 709 0
	movl	_HERE, %eax	 # HERE, HERE
LBB369:
LBB370:
	.loc 1 713 0
	movl	_theOpcodes, %edx	 # MEM[(struct  *)&theOpcodes], op$asm_instr
LBE370:
LBE369:
	.loc 1 709 0
	movl	$-286331154, (%eax)	 #, *HERE.78_12
	addl	$4, _HERE	 #, HERE
LVL397:
LBB372:
LBB371:
	.loc 1 714 0
	testl	%edx, %edx	 # op$asm_instr
	.loc 1 713 0
	movzbl	_theOpcodes+4, %eax	 # MEM[(struct  *)&theOpcodes + 4B],
LVL398:
	.loc 1 714 0
	je	L351	 #,
LVL399:
L391:
	.loc 1 718 0
	movl	%edx, 8(%esp)	 # op$asm_instr,
	movl	%eax, 4(%esp)	 # op$opcode,
	addl	$8, %ebx	 #, ivtmp.290
	movl	$LC28, (%esp)	 #,
	call	_printf	 #
LVL400:
	.loc 1 713 0
	movl	(%ebx), %edx	 # MEM[base: _68, offset: 8B], op$asm_instr
LVL401:
	movzbl	4(%ebx), %eax	 # MEM[base: _136, offset: 4B],
LVL402:
	.loc 1 714 0
	testl	%edx, %edx	 # op$asm_instr
	jne	L391	 #,
L351:
LVL403:
LBE371:
LBE372:
	.loc 1 721 0
	call	_doTest	 #
LVL404:
LBB373:
LBB374:
	.loc 1 108 0
	movl	$LC26, 4(%esp)	 #,
	movl	$LC27, (%esp)	 #,
	call	_fopen	 #
LVL405:
LBE374:
LBE373:
	.loc 1 725 0
	testl	%eax, %eax	 # fp
LBB376:
LBB375:
	.loc 1 109 0
	movl	%eax, _input_fp	 # fp, input_fp
LVL406:
LBE375:
LBE376:
	.loc 1 725 0
	je	L349	 #,
	leal	80(%esp), %edi	 #, line
LBB377:
LBB378:
LBB379:
LBB380:
	.loc 1 478 0
	leal	16(%esp), %ebx	 #, cp
	.p2align 4,,10
L350:
LBE380:
LBE379:
LBE378:
LBE377:
	.loc 1 732 0
	movl	%eax, 8(%esp)	 # fp,
	movl	$256, 4(%esp)	 #,
	movl	%edi, (%esp)	 # line,
	call	_fgets	 #
LVL407:
	cmpl	%edi, %eax	 # line, _25
	jne	L365	 #,
LVL408:
LBB391:
LBB389:
LBB384:
LBB381:
	.loc 1 472 0
	movzbl	80(%esp), %edx	 # MEM[(char *)&buf], _49
	testb	%dl, %dl	 # _49
	je	L371	 #,
	cmpb	$32, %dl	 #, _49
	movl	%edi, %eax	 # line, line
	jle	L385	 #,
LVL409:
	jmp	L371	 #
	.p2align 4,,10
L401:
	cmpb	$32, %dl	 #, _49
	jg	L368	 #,
L385:
	.loc 1 474 0
	addl	$1, %eax	 #, line
LVL410:
	.loc 1 472 0
	movzbl	(%eax), %edx	 # MEM[base: line_48, offset: 0B], _49
	testb	%dl, %dl	 # _49
	jne	L401	 #,
L368:
LVL411:
	.loc 1 478 0
	cmpb	$32, %dl	 #, _49
	movl	%ebx, %ecx	 # cp, cp
	jle	L355	 #,
LVL412:
	.p2align 4,,10
L356:
	.loc 1 480 0
	addl	$1, %ecx	 #, cp
LVL413:
	addl	$1, %eax	 #, line
LVL414:
	movb	%dl, -1(%ecx)	 # _49, MEM[base: cp_54, offset: 4294967295B]
	.loc 1 478 0
	movzbl	(%eax), %edx	 # MEM[base: line_56, offset: 0B], _49
	cmpb	$32, %dl	 #, _49
	jg	L356	 #,
LVL415:
L355:
	.loc 1 482 0
	movb	$0, (%ecx)	 #,* cp
LVL416:
LBE381:
LBE384:
	.loc 1 662 0
	cmpb	$0, 16(%esp)	 #, word
	je	L402	 #,
	.p2align 4,,10
L384:
	.loc 1 664 0
	movl	%ebx, 4(%esp)	 # cp,
	movl	%eax, (%esp)	 # line,
	call	_parseword	 #
LVL417:
LBB385:
LBB386:
	.loc 1 472 0
	movzbl	(%eax), %edx	 # *line_59, _62
	cmpb	$32, %dl	 #, _62
	jg	L358	 #,
	testb	%dl, %dl	 # _62
	jne	L359	 #,
	jmp	L358	 #
LVL418:
	.p2align 4,,10
L403:
	cmpb	$32, %dl	 #, _62
	jg	L358	 #,
L359:
	.loc 1 474 0
	addl	$1, %eax	 #, line
LVL419:
	.loc 1 472 0
	movzbl	(%eax), %edx	 # MEM[base: line_61, offset: 0B], _62
	testb	%dl, %dl	 # _62
	jne	L403	 #,
L358:
	.loc 1 478 0
	cmpb	$32, %dl	 #, _62
	movl	%ebx, %ecx	 # cp, cp
	jle	L355	 #,
LVL420:
	.p2align 4,,10
L362:
	.loc 1 480 0
	addl	$1, %ecx	 #, cp
LVL421:
	addl	$1, %eax	 #, line
LVL422:
	movb	%dl, -1(%ecx)	 # _62, MEM[base: cp_67, offset: 4294967295B]
	.loc 1 478 0
	movzbl	(%eax), %edx	 # MEM[base: line_69, offset: 0B], _62
	cmpb	$32, %dl	 #, _62
	jg	L362	 #,
LBE386:
LBE385:
LBB387:
LBB382:
	.loc 1 482 0
	movb	$0, (%ecx)	 #,* cp
LVL423:
LBE382:
LBE387:
	.loc 1 662 0
	cmpb	$0, 16(%esp)	 #, word
	jne	L384	 #,
LVL424:
L402:
	movl	_input_fp, %eax	 # input_fp, fp
LVL425:
	jmp	L350	 #
L365:
LBE389:
LBE391:
	.loc 1 738 0
	movl	_num_words, %eax	 # num_words, num_words
	movl	_the_dict, %edx	 # the_dict,
	leal	(%eax,%eax,8), %eax	 #, tmp158
	leal	(%edx,%eax,4), %eax	 #, tmp160
	movl	(%eax), %edx	 # _33->xt, _34
	movl	_the_memory, %eax	 # the_memory, the_memory
	movl	%edx, 1(%eax)	 # _34, MEM[(CELL *)the_memory.73_27 + 1B]
	.loc 1 740 0
	movl	_input_fp, %eax	 # input_fp, input_fp
	movl	%eax, (%esp)	 # input_fp,
	call	_fclose	 #
LVL426:
	.loc 1 741 0
	movl	$0, _input_fp	 #, input_fp
	.loc 1 742 0
	addl	$340, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%edi	 #
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
LVL427:
L371:
	.cfi_restore_state
LBB392:
LBB390:
LBB388:
LBB383:
	.loc 1 472 0
	movl	%edi, %eax	 # line, line
	jmp	L368	 #
LVL428:
L349:
LBE383:
LBE388:
LBE390:
LBE392:
	.loc 1 727 0
	movl	$LC29, (%esp)	 #,
	call	_printf	 #
LVL429:
	.loc 1 728 0
	movl	$1, (%esp)	 #,
	call	_exit	 #
LVL430:
	.cfi_endproc
LFE86:
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
	.p2align 4,,15
	.globl	_write_output_file
	.def	_write_output_file;	.scl	2;	.type	32;	.endef
_write_output_file:
LFB87:
	.loc 1 746 0
	.cfi_startproc
LVL431:
	pushl	%ebx	 #
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp	 #,
	.cfi_def_cfa_offset 32
LBB399:
LBB400:
	.loc 1 108 0
	movl	$LC30, 4(%esp)	 #,
	movl	$LC31, (%esp)	 #,
	call	_fopen	 #
LVL432:
LBE400:
LBE399:
	.loc 1 748 0
	testl	%eax, %eax	 # fp
LBB402:
LBB401:
	.loc 1 109 0
	movl	%eax, _output_fp	 # fp, output_fp
LVL433:
LBE401:
LBE402:
	.loc 1 748 0
	je	L407	 #,
	.loc 1 754 0
	movl	%eax, 12(%esp)	 # fp,
	movl	_MEM_SZ, %eax	 # MEM_SZ, MEM_SZ
	movl	$1, 4(%esp)	 #,
	movl	%eax, 8(%esp)	 # MEM_SZ,
	movl	_the_memory, %eax	 # the_memory, the_memory
	movl	%eax, (%esp)	 # the_memory,
	call	_fwrite	 #
LVL434:
	movl	%eax, %ebx	 #, _6
LVL435:
	.loc 1 755 0
	movl	_output_fp, %eax	 # output_fp, output_fp
LVL436:
	movl	%eax, (%esp)	 # output_fp,
	call	_fclose	 #
LVL437:
	.loc 1 757 0
	movl	%ebx, 8(%esp)	 # _6,
	movl	$LC31, 4(%esp)	 #,
	movl	$LC33, (%esp)	 #,
	.loc 1 756 0
	movl	$0, _output_fp	 #, output_fp
	.loc 1 757 0
	call	_printf	 #
LVL438:
	.loc 1 758 0
	addl	$24, %esp	 #,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx	 #
	.cfi_restore 3
	.cfi_def_cfa_offset 4
LVL439:
	ret
L407:
	.cfi_restore_state
LBB403:
LBB404:
	.loc 1 750 0
	movl	$LC32, (%esp)	 #,
	call	_printf	 #
LVL440:
	.loc 1 751 0
	movl	$1, (%esp)	 #,
	call	_exit	 #
LVL441:
LBE404:
LBE403:
	.cfi_endproc
LFE87:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC34:
	.ascii " %d.%03d seconds\12\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB88:
	.loc 1 761 0
	.cfi_startproc
LVL442:
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
	.loc 1 761 0
	call	___main	 #
LVL443:
	.loc 1 762 0
	movl	$-10, (%esp)	 #,
	call	_GetStdHandle@4	 #
LVL444:
	subl	$4, %esp	 #,
	movl	%eax, _hStdin	 # _4, hStdin
	.loc 1 763 0
	movl	$-11, (%esp)	 #,
	call	_GetStdHandle@4	 #
LVL445:
	movl	%eax, _hStdout	 # _7, hStdout
	.loc 1 765 0
	movl	_MEM_SZ, %eax	 # MEM_SZ, MEM_SZ
	.loc 1 763 0
	subl	$4, %esp	 #,
	.loc 1 765 0
	movl	$1, 4(%esp)	 #,
	movl	%eax, (%esp)	 # MEM_SZ,
	call	_calloc	 #
LVL446:
	.loc 1 769 0
	movl	$1, 4(%esp)	 #,
	movl	$73728, (%esp)	 #,
	.loc 1 765 0
	movl	%eax, _the_memory	 # tmp104, the_memory
LVL447:
	.loc 1 769 0
	call	_calloc	 #
LVL448:
	movl	%eax, _the_dict	 # tmp105, the_dict
	.loc 1 772 0
	call	_compile	 #
LVL449:
	.loc 1 773 0
	call	_write_output_file	 #
LVL450:
	.loc 1 774 0
	call	_dump_words	 #
LVL451:
	.loc 1 775 0
	movl	$10, (%esp)	 #,
	call	_putchar	 #
LVL452:
	.loc 1 777 0
	call	_GetTickCount@0	 #
LVL453:
	movl	%eax, %ebx	 #, st
LVL454:
	.loc 1 778 0
	movl	_all_ok, %eax	 # all_ok,
LVL455:
	testl	%eax, %eax	 #
	je	L409	 #,
	.loc 1 779 0
	movl	_the_memory, %eax	 # the_memory, the_memory
	movl	%eax, (%esp)	 # the_memory,
	call	_run_program	 #
LVL456:
L409:
	.loc 1 780 0
	call	_GetTickCount@0	 #
LVL457:
	.loc 1 782 0
	movl	$274877907, %edx	 #, tmp109
	.loc 1 781 0
	subl	%ebx, %eax	 # st, ee
LVL458:
	.loc 1 782 0
	movl	$LC34, (%esp)	 #,
	.loc 1 781 0
	movl	%eax, %ecx	 # ee, tt
LVL459:
	.loc 1 782 0
	mull	%edx	 # tmp109
LVL460:
	shrl	$6, %edx	 #, tmp107
	imull	$1000, %edx, %eax	 #, tmp107, tmp110
	movl	%edx, 4(%esp)	 # tmp107,
	subl	%eax, %ecx	 # tmp110, tmp111
LVL461:
	movl	%ecx, 8(%esp)	 # tmp111,
	call	_printf	 #
LVL462:
	.loc 1 785 0
	leal	-8(%ebp), %esp	 #,
	xorl	%eax, %eax	 #
	popl	%ecx	 #
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx	 #
	.cfi_restore 3
LVL463:
	popl	%ebp	 #
	.cfi_restore 5
	leal	-4(%ecx), %esp	 #,
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE88:
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
	.long	LC15
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
	.long	LC10
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
	.file 3 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stddef.h"
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
	.long	0x39ef
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C11 6.3.0 -mtune=generic -march=i586 -g -Ofast\0"
	.byte	0xc
	.ascii "mf.c\0"
	.ascii "C:\\Users\\Chris\\Git-Repos\\MachineForth\0"
	.secrel32	Ldebug_ranges0+0x2c0
	.long	0
	.secrel32	Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0x77
	.uleb128 0x4
	.ascii "DWORD\0"
	.byte	0x2
	.byte	0xf5
	.long	0x91
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
	.long	0xbe
	.uleb128 0x3
	.long	0xad
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x5
	.ascii "WORD\0"
	.byte	0x2
	.word	0x101
	.long	0xdc
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
	.long	0xad
	.uleb128 0x6
	.byte	0x4
	.long	0x107
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
	.byte	0xd8
	.long	0x113
	.uleb128 0x4
	.ascii "SHORT\0"
	.byte	0x4
	.byte	0x5c
	.long	0x13e
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x77
	.uleb128 0x6
	.byte	0x4
	.long	0xdc
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x4
	.ascii "HANDLE\0"
	.byte	0x4
	.byte	0xa2
	.long	0x157
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
	.word	0x704
	.long	0x1ed
	.uleb128 0x9
	.ascii "Data1\0"
	.byte	0x4
	.word	0x705
	.long	0x91
	.byte	0
	.uleb128 0x9
	.ascii "Data2\0"
	.byte	0x4
	.word	0x706
	.long	0xdc
	.byte	0x4
	.uleb128 0x9
	.ascii "Data3\0"
	.byte	0x4
	.word	0x707
	.long	0xdc
	.byte	0x6
	.uleb128 0x9
	.ascii "Data4\0"
	.byte	0x4
	.word	0x708
	.long	0x1ed
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0xbe
	.long	0x1fd
	.uleb128 0xb
	.long	0x1fd
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x5
	.ascii "GUID\0"
	.byte	0x4
	.word	0x709
	.long	0x1a1
	.uleb128 0x3
	.long	0x209
	.uleb128 0xc
	.ascii "_SMALL_RECT\0"
	.byte	0x8
	.byte	0x5
	.byte	0x45
	.long	0x266
	.uleb128 0xd
	.ascii "Left\0"
	.byte	0x5
	.byte	0x46
	.long	0x131
	.byte	0
	.uleb128 0xd
	.ascii "Top\0"
	.byte	0x5
	.byte	0x47
	.long	0x131
	.byte	0x2
	.uleb128 0xd
	.ascii "Right\0"
	.byte	0x5
	.byte	0x48
	.long	0x131
	.byte	0x4
	.uleb128 0xd
	.ascii "Bottom\0"
	.byte	0x5
	.byte	0x49
	.long	0x131
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.ascii "SMALL_RECT\0"
	.byte	0x5
	.byte	0x4a
	.long	0x21b
	.uleb128 0xc
	.ascii "_COORD\0"
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.long	0x29c
	.uleb128 0xd
	.ascii "X\0"
	.byte	0x5
	.byte	0x50
	.long	0x131
	.byte	0
	.uleb128 0xd
	.ascii "Y\0"
	.byte	0x5
	.byte	0x51
	.long	0x131
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.ascii "COORD\0"
	.byte	0x5
	.byte	0x52
	.long	0x278
	.uleb128 0xc
	.ascii "_CONSOLE_SCREEN_BUFFER_INFO\0"
	.byte	0x16
	.byte	0x5
	.byte	0x57
	.long	0x337
	.uleb128 0xd
	.ascii "dwSize\0"
	.byte	0x5
	.byte	0x58
	.long	0x29c
	.byte	0
	.uleb128 0xd
	.ascii "dwCursorPosition\0"
	.byte	0x5
	.byte	0x59
	.long	0x29c
	.byte	0x4
	.uleb128 0xd
	.ascii "wAttributes\0"
	.byte	0x5
	.byte	0x5a
	.long	0xcf
	.byte	0x8
	.uleb128 0xd
	.ascii "srWindow\0"
	.byte	0x5
	.byte	0x5b
	.long	0x266
	.byte	0xa
	.uleb128 0xd
	.ascii "dwMaximumWindowSize\0"
	.byte	0x5
	.byte	0x5c
	.long	0x29c
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.ascii "CONSOLE_SCREEN_BUFFER_INFO\0"
	.byte	0x5
	.byte	0x5d
	.long	0x2a9
	.uleb128 0x4
	.ascii "IID\0"
	.byte	0x6
	.byte	0x81
	.long	0x209
	.uleb128 0x3
	.long	0x359
	.uleb128 0x4
	.ascii "CLSID\0"
	.byte	0x6
	.byte	0x83
	.long	0x209
	.uleb128 0x3
	.long	0x369
	.uleb128 0x4
	.ascii "FMTID\0"
	.byte	0x6
	.byte	0x88
	.long	0x209
	.uleb128 0x3
	.long	0x37b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0xe
	.ascii "VARENUM\0"
	.byte	0x4
	.long	0x113
	.byte	0x13
	.byte	0xdd
	.long	0x60a
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
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IClassFactory\0"
	.byte	0x7
	.byte	0x14
	.long	0x364
	.uleb128 0x6
	.byte	0x4
	.long	0x14b
	.uleb128 0x12
	.byte	0x4
	.long	0x113
	.byte	0xf
	.word	0x207
	.long	0x714
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
	.long	0x7f
	.uleb128 0x11
	.ascii "_argc\0"
	.byte	0x8
	.byte	0x63
	.long	0xa6
	.uleb128 0x11
	.ascii "_argv\0"
	.byte	0x8
	.byte	0x64
	.long	0x637
	.uleb128 0x11
	.ascii "__mb_cur_max\0"
	.byte	0x8
	.byte	0x8e
	.long	0xa6
	.uleb128 0x11
	.ascii "_sys_nerr\0"
	.byte	0x8
	.byte	0xca
	.long	0xa6
	.uleb128 0xa
	.long	0x14b
	.long	0x764
	.uleb128 0x13
	.byte	0
	.uleb128 0x11
	.ascii "_sys_errlist\0"
	.byte	0x8
	.byte	0xe3
	.long	0x759
	.uleb128 0x11
	.ascii "_osver\0"
	.byte	0x8
	.byte	0xfa
	.long	0x113
	.uleb128 0x11
	.ascii "_winver\0"
	.byte	0x8
	.byte	0xfb
	.long	0x113
	.uleb128 0x11
	.ascii "_winmajor\0"
	.byte	0x8
	.byte	0xfc
	.long	0x113
	.uleb128 0x11
	.ascii "_winminor\0"
	.byte	0x8
	.byte	0xfd
	.long	0x113
	.uleb128 0x14
	.ascii "_fmode\0"
	.byte	0x8
	.word	0x145
	.long	0xa6
	.uleb128 0x14
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x9
	.word	0x1c2
	.long	0x388
	.uleb128 0x14
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x9
	.word	0x1c3
	.long	0x388
	.uleb128 0x14
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x9
	.word	0x1c4
	.long	0x388
	.uleb128 0x14
	.ascii "IID_ISequentialStream\0"
	.byte	0x9
	.word	0x1d0
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IStream\0"
	.byte	0x9
	.word	0x1dc
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IMarshal\0"
	.byte	0x9
	.word	0x1f1
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0x9
	.word	0x201
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IMalloc\0"
	.byte	0x9
	.word	0x20c
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IMallocSpy\0"
	.byte	0x9
	.word	0x21c
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IMessageFilter\0"
	.byte	0x9
	.word	0x232
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IPersist\0"
	.byte	0x9
	.word	0x23f
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IPersistStream\0"
	.byte	0x9
	.word	0x24a
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x9
	.word	0x259
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IBindCtx\0"
	.byte	0x9
	.word	0x26a
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IMoniker\0"
	.byte	0x9
	.word	0x27e
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IPersistStorage\0"
	.byte	0x9
	.word	0x29c
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IPersistFile\0"
	.byte	0x9
	.word	0x2ad
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IAdviseSink\0"
	.byte	0x9
	.word	0x2bd
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IAdviseSink2\0"
	.byte	0x9
	.word	0x2cc
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IDataObject\0"
	.byte	0x9
	.word	0x2dc
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x9
	.word	0x2ef
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IStorage\0"
	.byte	0x9
	.word	0x2fd
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IRootStorage\0"
	.byte	0x9
	.word	0x316
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0x9
	.word	0x321
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0x9
	.word	0x330
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0x9
	.word	0x33d
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0x9
	.word	0x34e
	.long	0x364
	.uleb128 0x14
	.ascii "IID_ILockBytes\0"
	.byte	0x9
	.word	0x35b
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IExternalConnection\0"
	.byte	0x9
	.word	0x36c
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IRunnableObject\0"
	.byte	0x9
	.word	0x378
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IROTData\0"
	.byte	0x9
	.word	0x387
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IChannelHook\0"
	.byte	0x9
	.word	0x392
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IPropertyStorage\0"
	.byte	0x9
	.word	0x3a2
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x9
	.word	0x3b8
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IClientSecurity\0"
	.byte	0x9
	.word	0x3c6
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IServerSecurity\0"
	.byte	0x9
	.word	0x3d3
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IClassActivator\0"
	.byte	0x9
	.word	0x3e1
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IFillLockBytes\0"
	.byte	0x9
	.word	0x3ec
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IProgressNotify\0"
	.byte	0x9
	.word	0x3fa
	.long	0x364
	.uleb128 0x14
	.ascii "IID_ILayoutStorage\0"
	.byte	0x9
	.word	0x405
	.long	0x364
	.uleb128 0x14
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0x9
	.word	0x413
	.long	0x364
	.uleb128 0x11
	.ascii "GUID_NULL\0"
	.byte	0xa
	.byte	0xa
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IRpcChannel\0"
	.byte	0xa
	.byte	0xb
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IRpcStub\0"
	.byte	0xa
	.byte	0xc
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IStubManager\0"
	.byte	0xa
	.byte	0xd
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IRpcProxy\0"
	.byte	0xa
	.byte	0xe
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IProxyManager\0"
	.byte	0xa
	.byte	0xf
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IPSFactory\0"
	.byte	0xa
	.byte	0x10
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IInternalMoniker\0"
	.byte	0xa
	.byte	0x11
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IDfReserved1\0"
	.byte	0xa
	.byte	0x12
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IDfReserved2\0"
	.byte	0xa
	.byte	0x13
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IDfReserved3\0"
	.byte	0xa
	.byte	0x14
	.long	0x364
	.uleb128 0x11
	.ascii "CLSID_StdMarshal\0"
	.byte	0xa
	.byte	0x15
	.long	0x376
	.uleb128 0x11
	.ascii "IID_IStub\0"
	.byte	0xa
	.byte	0x16
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IProxy\0"
	.byte	0xa
	.byte	0x17
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IEnumGeneric\0"
	.byte	0xa
	.byte	0x18
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IEnumHolder\0"
	.byte	0xa
	.byte	0x19
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IEnumCallback\0"
	.byte	0xa
	.byte	0x1a
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IOleManager\0"
	.byte	0xa
	.byte	0x1b
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IOlePresObj\0"
	.byte	0xa
	.byte	0x1c
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IDebug\0"
	.byte	0xa
	.byte	0x1d
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IDebugStream\0"
	.byte	0xa
	.byte	0x1e
	.long	0x364
	.uleb128 0x11
	.ascii "CLSID_PSGenObject\0"
	.byte	0xa
	.byte	0x1f
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_PSClientSite\0"
	.byte	0xa
	.byte	0x20
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_PSClassObject\0"
	.byte	0xa
	.byte	0x21
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xa
	.byte	0x22
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xa
	.byte	0x23
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xa
	.byte	0x24
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xa
	.byte	0x25
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xa
	.byte	0x26
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xa
	.byte	0x27
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_StaticDib\0"
	.byte	0xa
	.byte	0x28
	.long	0x376
	.uleb128 0x11
	.ascii "CID_CDfsVolume\0"
	.byte	0xa
	.byte	0x29
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xa
	.byte	0x2a
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xa
	.byte	0x2b
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xa
	.byte	0x2c
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xa
	.byte	0x2d
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xa
	.byte	0x2e
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xa
	.byte	0x2f
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xa
	.byte	0x30
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDLabel\0"
	.byte	0xa
	.byte	0x31
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xa
	.byte	0x32
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDListBox\0"
	.byte	0xa
	.byte	0x33
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xa
	.byte	0x34
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xa
	.byte	0x35
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xa
	.byte	0x36
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xa
	.byte	0x37
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xa
	.byte	0x38
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xa
	.byte	0x39
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xa
	.byte	0x3a
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3b
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3c
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xa
	.byte	0x3d
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3e
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xa
	.byte	0x3f
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xa
	.byte	0x40
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xa
	.byte	0x41
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xa
	.byte	0x42
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xa
	.byte	0x43
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xa
	.byte	0x44
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xa
	.byte	0x45
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xa
	.byte	0x46
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xa
	.byte	0x47
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_CSystemPage\0"
	.byte	0xa
	.byte	0x48
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xa
	.byte	0x49
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xa
	.byte	0x4a
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xa
	.byte	0x4b
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xa
	.byte	0x4c
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xa
	.byte	0x4d
	.long	0x376
	.uleb128 0x11
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xa
	.byte	0x4e
	.long	0x376
	.uleb128 0x11
	.ascii "GUID_TRISTATE\0"
	.byte	0xa
	.byte	0x4f
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IDispatch\0"
	.byte	0xb
	.byte	0xb
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPropertyNotifySink\0"
	.byte	0xb
	.byte	0xc
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IClassFactory2\0"
	.byte	0xb
	.byte	0xd
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IProvideClassInfo\0"
	.byte	0xb
	.byte	0xe
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IProvideClassInfo2\0"
	.byte	0xb
	.byte	0xf
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IConnectionPointContainer\0"
	.byte	0xb
	.byte	0x10
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumConnectionPoints\0"
	.byte	0xb
	.byte	0x11
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IConnectionPoint\0"
	.byte	0xb
	.byte	0x12
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumConnections\0"
	.byte	0xb
	.byte	0x13
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleControl\0"
	.byte	0xb
	.byte	0x14
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleControlSite\0"
	.byte	0xb
	.byte	0x15
	.long	0x216
	.uleb128 0x11
	.ascii "IID_ISimpleFrameSite\0"
	.byte	0xb
	.byte	0x16
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPersistStreamInit\0"
	.byte	0xb
	.byte	0x17
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPersistMemory\0"
	.byte	0xb
	.byte	0x18
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPersistPropertyBag\0"
	.byte	0xb
	.byte	0x19
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPropertyBag\0"
	.byte	0xb
	.byte	0x1a
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IErrorLog\0"
	.byte	0xb
	.byte	0x1b
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPropertyFrame\0"
	.byte	0xb
	.byte	0x1c
	.long	0x216
	.uleb128 0x11
	.ascii "IID_ISpecifyPropertyPages\0"
	.byte	0xb
	.byte	0x1d
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPerPropertyBrowsing\0"
	.byte	0xb
	.byte	0x1e
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPropertyPageSite\0"
	.byte	0xb
	.byte	0x1f
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPropertyPage\0"
	.byte	0xb
	.byte	0x20
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPropertyPage2\0"
	.byte	0xb
	.byte	0x21
	.long	0x216
	.uleb128 0x11
	.ascii "CLSID_CFontPropPage\0"
	.byte	0xb
	.byte	0x22
	.long	0x216
	.uleb128 0x11
	.ascii "CLSID_CColorPropPage\0"
	.byte	0xb
	.byte	0x23
	.long	0x216
	.uleb128 0x11
	.ascii "CLSID_CPicturePropPage\0"
	.byte	0xb
	.byte	0x24
	.long	0x216
	.uleb128 0x11
	.ascii "CLSID_PersistPropset\0"
	.byte	0xb
	.byte	0x25
	.long	0x216
	.uleb128 0x11
	.ascii "CLSID_ConvertVBX\0"
	.byte	0xb
	.byte	0x26
	.long	0x216
	.uleb128 0x11
	.ascii "CLSID_StdFont\0"
	.byte	0xb
	.byte	0x27
	.long	0x216
	.uleb128 0x11
	.ascii "CLSID_StdPicture\0"
	.byte	0xb
	.byte	0x28
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IFont\0"
	.byte	0xb
	.byte	0x29
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IFontDisp\0"
	.byte	0xb
	.byte	0x2a
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPicture\0"
	.byte	0xb
	.byte	0x2b
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IPictureDisp\0"
	.byte	0xb
	.byte	0x2c
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_HIMETRIC\0"
	.byte	0xb
	.byte	0x2d
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_COLOR\0"
	.byte	0xb
	.byte	0x2e
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_XPOSPIXEL\0"
	.byte	0xb
	.byte	0x2f
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_YPOSPIXEL\0"
	.byte	0xb
	.byte	0x30
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_XSIZEPIXEL\0"
	.byte	0xb
	.byte	0x31
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_YSIZEPIXEL\0"
	.byte	0xb
	.byte	0x32
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_XPOS\0"
	.byte	0xb
	.byte	0x33
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_YPOS\0"
	.byte	0xb
	.byte	0x34
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_XSIZE\0"
	.byte	0xb
	.byte	0x35
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_YSIZE\0"
	.byte	0xb
	.byte	0x36
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_OPTIONVALUEEXCLUSIVE\0"
	.byte	0xb
	.byte	0x38
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_CHECKVALUEEXCLUSIVE\0"
	.byte	0xb
	.byte	0x39
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_FONTNAME\0"
	.byte	0xb
	.byte	0x3a
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_FONTSIZE\0"
	.byte	0xb
	.byte	0x3b
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_FONTBOLD\0"
	.byte	0xb
	.byte	0x3c
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_FONTITALIC\0"
	.byte	0xb
	.byte	0x3d
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_FONTUNDERSCORE\0"
	.byte	0xb
	.byte	0x3e
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_FONTSTRIKETHROUGH\0"
	.byte	0xb
	.byte	0x3f
	.long	0x216
	.uleb128 0x11
	.ascii "GUID_HANDLE\0"
	.byte	0xb
	.byte	0x40
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumUnknown\0"
	.byte	0xb
	.byte	0x41
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumString\0"
	.byte	0xb
	.byte	0x42
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumMoniker\0"
	.byte	0xb
	.byte	0x43
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0xb
	.byte	0x44
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0xb
	.byte	0x45
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0xb
	.byte	0x46
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0xb
	.byte	0x47
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IViewObject\0"
	.byte	0xb
	.byte	0x4f
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0xb
	.byte	0x53
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleObject\0"
	.byte	0xb
	.byte	0x54
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0xb
	.byte	0x55
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleWindow\0"
	.byte	0xb
	.byte	0x56
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0xb
	.byte	0x57
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0xb
	.byte	0x58
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0xb
	.byte	0x59
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleClientSite\0"
	.byte	0xb
	.byte	0x5a
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0xb
	.byte	0x5b
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IParseDisplayName\0"
	.byte	0xb
	.byte	0x5c
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleContainer\0"
	.byte	0xb
	.byte	0x5d
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleItemContainer\0"
	.byte	0xb
	.byte	0x5e
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleLink\0"
	.byte	0xb
	.byte	0x5f
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleCache\0"
	.byte	0xb
	.byte	0x60
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IDropSource\0"
	.byte	0xb
	.byte	0x63
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IDropTarget\0"
	.byte	0xb
	.byte	0x64
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IViewObject2\0"
	.byte	0xb
	.byte	0x69
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleCache2\0"
	.byte	0xb
	.byte	0x6a
	.long	0x216
	.uleb128 0x11
	.ascii "IID_IOleCacheControl\0"
	.byte	0xb
	.byte	0x6b
	.long	0x216
	.uleb128 0x11
	.ascii "IID_ITypeLib\0"
	.byte	0xc
	.byte	0x52
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ITypeLib2\0"
	.byte	0xc
	.byte	0x53
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0xc
	.byte	0x54
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0xc
	.byte	0x55
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ICreateTypeLib\0"
	.byte	0xc
	.byte	0x56
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0xc
	.byte	0x57
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ITypeInfo\0"
	.byte	0xc
	.byte	0x58
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ITypeInfo2\0"
	.byte	0xc
	.byte	0x59
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IErrorInfo\0"
	.byte	0xc
	.byte	0x5a
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IEnumVARIANT\0"
	.byte	0xc
	.byte	0x5c
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0xc
	.byte	0x5d
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0xc
	.byte	0x5e
	.long	0x364
	.uleb128 0x11
	.ascii "IID_IRecordInfo\0"
	.byte	0xc
	.byte	0x5f
	.long	0x364
	.uleb128 0x11
	.ascii "IID_ITypeMarshal\0"
	.byte	0xc
	.byte	0x60
	.long	0x364
	.uleb128 0xc
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0xd
	.byte	0xd2
	.long	0x1d62
	.uleb128 0xd
	.ascii "_ptr\0"
	.byte	0xd
	.byte	0xd4
	.long	0x14b
	.byte	0
	.uleb128 0xd
	.ascii "_cnt\0"
	.byte	0xd
	.byte	0xd5
	.long	0xa6
	.byte	0x4
	.uleb128 0xd
	.ascii "_base\0"
	.byte	0xd
	.byte	0xd6
	.long	0x14b
	.byte	0x8
	.uleb128 0xd
	.ascii "_flag\0"
	.byte	0xd
	.byte	0xd7
	.long	0xa6
	.byte	0xc
	.uleb128 0xd
	.ascii "_file\0"
	.byte	0xd
	.byte	0xd8
	.long	0xa6
	.byte	0x10
	.uleb128 0xd
	.ascii "_charbuf\0"
	.byte	0xd
	.byte	0xd9
	.long	0xa6
	.byte	0x14
	.uleb128 0xd
	.ascii "_bufsiz\0"
	.byte	0xd
	.byte	0xda
	.long	0xa6
	.byte	0x18
	.uleb128 0xd
	.ascii "_tmpfname\0"
	.byte	0xd
	.byte	0xdb
	.long	0x14b
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.ascii "FILE\0"
	.byte	0xd
	.byte	0xdc
	.long	0x1cdb
	.uleb128 0xa
	.long	0x1d62
	.long	0x1d79
	.uleb128 0x13
	.byte	0
	.uleb128 0x11
	.ascii "_iob\0"
	.byte	0xd
	.byte	0xef
	.long	0x1d6e
	.uleb128 0xa
	.long	0xdc
	.long	0x1d90
	.uleb128 0x13
	.byte	0
	.uleb128 0x11
	.ascii "_ctype\0"
	.byte	0xe
	.byte	0x8c
	.long	0x1d85
	.uleb128 0x11
	.ascii "_pctype\0"
	.byte	0xe
	.byte	0x90
	.long	0x151
	.uleb128 0x4
	.ascii "CELL\0"
	.byte	0x1
	.byte	0xb
	.long	0x91
	.uleb128 0x15
	.ascii "MEM_SZ\0"
	.byte	0x1
	.byte	0xf
	.long	0x1dad
	.uleb128 0x5
	.byte	0x3
	.long	_MEM_SZ
	.uleb128 0x16
	.byte	0x8
	.byte	0x1
	.byte	0x1e
	.long	0x1df7
	.uleb128 0xd
	.ascii "asm_instr\0"
	.byte	0x1
	.byte	0x1f
	.long	0x714
	.byte	0
	.uleb128 0xd
	.ascii "opcode\0"
	.byte	0x1
	.byte	0x20
	.long	0xb9
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.ascii "OPCODE_T\0"
	.byte	0x1
	.byte	0x21
	.long	0x1dcd
	.uleb128 0x17
	.byte	0x4
	.long	0x113
	.byte	0x1
	.byte	0x23
	.long	0x1f2c
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
	.long	0x1e07
	.uleb128 0x5
	.byte	0x3
	.long	_OPCODES
	.uleb128 0x15
	.ascii "hStdout\0"
	.byte	0x1
	.byte	0x2c
	.long	0x159
	.uleb128 0x5
	.byte	0x3
	.long	_hStdout
	.uleb128 0x15
	.ascii "hStdin\0"
	.byte	0x1
	.byte	0x2c
	.long	0x159
	.uleb128 0x5
	.byte	0x3
	.long	_hStdin
	.uleb128 0x15
	.ascii "csbi\0"
	.byte	0x1
	.byte	0x2d
	.long	0x337
	.uleb128 0x5
	.byte	0x3
	.long	_csbi
	.uleb128 0x15
	.ascii "input_fp\0"
	.byte	0x1
	.byte	0x2f
	.long	0x1f92
	.uleb128 0x5
	.byte	0x3
	.long	_input_fp
	.uleb128 0x6
	.byte	0x4
	.long	0x1d62
	.uleb128 0x15
	.ascii "output_fp\0"
	.byte	0x1
	.byte	0x30
	.long	0x1f92
	.uleb128 0x5
	.byte	0x3
	.long	_output_fp
	.uleb128 0x15
	.ascii "HERE\0"
	.byte	0x1
	.byte	0x32
	.long	0x1dad
	.uleb128 0x5
	.byte	0x3
	.long	_HERE
	.uleb128 0x15
	.ascii "STATE\0"
	.byte	0x1
	.byte	0x32
	.long	0x1dad
	.uleb128 0x5
	.byte	0x3
	.long	_STATE
	.uleb128 0x15
	.ascii "BASE\0"
	.byte	0x1
	.byte	0x33
	.long	0x1dad
	.uleb128 0x5
	.byte	0x3
	.long	_BASE
	.uleb128 0x18
	.ascii "PC\0"
	.byte	0x1
	.byte	0x37
	.long	0x1dad
	.uleb128 0x15
	.ascii "addr\0"
	.byte	0x1
	.byte	0x38
	.long	0x1dad
	.uleb128 0x5
	.byte	0x3
	.long	_addr
	.uleb128 0x15
	.ascii "tmp\0"
	.byte	0x1
	.byte	0x39
	.long	0x1dad
	.uleb128 0x5
	.byte	0x3
	.long	_tmp
	.uleb128 0x15
	.ascii "call_depth\0"
	.byte	0x1
	.byte	0x3a
	.long	0xa6
	.uleb128 0x5
	.byte	0x3
	.long	_call_depth
	.uleb128 0xa
	.long	0x1dad
	.long	0x203b
	.uleb128 0xb
	.long	0x1fd
	.byte	0x3f
	.byte	0
	.uleb128 0x15
	.ascii "dstk\0"
	.byte	0x1
	.byte	0x41
	.long	0x202b
	.uleb128 0x5
	.byte	0x3
	.long	_dstk
	.uleb128 0x15
	.ascii "DSS\0"
	.byte	0x1
	.byte	0x42
	.long	0x205e
	.uleb128 0x5
	.byte	0x3
	.long	_DSS
	.uleb128 0x6
	.byte	0x4
	.long	0x1dad
	.uleb128 0x15
	.ascii "DSE\0"
	.byte	0x1
	.byte	0x43
	.long	0x205e
	.uleb128 0x5
	.byte	0x3
	.long	_DSE
	.uleb128 0x15
	.ascii "DSP\0"
	.byte	0x1
	.byte	0x44
	.long	0x205e
	.uleb128 0x5
	.byte	0x3
	.long	_DSP
	.uleb128 0x15
	.ascii "rstk\0"
	.byte	0x1
	.byte	0x46
	.long	0x202b
	.uleb128 0x5
	.byte	0x3
	.long	_rstk
	.uleb128 0x15
	.ascii "RSS\0"
	.byte	0x1
	.byte	0x47
	.long	0x205e
	.uleb128 0x5
	.byte	0x3
	.long	_RSS
	.uleb128 0x15
	.ascii "RSE\0"
	.byte	0x1
	.byte	0x48
	.long	0x205e
	.uleb128 0x5
	.byte	0x3
	.long	_RSE
	.uleb128 0x15
	.ascii "RSP\0"
	.byte	0x1
	.byte	0x49
	.long	0x205e
	.uleb128 0x5
	.byte	0x3
	.long	_RSP
	.uleb128 0x16
	.byte	0x24
	.byte	0x1
	.byte	0x4e
	.long	0x20fa
	.uleb128 0xd
	.ascii "xt\0"
	.byte	0x1
	.byte	0x4f
	.long	0x1dad
	.byte	0
	.uleb128 0xd
	.ascii "flags\0"
	.byte	0x1
	.byte	0x50
	.long	0xad
	.byte	0x4
	.uleb128 0xd
	.ascii "name\0"
	.byte	0x1
	.byte	0x51
	.long	0x20fa
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x77
	.long	0x210a
	.uleb128 0xb
	.long	0x1fd
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.ascii "ENTRY_T\0"
	.byte	0x1
	.byte	0x52
	.long	0x20cb
	.uleb128 0x15
	.ascii "the_memory\0"
	.byte	0x1
	.byte	0x54
	.long	0xfb
	.uleb128 0x5
	.byte	0x3
	.long	_the_memory
	.uleb128 0x15
	.ascii "the_dict\0"
	.byte	0x1
	.byte	0x55
	.long	0x2147
	.uleb128 0x5
	.byte	0x3
	.long	_the_dict
	.uleb128 0x6
	.byte	0x4
	.long	0x210a
	.uleb128 0x15
	.ascii "num_words\0"
	.byte	0x1
	.byte	0x56
	.long	0xa6
	.uleb128 0x5
	.byte	0x3
	.long	_num_words
	.uleb128 0x15
	.ascii "_QUIT_HIT\0"
	.byte	0x1
	.byte	0x58
	.long	0xa6
	.uleb128 0x5
	.byte	0x3
	.long	__QUIT_HIT
	.uleb128 0x15
	.ascii "all_ok\0"
	.byte	0x1
	.byte	0x59
	.long	0xa6
	.uleb128 0x5
	.byte	0x3
	.long	_all_ok
	.uleb128 0xa
	.long	0x1df7
	.long	0x219f
	.uleb128 0xb
	.long	0x1fd
	.byte	0x26
	.byte	0
	.uleb128 0x15
	.ascii "theOpcodes\0"
	.byte	0x1
	.byte	0xa5
	.long	0x218f
	.uleb128 0x5
	.byte	0x3
	.long	_theOpcodes
	.uleb128 0x19
	.ascii "main\0"
	.byte	0x1
	.word	0x2f8
	.long	0xa6
	.long	LFB88
	.long	LFE88-LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x22ec
	.uleb128 0x1a
	.ascii "argc\0"
	.byte	0x1
	.word	0x2f8
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.ascii "argv\0"
	.byte	0x1
	.word	0x2f8
	.long	0x637
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "dict_sz\0"
	.byte	0x1
	.word	0x300
	.long	0x1dad
	.long	0x12000
	.uleb128 0x1c
	.ascii "st\0"
	.byte	0x1
	.word	0x309
	.long	0x1dad
	.secrel32	LLST76
	.uleb128 0x1c
	.ascii "ee\0"
	.byte	0x1
	.word	0x30c
	.long	0x1dad
	.secrel32	LLST77
	.uleb128 0x1c
	.ascii "tt\0"
	.byte	0x1
	.word	0x30d
	.long	0x1dad
	.secrel32	LLST78
	.uleb128 0x1d
	.long	LVL444
	.long	0x3864
	.long	0x2248
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xf6
	.byte	0
	.uleb128 0x1d
	.long	LVL445
	.long	0x3864
	.long	0x225d
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xf5
	.byte	0
	.uleb128 0x1d
	.long	LVL446
	.long	0x387d
	.long	0x2271
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	LVL448
	.long	0x387d
	.long	0x228d
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
	.long	LVL449
	.long	0x2314
	.uleb128 0x1f
	.long	LVL450
	.long	0x22ec
	.uleb128 0x1f
	.long	LVL451
	.long	0x2a34
	.uleb128 0x1d
	.long	LVL452
	.long	0x389f
	.long	0x22bc
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1f
	.long	LVL453
	.long	0x38c4
	.uleb128 0x1f
	.long	LVL456
	.long	0x2b17
	.uleb128 0x1f
	.long	LVL457
	.long	0x38c4
	.uleb128 0x20
	.long	LVL462
	.long	0x38dd
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC34
	.byte	0
	.byte	0
	.uleb128 0x21
	.ascii "write_output_file\0"
	.byte	0x1
	.word	0x2e9
	.byte	0x1
	.long	0x2314
	.uleb128 0x22
	.ascii "num\0"
	.byte	0x1
	.word	0x2f2
	.long	0xa6
	.byte	0
	.uleb128 0x23
	.ascii "compile\0"
	.byte	0x1
	.word	0x2c1
	.long	LFB86
	.long	LFE86-LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x24ce
	.uleb128 0x24
	.ascii "buf\0"
	.byte	0x1
	.word	0x2db
	.long	0x24ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x25
	.secrel32	Ldebug_ranges0+0x230
	.long	0x237f
	.uleb128 0x1c
	.ascii "i\0"
	.byte	0x1
	.word	0x2c7
	.long	0xa6
	.secrel32	LLST63
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x230
	.uleb128 0x1c
	.ascii "op\0"
	.byte	0x1
	.word	0x2c9
	.long	0x1df7
	.secrel32	LLST64
	.uleb128 0x20
	.long	LVL400
	.long	0x38dd
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
	.uleb128 0x27
	.long	0x30e1
	.long	LBB373
	.secrel32	Ldebug_ranges0+0x248
	.byte	0x1
	.word	0x2d4
	.long	0x23d8
	.uleb128 0x28
	.long	0x3106
	.secrel32	LLST65
	.uleb128 0x28
	.long	0x30fc
	.secrel32	LLST66
	.uleb128 0x28
	.long	0x30f1
	.secrel32	LLST67
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x248
	.uleb128 0x29
	.long	0x31af
	.uleb128 0x20
	.long	LVL405
	.long	0x38ef
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
	.byte	0
	.uleb128 0x27
	.long	0x2812
	.long	LBB377
	.secrel32	Ldebug_ranges0+0x260
	.byte	0x1
	.word	0x2de
	.long	0x2476
	.uleb128 0x28
	.long	0x2821
	.secrel32	LLST68
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x260
	.uleb128 0x29
	.long	0x36ee
	.uleb128 0x27
	.long	0x29fa
	.long	LBB379
	.secrel32	Ldebug_ranges0+0x280
	.byte	0x1
	.word	0x295
	.long	0x242d
	.uleb128 0x2a
	.long	0x2a1c
	.uleb128 0x28
	.long	0x2a0f
	.secrel32	LLST69
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x280
	.uleb128 0x29
	.long	0x33b8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x29fa
	.long	LBB385
	.long	LBE385-LBB385
	.byte	0x1
	.word	0x299
	.long	0x2463
	.uleb128 0x28
	.long	0x2a1c
	.secrel32	LLST70
	.uleb128 0x28
	.long	0x2a0f
	.secrel32	LLST71
	.uleb128 0x2c
	.long	LBB386
	.long	LBE386-LBB386
	.uleb128 0x29
	.long	0x33b8
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	LVL417
	.long	0x284b
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
	.uleb128 0x1f
	.long	LVL404
	.long	0x24de
	.uleb128 0x1d
	.long	LVL407
	.long	0x38ff
	.long	0x249c
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
	.uleb128 0x3
	.byte	0xa
	.word	0x100
	.byte	0
	.uleb128 0x1f
	.long	LVL426
	.long	0x390f
	.uleb128 0x1d
	.long	LVL429
	.long	0x38dd
	.long	0x24bd
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC29
	.byte	0
	.uleb128 0x20
	.long	LVL430
	.long	0x3921
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x77
	.long	0x24de
	.uleb128 0xb
	.long	0x1fd
	.byte	0xff
	.byte	0
	.uleb128 0x23
	.ascii "doTest\0"
	.byte	0x1
	.word	0x29d
	.long	LFB85
	.long	LFE85-LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x2812
	.uleb128 0x1b
	.ascii "stop\0"
	.byte	0x1
	.word	0x2a3
	.long	0x1dad
	.long	0x2faf080
	.uleb128 0x1c
	.ascii "start\0"
	.byte	0x1
	.word	0x2a4
	.long	0x1dad
	.secrel32	LLST54
	.uleb128 0x1c
	.ascii "end\0"
	.byte	0x1
	.word	0x2b0
	.long	0x1dad
	.secrel32	LLST55
	.uleb128 0x1c
	.ascii "tt\0"
	.byte	0x1
	.word	0x2b1
	.long	0x1dad
	.secrel32	LLST56
	.uleb128 0x22
	.ascii "ep\0"
	.byte	0x1
	.word	0x2bb
	.long	0x2147
	.uleb128 0x2d
	.long	LBB330
	.long	LBE330-LBB330
	.long	0x2576
	.uleb128 0x1c
	.ascii "i\0"
	.byte	0x1
	.word	0x2a7
	.long	0x1dad
	.secrel32	LLST57
	.uleb128 0x2e
	.long	0x30ca
	.long	LBB331
	.long	LBE331-LBB331
	.byte	0x1
	.word	0x2a9
	.uleb128 0x2a
	.long	0x30d7
	.byte	0
	.byte	0
	.uleb128 0x25
	.secrel32	Ldebug_ranges0+0x1d8
	.long	0x25aa
	.uleb128 0x1c
	.ascii "i\0"
	.byte	0x1
	.word	0x2ac
	.long	0x1dad
	.secrel32	LLST58
	.uleb128 0x2f
	.long	0x30b0
	.long	LBB334
	.secrel32	Ldebug_ranges0+0x1f0
	.byte	0x1
	.word	0x2ae
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x1f0
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x3087
	.long	LBB339
	.secrel32	Ldebug_ranges0+0x208
	.byte	0x1
	.word	0x2b3
	.long	0x263b
	.uleb128 0x28
	.long	0x3099
	.secrel32	LLST59
	.uleb128 0x2d
	.long	LBB341
	.long	LBE341-LBB341
	.long	0x2611
	.uleb128 0x29
	.long	0x322d
	.uleb128 0x30
	.long	0x30b0
	.long	LBB342
	.long	LBE342-LBB342
	.byte	0x1
	.byte	0x8a
	.long	0x25fc
	.uleb128 0x2c
	.long	LBB343
	.long	LBE343-LBB343
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	LVL359
	.long	0x38dd
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
	.long	LVL356
	.long	0x38dd
	.long	0x2629
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC0
	.byte	0
	.uleb128 0x20
	.long	LVL360
	.long	0x389f
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
	.long	0x2a9e
	.long	LBB348
	.long	LBE348-LBB348
	.byte	0x1
	.word	0x2bc
	.long	0x2692
	.uleb128 0x28
	.long	0x2ab5
	.secrel32	LLST60
	.uleb128 0x2c
	.long	LBB349
	.long	LBE349-LBB349
	.uleb128 0x29
	.long	0x335d
	.uleb128 0x2c
	.long	LBB350
	.long	LBE350-LBB350
	.uleb128 0x29
	.long	0x336f
	.uleb128 0x20
	.long	LVL368
	.long	0x392f
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
	.byte	0x73
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x2a9e
	.long	LBB352
	.long	LBE352-LBB352
	.byte	0x1
	.word	0x2bd
	.long	0x26e9
	.uleb128 0x28
	.long	0x2ab5
	.secrel32	LLST61
	.uleb128 0x2c
	.long	LBB353
	.long	LBE353-LBB353
	.uleb128 0x29
	.long	0x335d
	.uleb128 0x2c
	.long	LBB354
	.long	LBE354-LBB354
	.uleb128 0x29
	.long	0x336f
	.uleb128 0x20
	.long	LVL380
	.long	0x392f
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
	.byte	0x73
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x2a9e
	.long	LBB356
	.long	LBE356-LBB356
	.byte	0x1
	.word	0x2be
	.long	0x2740
	.uleb128 0x28
	.long	0x2ab5
	.secrel32	LLST62
	.uleb128 0x2c
	.long	LBB357
	.long	LBE357-LBB357
	.uleb128 0x29
	.long	0x335d
	.uleb128 0x2c
	.long	LBB358
	.long	LBE358-LBB358
	.uleb128 0x29
	.long	0x336f
	.uleb128 0x20
	.long	LVL392
	.long	0x392f
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
	.byte	0x73
	.sleb128 5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL342
	.long	0x38dd
	.long	0x2758
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC17
	.byte	0
	.uleb128 0x1f
	.long	LVL343
	.long	0x38c4
	.uleb128 0x1d
	.long	LVL345
	.long	0x38dd
	.long	0x2779
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC18
	.byte	0
	.uleb128 0x1d
	.long	LVL348
	.long	0x38dd
	.long	0x2791
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC19
	.byte	0
	.uleb128 0x1f
	.long	LVL350
	.long	0x38c4
	.uleb128 0x1d
	.long	LVL355
	.long	0x38dd
	.long	0x27b2
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC20
	.byte	0
	.uleb128 0x1d
	.long	LVL361
	.long	0x389f
	.long	0x27c6
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1d
	.long	LVL374
	.long	0x38dd
	.long	0x27de
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC22
	.byte	0
	.uleb128 0x1d
	.long	LVL386
	.long	0x38dd
	.long	0x27f6
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC24
	.byte	0
	.uleb128 0x20
	.long	LVL394
	.long	0x38dd
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.ascii "parse\0"
	.byte	0x1
	.word	0x291
	.byte	0x1
	.long	0x283b
	.uleb128 0x32
	.ascii "line\0"
	.byte	0x1
	.word	0x291
	.long	0x14b
	.uleb128 0x33
	.secrel32	LASF0
	.byte	0x1
	.word	0x293
	.long	0x283b
	.byte	0
	.uleb128 0xa
	.long	0x77
	.long	0x284b
	.uleb128 0xb
	.long	0x1fd
	.byte	0x3f
	.byte	0
	.uleb128 0x34
	.ascii "parseword\0"
	.byte	0x1
	.word	0x227
	.long	0x14b
	.byte	0x1
	.long	0x28ac
	.uleb128 0x32
	.ascii "line\0"
	.byte	0x1
	.word	0x227
	.long	0x14b
	.uleb128 0x35
	.secrel32	LASF0
	.byte	0x1
	.word	0x227
	.long	0x14b
	.uleb128 0x22
	.ascii "ep\0"
	.byte	0x1
	.word	0x273
	.long	0x2147
	.uleb128 0x22
	.ascii "num\0"
	.byte	0x1
	.word	0x282
	.long	0x107
	.uleb128 0x36
	.uleb128 0x22
	.ascii "i\0"
	.byte	0x1
	.word	0x25d
	.long	0xa6
	.uleb128 0x36
	.uleb128 0x22
	.ascii "op\0"
	.byte	0x1
	.word	0x25f
	.long	0x1df7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.ascii "is_number\0"
	.byte	0x1
	.word	0x1e7
	.long	0xa6
	.long	LFB82
	.long	LFE82-LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x29ea
	.uleb128 0x38
	.secrel32	LASF0
	.byte	0x1
	.word	0x1e7
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.ascii "the_num\0"
	.byte	0x1
	.word	0x1e7
	.long	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.ascii "base\0"
	.byte	0x1
	.word	0x1e7
	.long	0xa6
	.secrel32	LLST24
	.uleb128 0x1c
	.ascii "is_neg\0"
	.byte	0x1
	.word	0x1e9
	.long	0xa6
	.secrel32	LLST25
	.uleb128 0x1c
	.ascii "w\0"
	.byte	0x1
	.word	0x1ea
	.long	0x14b
	.secrel32	LLST26
	.uleb128 0x1c
	.ascii "my_num\0"
	.byte	0x1
	.word	0x1eb
	.long	0x107
	.secrel32	LLST27
	.uleb128 0x24
	.ascii "possible_chars\0"
	.byte	0x1
	.word	0x1ec
	.long	0x714
	.uleb128 0x6
	.byte	0x3
	.long	LC8
	.byte	0x9f
	.uleb128 0x24
	.ascii "valid_chars\0"
	.byte	0x1
	.word	0x1ed
	.long	0x29ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.secrel32	Ldebug_ranges0+0xf8
	.long	0x29bd
	.uleb128 0x1c
	.ascii "ch\0"
	.byte	0x1
	.word	0x213
	.long	0x77
	.secrel32	LLST31
	.uleb128 0x1c
	.ascii "pos\0"
	.byte	0x1
	.word	0x215
	.long	0x14b
	.secrel32	LLST32
	.uleb128 0x1c
	.ascii "digit\0"
	.byte	0x1
	.word	0x21a
	.long	0x1dad
	.secrel32	LLST33
	.uleb128 0x1f
	.long	LVL242
	.long	0x393a
	.uleb128 0x20
	.long	LVL243
	.long	0x394d
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x3123
	.long	LBB231
	.long	LBE231-LBB231
	.byte	0x1
	.word	0x207
	.uleb128 0x28
	.long	0x314a
	.secrel32	LLST28
	.uleb128 0x28
	.long	0x313f
	.secrel32	LLST29
	.uleb128 0x28
	.long	0x3134
	.secrel32	LLST30
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x77
	.long	0x29fa
	.uleb128 0xb
	.long	0x1fd
	.byte	0x17
	.byte	0
	.uleb128 0x34
	.ascii "getword\0"
	.byte	0x1
	.word	0x1d3
	.long	0x14b
	.byte	0x1
	.long	0x2a34
	.uleb128 0x32
	.ascii "line\0"
	.byte	0x1
	.word	0x1d3
	.long	0x14b
	.uleb128 0x35
	.secrel32	LASF0
	.byte	0x1
	.word	0x1d3
	.long	0x14b
	.uleb128 0x22
	.ascii "cp\0"
	.byte	0x1
	.word	0x1d5
	.long	0x14b
	.byte	0
	.uleb128 0x23
	.ascii "dump_words\0"
	.byte	0x1
	.word	0x1c4
	.long	LFB80
	.long	LFE80-LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a9e
	.uleb128 0x2c
	.long	LBB229
	.long	LBE229-LBB229
	.uleb128 0x1c
	.ascii "i\0"
	.byte	0x1
	.word	0x1c6
	.long	0xa6
	.secrel32	LLST20
	.uleb128 0x2c
	.long	LBB230
	.long	LBE230-LBB230
	.uleb128 0x1c
	.ascii "ep\0"
	.byte	0x1
	.word	0x1c8
	.long	0x2147
	.secrel32	LLST21
	.uleb128 0x20
	.long	LVL217
	.long	0x38dd
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
	.uleb128 0x34
	.ascii "find_word\0"
	.byte	0x1
	.word	0x1b7
	.long	0x2147
	.byte	0x1
	.long	0x2adb
	.uleb128 0x35
	.secrel32	LASF0
	.byte	0x1
	.word	0x1b7
	.long	0x714
	.uleb128 0x36
	.uleb128 0x22
	.ascii "i\0"
	.byte	0x1
	.word	0x1b9
	.long	0xa6
	.uleb128 0x36
	.uleb128 0x22
	.ascii "ep\0"
	.byte	0x1
	.word	0x1bb
	.long	0x2147
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.ascii "define_word\0"
	.byte	0x1
	.word	0x1aa
	.byte	0x1
	.long	0x2b17
	.uleb128 0x35
	.secrel32	LASF0
	.byte	0x1
	.word	0x1aa
	.long	0x14b
	.uleb128 0x22
	.ascii "ep\0"
	.byte	0x1
	.word	0x1ad
	.long	0x2147
	.uleb128 0x22
	.ascii "maxLen\0"
	.byte	0x1
	.word	0x1ae
	.long	0x123
	.byte	0
	.uleb128 0x3a
	.ascii "run_program\0"
	.byte	0x1
	.byte	0xd1
	.long	LFB77
	.long	LFE77-LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x3054
	.uleb128 0x3b
	.ascii "start\0"
	.byte	0x1
	.byte	0xd1
	.long	0x1dad
	.secrel32	LLST4
	.uleb128 0x3c
	.ascii "IR\0"
	.byte	0x1
	.byte	0xd3
	.long	0xad
	.secrel32	LLST5
	.uleb128 0x3c
	.ascii "arg1\0"
	.byte	0x1
	.byte	0xd4
	.long	0x1dad
	.secrel32	LLST6
	.uleb128 0x3d
	.ascii "arg2\0"
	.byte	0x1
	.byte	0xd4
	.long	0x1dad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3e
	.ascii "arg3\0"
	.byte	0x1
	.byte	0xd4
	.long	0x1dad
	.uleb128 0x2d
	.long	LBB178
	.long	LBE178-LBB178
	.long	0x2bf5
	.uleb128 0x1c
	.ascii "pos\0"
	.byte	0x1
	.word	0x165
	.long	0x29c
	.secrel32	LLST12
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB179
	.long	LBE179-LBB179
	.byte	0x1
	.word	0x166
	.long	0x2bbf
	.uleb128 0x2c
	.long	LBB180
	.long	LBE180-LBB180
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB181
	.long	LBE181-LBB181
	.byte	0x1
	.word	0x167
	.long	0x2be3
	.uleb128 0x2c
	.long	LBB182
	.long	LBE182-LBB182
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	LVL107
	.long	0x395e
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	LBB177
	.long	LBE177-LBB177
	.long	0x2c45
	.uleb128 0x22
	.ascii "pos\0"
	.byte	0x1
	.word	0x170
	.long	0x29c
	.uleb128 0x1d
	.long	LVL90
	.long	0x3982
	.long	0x2c26
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	_csbi
	.byte	0
	.uleb128 0x20
	.long	LVL94
	.long	0x39a8
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
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB135
	.long	LBE135-LBB135
	.byte	0x1
	.word	0x191
	.long	0x2c69
	.uleb128 0x2c
	.long	LBB136
	.long	LBE136-LBB136
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB137
	.long	LBE137-LBB137
	.byte	0x1
	.word	0x18c
	.long	0x2c8d
	.uleb128 0x2c
	.long	LBB138
	.long	LBE138-LBB138
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB139
	.long	LBE139-LBB139
	.byte	0x1
	.word	0x12d
	.long	0x2cb1
	.uleb128 0x2c
	.long	LBB140
	.long	LBE140-LBB140
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x30b0
	.long	LBB141
	.secrel32	Ldebug_ranges0+0x18
	.byte	0x1
	.word	0x143
	.long	0x2cd1
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x18
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x30ca
	.long	LBB145
	.secrel32	Ldebug_ranges0+0x38
	.byte	0x1
	.word	0x145
	.long	0x2ceb
	.uleb128 0x2a
	.long	0x30d7
	.byte	0
	.uleb128 0x27
	.long	0x30ca
	.long	LBB152
	.secrel32	Ldebug_ranges0+0x58
	.byte	0x1
	.word	0x146
	.long	0x2d09
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST7
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB157
	.long	LBE157-LBB157
	.byte	0x1
	.word	0x13d
	.long	0x2d2d
	.uleb128 0x2c
	.long	LBB158
	.long	LBE158-LBB158
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30ca
	.long	LBB159
	.long	LBE159-LBB159
	.byte	0x1
	.word	0x13f
	.long	0x2d4b
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST8
	.byte	0
	.uleb128 0x27
	.long	0x30ca
	.long	LBB161
	.secrel32	Ldebug_ranges0+0x78
	.byte	0x1
	.word	0x180
	.long	0x2d69
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST9
	.byte	0
	.uleb128 0x27
	.long	0x30b0
	.long	LBB165
	.secrel32	Ldebug_ranges0+0x98
	.byte	0x1
	.word	0x17e
	.long	0x2d89
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x98
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB169
	.long	LBE169-LBB169
	.byte	0x1
	.word	0x137
	.long	0x2dad
	.uleb128 0x2c
	.long	LBB170
	.long	LBE170-LBB170
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30ca
	.long	LBB171
	.long	LBE171-LBB171
	.byte	0x1
	.word	0x132
	.long	0x2dcb
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST10
	.byte	0
	.uleb128 0x27
	.long	0x30ca
	.long	LBB173
	.secrel32	Ldebug_ranges0+0xb0
	.byte	0x1
	.word	0x179
	.long	0x2de9
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST11
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB183
	.long	LBE183-LBB183
	.byte	0x1
	.word	0x184
	.long	0x2e0d
	.uleb128 0x2c
	.long	LBB184
	.long	LBE184-LBB184
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x306f
	.long	LBB185
	.long	LBE185-LBB185
	.byte	0x1
	.word	0x184
	.long	0x2e27
	.uleb128 0x2a
	.long	0x307d
	.byte	0
	.uleb128 0x2b
	.long	0x3054
	.long	LBB189
	.long	LBE189-LBB189
	.byte	0x1
	.word	0x188
	.long	0x2e4b
	.uleb128 0x2c
	.long	LBB190
	.long	LBE190-LBB190
	.uleb128 0x29
	.long	0x32c8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30ca
	.long	LBB191
	.long	LBE191-LBB191
	.byte	0x1
	.word	0x188
	.long	0x2e65
	.uleb128 0x2a
	.long	0x30d7
	.byte	0
	.uleb128 0x30
	.long	0x30b0
	.long	LBB193
	.long	LBE193-LBB193
	.byte	0x1
	.byte	0xff
	.long	0x2e88
	.uleb128 0x2c
	.long	LBB194
	.long	LBE194-LBB194
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x30b0
	.long	LBB195
	.long	LBE195-LBB195
	.byte	0x1
	.byte	0xfb
	.long	0x2eab
	.uleb128 0x2c
	.long	LBB196
	.long	LBE196-LBB196
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x30ca
	.long	LBB197
	.long	LBE197-LBB197
	.byte	0x1
	.byte	0xf7
	.long	0x2ec8
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST13
	.byte	0
	.uleb128 0x30
	.long	0x30b0
	.long	LBB199
	.long	LBE199-LBB199
	.byte	0x1
	.byte	0xf2
	.long	0x2eeb
	.uleb128 0x2c
	.long	LBB200
	.long	LBE200-LBB200
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x30b0
	.long	LBB201
	.long	LBE201-LBB201
	.byte	0x1
	.byte	0xec
	.long	0x2f0e
	.uleb128 0x2c
	.long	LBB202
	.long	LBE202-LBB202
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x30b0
	.long	LBB203
	.long	LBE203-LBB203
	.byte	0x1
	.byte	0xed
	.long	0x2f31
	.uleb128 0x2c
	.long	LBB204
	.long	LBE204-LBB204
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x3054
	.long	LBB205
	.long	LBE205-LBB205
	.byte	0x1
	.word	0x118
	.long	0x2f55
	.uleb128 0x2c
	.long	LBB206
	.long	LBE206-LBB206
	.uleb128 0x29
	.long	0x32c8
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x306f
	.long	LBB207
	.secrel32	Ldebug_ranges0+0xc8
	.byte	0x1
	.word	0x112
	.long	0x2f73
	.uleb128 0x28
	.long	0x307d
	.secrel32	LLST14
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB211
	.long	LBE211-LBB211
	.byte	0x1
	.word	0x123
	.long	0x2f97
	.uleb128 0x2c
	.long	LBB212
	.long	LBE212-LBB212
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB213
	.long	LBE213-LBB213
	.byte	0x1
	.word	0x11e
	.long	0x2fbb
	.uleb128 0x2c
	.long	LBB214
	.long	LBE214-LBB214
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB215
	.long	LBE215-LBB215
	.byte	0x1
	.word	0x128
	.long	0x2fdf
	.uleb128 0x2c
	.long	LBB216
	.long	LBE216-LBB216
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL25
	.long	0x38dd
	.long	0x2ff7
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC6
	.byte	0
	.uleb128 0x1d
	.long	LVL54
	.long	0x38dd
	.long	0x300f
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC5
	.byte	0
	.uleb128 0x1d
	.long	LVL56
	.long	0x38dd
	.long	0x3027
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.uleb128 0x1d
	.long	LVL58
	.long	0x38dd
	.long	0x303f
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC3
	.byte	0
	.uleb128 0x20
	.long	LVL133
	.long	0x38dd
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC2
	.byte	0
	.byte	0
	.uleb128 0x3f
	.ascii "rpop\0"
	.byte	0x1
	.byte	0x99
	.long	0x1dad
	.byte	0x1
	.long	0x306f
	.uleb128 0x3e
	.ascii "v\0"
	.byte	0x1
	.byte	0x9b
	.long	0x1dad
	.byte	0
	.uleb128 0x40
	.ascii "rpush\0"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x3087
	.uleb128 0x41
	.ascii "v\0"
	.byte	0x1
	.byte	0x91
	.long	0x1dad
	.byte	0
	.uleb128 0x40
	.ascii "dumpStack\0"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.long	0x30b0
	.uleb128 0x41
	.ascii "num\0"
	.byte	0x1
	.byte	0x85
	.long	0xa6
	.uleb128 0x36
	.uleb128 0x3e
	.ascii "i\0"
	.byte	0x1
	.byte	0x89
	.long	0xa6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.ascii "pop\0"
	.byte	0x1
	.byte	0x7c
	.long	0x1dad
	.byte	0x1
	.long	0x30ca
	.uleb128 0x3e
	.ascii "v\0"
	.byte	0x1
	.byte	0x7e
	.long	0x1dad
	.byte	0
	.uleb128 0x40
	.ascii "push\0"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.long	0x30e1
	.uleb128 0x41
	.ascii "v\0"
	.byte	0x1
	.byte	0x74
	.long	0x1dad
	.byte	0
	.uleb128 0x40
	.ascii "fopen_s\0"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	0x311d
	.uleb128 0x41
	.ascii "pfp\0"
	.byte	0x1
	.byte	0x6a
	.long	0x311d
	.uleb128 0x41
	.ascii "nm\0"
	.byte	0x1
	.byte	0x6a
	.long	0x714
	.uleb128 0x41
	.ascii "mode\0"
	.byte	0x1
	.byte	0x6a
	.long	0x714
	.uleb128 0x3e
	.ascii "fp\0"
	.byte	0x1
	.byte	0x6c
	.long	0x1f92
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1f92
	.uleb128 0x40
	.ascii "strcpy_s\0"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0x3156
	.uleb128 0x41
	.ascii "dst\0"
	.byte	0x1
	.byte	0x62
	.long	0x14b
	.uleb128 0x41
	.ascii "num\0"
	.byte	0x1
	.byte	0x62
	.long	0x1dad
	.uleb128 0x41
	.ascii "src\0"
	.byte	0x1
	.byte	0x62
	.long	0x714
	.byte	0
	.uleb128 0x42
	.long	0x3123
	.long	LFB70
	.long	LFE70-LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x3184
	.uleb128 0x28
	.long	0x3134
	.secrel32	LLST0
	.uleb128 0x43
	.long	0x313f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	0x314a
	.secrel32	LLST1
	.byte	0
	.uleb128 0x42
	.long	0x30e1
	.long	LFB71
	.long	LFE71-LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x31d1
	.uleb128 0x43
	.long	0x30f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.long	0x30fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x43
	.long	0x3106
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x44
	.long	0x3112
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x20
	.long	LVL5
	.long	0x38ef
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
	.uleb128 0x42
	.long	0x30ca
	.long	LFB72
	.long	LFE72-LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x31ed
	.uleb128 0x43
	.long	0x30d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.long	0x30b0
	.long	LFB73
	.long	LFE73-LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x3208
	.uleb128 0x44
	.long	0x30c0
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x42
	.long	0x3087
	.long	LFB74
	.long	LFE74-LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x3299
	.uleb128 0x28
	.long	0x3099
	.secrel32	LLST2
	.uleb128 0x25
	.secrel32	Ldebug_ranges0+0
	.long	0x326e
	.uleb128 0x45
	.long	0x30a5
	.secrel32	LLST3
	.uleb128 0x30
	.long	0x30b0
	.long	LBB132
	.long	LBE132-LBB132
	.byte	0x1
	.byte	0x8a
	.long	0x3259
	.uleb128 0x2c
	.long	LBB133
	.long	LBE133-LBB133
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	LVL16
	.long	0x38dd
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
	.long	LVL10
	.long	0x38dd
	.long	0x3286
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC0
	.byte	0
	.uleb128 0x46
	.long	LVL18
	.long	0x389f
	.uleb128 0x1f
	.long	LVL19
	.long	0x38dd
	.byte	0
	.uleb128 0x42
	.long	0x306f
	.long	LFB75
	.long	LFE75-LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x32b5
	.uleb128 0x43
	.long	0x307d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.long	0x3054
	.long	LFB76
	.long	LFE76-LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d0
	.uleb128 0x44
	.long	0x3065
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x42
	.long	0x2adb
	.long	LFB78
	.long	LFE78-LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x3339
	.uleb128 0x43
	.long	0x2af0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x45
	.long	0x2afc
	.secrel32	LLST15
	.uleb128 0x47
	.long	0x2b07
	.byte	0x1d
	.uleb128 0x27
	.long	0x3123
	.long	LBB221
	.secrel32	Ldebug_ranges0+0xe0
	.byte	0x1
	.word	0x1b4
	.long	0x3327
	.uleb128 0x28
	.long	0x314a
	.secrel32	LLST16
	.uleb128 0x48
	.long	0x313f
	.byte	0x1e
	.uleb128 0x28
	.long	0x3134
	.secrel32	LLST17
	.byte	0
	.uleb128 0x20
	.long	LVL197
	.long	0x39cf
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x2a9e
	.long	LFB79
	.long	LFE79-LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x3394
	.uleb128 0x43
	.long	0x2ab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	LBB227
	.long	LBE227-LBB227
	.uleb128 0x45
	.long	0x2ac2
	.secrel32	LLST18
	.uleb128 0x2c
	.long	LBB228
	.long	LBE228-LBB228
	.uleb128 0x45
	.long	0x2acd
	.secrel32	LLST19
	.uleb128 0x20
	.long	LVL210
	.long	0x392f
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
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
	.uleb128 0x42
	.long	0x29fa
	.long	LFB81
	.long	LFE81-LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c2
	.uleb128 0x28
	.long	0x2a0f
	.secrel32	LLST22
	.uleb128 0x43
	.long	0x2a1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x45
	.long	0x2a28
	.secrel32	LLST23
	.byte	0
	.uleb128 0x42
	.long	0x284b
	.long	LFB83
	.long	LFE83-LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x36d2
	.uleb128 0x28
	.long	0x2862
	.secrel32	LLST34
	.uleb128 0x28
	.long	0x286f
	.secrel32	LLST35
	.uleb128 0x29
	.long	0x287b
	.uleb128 0x29
	.long	0x2886
	.uleb128 0x25
	.secrel32	Ldebug_ranges0+0x110
	.long	0x3611
	.uleb128 0x28
	.long	0x286f
	.secrel32	LLST36
	.uleb128 0x28
	.long	0x2862
	.secrel32	LLST37
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x110
	.uleb128 0x45
	.long	0x33e7
	.secrel32	LLST38
	.uleb128 0x44
	.long	0x33ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	0x30ca
	.long	LBB263
	.secrel32	Ldebug_ranges0+0x130
	.byte	0x1
	.word	0x241
	.long	0x3440
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST39
	.byte	0
	.uleb128 0x2b
	.long	0x30b0
	.long	LBB267
	.long	LBE267-LBB267
	.byte	0x1
	.word	0x247
	.long	0x3464
	.uleb128 0x2c
	.long	LBB268
	.long	LBE268-LBB268
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x30ca
	.long	LBB269
	.secrel32	Ldebug_ranges0+0x148
	.byte	0x1
	.word	0x24d
	.long	0x3482
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST40
	.byte	0
	.uleb128 0x27
	.long	0x30b0
	.long	LBB273
	.secrel32	Ldebug_ranges0+0x160
	.byte	0x1
	.word	0x289
	.long	0x34a2
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x160
	.uleb128 0x29
	.long	0x3200
	.byte	0
	.byte	0
	.uleb128 0x25
	.secrel32	Ldebug_ranges0+0x178
	.long	0x34e2
	.uleb128 0x45
	.long	0x2893
	.secrel32	LLST41
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x178
	.uleb128 0x45
	.long	0x289e
	.secrel32	LLST42
	.uleb128 0x1d
	.long	LVL309
	.long	0x392f
	.long	0x34d7
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	LVL323
	.long	0x2b17
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x30ca
	.long	LBB280
	.secrel32	Ldebug_ranges0+0x190
	.byte	0x1
	.word	0x285
	.long	0x3500
	.uleb128 0x28
	.long	0x30d7
	.secrel32	LLST43
	.byte	0
	.uleb128 0x1d
	.long	LVL265
	.long	0x392f
	.long	0x351f
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
	.long	LC10
	.byte	0
	.uleb128 0x1d
	.long	LVL287
	.long	0x392f
	.long	0x353e
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
	.long	LC11
	.byte	0
	.uleb128 0x1d
	.long	LVL290
	.long	0x392f
	.long	0x355d
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
	.long	LC12
	.byte	0
	.uleb128 0x1d
	.long	LVL293
	.long	0x392f
	.long	0x357c
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
	.long	LC13
	.byte	0
	.uleb128 0x1d
	.long	LVL296
	.long	0x392f
	.long	0x359b
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
	.long	LC14
	.byte	0
	.uleb128 0x1d
	.long	LVL301
	.long	0x392f
	.long	0x35ba
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
	.long	LC15
	.byte	0
	.uleb128 0x1d
	.long	LVL311
	.long	0x2a9e
	.long	0x35cf
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	LVL315
	.long	0x2b17
	.uleb128 0x1d
	.long	LVL318
	.long	0x28ac
	.long	0x35f4
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
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	LVL321
	.long	0x38dd
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC16
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x29fa
	.long	LBB288
	.long	LBE288-LBB288
	.byte	0x1
	.word	0x230
	.long	0x3643
	.uleb128 0x2a
	.long	0x2a1c
	.uleb128 0x28
	.long	0x2a0f
	.secrel32	LLST44
	.uleb128 0x2c
	.long	LBB289
	.long	LBE289-LBB289
	.uleb128 0x29
	.long	0x33b8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x2adb
	.long	LBB290
	.long	LBE290-LBB290
	.byte	0x1
	.word	0x233
	.long	0x36b6
	.uleb128 0x28
	.long	0x2af0
	.secrel32	LLST45
	.uleb128 0x2c
	.long	LBB291
	.long	LBE291-LBB291
	.uleb128 0x29
	.long	0x32eb
	.uleb128 0x29
	.long	0x32f4
	.uleb128 0x27
	.long	0x3123
	.long	LBB292
	.secrel32	Ldebug_ranges0+0x1a8
	.byte	0x1
	.word	0x1b4
	.long	0x36a3
	.uleb128 0x28
	.long	0x314a
	.secrel32	LLST46
	.uleb128 0x28
	.long	0x313f
	.secrel32	LLST47
	.uleb128 0x28
	.long	0x3134
	.secrel32	LLST48
	.byte	0
	.uleb128 0x20
	.long	LVL279
	.long	0x39cf
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	LVL263
	.long	0x392f
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
	.long	LC9
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x2812
	.long	LFB84
	.long	LFE84-LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x3771
	.uleb128 0x28
	.long	0x2821
	.secrel32	LLST49
	.uleb128 0x44
	.long	0x282e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	0x29fa
	.long	LBB301
	.secrel32	Ldebug_ranges0+0x1c0
	.byte	0x1
	.word	0x295
	.long	0x3729
	.uleb128 0x28
	.long	0x2a1c
	.secrel32	LLST50
	.uleb128 0x28
	.long	0x2a0f
	.secrel32	LLST51
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x1c0
	.uleb128 0x29
	.long	0x33b8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x29fa
	.long	LBB304
	.long	LBE304-LBB304
	.byte	0x1
	.word	0x299
	.long	0x375f
	.uleb128 0x28
	.long	0x2a1c
	.secrel32	LLST52
	.uleb128 0x28
	.long	0x2a0f
	.secrel32	LLST53
	.uleb128 0x2c
	.long	LBB305
	.long	LBE305-LBB305
	.uleb128 0x29
	.long	0x33b8
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	LVL334
	.long	0x284b
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x22ec
	.long	LFB87
	.long	LFE87-LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x3864
	.uleb128 0x45
	.long	0x2307
	.secrel32	LLST72
	.uleb128 0x27
	.long	0x30e1
	.long	LBB399
	.secrel32	Ldebug_ranges0+0x2a8
	.byte	0x1
	.word	0x2eb
	.long	0x37e6
	.uleb128 0x28
	.long	0x3106
	.secrel32	LLST73
	.uleb128 0x28
	.long	0x30fc
	.secrel32	LLST74
	.uleb128 0x28
	.long	0x30f1
	.secrel32	LLST75
	.uleb128 0x26
	.secrel32	Ldebug_ranges0+0x2a8
	.uleb128 0x29
	.long	0x31af
	.uleb128 0x20
	.long	LVL432
	.long	0x38ef
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
	.uleb128 0x2d
	.long	LBB404
	.long	LBE404-LBB404
	.long	0x3821
	.uleb128 0x29
	.long	0x3784
	.uleb128 0x1d
	.long	LVL440
	.long	0x38dd
	.long	0x3810
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC32
	.byte	0
	.uleb128 0x20
	.long	LVL441
	.long	0x3921
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	LVL434
	.long	0x39e0
	.long	0x3835
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	LVL437
	.long	0x390f
	.uleb128 0x20
	.long	LVL438
	.long	0x38dd
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
	.uleb128 0x49
	.secrel32	LASF1
	.ascii "GetStdHandle\0"
	.byte	0x11
	.word	0x750
	.secrel32	LASF1
	.uleb128 0x4a
	.ascii "calloc\0"
	.ascii "__builtin_calloc\0"
	.byte	0x10
	.byte	0
	.ascii "calloc\0"
	.uleb128 0x4a
	.ascii "putchar\0"
	.ascii "__builtin_putchar\0"
	.byte	0x10
	.byte	0
	.ascii "putchar\0"
	.uleb128 0x49
	.secrel32	LASF2
	.ascii "GetTickCount\0"
	.byte	0x11
	.word	0x76d
	.secrel32	LASF2
	.uleb128 0x4b
	.ascii "printf\0"
	.ascii "printf\0"
	.byte	0xd
	.word	0x1c6
	.uleb128 0x4b
	.ascii "fopen\0"
	.ascii "fopen\0"
	.byte	0xd
	.word	0x104
	.uleb128 0x4b
	.ascii "fgets\0"
	.ascii "fgets\0"
	.byte	0xd
	.word	0x2a1
	.uleb128 0x4b
	.ascii "fclose\0"
	.ascii "fclose\0"
	.byte	0xd
	.word	0x107
	.uleb128 0x4b
	.ascii "exit\0"
	.ascii "exit\0"
	.byte	0x8
	.word	0x1e9
	.uleb128 0x4c
	.secrel32	LASF3
	.secrel32	LASF3
	.byte	0x14
	.byte	0x50
	.uleb128 0x4d
	.ascii "tolower\0"
	.ascii "tolower\0"
	.byte	0xe
	.byte	0x5f
	.uleb128 0x4d
	.ascii "strchr\0"
	.ascii "strchr\0"
	.byte	0x12
	.byte	0x4c
	.uleb128 0x4e
	.secrel32	LASF4
	.ascii "SetConsoleCursorPosition\0"
	.byte	0x5
	.byte	0xb2
	.secrel32	LASF4
	.uleb128 0x4e
	.secrel32	LASF5
	.ascii "GetConsoleScreenBufferInfo\0"
	.byte	0x5
	.byte	0x94
	.secrel32	LASF5
	.uleb128 0x4e
	.secrel32	LASF6
	.ascii "FillConsoleOutputCharacterA\0"
	.byte	0x5
	.byte	0x8b
	.secrel32	LASF6
	.uleb128 0x4d
	.ascii "strlen\0"
	.ascii "strlen\0"
	.byte	0x12
	.byte	0x53
	.uleb128 0x4b
	.ascii "fwrite\0"
	.ascii "fwrite\0"
	.byte	0xd
	.word	0x2df
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x6e
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
Ldebug_loc0:
LLST76:
	.long	LVL454
	.long	LVL455
	.word	0x1
	.byte	0x50
	.long	LVL455
	.long	LVL463
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST77:
	.long	LVL457
	.long	LVL458
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST78:
	.long	LVL459
	.long	LVL460
	.word	0x1
	.byte	0x50
	.long	LVL460
	.long	LVL461
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST63:
	.long	LVL397
	.long	LVL399
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LLST64:
	.long	LVL397
	.long	LVL398
	.word	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	LVL398
	.long	LVL400-1
	.word	0x8
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL401
	.long	LVL402
	.word	0x5
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	LVL402
	.long	LVL403
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
LLST65:
	.long	LVL404
	.long	LVL406
	.word	0x6
	.byte	0x3
	.long	LC26
	.byte	0x9f
	.long	0
	.long	0
LLST66:
	.long	LVL404
	.long	LVL406
	.word	0x6
	.byte	0x3
	.long	LC27
	.byte	0x9f
	.long	0
	.long	0
LLST67:
	.long	LVL404
	.long	LVL406
	.word	0x6
	.byte	0x3
	.long	_input_fp
	.byte	0x9f
	.long	0
	.long	0
LLST68:
	.long	LVL416
	.long	LVL417-1
	.word	0x1
	.byte	0x50
	.long	LVL417
	.long	LVL418
	.word	0x1
	.byte	0x50
	.long	LVL423
	.long	LVL425
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST69:
	.long	LVL408
	.long	LVL409
	.word	0x1
	.byte	0x57
	.long	LVL409
	.long	LVL415
	.word	0x1
	.byte	0x50
	.long	LVL427
	.long	LVL428
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LLST70:
	.long	LVL417
	.long	LVL424
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST71:
	.long	LVL417
	.long	LVL424
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST54:
	.long	LVL344
	.long	LVL345-1
	.word	0x1
	.byte	0x50
	.long	LVL345-1
	.long	LVL363
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
LLST55:
	.long	LVL350
	.long	LVL351
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST56:
	.long	LVL352
	.long	LVL353
	.word	0x1
	.byte	0x50
	.long	LVL353
	.long	LVL354
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST57:
	.long	LVL345
	.long	LVL346
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	LVL347
	.long	LVL348-1
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST58:
	.long	LVL348
	.long	LVL349
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LLST59:
	.long	LVL355
	.long	LVL360
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
LLST60:
	.long	LVL361
	.long	LVL373
	.word	0x6
	.byte	0x3
	.long	LC21
	.byte	0x9f
	.long	0
	.long	0
LLST61:
	.long	LVL374
	.long	LVL385
	.word	0x6
	.byte	0x3
	.long	LC23
	.byte	0x9f
	.long	0
	.long	0
LLST62:
	.long	LVL386
	.long	LVL393
	.word	0x6
	.byte	0x3
	.long	LC25
	.byte	0x9f
	.long	LVL395
	.long	LFE85
	.word	0x6
	.byte	0x3
	.long	LC25
	.byte	0x9f
	.long	0
	.long	0
LLST24:
	.long	LVL227
	.long	LVL229
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	LVL229
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
	.long	LVL250
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	LVL250
	.long	LVL251
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	LVL251
	.long	LVL253
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	LVL253
	.long	LFE82
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
LLST25:
	.long	LVL227
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
	.long	LVL254
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL254
	.long	LVL255
	.word	0x2
	.byte	0x91
	.sleb128 -52
	.long	LVL257
	.long	LVL258
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL258
	.long	LVL260
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
LLST26:
	.long	LVL228
	.long	LVL245
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
	.long	LVL251
	.word	0x1
	.byte	0x55
	.long	LVL251
	.long	LVL252
	.word	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.long	LVL252
	.long	LVL255
	.word	0x1
	.byte	0x55
	.long	LVL257
	.long	LVL259
	.word	0x1
	.byte	0x55
	.long	LVL259
	.long	LVL260
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST27:
	.long	LVL228
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
	.long	LVL254
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL254
	.long	LVL256
	.word	0x1
	.byte	0x53
	.long	LVL256
	.long	LVL257
	.word	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	LVL257
	.long	LVL261
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LLST31:
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
LLST32:
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
LLST33:
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
LLST28:
	.long	LVL229
	.long	LVL231
	.word	0x6
	.byte	0x3
	.long	LC8
	.byte	0x9f
	.long	LVL231
	.long	LVL234
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST29:
	.long	LVL229
	.long	LVL234
	.word	0x2
	.byte	0x48
	.byte	0x9f
	.long	0
	.long	0
LLST30:
	.long	LVL229
	.long	LVL230
	.word	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.long	LVL230
	.long	LVL231
	.word	0x1
	.byte	0x57
	.long	LVL231
	.long	LVL234
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST20:
	.long	LVL215
	.long	LVL217
	.word	0x1
	.byte	0x53
	.long	LVL217
	.long	LVL218
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	LVL218
	.long	LVL219
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST21:
	.long	LVL216
	.long	LVL217-1
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST4:
	.long	LVL22
	.long	LVL23
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
LLST5:
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
	.byte	0x71
	.sleb128 0
	.long	LVL29
	.long	LVL30
	.word	0x1
	.byte	0x50
	.long	LVL30
	.long	LVL31
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL32
	.long	LVL33
	.word	0x1
	.byte	0x50
	.long	LVL33
	.long	LVL34
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL35
	.long	LVL36
	.word	0x1
	.byte	0x50
	.long	LVL36
	.long	LVL38
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL40
	.long	LVL41
	.word	0x1
	.byte	0x50
	.long	LVL41
	.long	LVL43
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL45
	.long	LVL48
	.word	0x1
	.byte	0x50
	.long	LVL49
	.long	LVL50
	.word	0x1
	.byte	0x50
	.long	LVL50
	.long	LVL51
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL51
	.long	LVL52
	.word	0x2
	.byte	0x76
	.sleb128 -5
	.long	LVL52
	.long	LVL53
	.word	0x2
	.byte	0x72
	.sleb128 -1
	.long	LVL53
	.long	LVL54-1
	.word	0x1
	.byte	0x50
	.long	LVL55
	.long	LVL56-1
	.word	0x1
	.byte	0x50
	.long	LVL57
	.long	LVL58-1
	.word	0x1
	.byte	0x50
	.long	LVL59
	.long	LVL60
	.word	0x1
	.byte	0x50
	.long	LVL60
	.long	LVL61
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL61
	.long	LVL63
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL66
	.long	LVL67
	.word	0x1
	.byte	0x50
	.long	LVL67
	.long	LVL68
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL68
	.long	LVL69
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL73
	.long	LVL74
	.word	0x1
	.byte	0x50
	.long	LVL74
	.long	LVL76
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL78
	.long	LVL79
	.word	0x1
	.byte	0x50
	.long	LVL79
	.long	LVL80
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL82
	.long	LVL83
	.word	0x1
	.byte	0x50
	.long	LVL83
	.long	LVL85
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL87
	.long	LVL88
	.word	0x1
	.byte	0x50
	.long	LVL88
	.long	LVL89
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL95
	.long	LVL96
	.word	0x1
	.byte	0x50
	.long	LVL96
	.long	LVL97
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL97
	.long	LVL98
	.word	0x2
	.byte	0x72
	.sleb128 -1
	.long	LVL98
	.long	LVL99
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL108
	.long	LVL109
	.word	0x1
	.byte	0x50
	.long	LVL109
	.long	LVL111
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL114
	.long	LVL115
	.word	0x1
	.byte	0x50
	.long	LVL115
	.long	LVL116
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL116
	.long	LVL118
	.word	0x2
	.byte	0x76
	.sleb128 -1
	.long	LVL122
	.long	LVL123
	.word	0x1
	.byte	0x50
	.long	LVL123
	.long	LVL125
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL128
	.long	LVL129
	.word	0x1
	.byte	0x50
	.long	LVL129
	.long	LVL131
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL134
	.long	LVL135
	.word	0x1
	.byte	0x50
	.long	LVL135
	.long	LVL137
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL139
	.long	LVL140
	.word	0x1
	.byte	0x50
	.long	LVL140
	.long	LVL142
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL143
	.long	LVL144
	.word	0x1
	.byte	0x50
	.long	LVL144
	.long	LVL145
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL148
	.long	LVL149
	.word	0x1
	.byte	0x50
	.long	LVL149
	.long	LVL150
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL150
	.long	LVL151
	.word	0x2
	.byte	0x72
	.sleb128 -1
	.long	LVL155
	.long	LVL156
	.word	0x1
	.byte	0x50
	.long	LVL156
	.long	LVL158
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL159
	.long	LVL162
	.word	0x1
	.byte	0x50
	.long	LVL162
	.long	LVL164
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL166
	.long	LVL167
	.word	0x1
	.byte	0x50
	.long	LVL167
	.long	LVL168
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL168
	.long	LVL171
	.word	0x2
	.byte	0x71
	.sleb128 -5
	.long	LVL173
	.long	LVL174
	.word	0x1
	.byte	0x50
	.long	LVL174
	.long	LVL175
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL176
	.long	LVL177
	.word	0x1
	.byte	0x50
	.long	LVL177
	.long	LVL178
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL179
	.long	LVL180
	.word	0x1
	.byte	0x50
	.long	LVL180
	.long	LVL182
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL184
	.long	LVL185
	.word	0x1
	.byte	0x50
	.long	LVL185
	.long	LVL187
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	LVL189
	.long	LVL190
	.word	0x1
	.byte	0x50
	.long	LVL190
	.long	LVL192
	.word	0x2
	.byte	0x71
	.sleb128 0
	.long	0
	.long	0
LLST6:
	.long	LVL84
	.long	LVL87
	.word	0x1
	.byte	0x52
	.long	LVL91
	.long	LVL92
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
	.long	LVL92
	.long	LVL93
	.word	0x1
	.byte	0x50
	.long	LVL93
	.long	LVL94-1
	.word	0x2
	.byte	0x91
	.sleb128 -56
	.long	LVL113
	.long	LVL114
	.word	0x1
	.byte	0x52
	.long	LVL127
	.long	LVL128
	.word	0x1
	.byte	0x52
	.long	LVL141
	.long	LVL143
	.word	0x1
	.byte	0x52
	.long	LVL157
	.long	LVL159
	.word	0x1
	.byte	0x52
	.long	LVL169
	.long	LVL173
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST12:
	.long	LVL23
	.long	LVL26
	.word	0x1
	.byte	0x53
	.long	LVL27
	.long	LVL103
	.word	0x1
	.byte	0x53
	.long	LVL104
	.long	LVL105
	.word	0x1
	.byte	0x53
	.long	LVL106
	.long	LFE77
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST7:
	.long	LVL65
	.long	LVL66
	.word	0x1
	.byte	0x57
	.long	LVL194
	.long	LFE77
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LLST8:
	.long	LVL71
	.long	LVL72
	.word	0x6
	.byte	0xc
	.long	0x1869f
	.byte	0x9f
	.long	0
	.long	0
LLST9:
	.long	LVL120
	.long	LVL121
	.word	0x6
	.byte	0xc
	.long	0x1869f
	.byte	0x9f
	.long	0
	.long	0
LLST10:
	.long	LVL81
	.long	LVL82
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST11:
	.long	LVL84
	.long	LVL86
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST13:
	.long	LVL141
	.long	LVL143
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST14:
	.long	LVL170
	.long	LVL172
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST0:
	.long	LVL0
	.long	LVL1
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL1
	.long	LFE70
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST1:
	.long	LVL0
	.long	LVL1
	.word	0x2
	.byte	0x91
	.sleb128 8
	.long	LVL1
	.long	LFE70
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST2:
	.long	LVL8
	.long	LVL9
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL9
	.long	LVL17
	.word	0x1
	.byte	0x53
	.long	LVL18
	.long	LFE74
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
LLST3:
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
	.long	LFE74
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LLST15:
	.long	LVL196
	.long	LVL203
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LLST16:
	.long	LVL198
	.long	LVL200
	.word	0x1
	.byte	0x53
	.long	LVL200
	.long	LFE78
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST17:
	.long	LVL198
	.long	LVL199
	.word	0x3
	.byte	0x77
	.sleb128 5
	.byte	0x9f
	.long	LVL199
	.long	LFE78
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST18:
	.long	LVL205
	.long	LVL206
	.word	0x1
	.byte	0x53
	.long	LVL206
	.long	LVL207
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	LVL207
	.long	LVL211
	.word	0x1
	.byte	0x53
	.long	LVL213
	.long	LVL214
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST19:
	.long	LVL206
	.long	LVL208
	.word	0x1
	.byte	0x55
	.long	LVL209
	.long	LVL212
	.word	0x1
	.byte	0x55
	.long	LVL212
	.long	LVL213
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST22:
	.long	LVL220
	.long	LVL222
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL222
	.long	LFE81
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST23:
	.long	LVL221
	.long	LVL224
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	LVL224
	.long	LFE81
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST34:
	.long	LVL262
	.long	LVL274
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL276
	.long	LVL277
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL286
	.long	LVL297
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL300
	.long	LFE83
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
LLST35:
	.long	LVL262
	.long	LVL275
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	LVL276
	.long	LVL297
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	LVL300
	.long	LFE83
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
LLST36:
	.long	LVL264
	.long	LVL267
	.word	0x1
	.byte	0x57
	.long	LVL267
	.long	LVL268
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	LVL286
	.long	LVL321
	.word	0x1
	.byte	0x57
	.long	LVL322
	.long	LFE83
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LLST37:
	.long	LVL264
	.long	LVL266
	.word	0x1
	.byte	0x53
	.long	LVL266
	.long	LVL268
	.word	0x1
	.byte	0x50
	.long	LVL286
	.long	LVL321
	.word	0x1
	.byte	0x53
	.long	LVL322
	.long	LFE83
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST38:
	.long	LVL311
	.long	LVL312
	.word	0x1
	.byte	0x50
	.long	LVL313
	.long	LVL314
	.word	0x1
	.byte	0x50
	.long	LVL316
	.long	LVL317
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST39:
	.long	LVL288
	.long	LVL289
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST40:
	.long	LVL294
	.long	LVL295
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST41:
	.long	LVL302
	.long	LVL305
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LLST42:
	.long	LVL303
	.long	LVL304
	.word	0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	LVL304
	.long	LVL305
	.word	0x8
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL306
	.long	LVL307
	.word	0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	LVL307
	.long	LVL308
	.word	0x8
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL308
	.long	LVL309-1
	.word	0xa
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -33
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL309-1
	.long	LVL310
	.word	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -33
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	LVL322
	.long	LFE83
	.word	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -33
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	0
	.long	0
LLST43:
	.long	LVL319
	.long	LVL320
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST44:
	.long	LVL268
	.long	LVL274
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST45:
	.long	LVL277
	.long	LVL282
	.word	0x1
	.byte	0x57
	.long	LVL282
	.long	LVL285
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
LLST46:
	.long	LVL280
	.long	LVL285
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LLST47:
	.long	LVL280
	.long	LVL285
	.word	0x2
	.byte	0x4e
	.byte	0x9f
	.long	0
	.long	0
LLST48:
	.long	LVL280
	.long	LVL281
	.word	0x3
	.byte	0x75
	.sleb128 5
	.byte	0x9f
	.long	LVL281
	.long	LVL285
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LLST49:
	.long	LVL324
	.long	LVL332
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	LVL333
	.long	LVL334-1
	.word	0x1
	.byte	0x50
	.long	LVL334
	.long	LVL335
	.word	0x1
	.byte	0x50
	.long	LVL340
	.long	LFE84
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST50:
	.long	LVL325
	.long	LVL328
	.word	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.long	LVL328
	.long	LVL332
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST51:
	.long	LVL326
	.long	LVL332
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST52:
	.long	LVL334
	.long	LVL341
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST53:
	.long	LVL334
	.long	LVL341
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST72:
	.long	LVL435
	.long	LVL436
	.word	0x1
	.byte	0x50
	.long	LVL436
	.long	LVL439
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LLST73:
	.long	LVL431
	.long	LVL433
	.word	0x6
	.byte	0x3
	.long	LC30
	.byte	0x9f
	.long	0
	.long	0
LLST74:
	.long	LVL431
	.long	LVL433
	.word	0x6
	.byte	0x3
	.long	LC31
	.byte	0x9f
	.long	0
	.long	0
LLST75:
	.long	LVL431
	.long	LVL433
	.word	0x6
	.byte	0x3
	.long	_output_fp
	.byte	0x9f
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
	.long	LFB88
	.long	LFE88-LFB88
	.long	0
	.long	0
	.section	.debug_ranges,"dr"
Ldebug_ranges0:
	.long	LBB131
	.long	LBE131
	.long	LBB134
	.long	LBE134
	.long	0
	.long	0
	.long	LBB141
	.long	LBE141
	.long	LBB150
	.long	LBE150
	.long	LBB217
	.long	LBE217
	.long	0
	.long	0
	.long	LBB145
	.long	LBE145
	.long	LBB149
	.long	LBE149
	.long	LBB151
	.long	LBE151
	.long	0
	.long	0
	.long	LBB152
	.long	LBE152
	.long	LBB156
	.long	LBE156
	.long	LBB218
	.long	LBE218
	.long	0
	.long	0
	.long	LBB161
	.long	LBE161
	.long	LBB168
	.long	LBE168
	.long	LBB188
	.long	LBE188
	.long	0
	.long	0
	.long	LBB165
	.long	LBE165
	.long	LBB187
	.long	LBE187
	.long	0
	.long	0
	.long	LBB173
	.long	LBE173
	.long	LBB176
	.long	LBE176
	.long	0
	.long	0
	.long	LBB207
	.long	LBE207
	.long	LBB210
	.long	LBE210
	.long	0
	.long	0
	.long	LBB221
	.long	LBE221
	.long	LBB224
	.long	LBE224
	.long	0
	.long	0
	.long	LBB233
	.long	LBE233
	.long	LBB234
	.long	LBE234
	.long	0
	.long	0
	.long	LBB261
	.long	LBE261
	.long	LBB287
	.long	LBE287
	.long	LBB296
	.long	LBE296
	.long	0
	.long	0
	.long	LBB263
	.long	LBE263
	.long	LBB266
	.long	LBE266
	.long	0
	.long	0
	.long	LBB269
	.long	LBE269
	.long	LBB272
	.long	LBE272
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
	.long	LBB284
	.long	LBE284
	.long	0
	.long	0
	.long	LBB280
	.long	LBE280
	.long	LBB283
	.long	LBE283
	.long	0
	.long	0
	.long	LBB292
	.long	LBE292
	.long	LBB295
	.long	LBE295
	.long	0
	.long	0
	.long	LBB301
	.long	LBE301
	.long	LBB306
	.long	LBE306
	.long	0
	.long	0
	.long	LBB333
	.long	LBE333
	.long	LBB338
	.long	LBE338
	.long	0
	.long	0
	.long	LBB334
	.long	LBE334
	.long	LBB337
	.long	LBE337
	.long	0
	.long	0
	.long	LBB339
	.long	LBE339
	.long	LBB347
	.long	LBE347
	.long	LBB351
	.long	LBE351
	.long	LBB355
	.long	LBE355
	.long	0
	.long	0
	.long	LBB369
	.long	LBE369
	.long	LBB372
	.long	LBE372
	.long	0
	.long	0
	.long	LBB373
	.long	LBE373
	.long	LBB376
	.long	LBE376
	.long	0
	.long	0
	.long	LBB377
	.long	LBE377
	.long	LBB391
	.long	LBE391
	.long	LBB392
	.long	LBE392
	.long	0
	.long	0
	.long	LBB379
	.long	LBE379
	.long	LBB384
	.long	LBE384
	.long	LBB387
	.long	LBE387
	.long	LBB388
	.long	LBE388
	.long	0
	.long	0
	.long	LBB399
	.long	LBE399
	.long	LBB402
	.long	LBE402
	.long	0
	.long	0
	.long	Ltext0
	.long	Letext0
	.long	LFB88
	.long	LFE88
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF4:
	.ascii "SetConsoleCursorPosition@8\0"
LASF3:
	.ascii "_stricmp\0"
LASF2:
	.ascii "GetTickCount@0\0"
LASF6:
	.ascii "FillConsoleOutputCharacterA@20\0"
LASF5:
	.ascii "GetConsoleScreenBufferInfo@8\0"
LASF0:
	.ascii "word\0"
LASF1:
	.ascii "GetStdHandle@4\0"
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
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
