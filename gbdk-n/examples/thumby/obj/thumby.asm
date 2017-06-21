;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Tue Jun 20 23:42:02 2017
;--------------------------------------------------------
	.module thumby
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _move_sprite
	.globl _get_sprite_tile
	.globl _set_sprite_tile
	.globl _set_sprite_data
	.globl _move_win
	.globl _set_win_tiles
	.globl _set_win_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _display_off
	.globl _wait_vbl_done
	.globl _disable_interrupts
	.globl _enable_interrupts
	.globl _waitpad
	.globl _joypad
	.globl _strlen
	.globl _memset
	.globl _text_map
	.globl _arrow_tile
	.globl _alphabet
	.globl _text_box
	.globl _window_border
	.globl _girl_pj_tiles
	.globl _girl_tiles
	.globl _grass_field
	.globl _grass_tiles
	.globl _set_text_map
	.globl _clear_window
	.globl _divide_ubyte
	.globl _scroll_text
	.globl _sleep
	.globl _process_button_press
	.globl _set_girl_sprite
	.globl _update_girl_sprite
	.globl _check_level_one
	.globl _pass_level_one
	.globl _show_text
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_grass_tiles::
	.ds 80
_grass_field::
	.ds 1024
_girl_tiles::
	.ds 256
_girl_pj_tiles::
	.ds 256
_window_border::
	.ds 144
_text_box::
	.ds 120
_alphabet::
	.ds 752
_arrow_tile::
	.ds 16
_text_map::
	.ds 32
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
;thumby.c:25: unsigned char grass_tiles[] =
	ld	hl,#_grass_tiles
	ld	(hl),#0x00
	ld	bc,#_grass_tiles + 1
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 2
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 3
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x0004)
	ld	(hl),#0x10
	ld	bc,#_grass_tiles + 5
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x0006)
	ld	(hl),#0x54
	ld	bc,#_grass_tiles + 7
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 8
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 9
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 10
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 11
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 12
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 13
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 14
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 15
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 16
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 17
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 18
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 19
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 20
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 21
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 22
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 23
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 24
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 25
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x001a)
	ld	(hl),#0x20
	ld	bc,#_grass_tiles + 27
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x001c)
	ld	(hl),#0xA4
	ld	bc,#_grass_tiles + 29
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 30
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 31
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 32
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 33
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x0022)
	ld	(hl),#0x04
	ld	bc,#_grass_tiles + 35
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x0024)
	ld	(hl),#0x08
	ld	hl,#(_grass_tiles + 0x0025)
	ld	(hl),#0x02
	ld	hl,#(_grass_tiles + 0x0026)
	ld	(hl),#0x01
	ld	hl,#(_grass_tiles + 0x0027)
	ld	(hl),#0x2E
	ld	bc,#_grass_tiles + 40
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 41
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 42
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 43
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x002c)
	ld	(hl),#0x40
	ld	bc,#_grass_tiles + 45
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x002e)
	ld	(hl),#0x40
	ld	hl,#(_grass_tiles + 0x002f)
	ld	(hl),#0x20
	ld	bc,#_grass_tiles + 48
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 49
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 50
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 51
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 52
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 53
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 54
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 55
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x0038)
	ld	(hl),#0x10
	ld	bc,#_grass_tiles + 57
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_tiles + 0x003a)
	ld	(hl),#0x20
	ld	hl,#(_grass_tiles + 0x003b)
	ld	(hl),#0x08
	ld	hl,#(_grass_tiles + 0x003c)
	ld	(hl),#0x04
	ld	hl,#(_grass_tiles + 0x003d)
	ld	(hl),#0x38
	ld	bc,#_grass_tiles + 62
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 63
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 64
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 65
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 66
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 67
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 68
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 69
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 70
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 71
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 72
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 73
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 74
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 75
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 76
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 77
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 78
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_tiles + 79
	xor	a, a
	ld	(bc),a
;thumby.c:47: unsigned char grass_field[] =
	ld	hl,#_grass_field
	ld	(hl),#0x00
	ld	hl,#(_grass_field + 0x0001)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 2
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0003)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 4
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0005)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 6
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0007)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 8
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0009)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 10
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x000b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 12
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x000d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 14
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x000f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 16
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0011)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 18
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0013)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 20
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0015)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 22
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0017)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 24
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0019)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 26
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x001b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 28
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x001d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 30
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x001f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 32
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0021)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 34
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0023)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 36
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0025)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 38
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0027)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 40
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0029)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 42
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x002b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 44
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x002d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 46
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x002f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 48
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0031)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 50
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0033)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 52
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0035)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 54
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0037)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 56
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0039)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 58
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x003b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 60
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x003d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 62
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x003f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 64
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0041)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 66
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0043)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 68
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0045)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 70
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0047)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 72
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0049)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 74
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x004b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 76
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x004d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 78
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x004f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 80
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0051)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 82
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0053)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 84
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0055)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 86
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0057)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 88
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0059)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x005a)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x005b)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 92
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x005d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 94
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x005f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 96
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0061)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 98
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0063)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 100
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0065)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 102
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0067)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 104
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0069)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 106
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x006b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 108
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x006d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 110
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x006f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 112
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0071)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 114
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0073)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 116
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0075)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 118
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0077)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 120
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0079)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x007a)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x007b)
	ld	(hl),#0x03
	ld	bc,#_grass_field + 124
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x007d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 126
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x007f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 128
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0081)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 130
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0083)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 132
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0085)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 134
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0087)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 136
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0089)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 138
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x008b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 140
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x008d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 142
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x008f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 144
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0091)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 146
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0093)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 148
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0095)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 150
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0097)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 152
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0099)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x009a)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x009b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 156
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x009d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 158
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x009f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 160
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00a1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 162
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00a3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 164
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00a5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 166
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00a7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 168
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00a9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 170
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00ab)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 172
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00ad)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 174
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00af)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 176
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00b1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 178
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00b3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 180
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00b5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 182
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00b7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 184
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00b9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 186
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00bb)
	ld	(hl),#0x03
	ld	bc,#_grass_field + 188
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00bd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 190
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00bf)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 192
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00c1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 194
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00c3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 196
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00c5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 198
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00c7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 200
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00c9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 202
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00cb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 204
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00cd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 206
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00cf)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 208
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00d1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 210
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00d3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 212
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00d5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 214
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00d7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 216
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00d9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 218
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00db)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 220
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00dd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 222
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00df)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 224
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00e1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 226
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00e3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 228
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00e5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 230
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00e7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 232
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00e9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 234
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00eb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 236
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00ed)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 238
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00ef)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 240
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00f1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 242
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00f3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 244
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00f5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 246
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00f7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 248
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00f9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 250
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00fb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 252
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00fd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 254
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x00ff)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 256
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0101)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 258
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0103)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 260
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0105)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 262
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0107)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 264
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0109)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 266
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x010b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 268
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x010d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 270
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x010f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 272
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0111)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 274
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0113)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 276
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0115)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 278
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0117)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 280
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0119)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 282
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x011b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 284
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x011d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 286
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x011f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 288
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0121)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 290
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0123)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 292
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0125)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 294
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0127)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 296
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0129)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 298
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x012b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 300
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x012d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 302
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x012f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 304
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0131)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 306
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0133)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 308
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0135)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 310
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0137)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 312
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0139)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 314
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x013b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 316
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x013d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 318
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x013f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 320
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0141)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 322
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0143)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 324
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0145)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 326
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0147)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 328
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0149)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 330
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x014b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 332
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x014d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 334
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x014f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 336
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0151)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 338
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0153)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 340
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0155)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 342
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0157)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 344
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0159)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 346
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x015b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 348
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x015d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 350
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x015f)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0160)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0161)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0162)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0163)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 356
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0165)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 358
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0167)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 360
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0169)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 362
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x016b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 364
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x016d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 366
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x016f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 368
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0171)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 370
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0173)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 372
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0175)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 374
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0177)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 376
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0179)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 378
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x017b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 380
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x017d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 382
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x017f)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0180)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x0181)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 386
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0183)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 388
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0185)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 390
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0187)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 392
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0189)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 394
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x018b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 396
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x018d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 398
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x018f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 400
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0191)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 402
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0193)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 404
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0195)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 406
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0197)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 408
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0199)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 410
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x019b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 412
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x019d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 414
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x019f)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x01a0)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x01a1)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x01a2)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x01a3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 420
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01a5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 422
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01a7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 424
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01a9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 426
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01ab)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 428
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01ad)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 430
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_field + 431
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_field + 432
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_field + 433
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_field + 434
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01b3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 436
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01b5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 438
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01b7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 440
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01b9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 442
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01bb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 444
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01bd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 446
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01bf)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x01c0)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x01c1)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x01c2)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x01c3)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 452
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01c5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 454
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01c7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 456
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01c9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 458
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01cb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 460
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01cd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 462
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_field + 463
	xor	a, a
	ld	(bc),a
	ld	bc,#_grass_field + 464
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01d1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 466
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01d3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 468
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01d5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 470
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01d7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 472
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01d9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 474
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01db)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 476
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01dd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 478
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01df)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 480
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01e1)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x01e2)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x01e3)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x01e4)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x01e5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 486
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01e7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 488
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01e9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 490
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01eb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 492
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01ed)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 494
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01ef)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 496
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01f1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 498
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01f3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 500
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01f5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 502
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01f7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 504
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01f9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 506
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01fb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 508
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01fd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 510
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x01ff)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 512
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0201)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0202)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x0203)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 516
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0205)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 518
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0207)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 520
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0209)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 522
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x020b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 524
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x020d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 526
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x020f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 528
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0211)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 530
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0213)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 532
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0215)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 534
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0217)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 536
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0219)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 538
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x021b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 540
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x021d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 542
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x021f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 544
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0221)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x0222)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0223)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0224)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0225)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 550
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0227)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 552
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0229)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 554
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x022b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 556
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x022d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 558
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x022f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 560
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0231)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 562
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0233)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 564
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0235)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 566
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0237)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 568
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0239)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 570
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x023b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 572
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x023d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 574
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x023f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 576
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0241)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0242)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x0243)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 580
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0245)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 582
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0247)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 584
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0249)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 586
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x024b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 588
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x024d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 590
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x024f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 592
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0251)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 594
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0253)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 596
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0255)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 598
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0257)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 600
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0259)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 602
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x025b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 604
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x025d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 606
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x025f)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0260)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0261)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0262)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0263)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 612
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0265)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 614
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0267)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 616
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0269)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 618
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x026b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 620
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x026d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 622
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x026f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 624
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0271)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 626
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0273)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 628
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0275)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 630
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0277)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 632
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0279)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 634
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x027b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 636
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x027d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 638
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x027f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 640
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0281)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 642
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0283)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 644
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0285)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 646
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0287)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 648
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0289)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 650
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x028b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 652
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x028d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 654
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x028f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 656
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0291)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 658
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0293)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 660
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0295)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 662
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0297)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 664
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0299)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 666
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x029b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 668
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x029d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 670
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x029f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 672
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02a1)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x02a2)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x02a3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 676
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02a5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 678
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02a7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 680
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02a9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 682
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02ab)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 684
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02ad)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 686
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02af)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 688
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02b1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 690
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02b3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 692
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02b5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 694
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02b7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 696
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02b9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 698
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02bb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 700
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02bd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 702
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02bf)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 704
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02c1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 706
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02c3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 708
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02c5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 710
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02c7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 712
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02c9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 714
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02cb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 716
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02cd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 718
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02cf)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 720
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02d1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 722
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02d3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 724
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02d5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 726
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02d7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 728
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02d9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 730
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02db)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 732
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02dd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 734
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02df)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 736
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02e1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 738
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02e3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 740
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02e5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 742
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02e7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 744
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02e9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 746
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02eb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 748
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02ed)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 750
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02ef)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 752
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02f1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 754
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02f3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 756
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02f5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 758
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02f7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 760
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02f9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 762
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02fb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 764
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02fd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 766
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x02ff)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 768
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0301)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 770
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0303)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 772
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0305)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 774
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0307)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 776
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0309)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 778
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x030b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 780
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x030d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 782
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x030f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 784
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0311)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 786
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0313)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 788
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0315)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 790
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0317)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0318)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0319)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x031a)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x031b)
	ld	(hl),#0x03
	ld	bc,#_grass_field + 796
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x031d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 798
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x031f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 800
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0321)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 802
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0323)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 804
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0325)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 806
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0327)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 808
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0329)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 810
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x032b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 812
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x032d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 814
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x032f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 816
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0331)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 818
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0333)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 820
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0335)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 822
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0337)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0338)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x0339)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x033a)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x033b)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 828
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x033d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 830
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x033f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 832
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0341)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 834
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0343)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 836
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0345)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 838
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0347)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 840
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0349)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 842
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x034b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 844
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x034d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 846
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x034f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 848
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0351)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 850
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0353)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 852
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0355)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 854
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0357)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0358)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0359)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x035a)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x035b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 860
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x035d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 862
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x035f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 864
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0361)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 866
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0363)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 868
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0365)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 870
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0367)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 872
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0369)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 874
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x036b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 876
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x036d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 878
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x036f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 880
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0371)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 882
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0373)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 884
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0375)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 886
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0377)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0378)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x0379)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x037a)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x037b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 892
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x037d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 894
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x037f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 896
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0381)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 898
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0383)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 900
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0385)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 902
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0387)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 904
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0389)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 906
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x038b)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 908
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x038d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 910
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x038f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 912
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0391)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 914
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0393)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 916
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0395)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 918
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x0397)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x0398)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x0399)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x039a)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x039b)
	ld	(hl),#0x03
	ld	bc,#_grass_field + 924
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x039d)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 926
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x039f)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 928
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03a1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 930
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03a3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 932
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03a5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 934
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03a7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 936
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03a9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 938
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03ab)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 940
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03ad)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 942
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03af)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 944
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03b1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 946
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03b3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 948
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03b5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 950
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03b7)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x03b8)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x03b9)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x03ba)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x03bb)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 956
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03bd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 958
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03bf)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 960
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03c1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 962
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03c3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 964
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03c5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 966
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03c7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 968
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03c9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 970
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03cb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 972
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03cd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 974
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03cf)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 976
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03d1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 978
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03d3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 980
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03d5)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x03d6)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x03d7)
	ld	(hl),#0x01
	ld	hl,#(_grass_field + 0x03d8)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x03d9)
	ld	(hl),#0x03
	ld	hl,#(_grass_field + 0x03da)
	ld	(hl),#0x02
	ld	hl,#(_grass_field + 0x03db)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 988
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03dd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 990
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03df)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 992
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03e1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 994
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03e3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 996
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03e5)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 998
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03e7)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 1000
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03e9)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 1002
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03eb)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 1004
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03ed)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 1006
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03ef)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 1008
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03f1)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 1010
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03f3)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 1012
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03f5)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 1014
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03f7)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 1016
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03f9)
	ld	(hl),#0x02
	ld	bc,#_grass_field + 1018
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03fb)
	ld	(hl),#0x03
	ld	bc,#_grass_field + 1020
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03fd)
	ld	(hl),#0x01
	ld	bc,#_grass_field + 1022
	xor	a, a
	ld	(bc),a
	ld	hl,#(_grass_field + 0x03ff)
	ld	(hl),#0x01
;thumby.c:197: unsigned char girl_tiles[] =
	ld	hl,#_girl_tiles
	ld	(hl),#0x00
	ld	bc,#_girl_tiles + 1
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 2
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 3
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 4
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 5
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x0006)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x0007)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x0008)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x0009)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x000a)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x000b)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x000c)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x000d)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x000e)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x000f)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x0010)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x0011)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x0012)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x0013)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x0014)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x0015)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x0016)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x0017)
	ld	(hl),#0x01
	ld	bc,#_girl_tiles + 24
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 25
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 26
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 27
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 28
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 29
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 30
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 31
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x0020)
	ld	(hl),#0x1F
	ld	hl,#(_girl_tiles + 0x0021)
	ld	(hl),#0x1F
	ld	hl,#(_girl_tiles + 0x0022)
	ld	(hl),#0x70
	ld	hl,#(_girl_tiles + 0x0023)
	ld	(hl),#0x7F
	ld	hl,#(_girl_tiles + 0x0024)
	ld	(hl),#0xC0
	ld	hl,#(_girl_tiles + 0x0025)
	ld	(hl),#0xFF
	ld	hl,#(_girl_tiles + 0x0026)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x0027)
	ld	(hl),#0xFF
	ld	hl,#(_girl_tiles + 0x0028)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x0029)
	ld	(hl),#0xBF
	ld	hl,#(_girl_tiles + 0x002a)
	ld	(hl),#0xD0
	ld	hl,#(_girl_tiles + 0x002b)
	ld	(hl),#0x3F
	ld	hl,#(_girl_tiles + 0x002c)
	ld	(hl),#0x89
	ld	hl,#(_girl_tiles + 0x002d)
	ld	(hl),#0x7F
	ld	hl,#(_girl_tiles + 0x002e)
	ld	(hl),#0x34
	ld	hl,#(_girl_tiles + 0x002f)
	ld	(hl),#0xEF
	ld	hl,#(_girl_tiles + 0x0030)
	ld	(hl),#0x7B
	ld	hl,#(_girl_tiles + 0x0031)
	ld	(hl),#0xD6
	ld	hl,#(_girl_tiles + 0x0032)
	ld	(hl),#0x5F
	ld	hl,#(_girl_tiles + 0x0033)
	ld	(hl),#0xCF
	ld	hl,#(_girl_tiles + 0x0034)
	ld	(hl),#0x47
	ld	hl,#(_girl_tiles + 0x0035)
	ld	(hl),#0xC0
	ld	hl,#(_girl_tiles + 0x0036)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x0037)
	ld	(hl),#0xC0
	ld	hl,#(_girl_tiles + 0x0038)
	ld	(hl),#0xD8
	ld	hl,#(_girl_tiles + 0x0039)
	ld	(hl),#0xD8
	ld	hl,#(_girl_tiles + 0x003a)
	ld	(hl),#0x64
	ld	hl,#(_girl_tiles + 0x003b)
	ld	(hl),#0x64
	ld	hl,#(_girl_tiles + 0x003c)
	ld	(hl),#0x38
	ld	hl,#(_girl_tiles + 0x003d)
	ld	(hl),#0x20
	ld	hl,#(_girl_tiles + 0x003e)
	ld	(hl),#0x70
	ld	hl,#(_girl_tiles + 0x003f)
	ld	(hl),#0x71
	ld	bc,#_girl_tiles + 64
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 65
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x0042)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x0043)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x0044)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x0045)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x0046)
	ld	(hl),#0x05
	ld	hl,#(_girl_tiles + 0x0047)
	ld	(hl),#0x04
	ld	hl,#(_girl_tiles + 0x0048)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x0049)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x004a)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x004b)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x004c)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x004d)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x004e)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x004f)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x0050)
	ld	(hl),#0x04
	ld	hl,#(_girl_tiles + 0x0051)
	ld	(hl),#0x04
	ld	hl,#(_girl_tiles + 0x0052)
	ld	(hl),#0x04
	ld	hl,#(_girl_tiles + 0x0053)
	ld	(hl),#0x04
	ld	hl,#(_girl_tiles + 0x0054)
	ld	(hl),#0x07
	ld	hl,#(_girl_tiles + 0x0055)
	ld	(hl),#0x04
	ld	hl,#(_girl_tiles + 0x0056)
	ld	(hl),#0x03
	ld	hl,#(_girl_tiles + 0x0057)
	ld	(hl),#0x03
	ld	bc,#_girl_tiles + 88
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 89
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 90
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 91
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 92
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 93
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 94
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 95
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x0060)
	ld	(hl),#0x8F
	ld	hl,#(_girl_tiles + 0x0061)
	ld	(hl),#0x8F
	ld	bc,#_girl_tiles + 98
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x0063)
	ld	(hl),#0x05
	ld	hl,#(_girl_tiles + 0x0064)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x0065)
	ld	(hl),#0x07
	ld	hl,#(_girl_tiles + 0x0066)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x0067)
	ld	(hl),#0x05
	ld	hl,#(_girl_tiles + 0x0068)
	ld	(hl),#0xA0
	ld	bc,#_girl_tiles + 105
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x006a)
	ld	(hl),#0x50
	ld	bc,#_girl_tiles + 107
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x006c)
	ld	(hl),#0xF8
	ld	hl,#(_girl_tiles + 0x006d)
	ld	(hl),#0xF8
	ld	hl,#(_girl_tiles + 0x006e)
	ld	(hl),#0xFF
	ld	hl,#(_girl_tiles + 0x006f)
	ld	(hl),#0x47
	ld	hl,#(_girl_tiles + 0x0070)
	ld	(hl),#0x7F
	ld	hl,#(_girl_tiles + 0x0071)
	ld	(hl),#0x42
	ld	hl,#(_girl_tiles + 0x0072)
	ld	(hl),#0x7F
	ld	hl,#(_girl_tiles + 0x0073)
	ld	(hl),#0x7F
	ld	hl,#(_girl_tiles + 0x0074)
	ld	(hl),#0xAA
	ld	hl,#(_girl_tiles + 0x0075)
	ld	(hl),#0xB7
	ld	hl,#(_girl_tiles + 0x0076)
	ld	(hl),#0xAA
	ld	hl,#(_girl_tiles + 0x0077)
	ld	(hl),#0xB5
	ld	hl,#(_girl_tiles + 0x0078)
	ld	(hl),#0x3F
	ld	hl,#(_girl_tiles + 0x0079)
	ld	(hl),#0x3F
	ld	hl,#(_girl_tiles + 0x007a)
	ld	(hl),#0x12
	ld	hl,#(_girl_tiles + 0x007b)
	ld	(hl),#0x12
	ld	hl,#(_girl_tiles + 0x007c)
	ld	(hl),#0x12
	ld	hl,#(_girl_tiles + 0x007d)
	ld	(hl),#0x12
	ld	hl,#(_girl_tiles + 0x007e)
	ld	(hl),#0x3E
	ld	hl,#(_girl_tiles + 0x007f)
	ld	(hl),#0x3E
	ld	hl,#(_girl_tiles + 0x0080)
	ld	(hl),#0xF0
	ld	hl,#(_girl_tiles + 0x0081)
	ld	(hl),#0xF0
	ld	hl,#(_girl_tiles + 0x0082)
	ld	(hl),#0x1C
	ld	hl,#(_girl_tiles + 0x0083)
	ld	(hl),#0xFC
	ld	hl,#(_girl_tiles + 0x0084)
	ld	(hl),#0x26
	ld	hl,#(_girl_tiles + 0x0085)
	ld	(hl),#0xDE
	ld	hl,#(_girl_tiles + 0x0086)
	ld	(hl),#0x1B
	ld	hl,#(_girl_tiles + 0x0087)
	ld	(hl),#0xE7
	ld	hl,#(_girl_tiles + 0x0088)
	ld	(hl),#0x09
	ld	hl,#(_girl_tiles + 0x0089)
	ld	(hl),#0xF7
	ld	hl,#(_girl_tiles + 0x008a)
	ld	(hl),#0x05
	ld	hl,#(_girl_tiles + 0x008b)
	ld	(hl),#0xFB
	ld	bc,#_girl_tiles + 140
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x008d)
	ld	(hl),#0xFF
	ld	hl,#(_girl_tiles + 0x008e)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x008f)
	ld	(hl),#0xFF
	ld	hl,#(_girl_tiles + 0x0090)
	ld	(hl),#0x49
	ld	hl,#(_girl_tiles + 0x0091)
	ld	(hl),#0xFE
	ld	hl,#(_girl_tiles + 0x0092)
	ld	(hl),#0xB5
	ld	hl,#(_girl_tiles + 0x0093)
	ld	(hl),#0x6E
	ld	hl,#(_girl_tiles + 0x0094)
	ld	(hl),#0xFD
	ld	hl,#(_girl_tiles + 0x0095)
	ld	(hl),#0xFF
	ld	hl,#(_girl_tiles + 0x0096)
	ld	(hl),#0x7F
	ld	hl,#(_girl_tiles + 0x0097)
	ld	(hl),#0x07
	ld	hl,#(_girl_tiles + 0x0098)
	ld	(hl),#0x36
	ld	hl,#(_girl_tiles + 0x0099)
	ld	(hl),#0x36
	ld	hl,#(_girl_tiles + 0x009a)
	ld	(hl),#0x4C
	ld	hl,#(_girl_tiles + 0x009b)
	ld	(hl),#0x4C
	ld	hl,#(_girl_tiles + 0x009c)
	ld	(hl),#0x38
	ld	hl,#(_girl_tiles + 0x009d)
	ld	(hl),#0x08
	ld	hl,#(_girl_tiles + 0x009e)
	ld	(hl),#0x1C
	ld	hl,#(_girl_tiles + 0x009f)
	ld	(hl),#0x1C
	ld	bc,#_girl_tiles + 160
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 161
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 162
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 163
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 164
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 165
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 166
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 167
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 168
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 169
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x00aa)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00ab)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00ac)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00ad)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00ae)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00af)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00b0)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00b1)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00b2)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00b3)
	ld	(hl),#0x80
	ld	bc,#_girl_tiles + 180
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 181
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 182
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 183
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 184
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 185
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 186
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 187
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 188
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 189
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 190
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 191
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x00c0)
	ld	(hl),#0xE2
	ld	hl,#(_girl_tiles + 0x00c1)
	ld	(hl),#0xE2
	ld	hl,#(_girl_tiles + 0x00c2)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x00c3)
	ld	(hl),#0x41
	ld	hl,#(_girl_tiles + 0x00c4)
	ld	(hl),#0x02
	ld	hl,#(_girl_tiles + 0x00c5)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00c6)
	ld	(hl),#0x05
	ld	hl,#(_girl_tiles + 0x00c7)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00c8)
	ld	(hl),#0x0A
	ld	bc,#_girl_tiles + 201
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x00ca)
	ld	(hl),#0x15
	ld	hl,#(_girl_tiles + 0x00cb)
	ld	(hl),#0x01
	ld	hl,#(_girl_tiles + 0x00cc)
	ld	(hl),#0x3F
	ld	hl,#(_girl_tiles + 0x00cd)
	ld	(hl),#0x3E
	ld	hl,#(_girl_tiles + 0x00ce)
	ld	(hl),#0xFE
	ld	hl,#(_girl_tiles + 0x00cf)
	ld	(hl),#0xC4
	ld	hl,#(_girl_tiles + 0x00d0)
	ld	(hl),#0xFC
	ld	hl,#(_girl_tiles + 0x00d1)
	ld	(hl),#0x84
	ld	hl,#(_girl_tiles + 0x00d2)
	ld	(hl),#0xFC
	ld	hl,#(_girl_tiles + 0x00d3)
	ld	(hl),#0xFC
	ld	hl,#(_girl_tiles + 0x00d4)
	ld	(hl),#0xAB
	ld	hl,#(_girl_tiles + 0x00d5)
	ld	(hl),#0xDA
	ld	hl,#(_girl_tiles + 0x00d6)
	ld	(hl),#0xAB
	ld	hl,#(_girl_tiles + 0x00d7)
	ld	(hl),#0x5B
	ld	hl,#(_girl_tiles + 0x00d8)
	ld	(hl),#0xF8
	ld	hl,#(_girl_tiles + 0x00d9)
	ld	(hl),#0xF8
	ld	hl,#(_girl_tiles + 0x00da)
	ld	(hl),#0x90
	ld	hl,#(_girl_tiles + 0x00db)
	ld	(hl),#0x90
	ld	hl,#(_girl_tiles + 0x00dc)
	ld	(hl),#0x90
	ld	hl,#(_girl_tiles + 0x00dd)
	ld	(hl),#0x90
	ld	hl,#(_girl_tiles + 0x00de)
	ld	(hl),#0xF8
	ld	hl,#(_girl_tiles + 0x00df)
	ld	(hl),#0xF8
	ld	bc,#_girl_tiles + 224
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 225
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 226
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 227
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x00e4)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00e5)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00e6)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00e7)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00e8)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00e9)
	ld	(hl),#0x80
	ld	bc,#_girl_tiles + 234
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 235
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_tiles + 0x00ec)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00ed)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00ee)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00ef)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00f0)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00f1)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00f2)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00f3)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00f4)
	ld	(hl),#0xC0
	ld	hl,#(_girl_tiles + 0x00f5)
	ld	(hl),#0x40
	ld	hl,#(_girl_tiles + 0x00f6)
	ld	(hl),#0x80
	ld	hl,#(_girl_tiles + 0x00f7)
	ld	(hl),#0x80
	ld	bc,#_girl_tiles + 248
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 249
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 250
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 251
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 252
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 253
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 254
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_tiles + 255
	xor	a, a
	ld	(bc),a
;thumby.c:241: unsigned char girl_pj_tiles[] =
	ld	hl,#_girl_pj_tiles
	ld	(hl),#0x00
	ld	bc,#_girl_pj_tiles + 1
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 2
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 3
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 4
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 5
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_pj_tiles + 0x0006)
	ld	(hl),#0x01
	ld	hl,#(_girl_pj_tiles + 0x0007)
	ld	(hl),#0x01
	ld	hl,#(_girl_pj_tiles + 0x0008)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x0009)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x000a)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x000b)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x000c)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x000d)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x000e)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x000f)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x0010)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x0011)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x0012)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x0013)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x0014)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x0015)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x0016)
	ld	(hl),#0x01
	ld	hl,#(_girl_pj_tiles + 0x0017)
	ld	(hl),#0x01
	ld	bc,#_girl_pj_tiles + 24
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 25
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 26
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 27
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 28
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 29
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 30
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 31
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_pj_tiles + 0x0020)
	ld	(hl),#0x1F
	ld	hl,#(_girl_pj_tiles + 0x0021)
	ld	(hl),#0x1F
	ld	hl,#(_girl_pj_tiles + 0x0022)
	ld	(hl),#0x70
	ld	hl,#(_girl_pj_tiles + 0x0023)
	ld	(hl),#0x7F
	ld	hl,#(_girl_pj_tiles + 0x0024)
	ld	(hl),#0xC0
	ld	hl,#(_girl_pj_tiles + 0x0025)
	ld	(hl),#0xFF
	ld	hl,#(_girl_pj_tiles + 0x0026)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x0027)
	ld	(hl),#0xFF
	ld	hl,#(_girl_pj_tiles + 0x0028)
	ld	(hl),#0x40
	ld	hl,#(_girl_pj_tiles + 0x0029)
	ld	(hl),#0xBF
	ld	hl,#(_girl_pj_tiles + 0x002a)
	ld	(hl),#0xD0
	ld	hl,#(_girl_pj_tiles + 0x002b)
	ld	(hl),#0x3F
	ld	hl,#(_girl_pj_tiles + 0x002c)
	ld	(hl),#0x89
	ld	hl,#(_girl_pj_tiles + 0x002d)
	ld	(hl),#0x7F
	ld	hl,#(_girl_pj_tiles + 0x002e)
	ld	(hl),#0x34
	ld	hl,#(_girl_pj_tiles + 0x002f)
	ld	(hl),#0xEF
	ld	hl,#(_girl_pj_tiles + 0x0030)
	ld	(hl),#0x7B
	ld	hl,#(_girl_pj_tiles + 0x0031)
	ld	(hl),#0xD6
	ld	hl,#(_girl_pj_tiles + 0x0032)
	ld	(hl),#0x5F
	ld	hl,#(_girl_pj_tiles + 0x0033)
	ld	(hl),#0xCF
	ld	hl,#(_girl_pj_tiles + 0x0034)
	ld	(hl),#0x47
	ld	hl,#(_girl_pj_tiles + 0x0035)
	ld	(hl),#0xC0
	ld	hl,#(_girl_pj_tiles + 0x0036)
	ld	(hl),#0x40
	ld	hl,#(_girl_pj_tiles + 0x0037)
	ld	(hl),#0xC0
	ld	hl,#(_girl_pj_tiles + 0x0038)
	ld	(hl),#0xC0
	ld	hl,#(_girl_pj_tiles + 0x0039)
	ld	(hl),#0xC0
	ld	hl,#(_girl_pj_tiles + 0x003a)
	ld	(hl),#0x6C
	ld	hl,#(_girl_pj_tiles + 0x003b)
	ld	(hl),#0x6C
	ld	hl,#(_girl_pj_tiles + 0x003c)
	ld	(hl),#0x38
	ld	hl,#(_girl_pj_tiles + 0x003d)
	ld	(hl),#0x20
	ld	hl,#(_girl_pj_tiles + 0x003e)
	ld	(hl),#0x10
	ld	hl,#(_girl_pj_tiles + 0x003f)
	ld	(hl),#0x10
	ld	bc,#_girl_pj_tiles + 64
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 65
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 66
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 67
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 68
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 69
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 70
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 71
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_pj_tiles + 0x0048)
	ld	(hl),#0x01
	ld	hl,#(_girl_pj_tiles + 0x0049)
	ld	(hl),#0x01
	ld	hl,#(_girl_pj_tiles + 0x004a)
	ld	(hl),#0x01
	ld	hl,#(_girl_pj_tiles + 0x004b)
	ld	(hl),#0x01
	ld	hl,#(_girl_pj_tiles + 0x004c)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x004d)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x004e)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x004f)
	ld	(hl),#0x02
	ld	hl,#(_girl_pj_tiles + 0x0050)
	ld	(hl),#0x04
	ld	hl,#(_girl_pj_tiles + 0x0051)
	ld	(hl),#0x04
	ld	hl,#(_girl_pj_tiles + 0x0052)
	ld	(hl),#0x04
	ld	hl,#(_girl_pj_tiles + 0x0053)
	ld	(hl),#0x04
	ld	hl,#(_girl_pj_tiles + 0x0054)
	ld	(hl),#0x07
	ld	hl,#(_girl_pj_tiles + 0x0055)
	ld	(hl),#0x04
	ld	hl,#(_girl_pj_tiles + 0x0056)
	ld	(hl),#0x03
	ld	hl,#(_girl_pj_tiles + 0x0057)
	ld	(hl),#0x03
	ld	bc,#_girl_pj_tiles + 88
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 89
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 90
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 91
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 92
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 93
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 94
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 95
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_pj_tiles + 0x0060)
	ld	(hl),#0x3F
	ld	hl,#(_girl_pj_tiles + 0x0061)
	ld	(hl),#0x3F
	ld	hl,#(_girl_pj_tiles + 0x0062)
	ld	(hl),#0x7C
	ld	hl,#(_girl_pj_tiles + 0x0063)
	ld	(hl),#0x54
	ld	hl,#(_girl_pj_tiles + 0x0064)
	ld	(hl),#0x7F
	ld	hl,#(_girl_pj_tiles + 0x0065)
	ld	(hl),#0x53
	ld	hl,#(_girl_pj_tiles + 0x0066)
	ld	(hl),#0x9F
	ld	hl,#(_girl_pj_tiles + 0x0067)
	ld	(hl),#0x90
	ld	hl,#(_girl_pj_tiles + 0x0068)
	ld	(hl),#0x3D
	ld	hl,#(_girl_pj_tiles + 0x0069)
	ld	(hl),#0x20
	ld	hl,#(_girl_pj_tiles + 0x006a)
	ld	(hl),#0x3C
	ld	hl,#(_girl_pj_tiles + 0x006b)
	ld	(hl),#0x20
	ld	hl,#(_girl_pj_tiles + 0x006c)
	ld	(hl),#0x7E
	ld	hl,#(_girl_pj_tiles + 0x006d)
	ld	(hl),#0x60
	ld	hl,#(_girl_pj_tiles + 0x006e)
	ld	(hl),#0x7F
	ld	hl,#(_girl_pj_tiles + 0x006f)
	ld	(hl),#0x60
	ld	hl,#(_girl_pj_tiles + 0x0070)
	ld	(hl),#0x7F
	ld	hl,#(_girl_pj_tiles + 0x0071)
	ld	(hl),#0x7F
	ld	hl,#(_girl_pj_tiles + 0x0072)
	ld	(hl),#0xB2
	ld	hl,#(_girl_pj_tiles + 0x0073)
	ld	(hl),#0xAD
	ld	hl,#(_girl_pj_tiles + 0x0074)
	ld	(hl),#0xA9
	ld	hl,#(_girl_pj_tiles + 0x0075)
	ld	(hl),#0xB6
	ld	hl,#(_girl_pj_tiles + 0x0076)
	ld	(hl),#0xA7
	ld	hl,#(_girl_pj_tiles + 0x0077)
	ld	(hl),#0xBB
	ld	hl,#(_girl_pj_tiles + 0x0078)
	ld	(hl),#0x3E
	ld	hl,#(_girl_pj_tiles + 0x0079)
	ld	(hl),#0x3E
	ld	hl,#(_girl_pj_tiles + 0x007a)
	ld	(hl),#0x12
	ld	hl,#(_girl_pj_tiles + 0x007b)
	ld	(hl),#0x12
	ld	hl,#(_girl_pj_tiles + 0x007c)
	ld	(hl),#0x12
	ld	hl,#(_girl_pj_tiles + 0x007d)
	ld	(hl),#0x12
	ld	hl,#(_girl_pj_tiles + 0x007e)
	ld	(hl),#0x3E
	ld	hl,#(_girl_pj_tiles + 0x007f)
	ld	(hl),#0x3E
	ld	hl,#(_girl_pj_tiles + 0x0080)
	ld	(hl),#0xF0
	ld	hl,#(_girl_pj_tiles + 0x0081)
	ld	(hl),#0xF0
	ld	hl,#(_girl_pj_tiles + 0x0082)
	ld	(hl),#0x1C
	ld	hl,#(_girl_pj_tiles + 0x0083)
	ld	(hl),#0xFC
	ld	hl,#(_girl_pj_tiles + 0x0084)
	ld	(hl),#0x26
	ld	hl,#(_girl_pj_tiles + 0x0085)
	ld	(hl),#0xDE
	ld	hl,#(_girl_pj_tiles + 0x0086)
	ld	(hl),#0x1B
	ld	hl,#(_girl_pj_tiles + 0x0087)
	ld	(hl),#0xE7
	ld	hl,#(_girl_pj_tiles + 0x0088)
	ld	(hl),#0x09
	ld	hl,#(_girl_pj_tiles + 0x0089)
	ld	(hl),#0xF7
	ld	hl,#(_girl_pj_tiles + 0x008a)
	ld	(hl),#0x05
	ld	hl,#(_girl_pj_tiles + 0x008b)
	ld	(hl),#0xFB
	ld	bc,#_girl_pj_tiles + 140
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_pj_tiles + 0x008d)
	ld	(hl),#0xFF
	ld	hl,#(_girl_pj_tiles + 0x008e)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x008f)
	ld	(hl),#0xFF
	ld	hl,#(_girl_pj_tiles + 0x0090)
	ld	(hl),#0x49
	ld	hl,#(_girl_pj_tiles + 0x0091)
	ld	(hl),#0xFE
	ld	hl,#(_girl_pj_tiles + 0x0092)
	ld	(hl),#0xB5
	ld	hl,#(_girl_pj_tiles + 0x0093)
	ld	(hl),#0x6E
	ld	hl,#(_girl_pj_tiles + 0x0094)
	ld	(hl),#0xFD
	ld	hl,#(_girl_pj_tiles + 0x0095)
	ld	(hl),#0xFF
	ld	hl,#(_girl_pj_tiles + 0x0096)
	ld	(hl),#0x7F
	ld	hl,#(_girl_pj_tiles + 0x0097)
	ld	(hl),#0x07
	ld	hl,#(_girl_pj_tiles + 0x0098)
	ld	(hl),#0x06
	ld	hl,#(_girl_pj_tiles + 0x0099)
	ld	(hl),#0x06
	ld	hl,#(_girl_pj_tiles + 0x009a)
	ld	(hl),#0x6C
	ld	hl,#(_girl_pj_tiles + 0x009b)
	ld	(hl),#0x6C
	ld	hl,#(_girl_pj_tiles + 0x009c)
	ld	(hl),#0x38
	ld	hl,#(_girl_pj_tiles + 0x009d)
	ld	(hl),#0x08
	ld	hl,#(_girl_pj_tiles + 0x009e)
	ld	(hl),#0x10
	ld	hl,#(_girl_pj_tiles + 0x009f)
	ld	(hl),#0x10
	ld	bc,#_girl_pj_tiles + 160
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 161
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 162
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 163
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 164
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 165
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 166
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 167
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 168
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 169
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_pj_tiles + 0x00aa)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00ab)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00ac)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00ad)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00ae)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00af)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00b0)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00b1)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00b2)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00b3)
	ld	(hl),#0x80
	ld	bc,#_girl_pj_tiles + 180
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 181
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 182
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 183
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 184
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 185
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 186
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 187
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 188
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 189
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 190
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 191
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_pj_tiles + 0x00c0)
	ld	(hl),#0xF8
	ld	hl,#(_girl_pj_tiles + 0x00c1)
	ld	(hl),#0xF8
	ld	hl,#(_girl_pj_tiles + 0x00c2)
	ld	(hl),#0x7C
	ld	hl,#(_girl_pj_tiles + 0x00c3)
	ld	(hl),#0x54
	ld	hl,#(_girl_pj_tiles + 0x00c4)
	ld	(hl),#0xFC
	ld	hl,#(_girl_pj_tiles + 0x00c5)
	ld	(hl),#0x94
	ld	hl,#(_girl_pj_tiles + 0x00c6)
	ld	(hl),#0xF2
	ld	hl,#(_girl_pj_tiles + 0x00c7)
	ld	(hl),#0x12
	ld	hl,#(_girl_pj_tiles + 0x00c8)
	ld	(hl),#0x79
	ld	hl,#(_girl_pj_tiles + 0x00c9)
	ld	(hl),#0x09
	ld	hl,#(_girl_pj_tiles + 0x00ca)
	ld	(hl),#0x79
	ld	hl,#(_girl_pj_tiles + 0x00cb)
	ld	(hl),#0x09
	ld	hl,#(_girl_pj_tiles + 0x00cc)
	ld	(hl),#0xFC
	ld	hl,#(_girl_pj_tiles + 0x00cd)
	ld	(hl),#0x0C
	ld	hl,#(_girl_pj_tiles + 0x00ce)
	ld	(hl),#0xFC
	ld	hl,#(_girl_pj_tiles + 0x00cf)
	ld	(hl),#0x0C
	ld	hl,#(_girl_pj_tiles + 0x00d0)
	ld	(hl),#0xFC
	ld	hl,#(_girl_pj_tiles + 0x00d1)
	ld	(hl),#0xFC
	ld	hl,#(_girl_pj_tiles + 0x00d2)
	ld	(hl),#0x4A
	ld	hl,#(_girl_pj_tiles + 0x00d3)
	ld	(hl),#0xBA
	ld	hl,#(_girl_pj_tiles + 0x00d4)
	ld	(hl),#0x2B
	ld	hl,#(_girl_pj_tiles + 0x00d5)
	ld	(hl),#0xDA
	ld	hl,#(_girl_pj_tiles + 0x00d6)
	ld	(hl),#0x9B
	ld	hl,#(_girl_pj_tiles + 0x00d7)
	ld	(hl),#0xEB
	ld	hl,#(_girl_pj_tiles + 0x00d8)
	ld	(hl),#0xF8
	ld	hl,#(_girl_pj_tiles + 0x00d9)
	ld	(hl),#0xF8
	ld	hl,#(_girl_pj_tiles + 0x00da)
	ld	(hl),#0x90
	ld	hl,#(_girl_pj_tiles + 0x00db)
	ld	(hl),#0x90
	ld	hl,#(_girl_pj_tiles + 0x00dc)
	ld	(hl),#0x90
	ld	hl,#(_girl_pj_tiles + 0x00dd)
	ld	(hl),#0x90
	ld	hl,#(_girl_pj_tiles + 0x00de)
	ld	(hl),#0xF8
	ld	hl,#(_girl_pj_tiles + 0x00df)
	ld	(hl),#0xF8
	ld	bc,#_girl_pj_tiles + 224
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 225
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 226
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 227
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 228
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 229
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 230
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 231
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 232
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 233
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 234
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 235
	xor	a, a
	ld	(bc),a
	ld	hl,#(_girl_pj_tiles + 0x00ec)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00ed)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00ee)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00ef)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00f0)
	ld	(hl),#0x40
	ld	hl,#(_girl_pj_tiles + 0x00f1)
	ld	(hl),#0x40
	ld	hl,#(_girl_pj_tiles + 0x00f2)
	ld	(hl),#0x40
	ld	hl,#(_girl_pj_tiles + 0x00f3)
	ld	(hl),#0x40
	ld	hl,#(_girl_pj_tiles + 0x00f4)
	ld	(hl),#0xC0
	ld	hl,#(_girl_pj_tiles + 0x00f5)
	ld	(hl),#0x40
	ld	hl,#(_girl_pj_tiles + 0x00f6)
	ld	(hl),#0x80
	ld	hl,#(_girl_pj_tiles + 0x00f7)
	ld	(hl),#0x80
	ld	bc,#_girl_pj_tiles + 248
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 249
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 250
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 251
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 252
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 253
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 254
	xor	a, a
	ld	(bc),a
	ld	bc,#_girl_pj_tiles + 255
	xor	a, a
	ld	(bc),a
;thumby.c:280: unsigned char window_border[] =
	ld	hl,#_window_border
	ld	(hl),#0x1F
	ld	hl,#(_window_border + 0x0001)
	ld	(hl),#0x1F
	ld	hl,#(_window_border + 0x0002)
	ld	(hl),#0x20
	ld	hl,#(_window_border + 0x0003)
	ld	(hl),#0x3F
	ld	hl,#(_window_border + 0x0004)
	ld	(hl),#0x40
	ld	hl,#(_window_border + 0x0005)
	ld	(hl),#0x70
	ld	hl,#(_window_border + 0x0006)
	ld	(hl),#0x87
	ld	hl,#(_window_border + 0x0007)
	ld	(hl),#0xE0
	ld	hl,#(_window_border + 0x0008)
	ld	(hl),#0x8F
	ld	hl,#(_window_border + 0x0009)
	ld	(hl),#0xC3
	ld	hl,#(_window_border + 0x000a)
	ld	(hl),#0x9C
	ld	hl,#(_window_border + 0x000b)
	ld	(hl),#0xC4
	ld	hl,#(_window_border + 0x000c)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x000d)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x000e)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x000f)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0010)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x0011)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0012)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x0013)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0014)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x0015)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0016)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x0017)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0018)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x0019)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x001a)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x001b)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x001c)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x001d)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x001e)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x001f)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0020)
	ld	(hl),#0xFF
	ld	hl,#(_window_border + 0x0021)
	ld	(hl),#0xFF
	ld	bc,#_window_border + 34
	xor	a, a
	ld	(bc),a
	ld	hl,#(_window_border + 0x0023)
	ld	(hl),#0xFF
	ld	bc,#_window_border + 36
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 37
	xor	a, a
	ld	(bc),a
	ld	hl,#(_window_border + 0x0026)
	ld	(hl),#0xFF
	ld	bc,#_window_border + 39
	xor	a, a
	ld	(bc),a
	ld	hl,#(_window_border + 0x0028)
	ld	(hl),#0xFF
	ld	hl,#(_window_border + 0x0029)
	ld	(hl),#0xFF
	ld	bc,#_window_border + 42
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 43
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 44
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 45
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 46
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 47
	xor	a, a
	ld	(bc),a
	ld	hl,#(_window_border + 0x0030)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x0031)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0032)
	ld	(hl),#0x98
	ld	hl,#(_window_border + 0x0033)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0034)
	ld	(hl),#0x94
	ld	hl,#(_window_border + 0x0035)
	ld	(hl),#0xC8
	ld	hl,#(_window_border + 0x0036)
	ld	(hl),#0x83
	ld	hl,#(_window_border + 0x0037)
	ld	(hl),#0xCC
	ld	hl,#(_window_border + 0x0038)
	ld	(hl),#0x80
	ld	hl,#(_window_border + 0x0039)
	ld	(hl),#0xE7
	ld	hl,#(_window_border + 0x003a)
	ld	(hl),#0x40
	ld	hl,#(_window_border + 0x003b)
	ld	(hl),#0x70
	ld	hl,#(_window_border + 0x003c)
	ld	(hl),#0x2F
	ld	hl,#(_window_border + 0x003d)
	ld	(hl),#0x30
	ld	hl,#(_window_border + 0x003e)
	ld	(hl),#0x1F
	ld	hl,#(_window_border + 0x003f)
	ld	(hl),#0x1F
	ld	bc,#_window_border + 64
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 65
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 66
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 67
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 68
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 69
	xor	a, a
	ld	(bc),a
	ld	hl,#(_window_border + 0x0046)
	ld	(hl),#0xFF
	ld	bc,#_window_border + 71
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 72
	xor	a, a
	ld	(bc),a
	ld	hl,#(_window_border + 0x0049)
	ld	(hl),#0xFF
	ld	bc,#_window_border + 74
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 75
	xor	a, a
	ld	(bc),a
	ld	hl,#(_window_border + 0x004c)
	ld	(hl),#0xFF
	ld	bc,#_window_border + 77
	xor	a, a
	ld	(bc),a
	ld	hl,#(_window_border + 0x004e)
	ld	(hl),#0xFF
	ld	hl,#(_window_border + 0x004f)
	ld	(hl),#0xFF
	ld	hl,#(_window_border + 0x0050)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x0051)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x0052)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x0053)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x0054)
	ld	(hl),#0x23
	ld	hl,#(_window_border + 0x0055)
	ld	(hl),#0x19
	ld	hl,#(_window_border + 0x0056)
	ld	(hl),#0xC3
	ld	hl,#(_window_border + 0x0057)
	ld	(hl),#0x31
	ld	hl,#(_window_border + 0x0058)
	ld	(hl),#0x07
	ld	hl,#(_window_border + 0x0059)
	ld	(hl),#0xE1
	ld	hl,#(_window_border + 0x005a)
	ld	(hl),#0x0E
	ld	hl,#(_window_border + 0x005b)
	ld	(hl),#0x02
	ld	hl,#(_window_border + 0x005c)
	ld	(hl),#0xFC
	ld	hl,#(_window_border + 0x005d)
	ld	(hl),#0x04
	ld	hl,#(_window_border + 0x005e)
	ld	(hl),#0xF8
	ld	hl,#(_window_border + 0x005f)
	ld	(hl),#0xF8
	ld	hl,#(_window_border + 0x0060)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x0061)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x0062)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x0063)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x0064)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x0065)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x0066)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x0067)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x0068)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x0069)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x006a)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x006b)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x006c)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x006d)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x006e)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x006f)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x0070)
	ld	(hl),#0xF8
	ld	hl,#(_window_border + 0x0071)
	ld	(hl),#0xF8
	ld	hl,#(_window_border + 0x0072)
	ld	(hl),#0x04
	ld	hl,#(_window_border + 0x0073)
	ld	(hl),#0xFC
	ld	hl,#(_window_border + 0x0074)
	ld	(hl),#0x02
	ld	hl,#(_window_border + 0x0075)
	ld	(hl),#0x0E
	ld	hl,#(_window_border + 0x0076)
	ld	(hl),#0xE1
	ld	hl,#(_window_border + 0x0077)
	ld	(hl),#0x07
	ld	hl,#(_window_border + 0x0078)
	ld	(hl),#0xF1
	ld	hl,#(_window_border + 0x0079)
	ld	(hl),#0xC3
	ld	hl,#(_window_border + 0x007a)
	ld	(hl),#0x23
	ld	hl,#(_window_border + 0x007b)
	ld	(hl),#0x39
	ld	hl,#(_window_border + 0x007c)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x007d)
	ld	(hl),#0x09
	ld	hl,#(_window_border + 0x007e)
	ld	(hl),#0x13
	ld	hl,#(_window_border + 0x007f)
	ld	(hl),#0x09
	ld	bc,#_window_border + 128
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 129
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 130
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 131
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 132
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 133
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 134
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 135
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 136
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 137
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 138
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 139
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 140
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 141
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 142
	xor	a, a
	ld	(bc),a
	ld	bc,#_window_border + 143
	xor	a, a
	ld	(bc),a
;thumby.c:306: unsigned char text_box[] =
	ld	hl,#_text_box
	ld	(hl),#0x80
	ld	hl,#(_text_box + 0x0001)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0002)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0003)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0004)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0005)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0006)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0007)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0008)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0009)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x000a)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x000b)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x000c)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x000d)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x000e)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x000f)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0010)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0011)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0012)
	ld	(hl),#0x82
	ld	hl,#(_text_box + 0x0013)
	ld	(hl),#0x87
	ld	hl,#(_text_box + 0x0014)
	ld	(hl),#0x81
	ld	hl,#(_text_box + 0x0015)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0016)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0017)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0018)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0019)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x001a)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x001b)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x001c)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x001d)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x001e)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x001f)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0020)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0021)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0022)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0023)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0024)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0025)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0026)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0027)
	ld	(hl),#0x86
	ld	hl,#(_text_box + 0x0028)
	ld	(hl),#0x81
	ld	hl,#(_text_box + 0x0029)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x002a)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x002b)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x002c)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x002d)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x002e)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x002f)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0030)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0031)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0032)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0033)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0034)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0035)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0036)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0037)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0038)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0039)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x003a)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x003b)
	ld	(hl),#0x86
	ld	hl,#(_text_box + 0x003c)
	ld	(hl),#0x81
	ld	hl,#(_text_box + 0x003d)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x003e)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x003f)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0040)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0041)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0042)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0043)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0044)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0045)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0046)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0047)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0048)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0049)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x004a)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x004b)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x004c)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x004d)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x004e)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x004f)
	ld	(hl),#0x86
	ld	hl,#(_text_box + 0x0050)
	ld	(hl),#0x81
	ld	hl,#(_text_box + 0x0051)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0052)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0053)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0054)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0055)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0056)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0057)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0058)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0059)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x005a)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x005b)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x005c)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x005d)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x005e)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x005f)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0060)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0061)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0062)
	ld	(hl),#0x88
	ld	hl,#(_text_box + 0x0063)
	ld	(hl),#0x86
	ld	hl,#(_text_box + 0x0064)
	ld	(hl),#0x83
	ld	hl,#(_text_box + 0x0065)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0066)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0067)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0068)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0069)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x006a)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x006b)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x006c)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x006d)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x006e)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x006f)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0070)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0071)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0072)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0073)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0074)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0075)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0076)
	ld	(hl),#0x84
	ld	hl,#(_text_box + 0x0077)
	ld	(hl),#0x85
;thumby.c:324: unsigned char alphabet[] =
	ld	hl,#_alphabet
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0001)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0002)
	ld	(hl),#0x4C
	ld	hl,#(_alphabet + 0x0003)
	ld	(hl),#0x4C
	ld	hl,#(_alphabet + 0x0004)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0005)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0006)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0007)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0008)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0009)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x000a)
	ld	(hl),#0x64
	ld	hl,#(_alphabet + 0x000b)
	ld	(hl),#0x64
	ld	hl,#(_alphabet + 0x000c)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x000d)
	ld	(hl),#0x38
	ld	bc,#_alphabet + 14
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 15
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0010)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0011)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0012)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0013)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0014)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0015)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0016)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0017)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0018)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0019)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x001a)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x001b)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x001c)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x001d)
	ld	(hl),#0x7E
	ld	bc,#_alphabet + 30
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 31
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0020)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0021)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0022)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0023)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0024)
	ld	(hl),#0x0E
	ld	hl,#(_alphabet + 0x0025)
	ld	(hl),#0x0E
	ld	hl,#(_alphabet + 0x0026)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0027)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0028)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x0029)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x002a)
	ld	(hl),#0xE0
	ld	hl,#(_alphabet + 0x002b)
	ld	(hl),#0xE0
	ld	hl,#(_alphabet + 0x002c)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x002d)
	ld	(hl),#0xFE
	ld	bc,#_alphabet + 46
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 47
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0030)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0031)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0032)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0033)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0034)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0035)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0036)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0037)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0038)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0039)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x003a)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x003b)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x003c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x003d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 62
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 63
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0040)
	ld	(hl),#0x1C
	ld	hl,#(_alphabet + 0x0041)
	ld	(hl),#0x1C
	ld	hl,#(_alphabet + 0x0042)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0043)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0044)
	ld	(hl),#0x6C
	ld	hl,#(_alphabet + 0x0045)
	ld	(hl),#0x6C
	ld	hl,#(_alphabet + 0x0046)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x0047)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x0048)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0049)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x004a)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x004b)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x004c)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x004d)
	ld	(hl),#0x0C
	ld	bc,#_alphabet + 78
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 79
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0050)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0051)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0052)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0053)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0054)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0055)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0056)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0057)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0058)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0059)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x005a)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x005b)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x005c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x005d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 94
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 95
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0060)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0061)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0062)
	ld	(hl),#0x60
	ld	hl,#(_alphabet + 0x0063)
	ld	(hl),#0x60
	ld	hl,#(_alphabet + 0x0064)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0065)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0066)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0067)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0068)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0069)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x006a)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x006b)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x006c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x006d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 110
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 111
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0070)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0071)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0072)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0073)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0074)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0075)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0076)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0077)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0078)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x0079)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x007a)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x007b)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x007c)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x007d)
	ld	(hl),#0x30
	ld	bc,#_alphabet + 126
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 127
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0080)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x0081)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x0082)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x0083)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x0084)
	ld	(hl),#0xC4
	ld	hl,#(_alphabet + 0x0085)
	ld	(hl),#0xC4
	ld	hl,#(_alphabet + 0x0086)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x0087)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x0088)
	ld	(hl),#0x9E
	ld	hl,#(_alphabet + 0x0089)
	ld	(hl),#0x9E
	ld	hl,#(_alphabet + 0x008a)
	ld	(hl),#0x86
	ld	hl,#(_alphabet + 0x008b)
	ld	(hl),#0x86
	ld	hl,#(_alphabet + 0x008c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x008d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 142
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 143
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0090)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0091)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0092)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0093)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0094)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0095)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0096)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0097)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0098)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0099)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x009a)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x009b)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x009c)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x009d)
	ld	(hl),#0x78
	ld	bc,#_alphabet + 158
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 159
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x00a0)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x00a1)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x00a2)
	ld	(hl),#0x6C
	ld	hl,#(_alphabet + 0x00a3)
	ld	(hl),#0x6C
	ld	hl,#(_alphabet + 0x00a4)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00a5)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00a6)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00a7)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00a8)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x00a9)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x00aa)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00ab)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00ac)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00ad)
	ld	(hl),#0xC6
	ld	bc,#_alphabet + 174
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 175
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x00b0)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00b1)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00b2)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00b3)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00b4)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00b5)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00b6)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00b7)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00b8)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00b9)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00ba)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00bb)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00bc)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00bd)
	ld	(hl),#0xFC
	ld	bc,#_alphabet + 190
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 191
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x00c0)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x00c1)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x00c2)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x00c3)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x00c4)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00c5)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00c6)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00c7)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00c8)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00c9)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00ca)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x00cb)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x00cc)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x00cd)
	ld	(hl),#0x3C
	ld	bc,#_alphabet + 206
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 207
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x00d0)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x00d1)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x00d2)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x00d3)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x00d4)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00d5)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00d6)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00d7)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00d8)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00d9)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x00da)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x00db)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x00dc)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x00dd)
	ld	(hl),#0xF8
	ld	bc,#_alphabet + 222
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 223
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x00e0)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x00e1)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x00e2)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00e3)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00e4)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00e5)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00e6)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00e7)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00e8)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00e9)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00ea)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00eb)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00ec)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x00ed)
	ld	(hl),#0xFE
	ld	bc,#_alphabet + 238
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 239
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x00f0)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x00f1)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x00f2)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00f3)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00f4)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00f5)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00f6)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00f7)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00f8)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00f9)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00fa)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00fb)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00fc)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x00fd)
	ld	(hl),#0xC0
	ld	bc,#_alphabet + 254
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 255
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0100)
	ld	(hl),#0x3E
	ld	hl,#(_alphabet + 0x0101)
	ld	(hl),#0x3E
	ld	hl,#(_alphabet + 0x0102)
	ld	(hl),#0x60
	ld	hl,#(_alphabet + 0x0103)
	ld	(hl),#0x60
	ld	hl,#(_alphabet + 0x0104)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0105)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0106)
	ld	(hl),#0xCE
	ld	hl,#(_alphabet + 0x0107)
	ld	(hl),#0xCE
	ld	hl,#(_alphabet + 0x0108)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0109)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x010a)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x010b)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x010c)
	ld	(hl),#0x3E
	ld	hl,#(_alphabet + 0x010d)
	ld	(hl),#0x3E
	ld	bc,#_alphabet + 270
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 271
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0110)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0111)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0112)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0113)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0114)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0115)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0116)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0117)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0118)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0119)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x011a)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x011b)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x011c)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x011d)
	ld	(hl),#0xC6
	ld	bc,#_alphabet + 286
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 287
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0120)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0121)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0122)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0123)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0124)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0125)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0126)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0127)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0128)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0129)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x012a)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x012b)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x012c)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x012d)
	ld	(hl),#0x7E
	ld	bc,#_alphabet + 302
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 303
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0130)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0131)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0132)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0133)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0134)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0135)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0136)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0137)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0138)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0139)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x013a)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x013b)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x013c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x013d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 318
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 319
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0140)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0141)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0142)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x0143)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x0144)
	ld	(hl),#0xD8
	ld	hl,#(_alphabet + 0x0145)
	ld	(hl),#0xD8
	ld	hl,#(_alphabet + 0x0146)
	ld	(hl),#0xF0
	ld	hl,#(_alphabet + 0x0147)
	ld	(hl),#0xF0
	ld	hl,#(_alphabet + 0x0148)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x0149)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x014a)
	ld	(hl),#0xDC
	ld	hl,#(_alphabet + 0x014b)
	ld	(hl),#0xDC
	ld	hl,#(_alphabet + 0x014c)
	ld	(hl),#0xCE
	ld	hl,#(_alphabet + 0x014d)
	ld	(hl),#0xCE
	ld	bc,#_alphabet + 334
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 335
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0150)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0151)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0152)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0153)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0154)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0155)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0156)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0157)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0158)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x0159)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x015a)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x015b)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x015c)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x015d)
	ld	(hl),#0xFE
	ld	bc,#_alphabet + 350
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 351
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0160)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0161)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0162)
	ld	(hl),#0xEE
	ld	hl,#(_alphabet + 0x0163)
	ld	(hl),#0xEE
	ld	hl,#(_alphabet + 0x0164)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0165)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0166)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0167)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0168)
	ld	(hl),#0xD6
	ld	hl,#(_alphabet + 0x0169)
	ld	(hl),#0xD6
	ld	hl,#(_alphabet + 0x016a)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x016b)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x016c)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x016d)
	ld	(hl),#0xC6
	ld	bc,#_alphabet + 366
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 367
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0170)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0171)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0172)
	ld	(hl),#0xE6
	ld	hl,#(_alphabet + 0x0173)
	ld	(hl),#0xE6
	ld	hl,#(_alphabet + 0x0174)
	ld	(hl),#0xF6
	ld	hl,#(_alphabet + 0x0175)
	ld	(hl),#0xF6
	ld	hl,#(_alphabet + 0x0176)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0177)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0178)
	ld	(hl),#0xDE
	ld	hl,#(_alphabet + 0x0179)
	ld	(hl),#0xDE
	ld	hl,#(_alphabet + 0x017a)
	ld	(hl),#0xCE
	ld	hl,#(_alphabet + 0x017b)
	ld	(hl),#0xCE
	ld	hl,#(_alphabet + 0x017c)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x017d)
	ld	(hl),#0xC6
	ld	bc,#_alphabet + 382
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 383
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0180)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0181)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0182)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0183)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0184)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0185)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0186)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0187)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0188)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0189)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x018a)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x018b)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x018c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x018d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 398
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 399
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0190)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0191)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0192)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0193)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0194)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0195)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0196)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0197)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0198)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0199)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x019a)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x019b)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x019c)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x019d)
	ld	(hl),#0xC0
	ld	bc,#_alphabet + 414
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 415
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x01a0)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x01a1)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x01a2)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01a3)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01a4)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01a5)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01a6)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01a7)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01a8)
	ld	(hl),#0xDE
	ld	hl,#(_alphabet + 0x01a9)
	ld	(hl),#0xDE
	ld	hl,#(_alphabet + 0x01aa)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x01ab)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x01ac)
	ld	(hl),#0x7A
	ld	hl,#(_alphabet + 0x01ad)
	ld	(hl),#0x7A
	ld	bc,#_alphabet + 430
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 431
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x01b0)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x01b1)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x01b2)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01b3)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01b4)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01b5)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01b6)
	ld	(hl),#0xCE
	ld	hl,#(_alphabet + 0x01b7)
	ld	(hl),#0xCE
	ld	hl,#(_alphabet + 0x01b8)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x01b9)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x01ba)
	ld	(hl),#0xDC
	ld	hl,#(_alphabet + 0x01bb)
	ld	(hl),#0xDC
	ld	hl,#(_alphabet + 0x01bc)
	ld	(hl),#0xCE
	ld	hl,#(_alphabet + 0x01bd)
	ld	(hl),#0xCE
	ld	bc,#_alphabet + 446
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 447
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x01c0)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x01c1)
	ld	(hl),#0x78
	ld	hl,#(_alphabet + 0x01c2)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x01c3)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x01c4)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x01c5)
	ld	(hl),#0xC0
	ld	hl,#(_alphabet + 0x01c6)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x01c7)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x01c8)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x01c9)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x01ca)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01cb)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01cc)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x01cd)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 462
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 463
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x01d0)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x01d1)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x01d2)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01d3)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01d4)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01d5)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01d6)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01d7)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01d8)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01d9)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01da)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01db)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01dc)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x01dd)
	ld	(hl),#0x18
	ld	bc,#_alphabet + 478
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 479
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x01e0)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e1)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e2)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e3)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e4)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e5)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e6)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e7)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e8)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01e9)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01ea)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01eb)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01ec)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x01ed)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 494
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 495
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x01f0)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01f1)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01f2)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01f3)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01f4)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01f5)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01f6)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01f7)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x01f8)
	ld	(hl),#0x6C
	ld	hl,#(_alphabet + 0x01f9)
	ld	(hl),#0x6C
	ld	hl,#(_alphabet + 0x01fa)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x01fb)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x01fc)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01fd)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 510
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 511
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0200)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0201)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0202)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0203)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0204)
	ld	(hl),#0xD6
	ld	hl,#(_alphabet + 0x0205)
	ld	(hl),#0xD6
	ld	hl,#(_alphabet + 0x0206)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0207)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0208)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0209)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x020a)
	ld	(hl),#0x6C
	ld	hl,#(_alphabet + 0x020b)
	ld	(hl),#0x6C
	ld	hl,#(_alphabet + 0x020c)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x020d)
	ld	(hl),#0x44
	ld	bc,#_alphabet + 526
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 527
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0210)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0211)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0212)
	ld	(hl),#0xEE
	ld	hl,#(_alphabet + 0x0213)
	ld	(hl),#0xEE
	ld	hl,#(_alphabet + 0x0214)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0215)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0216)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0217)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0218)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0219)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x021a)
	ld	(hl),#0xEE
	ld	hl,#(_alphabet + 0x021b)
	ld	(hl),#0xEE
	ld	hl,#(_alphabet + 0x021c)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x021d)
	ld	(hl),#0xC6
	ld	bc,#_alphabet + 542
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 543
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0220)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x0221)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x0222)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x0223)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x0224)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x0225)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x0226)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0227)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0228)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0229)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x022a)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x022b)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x022c)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x022d)
	ld	(hl),#0x18
	ld	bc,#_alphabet + 558
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 559
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0230)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0231)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0232)
	ld	(hl),#0x0E
	ld	hl,#(_alphabet + 0x0233)
	ld	(hl),#0x0E
	ld	hl,#(_alphabet + 0x0234)
	ld	(hl),#0x1C
	ld	hl,#(_alphabet + 0x0235)
	ld	(hl),#0x1C
	ld	hl,#(_alphabet + 0x0236)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0237)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0238)
	ld	(hl),#0x70
	ld	hl,#(_alphabet + 0x0239)
	ld	(hl),#0x70
	ld	hl,#(_alphabet + 0x023a)
	ld	(hl),#0xE0
	ld	hl,#(_alphabet + 0x023b)
	ld	(hl),#0xE0
	ld	hl,#(_alphabet + 0x023c)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x023d)
	ld	(hl),#0xFE
	ld	bc,#_alphabet + 574
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 575
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 576
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 577
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 578
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 579
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 580
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 581
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 582
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 583
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 584
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 585
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x024a)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x024b)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x024c)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x024d)
	ld	(hl),#0x18
	ld	bc,#_alphabet + 590
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 591
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 592
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 593
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 594
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 595
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 596
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 597
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 598
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 599
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 600
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 601
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x025a)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x025b)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x025c)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x025d)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x025e)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x025f)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x0260)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0261)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0262)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0263)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0264)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0265)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0266)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0267)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0268)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0269)
	ld	(hl),#0x18
	ld	bc,#_alphabet + 618
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 619
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x026c)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x026d)
	ld	(hl),#0x18
	ld	bc,#_alphabet + 622
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 623
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0270)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0271)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0272)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0273)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0274)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0275)
	ld	(hl),#0x06
	ld	hl,#(_alphabet + 0x0276)
	ld	(hl),#0x1C
	ld	hl,#(_alphabet + 0x0277)
	ld	(hl),#0x1C
	ld	hl,#(_alphabet + 0x0278)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0279)
	ld	(hl),#0x38
	ld	bc,#_alphabet + 634
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 635
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x027c)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x027d)
	ld	(hl),#0x38
	ld	bc,#_alphabet + 638
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 639
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 640
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 641
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 642
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 643
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0284)
	ld	(hl),#0x60
	ld	hl,#(_alphabet + 0x0285)
	ld	(hl),#0x60
	ld	hl,#(_alphabet + 0x0286)
	ld	(hl),#0xF2
	ld	hl,#(_alphabet + 0x0287)
	ld	(hl),#0xF2
	ld	hl,#(_alphabet + 0x0288)
	ld	(hl),#0x9E
	ld	hl,#(_alphabet + 0x0289)
	ld	(hl),#0x9E
	ld	hl,#(_alphabet + 0x028a)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x028b)
	ld	(hl),#0x0C
	ld	bc,#_alphabet + 652
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 653
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 654
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 655
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0290)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x0291)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x0292)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0293)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0294)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0295)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0296)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x0297)
	ld	(hl),#0xCC
	ld	hl,#(_alphabet + 0x0298)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0299)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x029a)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x029b)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x029c)
	ld	(hl),#0xAC
	ld	hl,#(_alphabet + 0x029d)
	ld	(hl),#0xAC
	ld	bc,#_alphabet + 670
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 671
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02a0)
	ld	(hl),#0xEC
	ld	hl,#(_alphabet + 0x02a1)
	ld	(hl),#0xEC
	ld	hl,#(_alphabet + 0x02a2)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x02a3)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x02a4)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x02a5)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x02a6)
	ld	(hl),#0xCA
	ld	hl,#(_alphabet + 0x02a7)
	ld	(hl),#0xCA
	ld	hl,#(_alphabet + 0x02a8)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x02a9)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x02aa)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x02ab)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x02ac)
	ld	(hl),#0xEC
	ld	hl,#(_alphabet + 0x02ad)
	ld	(hl),#0xEC
	ld	bc,#_alphabet + 686
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 687
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02b0)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02b1)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02b2)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x02b3)
	ld	(hl),#0x66
	ld	hl,#(_alphabet + 0x02b4)
	ld	(hl),#0x81
	ld	hl,#(_alphabet + 0x02b5)
	ld	(hl),#0x81
	ld	hl,#(_alphabet + 0x02b6)
	ld	(hl),#0xE7
	ld	hl,#(_alphabet + 0x02b7)
	ld	(hl),#0xE7
	ld	hl,#(_alphabet + 0x02b8)
	ld	(hl),#0x99
	ld	hl,#(_alphabet + 0x02b9)
	ld	(hl),#0x99
	ld	hl,#(_alphabet + 0x02ba)
	ld	(hl),#0x99
	ld	hl,#(_alphabet + 0x02bb)
	ld	(hl),#0x99
	ld	hl,#(_alphabet + 0x02bc)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x02bd)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x02be)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02bf)
	ld	(hl),#0x18
	ld	bc,#_alphabet + 704
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 705
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02c2)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02c3)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02c4)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02c5)
	ld	(hl),#0x24
	ld	bc,#_alphabet + 710
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 711
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02c8)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02c9)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02ca)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x02cb)
	ld	(hl),#0x3C
	ld	bc,#_alphabet + 716
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 717
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 718
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 719
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 720
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 721
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02d2)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02d3)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02d4)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02d5)
	ld	(hl),#0x24
	ld	bc,#_alphabet + 726
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 727
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02d8)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x02d9)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x02da)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02db)
	ld	(hl),#0x24
	ld	bc,#_alphabet + 732
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 733
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 734
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 735
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 736
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 737
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02e2)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02e3)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02e4)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02e5)
	ld	(hl),#0x24
	ld	bc,#_alphabet + 742
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 743
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02e8)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x02e9)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x02ea)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02eb)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x02ec)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02ed)
	ld	(hl),#0x18
	ld	bc,#_alphabet + 750
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 751
	xor	a, a
	ld	(bc),a
;thumby.c:426: unsigned char arrow_tile[] =
	ld	hl,#_arrow_tile
	ld	(hl),#0x00
	ld	bc,#_arrow_tile + 1
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 2
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 3
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 4
	xor	a, a
	ld	(bc),a
	ld	hl,#(_arrow_tile + 0x0005)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0006)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0007)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0008)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0009)
	ld	(hl),#0x5A
	ld	hl,#(_arrow_tile + 0x000a)
	ld	(hl),#0x3C
	ld	hl,#(_arrow_tile + 0x000b)
	ld	(hl),#0x3C
	ld	hl,#(_arrow_tile + 0x000c)
	ld	(hl),#0x18
	ld	hl,#(_arrow_tile + 0x000d)
	ld	(hl),#0x18
	ld	bc,#_arrow_tile + 14
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 15
	xor	a, a
	ld	(bc),a
;thumby.c:434: unsigned char text_map[] =
	ld	hl,#_text_map
	ld	(hl),#0x16
	ld	hl,#(_text_map + 0x0001)
	ld	(hl),#0x17
	ld	hl,#(_text_map + 0x0002)
	ld	(hl),#0x29
	ld	hl,#(_text_map + 0x0003)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0004)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0005)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0006)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0007)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0008)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0009)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x000a)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x000b)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x000c)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x000d)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x000e)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x000f)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0010)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0011)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0012)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0013)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0014)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0015)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0016)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0017)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0018)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x0019)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x001a)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x001b)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x001c)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x001d)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x001e)
	ld	(hl),#0x04
	ld	hl,#(_text_map + 0x001f)
	ld	(hl),#0x04
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;thumby.c:449: void set_text_map(char *text, UBYTE len)
;	---------------------------------
; Function set_text_map
; ---------------------------------
_set_text_map_start::
_set_text_map:
	add	sp, #-5
;thumby.c:458: memset(text_map, 4, text_map_width*text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x04
	push	hl
	push	de
	call	_memset
	add	sp, #6
;thumby.c:461: if (!text || len > 32 || len <= 0) {
	ldhl	sp,#8
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00129$
	ld	a,#0x20
	inc	hl
	inc	hl
	sub	a, (hl)
	jp	C,00129$
	ld	a,(hl)
	or	a, a
;thumby.c:462: return;
;thumby.c:468: for (i = 0; i < len; ++i) {
	jp	Z,00129$
	ldhl	sp,#0
	ld	(hl),#0x00
00127$:
	ldhl	sp,#0
	ld	a,(hl)
	ldhl	sp,#9
	sub	a, (hl)
	jp	NC,00125$
;thumby.c:470: if (text[i] >= 'A' && text[i] <= 'Z') {
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
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
	ld	c,a
;thumby.c:471: text_map[i] = text[i] - 'A' + 0xF; // eg. character A - ascii value of A + index of A in VRAM
	ld	de,#_text_map
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),d
;thumby.c:470: if (text[i] >= 'A' && text[i] <= 'Z') {
	ld	a,#0x41
	ld	e,a
	ld	a,c
	ld	d,a
	ld	a,c
	xor	a, #0x80
	sub	a, #0xC1
	jr	C,00106$
	ld	a,c
	ld	e,a
	ld	a,#0x5A
	ld	d,a
	ld	a,#0x5A
	sub	a, c
	bit	7, e
	jr	Z,00171$
	bit	7, d
	jr	NZ,00172$
	cp	a, a
	jr	00172$
00171$:
	bit	7, d
	jr	Z,00172$
	scf
00172$:
	jr	C,00106$
;thumby.c:471: text_map[i] = text[i] - 'A' + 0xF; // eg. character A - ascii value of A + index of A in VRAM
	ld	a,c
	add	a, #0xCE
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00106$:
;thumby.c:475: if (text[i] >= '0' && text[i] <= '9') {
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ld	a,#0x30
	ld	e,a
	ld	a,b
	ld	d,a
	ld	a,b
	xor	a, #0x80
	sub	a, #0xB0
	jr	C,00109$
	ld	a,b
	ld	e,a
	ld	a,#0x39
	ld	d,a
	ld	a,#0x39
	sub	a, b
	bit	7, e
	jr	Z,00173$
	bit	7, d
	jr	NZ,00174$
	cp	a, a
	jr	00174$
00173$:
	bit	7, d
	jr	Z,00174$
	scf
00174$:
	jr	C,00109$
;thumby.c:476: text_map[i] = text[i] - '0' + 0x5;
	ld	a,b
	add	a, #0xD5
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00109$:
;thumby.c:480: if (text[i] == '.') {
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	sub	a, #0x2E
	jr	NZ,00123$
;thumby.c:481: text_map[i] = 0x29;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x29
	jr	00128$
00123$:
;thumby.c:482: } else if (text[i] == ',') {
	ld	a,b
	sub	a, #0x2C
	jr	NZ,00120$
;thumby.c:483: text_map[i] = 0x2A;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2A
	jr	00128$
00120$:
;thumby.c:484: } else if (text[i] == '!') {
	ld	a,b
	sub	a, #0x21
	jr	NZ,00117$
;thumby.c:485: text_map[i] = 0x2B;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2B
	jr	00128$
00117$:
;thumby.c:486: } else if (text[i] == '?') {
	ld	a,b
	sub	a, #0x3F
	jr	NZ,00114$
;thumby.c:487: text_map[i] = 0x2C;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2C
	jr	00128$
00114$:
;thumby.c:488: } else if (text[i] == '~') {
	ld	a,b
	sub	a, #0x7E
	jr	NZ,00128$
;thumby.c:489: text_map[i] = 0x2D;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2D
00128$:
;thumby.c:468: for (i = 0; i < len; ++i) {
	ldhl	sp,#0
	inc	(hl)
	jp	00127$
00125$:
;thumby.c:494: text_map[len] = arrow_address;
	ld	de,#_text_map
	ldhl	sp,#9
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x34
	ld	(bc),a
00129$:
	add	sp,#5
	ret
_set_text_map_end::
;thumby.c:499: void clear_window()
;	---------------------------------
; Function clear_window
; ---------------------------------
_clear_window_start::
_clear_window:
;thumby.c:502: memset(text_map, 4, text_map_width*text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x04
	push	hl
	push	de
	call	_memset
	add	sp, #6
;thumby.c:503: set_win_tiles(2, 2, text_map_width, text_map_height, text_map);
	ld	de,#_text_map
	push	de
	ld	hl,#0x0210
	push	hl
	ld	l, #0x02
	push	hl
	call	_set_win_tiles
	add	sp, #6
	ret
_clear_window_end::
;thumby.c:506: UBYTE divide_ubyte(UBYTE a, UBYTE b)
;	---------------------------------
; Function divide_ubyte
; ---------------------------------
_divide_ubyte_start::
_divide_ubyte:
;thumby.c:510: while (a >= b) {
	ld	b,#0x00
00101$:
	ldhl	sp,#2
	ld	a,(hl+)
	sub	a, (hl)
	jr	C,00103$
;thumby.c:511: a -= b;
	dec	hl
	ld	a,(hl+)
	sub	a, (hl)
	dec	hl
	ld	(hl),a
;thumby.c:512: result++;
	inc	b
	jr	00101$
00103$:
;thumby.c:514: return result;
	ld	e,b
	ret
_divide_ubyte_end::
;thumby.c:522: void scroll_text(UBYTE len)
;	---------------------------------
; Function scroll_text
; ---------------------------------
_scroll_text_start::
_scroll_text:
	push	af
	dec	sp
;thumby.c:525: for (counter = 0; counter < len; ++counter) {
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#5
	sub	a, (hl)
	jp	NC,00105$
;thumby.c:526: x = 2 + (counter % 16);
	ld	a,b
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#0
	ld	(hl),a
;thumby.c:527: y = 2 + divide_ubyte(counter, 16);
	push	bc
	ld	a,#0x10
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_divide_ubyte
	pop	af
	pop	bc
	ld	c,e
	inc	c
	inc	c
;thumby.c:531: set_win_tiles(x, y, 1, 1, &text_map[counter]);
	ld	de,#_text_map
	ld	l,b
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	ld	hl,#0x0101
	push	hl
	ld	a,c
	push	af
	inc	sp
	ldhl	sp,#7
	ld	a,(hl)
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
	pop	bc
;thumby.c:532: sleep(8);
	push	bc
	ld	a,#0x08
	push	af
	inc	sp
	call	_sleep
	inc	sp
	pop	bc
;thumby.c:525: for (counter = 0; counter < len; ++counter) {
	inc	b
	jp	00103$
00105$:
	add	sp,#3
	ret
_scroll_text_end::
;thumby.c:536: void sleep(UBYTE cycles)
;	---------------------------------
; Function sleep
; ---------------------------------
_sleep_start::
_sleep:
;thumby.c:539: for(counter = 0; counter < cycles; counter++){
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#2
	sub	a, (hl)
	ret	NC
;thumby.c:540: wait_vbl_done();
	push	bc
	call	_wait_vbl_done
	pop	bc
;thumby.c:539: for(counter = 0; counter < cycles; counter++){
	inc	b
	jr	00103$
	ret
_sleep_end::
;thumby.c:544: void process_button_press(UBYTE *x, UBYTE *y)
;	---------------------------------
; Function process_button_press
; ---------------------------------
_process_button_press_start::
_process_button_press:
	add	sp, #-6
;thumby.c:546: UBYTE input = joypad();
	call	_joypad
;thumby.c:547: UBYTE move = 1;
	ldhl	sp,#0
	ld	(hl),#0x01
;thumby.c:550: if(input & J_A)
	ldhl	sp,#4
	ld	(hl),e
	inc	hl
	ld	(hl),#0x00
	dec	hl
	bit	4, (hl)
	jr	Z,00102$
;thumby.c:551: move += 2;
	ldhl	sp,#0
	ld	(hl),#0x03
00102$:
;thumby.c:555: *y -= move;
	ldhl	sp,#10
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),e
;thumby.c:554: if(input & J_UP)
	inc	hl
	bit	2, (hl)
	jr	Z,00104$
;thumby.c:555: *y -= move;
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#0
	sub	a, (hl)
	ld	b,a
	inc	hl
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00104$:
;thumby.c:556: if(input & J_DOWN)
	ldhl	sp,#4
	bit	3, (hl)
	jr	Z,00106$
;thumby.c:557: *y += move;
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ldhl	sp,#0
	add	a, (hl)
	ld	b,a
	inc	hl
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00106$:
;thumby.c:559: *x -= move;
	ldhl	sp,#9
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;thumby.c:558: if(input & J_LEFT)
	ldhl	sp,#4
	bit	1, (hl)
	jr	Z,00108$
;thumby.c:559: *x -= move;
	ld	a,(bc)
	ldhl	sp,#1
	ld	(hl),a
	ld	a,(hl-)
	sub	a, (hl)
	ld	(bc),a
00108$:
;thumby.c:560: if(input & J_RIGHT)
	ldhl	sp,#4
	bit	0, (hl)
	jr	Z,00110$
;thumby.c:561: *x += move;
	ld	a,(bc)
	ld	d,a
	ldhl	sp,#0
	add	a, (hl)
	ld	(bc),a
00110$:
;thumby.c:567: *x = MAX(7, *x);
	ld	a,(bc)
	ldhl	sp,#1
	ld	(hl),a
	ld	a,(hl)
	sub	a, #0x07
	jr	NC,00113$
	ldhl	sp,#4
	ld	(hl),#0x07
	jr	00114$
00113$:
	push	hl
	ldhl	sp,#3
	ld	a,(hl)
	ldhl	sp,#6
	ld	(hl),a
	pop	hl
00114$:
	ldhl	sp,#4
	ld	a,(hl)
	ld	(bc),a
;thumby.c:568: *x = MIN(160, *x);
	ld	a,(bc)
	ldhl	sp,#1
	ld	(hl),a
	ld	a,#0xA0
	ldhl	sp,#4
	sub	a, (hl)
	jr	NC,00115$
	ld	a,#0xA0
	jr	00116$
00115$:
	ldhl	sp,#1
	ld	a,(hl)
00116$:
	ld	(bc),a
;thumby.c:569: *y = MAX(7, *y);
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	sub	a, #0x07
	jr	NC,00117$
	ld	b,#0x07
00117$:
	ldhl	sp,#2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
;thumby.c:570: *y = MIN(144, *y);
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	ld	a,#0x90
	sub	a, b
	jr	NC,00119$
	ld	c,#0x90
00119$:
	ldhl	sp,#2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),c
	add	sp,#6
	ret
_process_button_press_end::
;thumby.c:573: void set_girl_sprite()
;	---------------------------------
; Function set_girl_sprite
; ---------------------------------
_set_girl_sprite_start::
_set_girl_sprite:
;thumby.c:576: for (counter = 0; counter < 8; ++counter) {
	ld	b,#0x00
00102$:
;thumby.c:579: counter++;
	inc	b
;thumby.c:580: counter--;
	dec	b
;thumby.c:581: set_sprite_tile(counter, counter*2);
	ld	a,b
	add	a, a
	push	bc
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_set_sprite_tile
	pop	af
	pop	bc
;thumby.c:576: for (counter = 0; counter < 8; ++counter) {
	inc	b
	ld	a,b
	sub	a, #0x08
	jr	C,00102$
	ret
_set_girl_sprite_end::
;thumby.c:586: void update_girl_sprite(UBYTE x, UBYTE y)
;	---------------------------------
; Function update_girl_sprite
; ---------------------------------
_update_girl_sprite_start::
_update_girl_sprite:
;thumby.c:589: move_sprite(0,x+(0%4)*8,y+(0/4)*16);
	ldhl	sp,#3
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;thumby.c:590: move_sprite(1,x+(1%4)*8,y+0*16);
	ldhl	sp,#2
	ld	a,(hl)
	add	a, #0x08
	ld	d,a
	push	de
	inc	hl
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a,#0x01
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
	pop	de
;thumby.c:591: move_sprite(2,x+(0%4)*8,y+(1)*16);
	ldhl	sp,#3
	ld	a,(hl)
	add	a, #0x10
	ld	b,a
	push	bc
	push	de
	push	bc
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	ld	a,#0x02
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
	pop	de
	pop	bc
;thumby.c:592: move_sprite(3,x+(1%4)*8,y+(1)*16);
	push	bc
	push	bc
	inc	sp
	push	de
	inc	sp
	ld	a,#0x03
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
	pop	bc
;thumby.c:594: move_sprite(4,x+(2%4)*8,y+(0/4)*16);
	ldhl	sp,#2
	ld	a,(hl)
	add	a, #0x10
	ld	c,a
	push	bc
	inc	hl
	ld	a,(hl)
	push	af
	inc	sp
	ld	b,c
	ld	c,#0x04
	push	bc
	call	_move_sprite
	add	sp, #3
	pop	bc
;thumby.c:595: move_sprite(5,x+(3%4)*8,y+0*16);
	ldhl	sp,#2
	ld	a,(hl)
	add	a, #0x18
	ld	d,a
	push	bc
	push	de
	inc	hl
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a,#0x05
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
	pop	de
	pop	bc
;thumby.c:596: move_sprite(6,x+(2%4)*8,y+(1)*16);
	push	bc
	push	de
	push	bc
	inc	sp
	ld	b,c
	ld	c,#0x06
	push	bc
	call	_move_sprite
	add	sp, #3
	pop	de
	pop	bc
;thumby.c:597: move_sprite(7,x+(3%4)*8,y+(1)*16);
	push	bc
	inc	sp
	push	de
	inc	sp
	ld	a,#0x07
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
	ret
_update_girl_sprite_end::
;thumby.c:601: void check_level_one()
;	---------------------------------
; Function check_level_one
; ---------------------------------
_check_level_one_start::
_check_level_one:
	add	sp, #-28
;thumby.c:603: UBYTE counter, result = 1;
	ldhl	sp,#1
	ld	(hl),#0x01
;thumby.c:604: UBYTE tile_data[24] = {0};
	ldhl	sp,#2
	ld	a,l
	ld	d,h
	ldhl	sp,#26
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x00
	ldhl	sp,#27
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	xor	a, a
	ld	(bc),a
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc),a
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc),a
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0007
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0008
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0009
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x000A
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x000B
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x000D
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x000E
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x000F
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0010
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0011
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0012
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0013
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0014
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0015
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0016
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0017
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
;thumby.c:607: for (counter = 0; counter < 8; ++counter) {
	ldhl	sp,#0
	ld	(hl),#0x00
00104$:
;thumby.c:608: result &= (get_sprite_tile(counter) == (0x10U + counter));
	ldhl	sp,#0
	ld	a,(hl)
	push	af
	inc	sp
	call	_get_sprite_tile
	inc	sp
	ldhl	sp,#26
	ld	(hl),e
	ldhl	sp,#0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0010
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#26
	ld	d,(hl)
	ld	e,#0x00
	ld	a,c
	sub	a, d
	jr	NZ,00118$
	ld	a,b
	sub	a, e
	jr	NZ,00118$
	ld	a,#0x01
	jr	00119$
00118$:
	xor	a,a
00119$:
	ld	d,a
	ldhl	sp,#1
	ld	a,(hl)
	and	a, d
;thumby.c:607: for (counter = 0; counter < 8; ++counter) {
	ld	(hl-),a
	inc	(hl)
	ld	a,(hl)
	sub	a, #0x08
	jr	C,00104$
;thumby.c:619: if (result == 1) {
	inc	hl
	ld	a,(hl)
	dec	a
	jr	NZ,00106$
;thumby.c:620: pass_level_one();
	call	_pass_level_one
00106$:
	add	sp,#28
	ret
_check_level_one_end::
;thumby.c:626: void pass_level_one()
;	---------------------------------
; Function pass_level_one
; ---------------------------------
_pass_level_one_start::
_pass_level_one:
;thumby.c:630: show_text("YOU PASS!");
	ld	de,#__str_0
	push	de
	call	_show_text
	pop	af
;thumby.c:631: waitpad(J_A);
	ld	a,#0x10
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;thumby.c:632: sleep(32);
	ld	a,#0x20
	push	af
	inc	sp
	call	_sleep
	inc	sp
;thumby.c:634: show_text("LOOK ON MY SHAWL.");
	ld	de,#__str_1
	push	de
	call	_show_text
	pop	af
;thumby.c:635: waitpad(J_A);
	ld	a,#0x10
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;thumby.c:637: show_text("THANKS FOR TRYING THE DEMO!");
	ld	de,#__str_2
	push	de
	call	_show_text
	pop	af
;thumby.c:638: while(1) {}
00102$:
	jr	00102$
	ret
_pass_level_one_end::
__str_0:
	.ascii "YOU PASS!"
	.db 0x00
__str_1:
	.ascii "LOOK ON MY SHAWL."
	.db 0x00
__str_2:
	.ascii "THANKS FOR TRYING THE DEMO!"
	.db 0x00
;thumby.c:642: void show_text(char *text)
;	---------------------------------
; Function show_text
; ---------------------------------
_show_text_start::
_show_text:
;thumby.c:644: UBYTE text_len = strlen(text);
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_strlen
	pop	af
	ld	d,e
;thumby.c:645: clear_window();
	push	de
	call	_clear_window
	pop	de
;thumby.c:646: set_text_map(text, text_len);
	push	de
	push	de
	inc	sp
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_set_text_map
	add	sp, #3
	pop	de
;thumby.c:648: scroll_text((text_len + 1));
	inc	d
	push	de
	inc	sp
	call	_scroll_text
	inc	sp
	ret
_show_text_end::
;thumby.c:651: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
	push	af
;thumby.c:654: x=40;
	ldhl	sp,#0
	ld	(hl),#0x28
;thumby.c:655: y=40;
	inc	hl
	ld	(hl),#0x28
;thumby.c:657: disable_interrupts();
	call	_disable_interrupts
;thumby.c:658: DISPLAY_OFF;
	call	_display_off
;thumby.c:661: set_bkg_data(0, grass_tiles_len, grass_tiles);
	ld	de,#_grass_tiles
	push	de
	ld	hl,#0x0500
	push	hl
	call	_set_bkg_data
	add	sp, #4
;thumby.c:663: set_bkg_tiles(0, 0, grass_field_width, grass_field_height, grass_field);
	ld	de,#_grass_field
	push	de
	ld	hl,#0x2020
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;thumby.c:667: SPRITES_8x16;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	2, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;thumby.c:668: set_sprite_data(0, girl_pj_tiles_len, girl_pj_tiles);
	ld	de,#_girl_pj_tiles
	push	de
	ld	hl,#0x1000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;thumby.c:669: set_sprite_data(16, girl_tiles_len, girl_tiles);
	ld	de,#_girl_tiles
	push	de
	ld	hl,#0x1010
	push	hl
	call	_set_sprite_data
	add	sp, #4
;thumby.c:670: set_girl_sprite();
	call	_set_girl_sprite
;thumby.c:671: update_girl_sprite(x, y);
	ld	hl,#0x2828
	push	hl
	call	_update_girl_sprite
	pop	af
;thumby.c:674: set_win_data(0x80, window_border_len, window_border);
	ld	de,#_window_border
	push	de
	ld	hl,#0x0980
	push	hl
	call	_set_win_data
	add	sp, #4
;thumby.c:675: set_win_tiles(0, 0, text_box_width, text_box_height, text_box);
	ld	de,#_text_box
	push	de
	ld	hl,#0x0614
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_win_tiles
	add	sp, #6
;thumby.c:676: move_win(7,96);
	ld	hl,#0x6007
	push	hl
	call	_move_win
	pop	af
;thumby.c:679: set_win_data(5U, alphabet_len, alphabet);
	ld	de,#_alphabet
	push	de
	ld	hl,#0x2F05
	push	hl
	call	_set_win_data
	add	sp, #4
;thumby.c:680: set_win_tiles(2U, 2U, text_map_width, text_map_height, text_map);
	ld	de,#_text_map
	push	de
	ld	hl,#0x0210
	push	hl
	ld	l, #0x02
	push	hl
	call	_set_win_tiles
	add	sp, #6
;thumby.c:683: set_win_data(arrow_address, 1U, arrow_tile);
	ld	de,#_arrow_tile
	push	de
	ld	hl,#0x0134
	push	hl
	call	_set_win_data
	add	sp, #4
;thumby.c:685: SHOW_BKG;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	0, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;thumby.c:686: SHOW_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	1, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;thumby.c:687: SHOW_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	5, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;thumby.c:688: DISPLAY_ON;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	7, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;thumby.c:689: enable_interrupts();
	call	_enable_interrupts
;thumby.c:692: check_level_one();
	call	_check_level_one
;thumby.c:695: clear_window();
	call	_clear_window
;thumby.c:696: set_text_map("MORNING...", 11);
	ld	de,#__str_3
	ld	a,#0x0B
	push	af
	inc	sp
	push	de
	call	_set_text_map
	add	sp, #3
;thumby.c:697: scroll_text(11);
	ld	a,#0x0B
	push	af
	inc	sp
	call	_scroll_text
	inc	sp
;thumby.c:698: waitpad(J_A);
	ld	a,#0x10
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;thumby.c:699: sleep(32);
	ld	a,#0x20
	push	af
	inc	sp
	call	_sleep
	inc	sp
;thumby.c:701: clear_window();
	call	_clear_window
;thumby.c:702: set_text_map("HELP ME GET DRESSED.", 21);
	ld	de,#__str_4
	ld	a,#0x15
	push	af
	inc	sp
	push	de
	call	_set_text_map
	add	sp, #3
;thumby.c:703: scroll_text(21);
	ld	a,#0x15
	push	af
	inc	sp
	call	_scroll_text
	inc	sp
;thumby.c:704: waitpad(J_A);
	ld	a,#0x10
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;thumby.c:706: clear_window();
	call	_clear_window
;thumby.c:707: set_text_map("MY CLOTHES ARE  IN VRAM.", 25);
	ld	de,#__str_5
	ld	a,#0x19
	push	af
	inc	sp
	push	de
	call	_set_text_map
	add	sp, #3
;thumby.c:708: scroll_text(25);
	ld	a,#0x19
	push	af
	inc	sp
	call	_scroll_text
	inc	sp
;thumby.c:710: while(1) {
00103$:
;thumby.c:712: for(counter = 0; counter < 4; counter++){
	ld	b,#0x04
00107$:
;thumby.c:713: wait_vbl_done();
	push	bc
	call	_wait_vbl_done
	pop	bc
	ld	a,b
	dec	b
;thumby.c:712: for(counter = 0; counter < 4; counter++){
	ld	a,b
	or	a, a
	jr	NZ,00107$
;thumby.c:715: process_button_press(&x, &y);
	ldhl	sp,#1
	ld	c,l
	ld	b,h
	ldhl	sp,#0
	ld	e,l
	ld	d,h
	push	bc
	push	de
	call	_process_button_press
	add	sp, #4
;thumby.c:716: update_girl_sprite(x, y);
	ldhl	sp,#1
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	call	_update_girl_sprite
	pop	af
	jr	00103$
	add	sp,#2
	ret
_main_end::
__str_3:
	.ascii "MORNING..."
	.db 0x00
__str_4:
	.ascii "HELP ME GET DRESSED."
	.db 0x00
__str_5:
	.ascii "MY CLOTHES ARE  IN VRAM."
	.db 0x00
	.area _CODE
	.area _CABS (ABS)
