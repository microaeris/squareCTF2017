;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Sun May 28 17:34:52 2017
;--------------------------------------------------------
	.module gprintn
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wrtchr
	.globl _gprintn
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
;./libc/gprintn.c:7: void gprintn(BYTE number, BYTE radix, BYTE signed_value)
;	---------------------------------
; Function gprintn
; ---------------------------------
_gprintn_start::
_gprintn:
;./libc/gprintn.c:11: if(number < 0 && signed_value) {
	ld	a,#0x00
	ld	e,a
	ldhl	sp,#2
	ld	a,(hl)
	ld	d,a
	ld	a,(hl)
	bit	7,a
	jr	Z,00102$
	inc	hl
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00102$
;./libc/gprintn.c:12: wrtchr('-');
	ld	a,#0x2D
	push	af
	inc	sp
	call	_wrtchr
	inc	sp
;./libc/gprintn.c:13: number = -number;
	xor	a, a
	ldhl	sp,#2
	sub	a, (hl)
	ld	(hl),a
00102$:
;./libc/gprintn.c:15: if((i = (UBYTE)number / (UBYTE)radix) != 0)
	ldhl	sp,#2
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	push	de
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	__divuchar_rrx_s
	pop	af
	ld	a,e
	pop	de
	ld	b,a
	or	a, a
	jr	Z,00105$
;./libc/gprintn.c:16: gprintn(i, radix, UNSIGNED);
	push	de
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,#6
	ld	a,(hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_gprintn
	add	sp, #3
	pop	de
00105$:
;./libc/gprintn.c:17: wrtchr(digits[(UBYTE)number % (UBYTE)radix]);
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	__moduchar_rrx_s
	pop	af
	ld	b,e
	ld	hl,#_digits
	ld	a,(hl)
	add	a, b
	ld	c,a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	push	af
	inc	sp
	call	_wrtchr
	inc	sp
	ret
_gprintn_end::
	.area _CODE
	.area _CABS (ABS)
