;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Sun May 28 18:46:01 2017
;--------------------------------------------------------
	.module paint
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _run
	.globl _menu
	.globl _splash
	.globl _reset_icon
	.globl _change_icon
	.globl _set_icon
	.globl _move_menu_cursor
	.globl _move_cursor
	.globl _set_cursor
	.globl _switch_data
	.globl _plot
	.globl _move_sprite
	.globl _set_sprite_prop
	.globl _set_sprite_tile
	.globl _set_sprite_data
	.globl _wait_vbl_done
	.globl _waitpadup
	.globl _joypad
	.globl _cursor_y
	.globl _cursor_x
	.globl _menu_cursor_pos
	.globl _current_cursor
	.globl _current_mode
	.globl _current_color
	.globl _current_tool
	.globl _data_buffer
	.globl _modes
	.globl _colors
	.globl _cursors_data
	.globl _cursors
	.globl _selected_data
	.globl _data
	.globl _icons
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_data_buffer::
	.ds 768
_current_tool::
	.ds 1
_current_color::
	.ds 1
_current_mode::
	.ds 1
_current_cursor::
	.ds 1
_menu_cursor_pos::
	.ds 1
_cursor_x::
	.ds 1
_cursor_y::
	.ds 1
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
;paint.c:263: void set_cursor()
;	---------------------------------
; Function set_cursor
; ---------------------------------
_set_cursor_start::
_set_cursor:
	add	sp, #-6
;paint.c:267: i = 0;
	ldhl	sp,#0
	ld	(hl),#0x00
;paint.c:268: for(x = 0; x < cursors[current_cursor].w; x++)
	inc	hl
	inc	hl
	ld	(hl),#0x00
00108$:
	ld	hl,#_current_cursor
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c,l
	ld	b,h
	ld	hl,#_cursors
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	bc
	ld	a,(bc)
	ld	b,a
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, b
	jp	NC,00120$
;paint.c:269: for(y = 0; y < cursors[current_cursor].h; y++) {
	push	hl
	dec	hl
	dec	hl
	ld	a,(hl)
	ldhl	sp,#7
	ld	(hl),a
	pop	hl
	ldhl	sp,#1
	ld	(hl),#0x00
00105$:
	ld	hl,#_current_cursor
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c,l
	ld	b,h
	ld	hl,#_cursors
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	ld	(hl-),a
	dec	hl
	ld	a,(hl+)
	inc	hl
	sub	a, (hl)
	jp	NC,00121$
;paint.c:272: cursors_data[cursors[current_cursor].data_idx+i]);
	ld	a,(bc)
	ld	e,a
	inc	hl
	inc	hl
	add	a, (hl)
	ld	c,a
	ld	b,#0x00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#_cursors_data
	add	hl,bc
	ld	c,l
	ld	b,h
;paint.c:270: set_sprite_data(i,
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	ldhl	sp,#8
	ld	a,(hl)
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;paint.c:273: set_sprite_tile(i, i);
	ldhl	sp,#5
	ld	a,(hl)
	push	af
	inc	sp
	ld	a,(hl)
	push	af
	inc	sp
	call	_set_sprite_tile
	pop	af
;paint.c:274: set_sprite_prop(i, 0x10);
	ld	a,#0x10
	push	af
	inc	sp
	ldhl	sp,#6
	ld	a,(hl)
	push	af
	inc	sp
	call	_set_sprite_prop
	pop	af
;paint.c:275: i++;
	ldhl	sp,#5
	inc	(hl)
;paint.c:269: for(y = 0; y < cursors[current_cursor].h; y++) {
	ldhl	sp,#1
	inc	(hl)
	jp	00105$
00121$:
	push	hl
	ldhl	sp,#7
	ld	a,(hl)
	ldhl	sp,#2
	ld	(hl),a
	pop	hl
;paint.c:268: for(x = 0; x < cursors[current_cursor].w; x++)
	ldhl	sp,#2
	inc	(hl)
	jp	00108$
00120$:
	ldhl	sp,#0
	ld	b,(hl)
00111$:
;paint.c:278: for(; i < 4; i++) {
	ld	a,b
	sub	a, #0x04
	jr	NC,00113$
;paint.c:279: move_sprite(i, 0, 0);
	push	bc
	ld	hl,#0x0000
	push	hl
	push	bc
	inc	sp
	call	_move_sprite
	add	sp, #3
	pop	bc
;paint.c:278: for(; i < 4; i++) {
	inc	b
	jr	00111$
00113$:
	add	sp,#6
	ret
_set_cursor_end::
_icons:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0A	; 10
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x14	; 20
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x1C	; 28
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x0A	; 10
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x0E	; 14
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0B	; 11
	.db #0x10	; 16
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x0B	; 11
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0D	; 13
	.db #0x00	; 0
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x0A	; 10
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0D	; 13
	.db #0x0A	; 10
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x2B	; 43
	.db #0x01	; 1
	.db #0x0B	; 11
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x0B	; 11
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x2C	; 44
	.db #0x02	; 2
	.db #0x0A	; 10
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x2D	; 45
	.db #0x02	; 2
	.db #0x0B	; 11
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x0E	; 14
	.db #0x01	; 1
	.db #0x0D	; 13
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x2E	; 46
	.db #0x03	; 3
	.db #0x0A	; 10
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x2F	; 47
	.db #0x03	; 3
	.db #0x0B	; 11
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x0F	; 15
	.db #0x0B	; 11
	.db #0x00	; 0
_data:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x02	; 2
	.db #0x7D	; 125
	.db #0x05	; 5
	.db #0x7B	; 123
	.db #0x0A	; 10
	.db #0x77	; 119	'w'
	.db #0x14	; 20
	.db #0x7F	; 127
	.db #0x18	; 24
	.db #0x7F	; 127
	.db #0x27	; 39
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x0D	; 13
	.db #0xF6	; 246
	.db #0x15	; 21
	.db #0xEE	; 238
	.db #0x29	; 41
	.db #0xDE	; 222
	.db #0x51	; 81	'Q'
	.db #0xBE	; 190
	.db #0xA1	; 161
	.db #0x7E	; 126
	.db #0x41	; 65	'A'
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x02	; 2
	.db #0x7D	; 125
	.db #0x0D	; 13
	.db #0x7F	; 127
	.db #0x1E	; 30
	.db #0x7F	; 127
	.db #0x1E	; 30
	.db #0x7F	; 127
	.db #0x1D	; 29
	.db #0x7F	; 127
	.db #0x11	; 17
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x0D	; 13
	.db #0xF6	; 246
	.db #0x15	; 21
	.db #0xEE	; 238
	.db #0x29	; 41
	.db #0xDE	; 222
	.db #0x51	; 81	'Q'
	.db #0xBE	; 190
	.db #0xA1	; 161
	.db #0x7E	; 126
	.db #0x41	; 65	'A'
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x02	; 2
	.db #0x7E	; 126
	.db #0x0C	; 12
	.db #0x7D	; 125
	.db #0x18	; 24
	.db #0x7E	; 126
	.db #0x1D	; 29
	.db #0x7F	; 127
	.db #0x1B	; 27
	.db #0x7F	; 127
	.db #0x19	; 25
	.db #0x7F	; 127
	.db #0x18	; 24
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFE	; 254
	.db #0x41	; 65	'A'
	.db #0x7E	; 126
	.db #0x21	; 33
	.db #0xBE	; 190
	.db #0x71	; 113	'q'
	.db #0x5E	; 94
	.db #0xE9	; 233
	.db #0xAE	; 174
	.db #0xC5	; 197
	.db #0x5E	; 94
	.db #0x89	; 137
	.db #0xBE	; 190
	.db #0x11	; 17
	.db #0xFE	; 254
	.db #0xA1	; 161
	.db #0xFE	; 254
	.db #0x41	; 65	'A'
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x02	; 2
	.db #0x7C	; 124
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x1F	; 31
	.db #0x71	; 113	'q'
	.db #0x11	; 17
	.db #0x7F	; 127
	.db #0x1F	; 31
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xF9	; 249
	.db #0x1E	; 30
	.db #0x19	; 25
	.db #0x2E	; 46
	.db #0x29	; 41
	.db #0x5E	; 94
	.db #0x51	; 81	'Q'
	.db #0xBE	; 190
	.db #0xA1	; 161
	.db #0x7E	; 126
	.db #0x41	; 65	'A'
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x10	; 16
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x04	; 4
	.db #0x7F	; 127
	.db #0x02	; 2
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFE	; 254
	.db #0x41	; 65	'A'
	.db #0xFE	; 254
	.db #0x21	; 33
	.db #0xFE	; 254
	.db #0x11	; 17
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x1E	; 30
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFE	; 254
	.db #0x41	; 65	'A'
	.db #0xFE	; 254
	.db #0x21	; 33
	.db #0xFE	; 254
	.db #0x11	; 17
	.db #0xFE	; 254
	.db #0x11	; 17
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x03	; 3
	.db #0x7F	; 127
	.db #0x0C	; 12
	.db #0x7F	; 127
	.db #0x10	; 16
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x20	; 32
	.db #0x7F	; 127
	.db #0x10	; 16
	.db #0x7F	; 127
	.db #0x0C	; 12
	.db #0x7F	; 127
	.db #0x03	; 3
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xC1	; 193
	.db #0xFE	; 254
	.db #0x31	; 49	'1'
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFE	; 254
	.db #0x31	; 49	'1'
	.db #0xFE	; 254
	.db #0xC1	; 193
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x6A	; 106	'j'
	.db #0x3F	; 63
	.db #0x75	; 117	'u'
	.db #0x3F	; 63
	.db #0x6A	; 106	'j'
	.db #0x3F	; 63
	.db #0x75	; 117	'u'
	.db #0x3F	; 63
	.db #0x6A	; 106	'j'
	.db #0x3F	; 63
	.db #0x75	; 117	'u'
	.db #0x3F	; 63
	.db #0x6A	; 106	'j'
	.db #0x3F	; 63
	.db #0x75	; 117	'u'
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0xAE	; 174
	.db #0xFD	; 253
	.db #0x56	; 86	'V'
	.db #0xFD	; 253
	.db #0xAE	; 174
	.db #0xFD	; 253
	.db #0x56	; 86	'V'
	.db #0xFD	; 253
	.db #0xAE	; 174
	.db #0xFD	; 253
	.db #0x56	; 86	'V'
	.db #0xFD	; 253
	.db #0xAE	; 174
	.db #0xFD	; 253
	.db #0x56	; 86	'V'
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x03	; 3
	.db #0x7E	; 126
	.db #0x0F	; 15
	.db #0x75	; 117	'u'
	.db #0x1F	; 31
	.db #0x6A	; 106	'j'
	.db #0x3F	; 63
	.db #0x75	; 117	'u'
	.db #0x3F	; 63
	.db #0x6A	; 106	'j'
	.db #0x3F	; 63
	.db #0x75	; 117	'u'
	.db #0x3F	; 63
	.db #0x7A	; 122	'z'
	.db #0x1F	; 31
	.db #0x7D	; 125
	.db #0x0F	; 15
	.db #0x7F	; 127
	.db #0x03	; 3
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xC1	; 193
	.db #0xBE	; 190
	.db #0xF1	; 241
	.db #0x5E	; 94
	.db #0xF9	; 249
	.db #0xAE	; 174
	.db #0xFD	; 253
	.db #0x56	; 86	'V'
	.db #0xFD	; 253
	.db #0xAE	; 174
	.db #0xFD	; 253
	.db #0x56	; 86	'V'
	.db #0xFD	; 253
	.db #0xAE	; 174
	.db #0xF9	; 249
	.db #0x7E	; 126
	.db #0xF1	; 241
	.db #0xFE	; 254
	.db #0xC1	; 193
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x0C	; 12
	.db #0x7F	; 127
	.db #0x10	; 16
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x04	; 4
	.db #0x7F	; 127
	.db #0x18	; 24
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x14	; 20
	.db #0x7F	; 127
	.db #0x14	; 20
	.db #0x7F	; 127
	.db #0x14	; 20
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x29	; 41
	.db #0xFE	; 254
	.db #0x29	; 41
	.db #0xFE	; 254
	.db #0x11	; 17
	.db #0xFE	; 254
	.db #0x29	; 41
	.db #0xFE	; 254
	.db #0x29	; 41
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x11	; 17
	.db #0xFE	; 254
	.db #0x29	; 41
	.db #0xFE	; 254
	.db #0x39	; 57	'9'
	.db #0xFE	; 254
	.db #0x29	; 41
	.db #0xFE	; 254
	.db #0x29	; 41
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
_selected_data:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFD	; 253
	.db #0x82	; 130
	.db #0xFA	; 250
	.db #0x84	; 132
	.db #0xF5	; 245
	.db #0x88	; 136
	.db #0xEB	; 235
	.db #0x80	; 128
	.db #0xE7	; 231
	.db #0x80	; 128
	.db #0xD8	; 216
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xF2	; 242
	.db #0x09	; 9
	.db #0xEA	; 234
	.db #0x11	; 17
	.db #0xD6	; 214
	.db #0x21	; 33
	.db #0xAE	; 174
	.db #0x41	; 65	'A'
	.db #0x5E	; 94
	.db #0x81	; 129
	.db #0xBE	; 190
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFD	; 253
	.db #0x82	; 130
	.db #0xF2	; 242
	.db #0x80	; 128
	.db #0xE1	; 225
	.db #0x80	; 128
	.db #0xE1	; 225
	.db #0x80	; 128
	.db #0xE2	; 226
	.db #0x80	; 128
	.db #0xEE	; 238
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xF2	; 242
	.db #0x09	; 9
	.db #0xEA	; 234
	.db #0x11	; 17
	.db #0xD6	; 214
	.db #0x21	; 33
	.db #0xAE	; 174
	.db #0x41	; 65	'A'
	.db #0x5E	; 94
	.db #0x81	; 129
	.db #0xBE	; 190
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFE	; 254
	.db #0x80	; 128
	.db #0xFD	; 253
	.db #0x81	; 129
	.db #0xF3	; 243
	.db #0x82	; 130
	.db #0xE7	; 231
	.db #0x81	; 129
	.db #0xE2	; 226
	.db #0x80	; 128
	.db #0xE4	; 228
	.db #0x80	; 128
	.db #0xE7	; 231
	.db #0x80	; 128
	.db #0xE7	; 231
	.db #0x80	; 128
	.db #0xF7	; 247
	.db #0x80	; 128
	.db #0xF7	; 247
	.db #0x80	; 128
	.db #0xF7	; 247
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x01	; 1
	.db #0xBE	; 190
	.db #0x81	; 129
	.db #0xDE	; 222
	.db #0x41	; 65	'A'
	.db #0x8E	; 142
	.db #0xA1	; 161
	.db #0x16	; 22
	.db #0x51	; 81	'Q'
	.db #0x3A	; 58
	.db #0xA1	; 161
	.db #0x76	; 118	'v'
	.db #0x41	; 65	'A'
	.db #0xEE	; 238
	.db #0x01	; 1
	.db #0x5E	; 94
	.db #0x01	; 1
	.db #0xBE	; 190
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFE	; 254
	.db #0x81	; 129
	.db #0xFD	; 253
	.db #0x83	; 131
	.db #0xFB	; 251
	.db #0x87	; 135
	.db #0xF7	; 247
	.db #0x80	; 128
	.db #0xE0	; 224
	.db #0x8E	; 142
	.db #0xEE	; 238
	.db #0x80	; 128
	.db #0xE0	; 224
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0xE1	; 225
	.db #0xE6	; 230
	.db #0xD1	; 209
	.db #0xD6	; 214
	.db #0xA1	; 161
	.db #0xAE	; 174
	.db #0x41	; 65	'A'
	.db #0x5E	; 94
	.db #0x81	; 129
	.db #0xBE	; 190
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xEF	; 239
	.db #0x80	; 128
	.db #0xF7	; 247
	.db #0x80	; 128
	.db #0xFB	; 251
	.db #0x80	; 128
	.db #0xFD	; 253
	.db #0x80	; 128
	.db #0xFE	; 254
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x01	; 1
	.db #0xBE	; 190
	.db #0x01	; 1
	.db #0xDE	; 222
	.db #0x01	; 1
	.db #0xEE	; 238
	.db #0x01	; 1
	.db #0xF6	; 246
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xE1	; 225
	.db #0x80	; 128
	.db #0xFE	; 254
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x01	; 1
	.db #0xBE	; 190
	.db #0x01	; 1
	.db #0xDE	; 222
	.db #0x01	; 1
	.db #0xEE	; 238
	.db #0x01	; 1
	.db #0xEE	; 238
	.db #0x01	; 1
	.db #0xF6	; 246
	.db #0x01	; 1
	.db #0xF6	; 246
	.db #0x01	; 1
	.db #0xF6	; 246
	.db #0x01	; 1
	.db #0xF6	; 246
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFC	; 252
	.db #0x80	; 128
	.db #0xF3	; 243
	.db #0x80	; 128
	.db #0xEF	; 239
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0xEF	; 239
	.db #0x80	; 128
	.db #0xF3	; 243
	.db #0x80	; 128
	.db #0xFC	; 252
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x3E	; 62
	.db #0x01	; 1
	.db #0xCE	; 206
	.db #0x01	; 1
	.db #0xF6	; 246
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0xF6	; 246
	.db #0x01	; 1
	.db #0xCE	; 206
	.db #0x01	; 1
	.db #0x3E	; 62
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFC	; 252
	.db #0x83	; 131
	.db #0xF0	; 240
	.db #0x8F	; 143
	.db #0xE0	; 224
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x8F	; 143
	.db #0xE0	; 224
	.db #0x83	; 131
	.db #0xF0	; 240
	.db #0x80	; 128
	.db #0xFC	; 252
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x3E	; 62
	.db #0xC1	; 193
	.db #0x0E	; 14
	.db #0xF1	; 241
	.db #0x06	; 6
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0xF1	; 241
	.db #0x06	; 6
	.db #0xC1	; 193
	.db #0x0E	; 14
	.db #0x01	; 1
	.db #0x3E	; 62
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x4C	; 76	'L'
	.db #0x4C	; 76	'L'
	.db #0x4C	; 76	'L'
	.db #0x4C	; 76	'L'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x40	; 64
	.db #0x5E	; 94
	.db #0x40	; 64
	.db #0x6D	; 109	'm'
	.db #0x40	; 64
	.db #0x73	; 115	's'
	.db #0x40	; 64
	.db #0x73	; 115	's'
	.db #0x40	; 64
	.db #0x6D	; 109	'm'
	.db #0x40	; 64
	.db #0x5E	; 94
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0x87	; 135
	.db #0xFE	; 254
	.db #0x4B	; 75	'K'
	.db #0xFE	; 254
	.db #0x33	; 51	'3'
	.db #0xFE	; 254
	.db #0x33	; 51	'3'
	.db #0xFE	; 254
	.db #0x4B	; 75	'K'
	.db #0xFE	; 254
	.db #0x87	; 135
	.db #0x7A	; 122	'z'
	.db #0x7B	; 123
	.db #0xB6	; 182
	.db #0xB7	; 183
	.db #0xCE	; 206
	.db #0xCF	; 207
	.db #0xCE	; 206
	.db #0xCF	; 207
	.db #0xB6	; 182
	.db #0xB7	; 183
	.db #0x7A	; 122	'z'
	.db #0x7B	; 123
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x73	; 115	's'
	.db #0x73	; 115	's'
	.db #0x6F	; 111	'o'
	.db #0x6F	; 111	'o'
	.db #0x77	; 119	'w'
	.db #0x77	; 119	'w'
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x77	; 119	'w'
	.db #0x77	; 119	'w'
	.db #0x6B	; 107	'k'
	.db #0x6B	; 107	'k'
	.db #0x6B	; 107	'k'
	.db #0x6B	; 107	'k'
	.db #0x6B	; 107	'k'
	.db #0x6B	; 107	'k'
	.db #0x77	; 119	'w'
	.db #0x77	; 119	'w'
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0xEE	; 238
	.db #0xEF	; 239
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xEE	; 238
	.db #0xEF	; 239
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0xC6	; 198
	.db #0xC7	; 199
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
_cursors:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0F	; 15
	.db #0x0D	; 13
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x0A	; 10
_cursors_data:
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x7E	; 126
	.db #0xFF	; 255
	.db #0x7C	; 124
	.db #0xFE	; 254
	.db #0x78	; 120	'x'
	.db #0xFF	; 255
	.db #0x7C	; 124
	.db #0xFF	; 255
	.db #0x6E	; 110	'n'
	.db #0xFF	; 255
	.db #0x46	; 70	'F'
	.db #0xEF	; 239
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x0F	; 15
	.db #0x02	; 2
	.db #0x1F	; 31
	.db #0x05	; 5
	.db #0x3F	; 63
	.db #0x0A	; 10
	.db #0x7F	; 127
	.db #0x14	; 20
	.db #0x7E	; 126
	.db #0x28	; 40
	.db #0xFC	; 252
	.db #0x30	; 48	'0'
	.db #0xF8	; 248
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x7C	; 124
	.db #0x18	; 24
	.db #0xFC	; 252
	.db #0x28	; 40
	.db #0xFC	; 252
	.db #0x50	; 80	'P'
	.db #0xF8	; 248
	.db #0xA0	; 160
	.db #0xF0	; 240
	.db #0x40	; 64
	.db #0xE0	; 224
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x0F	; 15
	.db #0x02	; 2
	.db #0x1F	; 31
	.db #0x05	; 5
	.db #0x7F	; 127
	.db #0x0A	; 10
	.db #0xFF	; 255
	.db #0x34	; 52	'4'
	.db #0xFE	; 254
	.db #0x78	; 120	'x'
	.db #0xFC	; 252
	.db #0x78	; 120	'x'
	.db #0xFC	; 252
	.db #0x70	; 112	'p'
	.db #0xF8	; 248
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x30	; 48	'0'
	.db #0xF8	; 248
	.db #0x50	; 80	'P'
	.db #0xF8	; 248
	.db #0xA0	; 160
	.db #0xF0	; 240
	.db #0x40	; 64
	.db #0xE0	; 224
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x02	; 2
	.db #0x1F	; 31
	.db #0x05	; 5
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0xFE	; 254
	.db #0x31	; 49	'1'
	.db #0xFD	; 253
	.db #0x63	; 99	'c'
	.db #0xFA	; 250
	.db #0x77	; 119	'w'
	.db #0xFD	; 253
	.db #0x6E	; 110	'n'
	.db #0xFF	; 255
	.db #0x64	; 100	'd'
	.db #0xFF	; 255
	.db #0x62	; 98	'b'
	.db #0xF7	; 247
	.db #0x21	; 33
	.db #0x73	; 115	's'
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x80	; 128
	.db #0xF0	; 240
	.db #0xC0	; 192
	.db #0x78	; 120	'x'
	.db #0xA0	; 160
	.db #0xF8	; 248
	.db #0x10	; 16
	.db #0xF8	; 248
	.db #0x20	; 32
	.db #0xF0	; 240
	.db #0x40	; 64
	.db #0xE0	; 224
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x1F	; 31
	.db #0x04	; 4
	.db #0x3F	; 63
	.db #0x08	; 8
	.db #0x7F	; 127
	.db #0x11	; 17
	.db #0xFF	; 255
	.db #0x22	; 34
	.db #0xFF	; 255
	.db #0x7D	; 125
	.db #0xFF	; 255
	.db #0x46	; 70	'F'
	.db #0xFF	; 255
	.db #0x7C	; 124
	.db #0x7E	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0x60	; 96
	.db #0xF0	; 240
	.db #0xA0	; 160
	.db #0xF0	; 240
	.db #0x40	; 64
	.db #0xE0	; 224
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0xFF	; 255
	.db #0x04	; 4
	.db #0xFB	; 251
	.db #0x7B	; 123
	.db #0xFF	; 255
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_colors:
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x03	; 3
_modes:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
;paint.c:283: void move_cursor()
;	---------------------------------
; Function move_cursor
; ---------------------------------
_move_cursor_start::
_move_cursor:
	add	sp, #-8
;paint.c:287: for(x = 0; x < cursors[current_cursor].w; x++)
	ldhl	sp,#1
	ld	(hl),#0x00
00107$:
	ld	hl,#_current_cursor
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c,l
	ld	b,h
	ld	hl,#_cursors
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	bc
	ld	a,(bc)
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl)
	sub	a, b
	jp	NC,00109$
;paint.c:288: for(y = 0; y < cursors[current_cursor].h; y++)
	ld	a,(hl)
	swap	a
	rrca
	and	a,#0xF8
	inc	hl
	inc	hl
	ld	(hl-),a
	dec	hl
	ld	a,(hl)
	add	a, a
	inc	hl
	ld	(hl-),a
	dec	hl
	ld	(hl),#0x00
00104$:
	ld	hl,#_current_cursor
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c,l
	ld	b,h
	ld	hl,#_cursors
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	b,a
	ldhl	sp,#0
	ld	a,(hl)
	sub	a, b
	jp	NC,00108$
;paint.c:291: cursor_y+16 - cursors[current_cursor].hot_y + (y<<3));
	ld	hl,#_cursor_y
	ld	a,(hl)
	add	a, #0x10
	ldhl	sp,#5
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	b,a
	ldhl	sp,#5
	ld	a,(hl)
	sub	a, b
	ld	b,a
	ldhl	sp,#0
	ld	a,(hl)
	swap	a
	rrca
	and	a,#0xF8
	ld	d, a
	add	a,b
	ldhl	sp,#5
	ld	(hl),a
;paint.c:290: cursor_x+8 - cursors[current_cursor].hot_x + (x<<3),
	ld	hl,#_cursor_x
	ld	a,(hl)
	add	a, #0x08
	ldhl	sp,#4
	ld	(hl),a
	ldhl	sp,#7
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	b,a
	ldhl	sp,#4
	ld	a,(hl)
	sub	a, b
	ld	b,a
	dec	hl
	add	a, (hl)
	ld	d,a
;paint.c:289: move_sprite((x<<1)+y,
	dec	hl
	ld	a,(hl-)
	dec	hl
	add	a, (hl)
	ld	b,a
	ldhl	sp,#5
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	inc	sp
	call	_move_sprite
	add	sp, #3
;paint.c:288: for(y = 0; y < cursors[current_cursor].h; y++)
	ldhl	sp,#0
	inc	(hl)
	jp	00104$
00108$:
;paint.c:287: for(x = 0; x < cursors[current_cursor].w; x++)
	ldhl	sp,#1
	inc	(hl)
	jp	00107$
00109$:
	add	sp,#8
	ret
_move_cursor_end::
;paint.c:294: void move_menu_cursor()
;	---------------------------------
; Function move_menu_cursor
; ---------------------------------
_move_menu_cursor_start::
_move_menu_cursor:
	push	af
	push	af
;paint.c:298: ((icons[menu_cursor_pos].y+icons[menu_cursor_pos].h)<<3) + 12);
	ld	hl,#_menu_cursor_pos
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	inc	sp
	inc	sp
	push	hl
	pop	bc
	push	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	ldhl	sp,#2
	ld	(hl),a
	pop	de
	push	de
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	d,a
	ldhl	sp,#2
	ld	a,(hl)
	add	a, d
	swap	a
	rrca
	and	a,#0xF8
	add	a, #0x0C
	ld	(hl),a
;paint.c:297: ((icons[menu_cursor_pos].x+icons[menu_cursor_pos].w)<<3) + 4,
	pop	bc
	push	bc
	inc	bc
	ld	a,(bc)
	inc	hl
	ld	(hl),a
	pop	bc
	push	bc
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	d, a
	add	a,(hl)
	swap	a
	rrca
	and	a,#0xF8
	ld	d,a
	inc	d
	inc	d
	inc	d
	inc	d
;paint.c:296: move_sprite(0,
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
	add	sp,#4
	ret
_move_menu_cursor_end::
;paint.c:301: void set_icon(UBYTE icon, UBYTE selected)
;	---------------------------------
; Function set_icon
; ---------------------------------
_set_icon_start::
_set_icon:
	add	sp, #-18
;paint.c:305: for(x = 0; x < icons[icon].w; x++)
	ldhl	sp,#20
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#16
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0003
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#14
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#0
	ld	(hl),#0x00
00107$:
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#0
	ld	a,(hl)
	sub	a, b
	jp	NC,00109$
;paint.c:306: for(y = 0; y < icons[icon].h; y++) {
	ldhl	sp,#17
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#8
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#17
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#4
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#17
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#1
	ld	(hl),#0x00
00104$:
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl)
	sub	a, b
	jp	NC,00108$
;paint.c:307: UWORD index = icons[icon].data_idx+((UWORD)x<<1)+y;
	ldhl	sp,#17
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	ld	b,#0x00
	ldhl	sp,#0
	ld	d,(hl)
	ld	e,#0x00
	sla	d
	rl	e
	ldhl	sp,#10
	ld	(hl),d
	inc	hl
	ld	(hl),e
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#10
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#1
	ld	c,(hl)
	ld	b,#0x00
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;paint.c:311: data_buffer[index]);
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ldhl	sp,#10
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	de,#_data_buffer
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	b,l
	ld	c,h
	ldhl	sp,#2
	ld	(hl),b
	inc	hl
	ld	(hl),c
;paint.c:310: selected ? selected_data[index] : data[index],
	ldhl	sp,#21
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
	ld	de,#_selected_data
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),d
	jr	00112$
00111$:
	ld	de,#_data
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),d
00112$:
;paint.c:309: icons[icon].y + y,
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#1
	add	a, (hl)
	ld	b,a
;paint.c:308: switch_data(icons[icon].x + x,
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	ldhl	sp,#0
	add	a, (hl)
	ld	d,a
	inc	hl
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	inc	sp
	push	de
	inc	sp
	call	_switch_data
	add	sp, #6
;paint.c:306: for(y = 0; y < icons[icon].h; y++) {
	ldhl	sp,#1
	inc	(hl)
	jp	00104$
00108$:
;paint.c:305: for(x = 0; x < icons[icon].w; x++)
	ldhl	sp,#0
	inc	(hl)
	jp	00107$
00109$:
	add	sp,#18
	ret
_set_icon_end::
;paint.c:315: void change_icon(UBYTE icon, UBYTE selected)
;	---------------------------------
; Function change_icon
; ---------------------------------
_change_icon_start::
_change_icon:
	add	sp, #-16
;paint.c:319: for(x = 0; x < icons[icon].w; x++)
	ldhl	sp,#18
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0003
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#8
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#1
	ld	(hl),#0x00
00107$:
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl)
	sub	a, b
	jp	NC,00109$
;paint.c:320: for(y = 0; y < icons[icon].h; y++)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#4
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#14
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#0
	ld	(hl),#0x00
00104$:
	ldhl	sp,#13
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#0
	ld	a,(hl)
	sub	a, b
	jp	NC,00108$
;paint.c:324: selected_data[icons[icon].data_idx+((UWORD)x<<1)+y] :
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	dec	hl
	dec	hl
	ld	d,(hl)
	ld	e,#0x00
	sla	d
	ld	a,b
	add	a, d
	ld	d,a
	dec	hl
	add	a, (hl)
	ld	d,a
	ld	e,#0x00
	sla	d
	rl	e
	sla	d
	rl	e
	sla	d
	rl	e
	sla	d
	rl	e
	ldhl	sp,#10
	ld	(hl),d
	inc	hl
	ld	(hl),e
;paint.c:323: (selected ?
	ldhl	sp,#19
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
;paint.c:324: selected_data[icons[icon].data_idx+((UWORD)x<<1)+y] :
	ld	de,#_selected_data
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),d
	jr	00112$
00111$:
;paint.c:325: data[icons[icon].data_idx+((UWORD)x<<1)+y]),
	ld	de,#_data
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),d
00112$:
;paint.c:322: icons[icon].y + y,
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#0
	add	a, (hl)
	ld	b,a
;paint.c:321: switch_data(icons[icon].x + x,
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	ldhl	sp,#1
	add	a, (hl)
	ld	d,a
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	inc	sp
	push	de
	inc	sp
	call	_switch_data
	add	sp, #6
;paint.c:320: for(y = 0; y < icons[icon].h; y++)
	ldhl	sp,#0
	inc	(hl)
	jp	00104$
00108$:
;paint.c:319: for(x = 0; x < icons[icon].w; x++)
	ldhl	sp,#1
	inc	(hl)
	jp	00107$
00109$:
	add	sp,#16
	ret
_change_icon_end::
;paint.c:329: void reset_icon(UBYTE icon)
;	---------------------------------
; Function reset_icon
; ---------------------------------
_reset_icon_start::
_reset_icon:
	add	sp, #-15
;paint.c:333: for(x = 0; x < icons[icon].w; x++)
	ldhl	sp,#17
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0003
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#9
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#1
	ld	(hl),#0x00
00107$:
	ldhl	sp,#10
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl)
	sub	a, b
	jp	NC,00109$
;paint.c:334: for(y = 0; y < icons[icon].h; y++)
	ld	a,(hl)
	add	a, a
	ldhl	sp,#8
	ld	(hl),a
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#13
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#3
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
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#0
	ld	(hl),#0x00
00104$:
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#0
	ld	a,(hl)
	sub	a, b
	jp	NC,00108$
;paint.c:337: data_buffer[icons[icon].data_idx+(x<<1)+y],
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#8
	add	a, (hl)
	ld	d,a
	ldhl	sp,#0
	add	a, (hl)
	ld	c,a
	ld	b,#0x00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#_data_buffer
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#4
	ld	(hl),c
	inc	hl
	ld	(hl),b
;paint.c:336: icons[icon].y + y,
	ldhl	sp,#14
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#0
	add	a, (hl)
	ld	b,a
;paint.c:335: switch_data(icons[icon].x + x,
	ldhl	sp,#12
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	ldhl	sp,#1
	add	a, (hl)
	ld	d,a
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	inc	sp
	push	de
	inc	sp
	call	_switch_data
	add	sp, #6
;paint.c:334: for(y = 0; y < icons[icon].h; y++)
	ldhl	sp,#0
	inc	(hl)
	jp	00104$
00108$:
;paint.c:333: for(x = 0; x < icons[icon].w; x++)
	ldhl	sp,#1
	inc	(hl)
	jp	00107$
00109$:
	add	sp,#15
	ret
_reset_icon_end::
;paint.c:341: void splash()
;	---------------------------------
; Function splash
; ---------------------------------
_splash_start::
_splash:
;paint.c:345: cursor_x = 40;
	ld	hl,#_cursor_x
	ld	(hl),#0x28
;paint.c:346: cursor_y = 50;
	ld	hl,#_cursor_y
	ld	(hl),#0x32
;paint.c:347: current_cursor = PEN;
	ld	hl,#_current_cursor
	ld	(hl),#0x01
;paint.c:348: set_cursor();
	call	_set_cursor
;paint.c:349: move_cursor();
	call	_move_cursor
;paint.c:350: SHOW_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	1, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
00108$:
;paint.c:352: for(; cursor_x < 120; cursor_x++) {
	ld	hl,#_cursor_x
	ld	a,(hl)
	sub	a, #0x78
	jr	NC,00111$
;paint.c:353: wait_vbl_done();
	call	_wait_vbl_done
;paint.c:354: move_cursor();
	call	_move_cursor
;paint.c:355: plot(cursor_x, cursor_y, BLACK, SOLID);
	ld	hl,#0x0003
	push	hl
	ld	hl,#_cursor_y
	ld	a,(hl)
	push	af
	inc	sp
	ld	hl,#_cursor_x
	ld	a,(hl)
	push	af
	inc	sp
	call	_plot
	add	sp, #4
;paint.c:352: for(; cursor_x < 120; cursor_x++) {
	ld	hl,#_cursor_x
	inc	(hl)
	jr	00108$
00111$:
;paint.c:357: for(; cursor_y < 94; cursor_y++) {
	ld	hl,#_cursor_y
	ld	a,(hl)
	sub	a, #0x5E
	jr	NC,00114$
;paint.c:358: wait_vbl_done();
	call	_wait_vbl_done
;paint.c:359: move_cursor();
	call	_move_cursor
;paint.c:360: plot(cursor_x, cursor_y, BLACK, SOLID);
	ld	hl,#0x0003
	push	hl
	ld	hl,#_cursor_y
	ld	a,(hl)
	push	af
	inc	sp
	ld	hl,#_cursor_x
	ld	a,(hl)
	push	af
	inc	sp
	call	_plot
	add	sp, #4
;paint.c:357: for(; cursor_y < 94; cursor_y++) {
	ld	hl,#_cursor_y
	inc	(hl)
	jr	00111$
00114$:
;paint.c:362: for(; cursor_x > 40; cursor_x--) {
	ld	a,#0x28
	ld	hl,#_cursor_x
	sub	a, (hl)
	jr	NC,00117$
;paint.c:363: wait_vbl_done();
	call	_wait_vbl_done
;paint.c:364: move_cursor();
	call	_move_cursor
;paint.c:365: plot(cursor_x, cursor_y, BLACK, SOLID);
	ld	hl,#0x0003
	push	hl
	ld	hl,#_cursor_y
	ld	a,(hl)
	push	af
	inc	sp
	ld	hl,#_cursor_x
	ld	a,(hl)
	push	af
	inc	sp
	call	_plot
	add	sp, #4
;paint.c:362: for(; cursor_x > 40; cursor_x--) {
	ld	hl,#_cursor_x
	dec	(hl)
	jr	00114$
00117$:
;paint.c:367: for(; cursor_y > 50; cursor_y--) {
	ld	a,#0x32
	ld	hl,#_cursor_y
	sub	a, (hl)
	jr	NC,00104$
;paint.c:368: wait_vbl_done();
	call	_wait_vbl_done
;paint.c:369: move_cursor();
	call	_move_cursor
;paint.c:370: plot(cursor_x, cursor_y, BLACK, SOLID);
	ld	hl,#0x0003
	push	hl
	ld	hl,#_cursor_y
	ld	a,(hl)
	push	af
	inc	sp
	ld	hl,#_cursor_x
	ld	a,(hl)
	push	af
	inc	sp
	call	_plot
	add	sp, #4
;paint.c:367: for(; cursor_y > 50; cursor_y--) {
	ld	hl,#_cursor_y
	dec	(hl)
	jr	00117$
00104$:
;paint.c:372: cursor_x = 160/2;
	ld	hl,#_cursor_x
	ld	(hl),#0x50
;paint.c:373: cursor_y = 144/2;
	ld	hl,#_cursor_y
	ld	(hl),#0x48
;paint.c:374: current_cursor = FILL;
	ld	hl,#_current_cursor
	ld	(hl),#0x03
;paint.c:375: set_cursor();
	call	_set_cursor
;paint.c:376: move_cursor();
	call	_move_cursor
;paint.c:378: for(y = 51; y < 94; y++)
	ld	b,#0x33
;paint.c:379: for(x = 41; x < 120; x++)
00133$:
	ld	c,#0x29
00119$:
;paint.c:380: plot(x, y, LTGREY, SOLID);
	push	bc
	ld	hl,#0x0001
	push	hl
	push	bc
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_plot
	add	sp, #4
	pop	bc
;paint.c:379: for(x = 41; x < 120; x++)
	inc	c
	ld	a,c
	sub	a, #0x78
	jr	C,00119$
;paint.c:378: for(y = 51; y < 94; y++)
	inc	b
	ld	a,b
	sub	a, #0x5E
	jr	C,00133$
	ret
_splash_end::
;paint.c:385: void menu()
;	---------------------------------
; Function menu
; ---------------------------------
_menu_start::
_menu:
	add	sp, #-9
;paint.c:391: slowdown = 50;
	ldhl	sp,#1
	ld	(hl),#0x32
;paint.c:393: for(i = 0; i < NB_TOOLS; i++)
	inc	hl
	ld	(hl),#0x00
00139$:
;paint.c:395: i == FIRST_TOOL + current_tool ||
	ld	hl,#_current_tool
	ld	b,(hl)
	ld	c,#0x00
	ldhl	sp,#2
	ld	a,(hl)
	ldhl	sp,#5
	ld	(hl+),a
	ld	(hl),#0x00
	ld	a,b
	dec	hl
	sub	a, (hl)
	jr	NZ,00232$
	ld	a,c
	inc	hl
	sub	a, (hl)
	jr	Z,00146$
00232$:
;paint.c:396: i == FIRST_COLOR + current_color ||
	ld	hl,#_current_color
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x000A
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#5
	ld	a,(hl)
	sub	a, c
	jr	NZ,00233$
	inc	hl
	ld	a,(hl)
	sub	a, b
	jr	Z,00146$
00233$:
;paint.c:397: i == FIRST_MODE + current_mode);
	ld	hl,#_current_mode
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x000E
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#5
	ld	a,(hl)
	sub	a, c
	jr	NZ,00234$
	inc	hl
	ld	a,(hl)
	sub	a, b
	jr	Z,00146$
00234$:
	ld	d,#0x00
	jr	00147$
00146$:
	ld	d,#0x01
00147$:
;paint.c:394: set_icon(i,
	push	de
	inc	sp
	ldhl	sp,#3
	ld	a,(hl)
	push	af
	inc	sp
	call	_set_icon
	pop	af
;paint.c:393: for(i = 0; i < NB_TOOLS; i++)
	ldhl	sp,#2
	inc	(hl)
	ld	a,(hl)
	sub	a, #0x12
	jp	C,00139$
;paint.c:399: cursor = current_cursor;
	push	hl
	ld	hl,#_current_cursor
	ld	a,(hl)
	ldhl	sp,#7
	ld	(hl),a
	pop	hl
;paint.c:400: current_cursor = ARROW;
	ld	hl,#_current_cursor
	ld	(hl),#0x00
;paint.c:401: set_cursor();
	call	_set_cursor
;paint.c:402: move_menu_cursor();
	call	_move_menu_cursor
;paint.c:403: SHOW_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	1, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;paint.c:404: waitpadup();
	call	_waitpadup
;paint.c:405: do {
00135$:
;paint.c:406: wait_vbl_done();
	call	_wait_vbl_done
;paint.c:407: key = joypad();
	call	_joypad
	ldhl	sp,#0
	ld	(hl),e
;paint.c:408: if(key & (J_UP|J_DOWN|J_LEFT|J_RIGHT)) {
	ld	a,(hl)
	ldhl	sp,#7
	ld	(hl+),a
	ld	(hl),#0x00
	dec	hl
	ld	a,(hl)
	and	a, #0x0F
	jp	Z,00115$
;paint.c:409: if(key & J_UP)
	ldhl	sp,#7
	bit	2, (hl)
	jr	Z,00103$
;paint.c:410: menu_cursor_pos = icons[menu_cursor_pos].up;
	ld	hl,#_menu_cursor_pos
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	hl,#_menu_cursor_pos
	ld	(hl),a
00103$:
;paint.c:411: if(key & J_DOWN)
	ldhl	sp,#7
	bit	3, (hl)
	jr	Z,00105$
;paint.c:412: menu_cursor_pos = icons[menu_cursor_pos].down;
	ld	hl,#_menu_cursor_pos
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	hl,#_menu_cursor_pos
	ld	(hl),a
00105$:
;paint.c:413: if(key & J_LEFT)
	ldhl	sp,#7
	bit	1, (hl)
	jr	Z,00107$
;paint.c:414: menu_cursor_pos = icons[menu_cursor_pos].left;
	ld	hl,#_menu_cursor_pos
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#0x0007
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	hl,#_menu_cursor_pos
	ld	(hl),a
00107$:
;paint.c:415: if(key & J_RIGHT)
	ldhl	sp,#7
	bit	0, (hl)
	jr	Z,00109$
;paint.c:416: menu_cursor_pos = icons[menu_cursor_pos].right;
	ld	hl,#_menu_cursor_pos
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#0x0008
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	hl,#_menu_cursor_pos
	ld	(hl),a
00109$:
;paint.c:417: move_menu_cursor();
	call	_move_menu_cursor
;paint.c:418: while(slowdown && key == joypad()) {
	ldhl	sp,#1
	ld	b,(hl)
00111$:
	ld	a,b
	or	a, a
	jr	Z,00113$
	push	bc
	call	_joypad
	pop	bc
	ldhl	sp,#0
	ld	a,(hl)
	sub	a, e
	jr	NZ,00113$
;paint.c:419: wait_vbl_done();
	push	bc
	call	_wait_vbl_done
	pop	bc
;paint.c:420: slowdown--;
	dec	b
	jr	00111$
00113$:
;paint.c:422: slowdown = 10;
	ldhl	sp,#1
	ld	(hl),#0x0A
	jr	00116$
00115$:
;paint.c:424: slowdown = 50;
	ldhl	sp,#1
	ld	(hl),#0x32
00116$:
;paint.c:425: if(key & J_A) {
	ldhl	sp,#7
	bit	4, (hl)
	jp	Z,00136$
;paint.c:426: if( /* menu_cursor_pos >= FIRST_TOOL && */ menu_cursor_pos <= LAST_TOOL) {
	ld	a,#0x09
	ld	hl,#_menu_cursor_pos
	sub	a, (hl)
	jp	C,00131$
;paint.c:427: if(menu_cursor_pos != /* FIRST_TOOL + */ current_tool) {
	ld	a,(hl)
	ld	hl,#_current_tool
	sub	a, (hl)
	jp	Z,00136$
;paint.c:428: change_icon(/* FIRST_TOOL + */ current_tool, UNSELECTED);
	xor	a, a
	push	af
	inc	sp
	ld	hl,#_current_tool
	ld	a,(hl)
	push	af
	inc	sp
	call	_change_icon
	pop	af
;paint.c:429: current_tool = menu_cursor_pos /* - FIRST_TOOL */;
	push	hl
	ld	hl,#_menu_cursor_pos
	ld	a,(hl)
	ld	hl,#_current_tool
	ld	(hl),a
	pop	hl
;paint.c:430: change_icon(/* FIRST_TOOL + */ current_tool, SELECTED);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#_current_tool
	ld	a,(hl)
	push	af
	inc	sp
	call	_change_icon
	pop	af
;paint.c:431: cursor = icons[/* FIRST_TOOL + */ current_tool].cursor;
	ld	hl,#_current_tool
	ld	c,(hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,#_icons
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#0x0009
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ldhl	sp,#5
	ld	(hl),a
	jp	00136$
00131$:
;paint.c:434: if(menu_cursor_pos != FIRST_COLOR + current_color) {
	ld	hl,#_menu_cursor_pos
	ld	a,(hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),#0x00
;paint.c:433: } else if(menu_cursor_pos >= FIRST_COLOR && menu_cursor_pos <= LAST_COLOR) {
	ld	hl,#_menu_cursor_pos
	ld	a,(hl)
	sub	a, #0x0A
	jp	C,00127$
	ld	a,#0x0D
	sub	a, (hl)
	jp	C,00127$
;paint.c:434: if(menu_cursor_pos != FIRST_COLOR + current_color) {
	ld	hl,#_current_color
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x000A
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#3
	ld	a,(hl)
	sub	a, c
	jr	NZ,00244$
	inc	hl
	ld	a,(hl)
	sub	a, b
	jp	Z,00136$
00244$:
;paint.c:435: change_icon(FIRST_COLOR + current_color, UNSELECTED);
	ld	hl,#_current_color
	ld	a,(hl)
	add	a, #0x0A
	ld	d,a
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	call	_change_icon
	pop	af
;paint.c:436: current_color = menu_cursor_pos - FIRST_COLOR;
	ld	hl,#_menu_cursor_pos
	ld	a,(hl)
	add	a,#0xF6
	ld	hl,#_current_color
	ld	(hl),a
;paint.c:437: change_icon(FIRST_COLOR + current_color, SELECTED);
	ld	a,(hl)
	add	a, #0x0A
	ld	d,a
	ld	a,#0x01
	push	af
	inc	sp
	push	de
	inc	sp
	call	_change_icon
	pop	af
	jp	00136$
00127$:
;paint.c:439: } else if(menu_cursor_pos >= FIRST_MODE && menu_cursor_pos <= LAST_MODE) {
	ld	hl,#_menu_cursor_pos
	ld	a,(hl)
	sub	a, #0x0E
	jp	C,00136$
	ld	a,#0x11
	sub	a, (hl)
	jr	C,00136$
;paint.c:440: if(menu_cursor_pos != FIRST_MODE + current_mode) {
	ld	hl,#_current_mode
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x000E
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#3
	ld	a,(hl)
	sub	a, c
	jr	NZ,00245$
	inc	hl
	ld	a,(hl)
	sub	a, b
	jr	Z,00136$
00245$:
;paint.c:441: change_icon(FIRST_MODE + current_mode, UNSELECTED);
	ld	hl,#_current_mode
	ld	a,(hl)
	add	a, #0x0E
	ld	d,a
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	call	_change_icon
	pop	af
;paint.c:442: current_mode = menu_cursor_pos - FIRST_MODE;
	ld	hl,#_menu_cursor_pos
	ld	a,(hl)
	add	a,#0xF2
	ld	hl,#_current_mode
	ld	(hl),a
;paint.c:443: change_icon(FIRST_MODE + current_mode, SELECTED);
	ld	a,(hl)
	add	a, #0x0E
	ld	d,a
	ld	a,#0x01
	push	af
	inc	sp
	push	de
	inc	sp
	call	_change_icon
	pop	af
00136$:
;paint.c:447: } while(key != J_SELECT);
	ldhl	sp,#7
	ld	a,(hl)
	sub	a, #0x40
	jp	NZ,00135$
	inc	hl
	ld	a,(hl)
	or	a, a
	jp	NZ,00135$
;paint.c:448: waitpadup();
	call	_waitpadup
;paint.c:449: for(i = 0; i < NB_TOOLS; i++)
	ld	b,#0x00
00141$:
;paint.c:450: reset_icon(i);
	push	bc
	push	bc
	inc	sp
	call	_reset_icon
	inc	sp
	pop	bc
;paint.c:449: for(i = 0; i < NB_TOOLS; i++)
	inc	b
	ld	a,b
	sub	a, #0x12
	jr	C,00141$
;paint.c:451: HIDE_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	b,a
	ld	d,#0x00
	res	1, b
	ld	d,#0x00
	ld	hl,#0xFF40
	ld	(hl),b
;paint.c:452: current_cursor = cursor;
	push	hl
	ldhl	sp,#7
	ld	a,(hl)
	ld	hl,#_current_cursor
	ld	(hl),a
	pop	hl
	add	sp,#9
	ret
_menu_end::
;paint.c:455: void run()
;	---------------------------------
; Function run
; ---------------------------------
_run_start::
_run:
	add	sp, #-6
;paint.c:461: slowdown = 10;
	ldhl	sp,#0
	ld	(hl),#0x0A
;paint.c:462: drawn = erased = 0;
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;paint.c:464: set_cursor();
	call	_set_cursor
;paint.c:465: move_cursor();
	call	_move_cursor
;paint.c:466: SHOW_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	1, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;paint.c:468: while(1) {
00133$:
;paint.c:469: wait_vbl_done();
	call	_wait_vbl_done
;paint.c:470: key = joypad();
	call	_joypad
	ld	b,e
;paint.c:471: if(key & (J_UP|J_DOWN|J_LEFT|J_RIGHT)) {
	ldhl	sp,#4
	ld	(hl),b
	inc	hl
	ld	(hl),#0x00
	dec	hl
	ld	a,(hl)
	and	a, #0x0F
	jp	Z,00118$
;paint.c:472: if(key & J_UP && cursor_y > 0)
	ldhl	sp,#4
	bit	2, (hl)
	jr	Z,00102$
	ld	hl,#_cursor_y
	ld	a,(hl)
	or	a, a
	jr	Z,00102$
;paint.c:473: cursor_y--;
	dec	(hl)
00102$:
;paint.c:474: if(key & J_DOWN && cursor_y < 143)
	ldhl	sp,#4
	bit	3, (hl)
	jr	Z,00105$
	ld	hl,#_cursor_y
	ld	a,(hl)
	sub	a, #0x8F
	jr	NC,00105$
;paint.c:475: cursor_y++;
	inc	(hl)
00105$:
;paint.c:476: if(key & J_LEFT && cursor_x > 0)
	ldhl	sp,#4
	bit	1, (hl)
	jr	Z,00108$
	ld	hl,#_cursor_x
	ld	a,(hl)
	or	a, a
	jr	Z,00108$
;paint.c:477: cursor_x--;
	dec	(hl)
00108$:
;paint.c:478: if(key & J_RIGHT && cursor_x < 159)
	ldhl	sp,#4
	bit	0, (hl)
	jr	Z,00111$
	ld	hl,#_cursor_x
	ld	a,(hl)
	sub	a, #0x9F
	jr	NC,00111$
;paint.c:479: cursor_x++;
	inc	(hl)
00111$:
;paint.c:480: move_cursor();
	push	bc
	call	_move_cursor
	pop	bc
;paint.c:481: while(slowdown && key == joypad()) {
	ldhl	sp,#0
	ld	c,(hl)
00114$:
	ld	a,c
	or	a, a
	jr	Z,00116$
	push	bc
	call	_joypad
	pop	bc
	ld	a,b
	sub	a, e
	jr	NZ,00116$
;paint.c:482: wait_vbl_done();
	push	bc
	call	_wait_vbl_done
	pop	bc
;paint.c:483: slowdown--;
	dec	c
	jr	00114$
00116$:
;paint.c:485: slowdown = 1;
	ldhl	sp,#0
	ld	(hl),#0x01
;paint.c:486: drawn = erased = 0;
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	jr	00119$
00118$:
;paint.c:488: slowdown = 10;
	ldhl	sp,#0
	ld	(hl),#0x0A
00119$:
;paint.c:489: if(key & J_SELECT) {
	ldhl	sp,#4
	bit	6, (hl)
	jr	Z,00121$
;paint.c:490: HIDE_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	b,a
	ld	d,#0x00
	res	1, b
	ld	d,#0x00
	ld	hl,#0xFF40
	ld	(hl),b
;paint.c:491: menu();
	call	_menu
;paint.c:492: set_cursor();
	call	_set_cursor
;paint.c:493: move_cursor();
	call	_move_cursor
;paint.c:494: SHOW_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	d,a
	ld	e,#0x00
	ld	a,d
	set	1, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
00121$:
;paint.c:496: if((key & (J_A|J_B)) == J_A) {
	ldhl	sp,#4
	ld	a,(hl)
	and	a, #0x30
	ld	(hl+),a
	ld	(hl),#0x00
	dec	hl
	ld	a,(hl)
	sub	a, #0x10
	jp	NZ,00125$
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	NZ,00125$
;paint.c:497: if(!drawn) {
	ldhl	sp,#2
	ld	a,(hl)
	or	a, a
	jr	NZ,00126$
;paint.c:498: drawn++;
	inc	(hl)
;paint.c:499: plot(cursor_x, cursor_y, colors[current_color], modes[current_mode]);
	ld	a,#<(_modes)
	ld	hl,#_current_mode
	add	a, (hl)
	ld	c,a
	ld	a,#>(_modes)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ldhl	sp,#3
	ld	(hl),a
	ld	a,#<(_colors)
	ld	hl,#_current_color
	add	a, (hl)
	ld	c,a
	ld	a,#>(_colors)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ld	d,a
	ldhl	sp,#3
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#_cursor_y
	ld	a,(hl)
	push	af
	inc	sp
	ld	hl,#_cursor_x
	ld	a,(hl)
	push	af
	inc	sp
	call	_plot
	add	sp, #4
	jr	00126$
00125$:
;paint.c:502: drawn = 0;
	ldhl	sp,#2
	ld	(hl),#0x00
00126$:
;paint.c:503: if((key & (J_A|J_B)) == J_B) {
	ldhl	sp,#4
	ld	a,(hl)
	sub	a, #0x20
	jr	NZ,00130$
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	NZ,00130$
;paint.c:504: if(!erased) {
	ldhl	sp,#1
	ld	a,(hl)
	or	a, a
	jp	NZ,00133$
;paint.c:505: erased++;
	inc	(hl)
;paint.c:506: plot(cursor_x, cursor_y, WHITE, SOLID);
	ld	hl,#0x0000
	push	hl
	ld	hl,#_cursor_y
	ld	a,(hl)
	push	af
	inc	sp
	ld	hl,#_cursor_x
	ld	a,(hl)
	push	af
	inc	sp
	call	_plot
	add	sp, #4
	jp	00133$
00130$:
;paint.c:509: erased = 0;
	ldhl	sp,#1
	ld	(hl),#0x00
	jp	00133$
	add	sp,#6
	ret
_run_end::
;paint.c:513: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;paint.c:516: OBP1_REG = 0xE0U;
	ld	hl,#0xFF49
	ld	(hl),#0xE0
;paint.c:518: splash();
	call	_splash
;paint.c:520: current_tool = 0;
	ld	hl,#_current_tool
	ld	(hl),#0x00
;paint.c:521: current_color = BLACK;
	ld	hl,#_current_color
	ld	(hl),#0x03
;paint.c:522: current_mode = SOLID;
	ld	hl,#_current_mode
	ld	(hl),#0x00
;paint.c:523: current_cursor = PEN;
	ld	hl,#_current_cursor
	ld	(hl),#0x01
;paint.c:524: menu_cursor_pos = 0;
	ld	hl,#_menu_cursor_pos
	ld	(hl),#0x00
;paint.c:525: cursor_x = 160/2;
	ld	hl,#_cursor_x
	ld	(hl),#0x50
;paint.c:526: cursor_y = 144/2;
	ld	hl,#_cursor_y
	ld	(hl),#0x48
;paint.c:528: run();
	jp	_run
_main_end::
	.area _CODE
	.area _CABS (ABS)
