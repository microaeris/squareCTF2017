;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Sun May 28 17:34:52 2017
;--------------------------------------------------------
	.module gprintln
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wrtchr
	.globl _gprintln
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;./libc/gprintln.c:7: void gprintln(INT16 number, INT8 radix, INT8 signed_value)
;	---------------------------------
; Function gprintln
; ---------------------------------
_gprintln_start::
_gprintln:
	push	af
	push	af
;./libc/gprintln.c:11: if(number < 0 && signed_value) {
	ldhl	sp,#6
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00117$
	bit	7, d
	jr	NZ,00118$
	cp	a, a
	jr	00118$
00117$:
	bit	7, d
	jr	Z,00118$
	scf
00118$:
	jr	NC,00102$
	ldhl	sp,#9
	ld	a,(hl)
	or	a, a
	jr	Z,00102$
;./libc/gprintln.c:12: wrtchr('-');
	ld	a,#0x2D
	push	af
	inc	sp
	call	_wrtchr
	inc	sp
;./libc/gprintln.c:13: number = -number;
	ldhl	sp,#6
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x00
	sbc	a, d
	ld	(hl-),a
	ld	(hl),e
00102$:
;./libc/gprintln.c:15: if((l = (UINT16)number / (UINT16)radix) != 0)
	ldhl	sp,#7
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	a,(hl)
	ldhl	sp,#0
	ld	(hl),a
	ldhl	sp,#8
	ld	a,(hl)
	rla
	sbc	a, a
	ldhl	sp,#1
	ld	(hl),a
	push	bc
	pop	de
	pop	hl
	push	hl
	push	de
	push	hl
	push	bc
	call	__divuint_rrx_s
	add	sp, #4
	pop	bc
	ldhl	sp,#2
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ld	a,d
	or	a,e
	jr	Z,00105$
;./libc/gprintln.c:16: gprintln(l, radix, UNSIGNED);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,#11
	ld	a,(hl)
	push	af
	inc	sp
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_gprintln
	add	sp, #4
	pop	bc
00105$:
;./libc/gprintln.c:17: wrtchr(digits[(UINT16)number % (UINT16)radix]);
	pop	hl
	push	hl
	push	hl
	push	bc
	call	__moduint_rrx_s
	add	sp, #4
	ld	c,e
	ld	b,d
	ld	a,c
	ld	hl,#_digits
	add	a, (hl)
	ld	c,a
	ld	a,b
	inc	hl
	adc	a, (hl)
	ld	b,a
	ld	a,(bc)
	push	af
	inc	sp
	call	_wrtchr
	inc	sp
	add	sp,#4
	ret
_gprintln_end::
	.area _CODE
	.area _CABS (ABS)
