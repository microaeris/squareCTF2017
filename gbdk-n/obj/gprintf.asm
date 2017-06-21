;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Sun May 28 17:34:52 2017
;--------------------------------------------------------
	.module gprintf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wrtchr
	.globl _gprintn
	.globl _gprint
	.globl _gprintf
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
;./libc/gprintf.c:4: INT8 gprintf(char *fmt, ...) NONBANKED
;	---------------------------------
; Function gprintf
; ---------------------------------
_gprintf_start::
_gprintf:
	add	sp, #-19
;./libc/gprintf.c:7: INT8 nb = 0;
	ldhl	sp,#16
	ld	(hl),#0x00
;./libc/gprintf.c:9: va_start(ap, fmt);
	ldhl	sp,#21
	ld	c,l
	ld	b,h
	inc	bc
	inc	bc
	ldhl	sp,#3
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	hl
	dec	hl
	ld	(hl),#0x00
00115$:
;./libc/gprintf.c:10: for(; *fmt; fmt++)
	ldhl	sp,#21
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#14
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
	ld	(hl),a
	ld	a,(hl)
	or	a, a
	jp	Z,00113$
;./libc/gprintf.c:11: if(*fmt == '%') {
	ld	a,(hl)
	sub	a, #0x25
	jp	NZ,00111$
;./libc/gprintf.c:12: switch(*++fmt) {
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#21
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#14
	ld	(hl),a
	ld	a,(hl)
	sub	a, #0x25
	jp	Z,00107$
;./libc/gprintf.c:15: char c = va_arg(ap, char);
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#11
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	dec	bc
	ldhl	sp,#9
	ld	(hl),c
	inc	hl
	ld	(hl),b
;./libc/gprintf.c:12: switch(*++fmt) {
	ldhl	sp,#14
	ld	a,(hl)
	sub	a, #0x63
	jp	Z,00101$
	ldhl	sp,#14
	ld	a,(hl)
	sub	a, #0x64
	jp	Z,00102$
	ldhl	sp,#14
	ld	a,(hl)
	sub	a, #0x6F
	jp	Z,00104$
;./libc/gprintf.c:27: INT8 b = (INT8)va_arg(ap, int);
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#7
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ldhl	sp,#6
	ld	(hl-),a
	ld	(hl),e
;./libc/gprintf.c:12: switch(*++fmt) {
	ldhl	sp,#14
	ld	a,(hl)
	sub	a, #0x73
	jp	Z,00106$
	ldhl	sp,#14
	ld	a,(hl)
	sub	a, #0x75
	jp	Z,00103$
	ldhl	sp,#14
	ld	a,(hl)
	sub	a, #0x78
	jp	Z,00105$
	jp	00108$
;./libc/gprintf.c:13: case 'c': {
00101$:
;./libc/gprintf.c:15: char c = va_arg(ap, char);
	ldhl	sp,#11
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#10
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;./libc/gprintf.c:16: wrtchr(c);
	push	af
	inc	sp
	call	_wrtchr
	inc	sp
;./libc/gprintf.c:17: break;
	jp	00109$
;./libc/gprintf.c:19: case 'd': {
00102$:
;./libc/gprintf.c:21: INT8 b = va_arg(ap, INT8);
	ldhl	sp,#11
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#10
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;./libc/gprintf.c:22: gprintn(b, 10, SIGNED);
	ld	hl,#0x010A
	push	hl
	push	bc
	inc	sp
	call	_gprintn
	add	sp, #3
;./libc/gprintf.c:23: break;
	jp	00109$
;./libc/gprintf.c:25: case 'u': {
00103$:
;./libc/gprintf.c:27: INT8 b = (INT8)va_arg(ap, int);
	ldhl	sp,#7
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),e
	inc	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#17
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	push	hl
	dec	hl
	ld	a,(hl)
	ldhl	sp,#3
	ld	(hl),a
	pop	hl
;./libc/gprintf.c:28: gprintn(b, 10, UNSIGNED);
	ld	hl,#0x000A
	push	hl
	ldhl	sp,#3
	ld	a,(hl)
	push	af
	inc	sp
	call	_gprintn
	add	sp, #3
;./libc/gprintf.c:29: break;
	jp	00109$
;./libc/gprintf.c:31: case 'o': {
00104$:
;./libc/gprintf.c:33: INT8 b = va_arg(ap, INT8);
	ldhl	sp,#11
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#10
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;./libc/gprintf.c:34: gprintn(b, 8, UNSIGNED);
	ld	hl,#0x0008
	push	hl
	push	bc
	inc	sp
	call	_gprintn
	add	sp, #3
;./libc/gprintf.c:35: break;
	jp	00109$
;./libc/gprintf.c:37: case 'x': {
00105$:
;./libc/gprintf.c:39: INT8 b = va_arg(ap, INT8);
	ldhl	sp,#11
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#10
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#1
	ld	(hl),a
;./libc/gprintf.c:40: gprintn(b, 16, UNSIGNED);
	ld	hl,#0x0010
	push	hl
	ldhl	sp,#3
	ld	a,(hl)
	push	af
	inc	sp
	call	_gprintn
	add	sp, #3
;./libc/gprintf.c:41: break;
	jr	00109$
;./libc/gprintf.c:43: case 's': {
00106$:
;./libc/gprintf.c:45: char *s = va_arg(ap, char *);
	ldhl	sp,#7
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),e
	inc	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#17
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#0
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;./libc/gprintf.c:46: gprint(s);
	pop	hl
	push	hl
	push	hl
	call	_gprint
	pop	af
;./libc/gprintf.c:47: break;
	jr	00109$
;./libc/gprintf.c:72: case '%':
00107$:
;./libc/gprintf.c:74: wrtchr(*fmt);
	ldhl	sp,#14
	ld	a,(hl)
	push	af
	inc	sp
	call	_wrtchr
	inc	sp
;./libc/gprintf.c:75: break;
	jr	00109$
;./libc/gprintf.c:76: default:
00108$:
;./libc/gprintf.c:77: return -1;
	ld	e,#0xFF
	jr	00117$
;./libc/gprintf.c:78: }
00109$:
;./libc/gprintf.c:79: nb++;
	ldhl	sp,#2
	inc	(hl)
	push	hl
	ld	a,(hl)
	ldhl	sp,#18
	ld	(hl),a
	pop	hl
	jr	00116$
00111$:
;./libc/gprintf.c:81: wrtchr(*fmt);
	ldhl	sp,#13
	ld	a,(hl)
	push	af
	inc	sp
	call	_wrtchr
	inc	sp
00116$:
;./libc/gprintf.c:10: for(; *fmt; fmt++)
	ldhl	sp,#21
	inc	(hl)
	jp	NZ,00115$
	inc	hl
	inc	(hl)
	jp	00115$
00113$:
;./libc/gprintf.c:84: return nb;
	ldhl	sp,#16
	ld	e,(hl)
00117$:
	add	sp,#19
	ret
_gprintf_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
