;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Sun May 28 17:34:51 2017
;--------------------------------------------------------
	.module gprint
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wrtchr
	.globl _gprint
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
;./libc/gprint.c:3: void gprint(char *str) NONBANKED
;	---------------------------------
; Function gprint
; ---------------------------------
_gprint_start::
_gprint:
;./libc/gprint.c:5: while(*str)
	pop	de
	pop	bc
	push	bc
	push	de
00101$:
	ld	a,(bc)
	or	a, a
	ret	Z
;./libc/gprint.c:6: wrtchr(*str++);
	inc	bc
	push	bc
	push	af
	inc	sp
	call	_wrtchr
	inc	sp
	pop	bc
	jr	00101$
	ret
_gprint_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
