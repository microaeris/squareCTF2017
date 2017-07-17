;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Sun Jul 16 17:08:55 2017
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _move_win
	.globl _set_win_tiles
	.globl _set_win_data
	.globl _display_off
	.globl _wait_vbl_done
	.globl _disable_interrupts
	.globl _enable_interrupts
	.globl _joypad
	.globl _delay
	.globl _strlen
	.globl _memset
	.globl _input_seq_ctr
	.globl _input_seq
	.globl _text_map
	.globl _arrow_tile
	.globl _alphabet
	.globl _text_box
	.globl _window_border
	.globl _solution_seq
	.globl _girl_tiles
	.globl _divide_UINT8
	.globl _set_text_map
	.globl _clear_window
	.globl _show_text
	.globl _scroll_text
	.globl _sleep
	.globl _process_button_press
	.globl _check_sequence
	.globl _pass_level_1
	.globl _fail_level_1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_window_border::
	.ds 144
_text_box::
	.ds 120
_alphabet::
	.ds 736
_arrow_tile::
	.ds 32
_text_map::
	.ds 32
_input_seq::
	.ds 16
_input_seq_ctr::
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
;main.c:68: unsigned char window_border[] =
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
;main.c:94: unsigned char text_box[] =
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
;main.c:203: unsigned char alphabet[] =
	ld	hl,#_alphabet
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0001)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0002)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0003)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0004)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0005)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0006)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0007)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0008)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0009)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x000a)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x000b)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x000c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x000d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 14
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 15
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0010)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0011)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0012)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x0013)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x0014)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0015)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0016)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0017)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0018)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0019)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x001a)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x001b)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x001c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x001d)
	ld	(hl),#0x7C
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
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0023)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0024)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0025)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0026)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0027)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0028)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x0029)
	ld	(hl),#0x30
	ld	hl,#(_alphabet + 0x002a)
	ld	(hl),#0x40
	ld	hl,#(_alphabet + 0x002b)
	ld	(hl),#0x40
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
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0031)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0032)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0033)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0034)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0035)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0036)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0037)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0038)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0039)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x003a)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x003b)
	ld	(hl),#0x82
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
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0041)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0042)
	ld	(hl),#0x14
	ld	hl,#(_alphabet + 0x0043)
	ld	(hl),#0x14
	ld	hl,#(_alphabet + 0x0044)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x0045)
	ld	(hl),#0x24
	ld	hl,#(_alphabet + 0x0046)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x0047)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x0048)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x0049)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x004a)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x004b)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x004c)
	ld	(hl),#0x04
	ld	hl,#(_alphabet + 0x004d)
	ld	(hl),#0x04
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
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0053)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0054)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0055)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0056)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0057)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0058)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0059)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x005a)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x005b)
	ld	(hl),#0x82
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
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0061)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0062)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0063)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0064)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0065)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0066)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0067)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0068)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0069)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x006a)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x006b)
	ld	(hl),#0x82
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
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0071)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0072)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0073)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0074)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0075)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0076)
	ld	(hl),#0x04
	ld	hl,#(_alphabet + 0x0077)
	ld	(hl),#0x04
	ld	hl,#(_alphabet + 0x0078)
	ld	(hl),#0x04
	ld	hl,#(_alphabet + 0x0079)
	ld	(hl),#0x04
	ld	hl,#(_alphabet + 0x007a)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x007b)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x007c)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x007d)
	ld	(hl),#0x08
	ld	bc,#_alphabet + 126
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 127
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0080)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0081)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0082)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0083)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0084)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0085)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0086)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0087)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0088)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0089)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x008a)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x008b)
	ld	(hl),#0x82
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
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0093)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0094)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0095)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0096)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0097)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0098)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x0099)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x009a)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x009b)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x009c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x009d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 158
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 159
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x00a0)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x00a1)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x00a2)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x00a3)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x00a4)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x00a5)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x00a6)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x00a7)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x00a8)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x00a9)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x00aa)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00ab)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00ac)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00ad)
	ld	(hl),#0x82
	ld	bc,#_alphabet + 174
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 175
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x00b0)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x00b1)
	ld	(hl),#0xF8
	ld	hl,#(_alphabet + 0x00b2)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x00b3)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x00b4)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x00b5)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x00b6)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00b7)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00b8)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00b9)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00ba)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00bb)
	ld	(hl),#0x82
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
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x00c3)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x00c4)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00c5)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00c6)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00c7)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00c8)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00c9)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00ca)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x00cb)
	ld	(hl),#0x42
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
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x00d3)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x00d4)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00d5)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00d6)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00d7)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00d8)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00d9)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x00da)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x00db)
	ld	(hl),#0x84
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
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00e3)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00e4)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00e5)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00e6)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00e7)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00e8)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00e9)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00ea)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00eb)
	ld	(hl),#0x80
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
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00f3)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00f4)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00f5)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00f6)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00f7)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x00f8)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00f9)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00fa)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00fb)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00fc)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x00fd)
	ld	(hl),#0x80
	ld	bc,#_alphabet + 254
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 255
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0100)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0101)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0102)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x0103)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x0104)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0105)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0106)
	ld	(hl),#0x9E
	ld	hl,#(_alphabet + 0x0107)
	ld	(hl),#0x9E
	ld	hl,#(_alphabet + 0x0108)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0109)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x010a)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x010b)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x010c)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x010d)
	ld	(hl),#0x3C
	ld	bc,#_alphabet + 270
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 271
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0110)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0111)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0112)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0113)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0114)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0115)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0116)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0117)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x0118)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0119)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x011a)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x011b)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x011c)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x011d)
	ld	(hl),#0x82
	ld	bc,#_alphabet + 286
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 287
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0120)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0121)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x0122)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0123)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0124)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0125)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0126)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0127)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0128)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0129)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x012a)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x012b)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x012c)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x012d)
	ld	(hl),#0x7C
	ld	bc,#_alphabet + 302
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 303
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0130)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0131)
	ld	(hl),#0x7E
	ld	hl,#(_alphabet + 0x0132)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0133)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0134)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0135)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0136)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0137)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0138)
	ld	(hl),#0x88
	ld	hl,#(_alphabet + 0x0139)
	ld	(hl),#0x88
	ld	hl,#(_alphabet + 0x013a)
	ld	(hl),#0x88
	ld	hl,#(_alphabet + 0x013b)
	ld	(hl),#0x88
	ld	hl,#(_alphabet + 0x013c)
	ld	(hl),#0x70
	ld	hl,#(_alphabet + 0x013d)
	ld	(hl),#0x70
	ld	bc,#_alphabet + 318
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 319
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0140)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x0141)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x0142)
	ld	(hl),#0x88
	ld	hl,#(_alphabet + 0x0143)
	ld	(hl),#0x88
	ld	hl,#(_alphabet + 0x0144)
	ld	(hl),#0x90
	ld	hl,#(_alphabet + 0x0145)
	ld	(hl),#0x90
	ld	hl,#(_alphabet + 0x0146)
	ld	(hl),#0xB0
	ld	hl,#(_alphabet + 0x0147)
	ld	(hl),#0xB0
	ld	hl,#(_alphabet + 0x0148)
	ld	(hl),#0xC8
	ld	hl,#(_alphabet + 0x0149)
	ld	(hl),#0xC8
	ld	hl,#(_alphabet + 0x014a)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x014b)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x014c)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x014d)
	ld	(hl),#0x82
	ld	bc,#_alphabet + 334
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 335
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0150)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0151)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0152)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0153)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0154)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0155)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0156)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0157)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0158)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0159)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x015a)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x015b)
	ld	(hl),#0x80
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
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0161)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0162)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0163)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0164)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0165)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0166)
	ld	(hl),#0x92
	ld	hl,#(_alphabet + 0x0167)
	ld	(hl),#0x92
	ld	hl,#(_alphabet + 0x0168)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0169)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x016a)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x016b)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x016c)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x016d)
	ld	(hl),#0x82
	ld	bc,#_alphabet + 366
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 367
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0170)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0171)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0172)
	ld	(hl),#0xC2
	ld	hl,#(_alphabet + 0x0173)
	ld	(hl),#0xC2
	ld	hl,#(_alphabet + 0x0174)
	ld	(hl),#0xA2
	ld	hl,#(_alphabet + 0x0175)
	ld	(hl),#0xA2
	ld	hl,#(_alphabet + 0x0176)
	ld	(hl),#0x92
	ld	hl,#(_alphabet + 0x0177)
	ld	(hl),#0x92
	ld	hl,#(_alphabet + 0x0178)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x0179)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x017a)
	ld	(hl),#0x86
	ld	hl,#(_alphabet + 0x017b)
	ld	(hl),#0x86
	ld	hl,#(_alphabet + 0x017c)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x017d)
	ld	(hl),#0x82
	ld	bc,#_alphabet + 382
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 383
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0180)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0181)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x0182)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x0183)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x0184)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0185)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0186)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0187)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0188)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0189)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x018a)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x018b)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x018c)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x018d)
	ld	(hl),#0x38
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
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0193)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0194)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0195)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0196)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0197)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x0198)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x0199)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x019a)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x019b)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x019c)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x019d)
	ld	(hl),#0x80
	ld	bc,#_alphabet + 414
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 415
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x01a0)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x01a1)
	ld	(hl),#0x38
	ld	hl,#(_alphabet + 0x01a2)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x01a3)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x01a4)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01a5)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01a6)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01a7)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01a8)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x01a9)
	ld	(hl),#0x8A
	ld	hl,#(_alphabet + 0x01aa)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x01ab)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x01ac)
	ld	(hl),#0x3A
	ld	hl,#(_alphabet + 0x01ad)
	ld	(hl),#0x3A
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
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01b3)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01b4)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01b5)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01b6)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x01b7)
	ld	(hl),#0xFC
	ld	hl,#(_alphabet + 0x01b8)
	ld	(hl),#0x88
	ld	hl,#(_alphabet + 0x01b9)
	ld	(hl),#0x88
	ld	hl,#(_alphabet + 0x01ba)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x01bb)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x01bc)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01bd)
	ld	(hl),#0x82
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
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x01c3)
	ld	(hl),#0x84
	ld	hl,#(_alphabet + 0x01c4)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x01c5)
	ld	(hl),#0x80
	ld	hl,#(_alphabet + 0x01c6)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x01c7)
	ld	(hl),#0x7C
	ld	hl,#(_alphabet + 0x01c8)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x01c9)
	ld	(hl),#0x02
	ld	hl,#(_alphabet + 0x01ca)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01cb)
	ld	(hl),#0x82
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
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x01d1)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x01d2)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01d3)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01d4)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01d5)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01d6)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01d7)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01d8)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01d9)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01da)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01db)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01dc)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x01dd)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 478
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 479
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x01e0)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e1)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e2)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e3)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e4)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e5)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e6)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e7)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e8)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01e9)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01ea)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01eb)
	ld	(hl),#0x82
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
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01f1)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01f2)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01f3)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x01f4)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x01f5)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x01f6)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x01f7)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x01f8)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x01f9)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x01fa)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x01fb)
	ld	(hl),#0x28
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
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0201)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0202)
	ld	(hl),#0x92
	ld	hl,#(_alphabet + 0x0203)
	ld	(hl),#0x92
	ld	hl,#(_alphabet + 0x0204)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0205)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0206)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0207)
	ld	(hl),#0xAA
	ld	hl,#(_alphabet + 0x0208)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x0209)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x020a)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x020b)
	ld	(hl),#0xC6
	ld	hl,#(_alphabet + 0x020c)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x020d)
	ld	(hl),#0x82
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
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x0213)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x0214)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x0215)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x0216)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0217)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0218)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x0219)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x021a)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x021b)
	ld	(hl),#0x44
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
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0221)
	ld	(hl),#0x82
	ld	hl,#(_alphabet + 0x0222)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x0223)
	ld	(hl),#0x44
	ld	hl,#(_alphabet + 0x0224)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x0225)
	ld	(hl),#0x28
	ld	hl,#(_alphabet + 0x0226)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0227)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0228)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0229)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x022a)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x022b)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x022c)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x022d)
	ld	(hl),#0x10
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
	ld	(hl),#0x04
	ld	hl,#(_alphabet + 0x0233)
	ld	(hl),#0x04
	ld	hl,#(_alphabet + 0x0234)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0235)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0236)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0237)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0238)
	ld	(hl),#0x20
	ld	hl,#(_alphabet + 0x0239)
	ld	(hl),#0x20
	ld	hl,#(_alphabet + 0x023a)
	ld	(hl),#0x40
	ld	hl,#(_alphabet + 0x023b)
	ld	(hl),#0x40
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
	ld	bc,#_alphabet + 586
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 587
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 588
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 589
	xor	a, a
	ld	(bc),a
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
	ld	hl,#(_alphabet + 0x0254)
	ld	(hl),#0x60
	ld	hl,#(_alphabet + 0x0255)
	ld	(hl),#0x60
	ld	hl,#(_alphabet + 0x0256)
	ld	(hl),#0x92
	ld	hl,#(_alphabet + 0x0257)
	ld	(hl),#0x92
	ld	hl,#(_alphabet + 0x0258)
	ld	(hl),#0x0C
	ld	hl,#(_alphabet + 0x0259)
	ld	(hl),#0x0C
	ld	bc,#_alphabet + 602
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 603
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 604
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 605
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 606
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 607
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 608
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 609
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 610
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 611
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 612
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 613
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 614
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 615
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 616
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 617
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 618
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 619
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x026c)
	ld	(hl),#0xFE
	ld	hl,#(_alphabet + 0x026d)
	ld	(hl),#0xFE
	ld	bc,#_alphabet + 622
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 623
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0270)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0271)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0272)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0273)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0274)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0275)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0276)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0277)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0278)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0279)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 634
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 635
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x027c)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x027d)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 638
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 639
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0280)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0281)
	ld	(hl),#0x3C
	ld	hl,#(_alphabet + 0x0282)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x0283)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x0284)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x0285)
	ld	(hl),#0x42
	ld	hl,#(_alphabet + 0x0286)
	ld	(hl),#0x1C
	ld	hl,#(_alphabet + 0x0287)
	ld	(hl),#0x1C
	ld	hl,#(_alphabet + 0x0288)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0289)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 650
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 651
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x028c)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x028d)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 654
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 655
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x0290)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0291)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0292)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0293)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x0294)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0295)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x0296)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x0297)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 664
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 665
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 666
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 667
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 668
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 669
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 670
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 671
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 672
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 673
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 674
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 675
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 676
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 677
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 678
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 679
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 680
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 681
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02aa)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02ab)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02ac)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02ad)
	ld	(hl),#0x18
	ld	bc,#_alphabet + 686
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 687
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 688
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 689
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 690
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 691
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 692
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 693
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02b6)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02b7)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02b8)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02b9)
	ld	(hl),#0x18
	ld	hl,#(_alphabet + 0x02ba)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x02bb)
	ld	(hl),#0x08
	ld	hl,#(_alphabet + 0x02bc)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x02bd)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 702
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 703
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 704
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 705
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 706
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 707
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 708
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 709
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02c6)
	ld	(hl),#0x54
	ld	hl,#(_alphabet + 0x02c7)
	ld	(hl),#0x54
	ld	bc,#_alphabet + 712
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 713
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 714
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 715
	xor	a, a
	ld	(bc),a
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
	ld	bc,#_alphabet + 722
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 723
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 724
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 725
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02d6)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x02d7)
	ld	(hl),#0x10
	ld	bc,#_alphabet + 728
	xor	a, a
	ld	(bc),a
	ld	bc,#_alphabet + 729
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alphabet + 0x02da)
	ld	(hl),#0x10
	ld	hl,#(_alphabet + 0x02db)
	ld	(hl),#0x10
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
;main.c:305: unsigned char arrow_tile[] =
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
	ld	bc,#_arrow_tile + 5
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 6
	xor	a, a
	ld	(bc),a
	ld	hl,#(_arrow_tile + 0x0007)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0008)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0009)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x000a)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x000b)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x000c)
	ld	(hl),#0x3C
	ld	hl,#(_arrow_tile + 0x000d)
	ld	(hl),#0x3C
	ld	hl,#(_arrow_tile + 0x000e)
	ld	(hl),#0x18
	ld	hl,#(_arrow_tile + 0x000f)
	ld	(hl),#0x18
	ld	bc,#_arrow_tile + 16
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 17
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 18
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 19
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 20
	xor	a, a
	ld	(bc),a
	ld	hl,#(_arrow_tile + 0x0015)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0016)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0017)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0018)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x0019)
	ld	(hl),#0x7E
	ld	hl,#(_arrow_tile + 0x001a)
	ld	(hl),#0x3C
	ld	hl,#(_arrow_tile + 0x001b)
	ld	(hl),#0x3C
	ld	hl,#(_arrow_tile + 0x001c)
	ld	(hl),#0x18
	ld	hl,#(_arrow_tile + 0x001d)
	ld	(hl),#0x18
	ld	bc,#_arrow_tile + 30
	xor	a, a
	ld	(bc),a
	ld	bc,#_arrow_tile + 31
	xor	a, a
	ld	(bc),a
;main.c:315: unsigned char text_map[] =
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
;main.c:334: UINT8 input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:339: UINT8 divide_UINT8(UINT8 a, UINT8 b)
;	---------------------------------
; Function divide_UINT8
; ---------------------------------
_divide_UINT8::
;main.c:343: while (a >= b) {
	ld	b,#0x00
00101$:
	ldhl	sp,#2
	ld	a,(hl+)
	sub	a, (hl)
	jr	C,00103$
;main.c:344: a -= b;
	dec	hl
	ld	a,(hl+)
	sub	a, (hl)
	dec	hl
	ld	(hl),a
;main.c:345: result++;
	inc	b
	jr	00101$
00103$:
;main.c:347: return result;
	ld	e,b
	ret
_girl_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x70	; 112	'p'
	.db #0x7F	; 127
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xBF	; 191
	.db #0xD0	; 208
	.db #0x3F	; 63
	.db #0x89	; 137
	.db #0x7F	; 127
	.db #0x34	; 52	'4'
	.db #0xEF	; 239
	.db #0x7B	; 123
	.db #0xD6	; 214
	.db #0x5F	; 95
	.db #0xCF	; 207
	.db #0x47	; 71	'G'
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x38	; 56	'8'
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8F	; 143
	.db #0x8F	; 143
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x80	; 128
	.db #0x07	; 7
	.db #0x40	; 64
	.db #0x05	; 5
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0x47	; 71	'G'
	.db #0x7F	; 127
	.db #0x42	; 66	'B'
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0xAA	; 170
	.db #0xB7	; 183
	.db #0xAA	; 170
	.db #0xB5	; 181
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x3E	; 62
	.db #0x3E	; 62
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x1C	; 28
	.db #0xFC	; 252
	.db #0x26	; 38
	.db #0xDE	; 222
	.db #0x1B	; 27
	.db #0xE7	; 231
	.db #0x09	; 9
	.db #0xF7	; 247
	.db #0x05	; 5
	.db #0xFB	; 251
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFE	; 254
	.db #0xB5	; 181
	.db #0x6E	; 110	'n'
	.db #0xFD	; 253
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0x07	; 7
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x4C	; 76	'L'
	.db #0x4C	; 76	'L'
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x1C	; 28
	.db #0x1C	; 28
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
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
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
	.db #0xE2	; 226
	.db #0xE2	; 226
	.db #0x01	; 1
	.db #0x41	; 65	'A'
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x05	; 5
	.db #0x40	; 64
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x3F	; 63
	.db #0x3E	; 62
	.db #0xFE	; 254
	.db #0xC4	; 196
	.db #0xFC	; 252
	.db #0x84	; 132
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xAB	; 171
	.db #0xDA	; 218
	.db #0xAB	; 171
	.db #0x5B	; 91
	.db #0xF8	; 248
	.db #0xF8	; 248
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0xF8	; 248
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_solution_seq:
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x08	; 8
;main.c:358: void set_text_map(char *text, UINT8 len)
;	---------------------------------
; Function set_text_map
; ---------------------------------
_set_text_map::
	add	sp, #-5
;main.c:367: memset(text_map, EMPTY_TILE_ADDR, text_map_width*text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x24
	push	hl
	push	de
	call	_memset
	add	sp, #6
;main.c:370: if (!text || len > 0x20U || len <= 0x0U) {
	ldhl	sp,#8
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00141$
	inc	hl
	inc	hl
	ld	b,(hl)
	ld	c,#0x00
	ld	a,#0x20
	cp	a, b
	ld	a,#0x00
	sbc	a, c
	jp	C,00141$
	ld	a,(hl)
	or	a, a
;main.c:371: return;
;main.c:377: for (i = 0; i < len; ++i) {
	jp	Z,00141$
	ldhl	sp,#0
	ld	(hl),#0x00
00139$:
	ldhl	sp,#0
	ld	a,(hl)
	ldhl	sp,#9
	sub	a, (hl)
	jp	NC,00137$
;main.c:379: if (text[i] >= 'A' && text[i] <= 'Z') {
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
	ld	b,a
;main.c:380: text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
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
;main.c:379: if (text[i] >= 'A' && text[i] <= 'Z') {
	ld	a,#0x41
	ld	e,a
	ld	a,b
	ld	d,a
	ld	a,b
	xor	a, #0x80
	sub	a, #0xC1
	jr	C,00106$
	ld	a,b
	ld	e,a
	ld	a,#0x5A
	ld	d,a
	ld	a,#0x5A
	sub	a, b
	bit	7, e
	jr	Z,00212$
	bit	7, d
	jr	NZ,00213$
	cp	a, a
	jr	00213$
00212$:
	bit	7, d
	jr	Z,00213$
	scf
00213$:
	jr	C,00106$
;main.c:380: text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
	ld	a,b
	add	a, #0xC9
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00106$:
;main.c:384: if (text[i] >= '0' && text[i] <= '9') {
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
	jr	Z,00214$
	bit	7, d
	jr	NZ,00215$
	cp	a, a
	jr	00215$
00214$:
	bit	7, d
	jr	Z,00215$
	scf
00215$:
	jr	C,00109$
;main.c:385: text_map[i] = text[i] - '0';
	ld	a,b
	add	a,#0xD0
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00109$:
;main.c:389: if (text[i] == '~') {
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	sub	a, #0x7E
	jr	NZ,00135$
;main.c:390: text_map[i] = 0x25U;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x25
	jp	00140$
00135$:
;main.c:391: } else if (text[i] == '_') {
	ld	a,b
	sub	a, #0x5F
	jr	NZ,00132$
;main.c:392: text_map[i] = 0x26U;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x26
	jp	00140$
00132$:
;main.c:393: } else if (text[i] == '!') {
	ld	a,b
	sub	a, #0x21
	jr	NZ,00129$
;main.c:394: text_map[i] = 0x27U;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x27
	jp	00140$
00129$:
;main.c:395: } else if (text[i] == '?') {
	ld	a,b
	sub	a, #0x3F
	jr	NZ,00126$
;main.c:396: text_map[i] = 0x28U;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x28
	jp	00140$
00126$:
;main.c:397: } else if (text[i] == '\'') {
	ld	a,b
	sub	a, #0x27
	jr	NZ,00123$
;main.c:398: text_map[i] = 0x29U;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x29
	jp	00140$
00123$:
;main.c:399: } else if (text[i] == '.') {
	ld	a,b
	sub	a, #0x2E
	jr	NZ,00120$
;main.c:400: text_map[i] = 0x2AU;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2A
	jr	00140$
00120$:
;main.c:401: } else if (text[i] == ',') {
	ld	a,b
	sub	a, #0x2C
	jr	NZ,00117$
;main.c:402: text_map[i] = 0x2BU;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2B
	jr	00140$
00117$:
;main.c:403: } else if (text[i] == '…') {
	ld	a,b
	sub	a, #0xE2
	jr	NZ,00114$
;main.c:404: text_map[i] = 0x2CU;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2C
	jr	00140$
00114$:
;main.c:405: } else if (text[i] == ':') {
	ld	a,b
	sub	a, #0x3A
	jr	NZ,00140$
;main.c:406: text_map[i] = 0x2DU;
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2D
00140$:
;main.c:377: for (i = 0; i < len; ++i) {
	ldhl	sp,#0
	inc	(hl)
	jp	00139$
00137$:
;main.c:411: text_map[len] = arrow_address_1;
	ld	de,#_text_map
	ldhl	sp,#9
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x2E
	ld	(bc),a
00141$:
	add	sp, #5
	ret
;main.c:416: void clear_window()
;	---------------------------------
; Function clear_window
; ---------------------------------
_clear_window::
;main.c:419: memset(text_map, EMPTY_TILE_ADDR, text_map_width * text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x24
	push	hl
	push	de
	call	_memset
	add	sp, #6
;main.c:420: set_win_tiles(0x2U, 0x2U, text_map_width, text_map_height, text_map);
	ld	de,#_text_map
	push	de
	ld	hl,#0x0210
	push	hl
	ld	l, #0x02
	push	hl
	call	_set_win_tiles
	add	sp, #6
	ret
;main.c:423: void show_text(char *text)
;	---------------------------------
; Function show_text
; ---------------------------------
_show_text::
	add	sp, #-3
;main.c:426: UINT8 cursor_state = 0;
	ldhl	sp,#1
	ld	(hl),#0x00
;main.c:427: UINT8 text_len = strlen(text);
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strlen
	add	sp, #2
	ld	b,e
;main.c:428: UINT8 cursor_index = text_len;
	ld	c,b
;main.c:430: clear_window();
	push	bc
	call	_clear_window
	pop	bc
;main.c:431: set_text_map(text, text_len);
	push	bc
	push	bc
	inc	sp
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_set_text_map
	add	sp, #3
	pop	bc
;main.c:434: text_len++;
	inc	b
;main.c:435: scroll_text(text_len);
	push	bc
	push	bc
	inc	sp
	call	_scroll_text
	inc	sp
	pop	bc
;main.c:439: x = 2 + (cursor_index % 16);
	ld	a,c
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#0
	ld	(hl),a
;main.c:441: y = 2 + divide_UINT8(cursor_index, 16);
	push	bc
	ld	a,#0x10
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_divide_UINT8
	add	sp, #2
	ld	a,e
	pop	bc
	add	a, #0x02
	ldhl	sp,#2
	ld	(hl),a
;main.c:443: while (!joypad()) {
	ld	a,#<(_text_map)
	add	a, c
	ld	c,a
	ld	a,#>(_text_map)
	adc	a, #0x00
	ld	b,a
00104$:
	push	bc
	call	_joypad
	ld	a,e
	pop	bc
	or	a, a
	jp	NZ,00107$
;main.c:444: if (cursor_state == 0) {
	ldhl	sp,#1
	ld	a,(hl)
	or	a, a
	jr	NZ,00102$
;main.c:445: text_map[cursor_index] = arrow_address_2;
	ld	a,#0x2F
	ld	(bc),a
	jr	00103$
00102$:
;main.c:447: text_map[cursor_index] = arrow_address_1;
	ld	a,#0x2E
	ld	(bc),a
00103$:
;main.c:450: set_win_tiles(x, y, 1, 1, &text_map[cursor_index]);
	ld	e, c
	ld	d, b
	push	bc
	push	de
	ld	hl,#0x0101
	push	hl
	ldhl	sp,#8
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
	pop	bc
;main.c:451: cursor_state = !cursor_state;
	ldhl	sp,#1
	ld	a,(hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(hl),a
;main.c:452: delay(50);
	push	bc
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:453: sleep(4);
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
	pop	bc
	jp	00104$
00107$:
	add	sp, #3
	ret
;main.c:462: void scroll_text(UINT8 len)
;	---------------------------------
; Function scroll_text
; ---------------------------------
_scroll_text::
	add	sp, #-3
;main.c:465: for (counter = 0; counter < len; ++counter) {
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#5
	sub	a, (hl)
	jp	NC,00105$
;main.c:466: x = 2 + (counter % 16);
	ld	a,b
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#0
	ld	(hl),a
;main.c:467: y = 2 + divide_UINT8(counter, 16);
	push	bc
	ld	a,#0x10
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_divide_UINT8
	add	sp, #2
	pop	bc
	ld	c,e
	inc	c
	inc	c
;main.c:471: set_win_tiles(x, y, 1, 1, &text_map[counter]);
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
;main.c:472: sleep(4);
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
	pop	bc
;main.c:465: for (counter = 0; counter < len; ++counter) {
	inc	b
	jp	00103$
00105$:
	add	sp, #3
	ret
;main.c:476: void sleep(UINT8 cycles)
;	---------------------------------
; Function sleep
; ---------------------------------
_sleep::
;main.c:479: for(counter = 0; counter < cycles; ++counter){
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#2
	sub	a, (hl)
	ret	NC
;main.c:480: wait_vbl_done();
	push	bc
	call	_wait_vbl_done
	pop	bc
;main.c:479: for(counter = 0; counter < cycles; ++counter){
	inc	b
	jr	00103$
	ret
;main.c:484: void process_button_press()
;	---------------------------------
; Function process_button_press
; ---------------------------------
_process_button_press::
;main.c:486: UINT8 input = joypad();
	call	_joypad
	ld	a,e
;main.c:487: if (input) {
	or	a, a
	ret	Z
;main.c:488: input_seq[input_seq_ctr] = joypad();
	ld	a,#<(_input_seq)
	ld	hl,#_input_seq_ctr
	add	a, (hl)
	ld	c,a
	ld	a,#>(_input_seq)
	adc	a, #0x00
	ld	b,a
	push	bc
	call	_joypad
	ld	a,e
	pop	bc
	ld	(bc),a
;main.c:490: input_seq_ctr++;
	ld	hl,#_input_seq_ctr
	inc	(hl)
;main.c:494: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
	ret
;main.c:498: void check_sequence()
;	---------------------------------
; Function check_sequence
; ---------------------------------
_check_sequence::
	add	sp, #-3
;main.c:503: for (i = 0; i < SEQ_LEN; ++i) {
	ldhl	sp,#1
	ld	(hl),#0x00
	dec	hl
	ld	(hl),#0x00
00107$:
;main.c:504: if (input_seq[i] & solution_seq[i]) {
	ld	de,#_input_seq
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ldhl	sp,#2
	ld	(hl),a
	ld	de,#_solution_seq
	dec	hl
	dec	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ldhl	sp,#2
	and	a,(hl)
	jr	Z,00108$
;main.c:505: pass++;
	dec	hl
	inc	(hl)
00108$:
;main.c:503: for (i = 0; i < SEQ_LEN; ++i) {
	ldhl	sp,#0
	inc	(hl)
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x10
	ld	a,c
	sbc	a, #0x00
	jp	C,00107$
;main.c:509: if (pass == SEQ_LEN) {
	inc	hl
	ld	e,(hl)
	ld	d,#0x00
	ld	a,e
	sub	a, #0x10
	jr	NZ,00105$
	ld	a,d
	or	a, a
	jr	NZ,00105$
;main.c:515: pass_level_1();
	call	_pass_level_1
	jr	00109$
00105$:
;main.c:521: fail_level_1();
	call	_fail_level_1
00109$:
	add	sp, #3
	ret
;main.c:525: void pass_level_1()
;	---------------------------------
; Function pass_level_1
; ---------------------------------
_pass_level_1::
;main.c:527: SHOW_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	5, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:528: show_text("THAT WORKED.");
	ld	de,#___str_0
	push	de
	call	_show_text
	add	sp, #2
;main.c:529: show_text("I\'M IN.");
	ld	de,#___str_1
	push	de
	call	_show_text
	add	sp, #2
;main.c:530: show_text("1ST FLAG IS     SUP3R~S3CUR3~1");
	ld	de,#___str_2
	push	de
	call	_show_text
	add	sp, #2
;main.c:531: HIDE_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	b,a
	ld	d,#0x00
	res	5, b
	ld	d,#0x00
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:534: while (1) {}
00102$:
	jr	00102$
	ret
___str_0:
	.ascii "THAT WORKED."
	.db 0x00
___str_1:
	.ascii "I'M IN."
	.db 0x00
___str_2:
	.ascii "1ST FLAG IS     SUP3R~S3CUR3~1"
	.db 0x00
;main.c:537: void fail_level_1()
;	---------------------------------
; Function fail_level_1
; ---------------------------------
_fail_level_1::
;main.c:539: SHOW_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	5, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:540: show_text("NO GOOD.");
	ld	de,#___str_3
	push	de
	call	_show_text
	add	sp, #2
;main.c:541: show_text("LET ME TRY SOME THING ELSE.");
	ld	de,#___str_4
	push	de
	call	_show_text
	add	sp, #2
;main.c:542: HIDE_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	b,a
	ld	d,#0x00
	res	5, b
	ld	d,#0x00
	ld	hl,#0xFF40
	ld	(hl),b
	ret
___str_3:
	.ascii "NO GOOD."
	.db 0x00
___str_4:
	.ascii "LET ME TRY SOME THING ELSE."
	.db 0x00
;main.c:545: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:547: disable_interrupts();
	call	_disable_interrupts
;main.c:548: DISPLAY_OFF;
	call	_display_off
;main.c:558: set_win_data(0x80, window_border_len, window_border);
	ld	de,#_window_border
	push	de
	ld	hl,#0x0980
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:559: set_win_tiles(0, 0, text_box_width, text_box_height, text_box);
	ld	de,#_text_box
	push	de
	ld	hl,#0x0614
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_win_tiles
	add	sp, #6
;main.c:560: move_win(7,96);
	ld	hl,#0x6007
	push	hl
	call	_move_win
	add	sp, #2
;main.c:563: set_win_data(0U, alphabet_len, alphabet);
	ld	de,#_alphabet
	push	de
	ld	hl,#0x2E00
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:564: set_win_tiles(2U, 2U, text_map_width, text_map_height, text_map);
	ld	de,#_text_map
	push	de
	ld	hl,#0x0210
	push	hl
	ld	l, #0x02
	push	hl
	call	_set_win_tiles
	add	sp, #6
;main.c:567: set_win_data(arrow_address_1, arrow_tile_len, arrow_tile);
	ld	de,#_arrow_tile
	push	de
	ld	hl,#0x022E
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:569: SHOW_BKG;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	0, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:571: DISPLAY_ON;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	7, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:572: enable_interrupts();
	call	_enable_interrupts
;main.c:580: while(1) {
00104$:
;main.c:582: sleep(4);
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
;main.c:583: process_button_press();
	call	_process_button_press
;main.c:585: if (input_seq_ctr >= SEQ_LEN) {
	ld	hl,#_input_seq_ctr
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x10
	ld	a,c
	sbc	a, #0x00
	jr	C,00104$
;main.c:588: check_sequence();
	call	_check_sequence
;main.c:589: input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
	jr	00104$
	ret
	.area _CODE
	.area _CABS (ABS)
