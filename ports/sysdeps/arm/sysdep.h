/* Assembler macros for ARM.
   Copyright (C) 1997-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library.  If not, see
   <http://www.gnu.org/licenses/>.  */

#include <sysdeps/generic/sysdep.h>
#include <features.h>

/* The __ARM_ARCH define is provided by gcc 4.8.  Construct it otherwise.  */
#ifndef __ARM_ARCH
# ifdef __ARM_ARCH_2__
#  define __ARM_ARCH 2
# elif defined (__ARM_ARCH_3__) || defined (__ARM_ARCH_3M__)
#  define __ARM_ARCH 3
# elif defined (__ARM_ARCH_4__) || defined (__ARM_ARCH_4T__)
#  define __ARM_ARCH 4
# elif defined (__ARM_ARCH_5__) || defined (__ARM_ARCH_5E__) \
       || defined(__ARM_ARCH_5T__) || defined(__ARM_ARCH_5TE__) \
       || defined(__ARM_ARCH_5TEJ__)
#  define __ARM_ARCH 5
# elif defined (__ARM_ARCH_6__) || defined(__ARM_ARCH_6J__) \
       || defined (__ARM_ARCH_6Z__) || defined(__ARM_ARCH_6ZK__) \
       || defined (__ARM_ARCH_6K__) || defined(__ARM_ARCH_6T2__)
#  define __ARM_ARCH 6
# elif defined (__ARM_ARCH_7__) || defined(__ARM_ARCH_7A__) \
       || defined(__ARM_ARCH_7R__) || defined(__ARM_ARCH_7M__) \
       || defined(__ARM_ARCH_7EM__)
#  define __ARM_ARCH 7
# else
#  error unknown arm architecture
# endif
#endif

#if __ARM_ARCH > 4 || defined (__ARM_ARCH_4T__)
# define ARCH_HAS_BX
#endif
#if __ARM_ARCH > 4
# define ARCH_HAS_BLX
#endif
#if __ARM_ARCH > 6 || defined (__ARM_ARCH_6K__) || defined (__ARM_ARCH_6ZK__)
# define ARCH_HAS_HARD_TP
#endif
#if __ARM_ARCH > 6 || defined (__ARM_ARCH_6T2__)
# define ARCH_HAS_T2
#endif

#ifdef	__ASSEMBLER__

/* Syntactic details of assembler.  */

#define ALIGNARG(log2) log2
#define ASM_SIZE_DIRECTIVE(name) .size name,.-name

#define PLTJMP(_x)	_x##(PLT)

#ifdef ARCH_HAS_BX
# define BX(R)		bx	R
# define BXC(C, R)	bx##C	R
# ifdef ARCH_HAS_BLX
#  define BLX(R)	blx	R
# else
#  define BLX(R)	mov	lr, pc; bx R
# endif
#else
# define BX(R)		mov	pc, R
# define BXC(C, R)	mov##C	pc, R
# define BLX(R)		mov	lr, pc; mov pc, R
#endif

#define DO_RET(R)	BX(R)
#define RETINSTR(C, R)	BXC(C, R)

/* Define an entry point visible from C.  */
#define	ENTRY(name)					\
	.globl	C_SYMBOL_NAME(name);			\
	.type	C_SYMBOL_NAME(name),%function;		\
	.align	ALIGNARG(4);				\
  C_LABEL(name)						\
	CFI_SECTIONS;					\
	cfi_startproc;					\
	CALL_MCOUNT

#define CFI_SECTIONS					\
	.cfi_sections .debug_frame

#undef	END
#define END(name)					\
	cfi_endproc;					\
	ASM_SIZE_DIRECTIVE(name)

/* If compiled for profiling, call `mcount' at the start of each function.  */
#ifdef	PROF
/* Call __gnu_mcount_nc if GCC >= 4.4.  */
#if __GNUC_PREREQ(4,4)
#define CALL_MCOUNT					\
	push	{lr};					\
	cfi_adjust_cfa_offset (4);			\
	cfi_rel_offset (lr, 0);				\
	bl	PLTJMP(mcount);				\
	cfi_adjust_cfa_offset (-4);			\
	cfi_restore (lr)
#else /* else call _mcount */
#define CALL_MCOUNT					\
	push	{lr};					\
	cfi_adjust_cfa_offset (4);			\
	cfi_rel_offset (lr, 0);				\
	bl	PLTJMP(mcount);				\
	pops	{lr};					\
	cfi_adjust_cfa_offset (-4);			\
	cfi_restore (lr)
#endif
#else
#define CALL_MCOUNT		/* Do nothing.  */
#endif

/* Since C identifiers are not normally prefixed with an underscore
   on this system, the asm identifier `syscall_error' intrudes on the
   C name space.  Make sure we use an innocuous name.  */
#define	syscall_error	__syscall_error
#if __GNUC_PREREQ(4,4)
#define mcount		__gnu_mcount_nc
#else
#define mcount		_mcount
#endif

/* Tag_ABI_align8_preserved: This code preserves 8-byte
   alignment in any callee.  */
	.eabi_attribute 25, 1
/* Tag_ABI_align8_needed: This code may require 8-byte alignment from
   the caller.  */
	.eabi_attribute 24, 1

#ifdef __ARM_PCS_VFP
/* Tag_ABI_HardFP_use: This code uses hard floating point */
	.eabi_attribute 27, 3
/* Tag_ABI_VFP_args: This code stores FP arguments in VFP registers */
	.eabi_attribute 28, 1
#endif  /* __ARM_PCS_VFP */

/* The thumb2 encoding is reasonably complete.  Unless suppressed, use it.  */
	.syntax unified
# if defined(__thumb2__) && !defined(NO_THUMB)
	.thumb
#else
#  undef __thumb__
#  undef __thumb2__
	.arm
# endif

/* Load or store to/from a pc-relative EXPR into/from R, using T.  */
# ifdef __thumb2__
#  define LDST_PCREL(OP, R, T, EXPR) \
	ldr	T, 98f;					\
	.subsection 2;					\
98:	.word	EXPR - 99f - PC_OFS;			\
	.previous;					\
99:	add	T, T, pc;				\
	OP	R, [T]
# else
#  define LDST_PCREL(OP, R, T, EXPR) \
	ldr	T, 98f;					\
	.subsection 2;					\
98:	.word	EXPR - 99f - PC_OFS;			\
	.previous;					\
99:	OP	R, [pc, T]
# endif

/* Load or store to/from a global EXPR into/from R, using T.  */
# define LDST_GLOBAL(OP, R, T, EXPR)			\
	ldr	T, 99f;					\
	ldr	R, 100f;				\
98:	add	T, T, pc;				\
	ldr	T, [T, R];				\
	.subsection 2;					\
99:	.word	_GLOBAL_OFFSET_TABLE_ - 98b - PC_OFS;	\
100:	.word	EXPR##(GOT);				\
	.previous;					\
	OP	R, [T]

/* Cope with negative memory offsets, which thumb can't encode.
   Use NEGOFF_ADJ_BASE to (conditionally) alter the base register,
   and then NEGOFF_OFF1 to use 0 for thumb and the offset for arm,
   or NEGOFF_OFF2 to use A-B for thumb and A for arm.  */
# ifdef __thumb2__
#  define NEGOFF_ADJ_BASE(R, OFF)	add R, R, $OFF
#  define NEGOFF_ADJ_BASE2(D, S, OFF)	add D, S, $OFF
#  define NEGOFF_OFF1(R, OFF)		[R]
#  define NEGOFF_OFF2(R, OFFA, OFFB)	[R, $((OFFA) - (OFFB))]
# else
#  define NEGOFF_ADJ_BASE(R, OFF)
#  define NEGOFF_ADJ_BASE2(D, S, OFF)	mov D, S
#  define NEGOFF_OFF1(R, OFF)		[R, $OFF]
#  define NEGOFF_OFF2(R, OFFA, OFFB)	[R, $OFFA]
# endif

/* Helper to get the TLS base pointer.  The interface is that TMP is a
   register that may be used to hold the LR, if necessary.  TMP may be
   LR itself to indicate that LR need not be saved.  The base pointer
   is returned in R0.  Only R0 and TMP are modified.  */

# ifdef ARCH_HAS_HARD_TP
/* If the cpu has cp15 available, use it.  */
#  define GET_TLS(TMP)		mrc p15, 0, r0, c13, c0, 3
# else
/* At this generic level we have no tricks to pull.  Call the ABI routine.  */
#  define GET_TLS(TMP)					\
	push	{ r1, r2, r3, lr };			\
	cfi_remember_state;				\
	cfi_adjust_cfa_offset (16);			\
	cfi_rel_offset (r1, 0);				\
	cfi_rel_offset (r2, 4);				\
	cfi_rel_offset (r3, 8);				\
	cfi_rel_offset (lr, 12);			\
	bl	__aeabi_read_tp;			\
	pop	{ r1, r2, r3, lr };			\
	cfi_restore_state
# endif /* ARCH_HAS_HARD_TP */

# ifndef ARM_SFI_MACROS
# define ARM_SFI_MACROS 1
/* This assembly macro is prepended to any load/store instruction,
   pulling the base register out of the addressing mode syntax and
   making it the first operand of the macro.  For example:
	ldr r0, [r1]
   becomes:
	sfi_breg r1, ldr r0, [\B]
   The \B stands in for the base register that is the first operand
   to the macro, so we can avoid error-prone repetition of the base
   register in two places on the line.

   This is used for all memory access through a base register other
   than PC or SP.  It's intended to support SFI schemes such as
   Native Client, where the OS will enforce that all load/store
   instructions use a special form.  In any such configuration,
   another sysdep.h file will have defined ARM_SFI_MACROS and
   provided its own assembly macros with the same interface.  */

        .macro sfi_breg basereg, insn, operands:vararg
                .macro _sfi_breg_doit B
                \insn \operands
                .endm
                _sfi_breg_doit \basereg
                .purgem _sfi_breg_doit
        .endm

/* This assembly macro replaces the "pld" instruction.
   The syntax:
	sfi_pld REGISTER, #OFFSET
   is exactly equivalent to:
	sfi_breg REGISTER, pld [\B, #OFFSET]
   (and ", #OFFSET" is optional).  We have a separate macro
   only to work around a bug in GAS versions prior to 2.23.2,
   that misparses the sfi_breg macro expansion in this case.  */

	.macro sfi_pld basereg, offset=#0
		pld [\basereg, \offset]
	.endm

/* This macro precedes any instruction that directly changes the SP.
   It's not needed for push/pop or for any kind of load or store that
   implicitly changes the SP via the ! syntax.  */
# define sfi_sp	/* Nothing to do.  */

# endif

/* These are the directives used for EABI unwind info.
   Wrap them in macros so another configuration's sysdep.h
   file can define them away if it doesn't use EABI unwind info.  */
# define eabi_fnstart		.fnstart
# define eabi_fnend		.fnend
# define eabi_save(...)		.save __VA_ARGS__
# define eabi_cantunwind	.cantunwind
# define eabi_pad(n)		.pad n

#endif	/* __ASSEMBLER__ */

/* This number is the offset from the pc at the current location.  */
#ifdef __thumb__
# define PC_OFS  4
#else
# define PC_OFS  8
#endif
