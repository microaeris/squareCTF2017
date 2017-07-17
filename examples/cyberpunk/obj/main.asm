;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Mon Jul 17 01:05:46 2017
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _move_sprite
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
	.globl _joypad
	.globl _delay
	.globl _strlen
	.globl _memset
	.globl _strcat
	.globl _strcpy
	.globl _memcpy
	.globl _key_b
	.globl _key_a
	.globl _flag_b
	.globl _flag_a
	.globl _input_seq_ctr
	.globl _input_seq
	.globl _text_map
	.globl _arrow_tile
	.globl _alphabet
	.globl _text_box
	.globl _window_border
	.globl _alleyway_map
	.globl _alleyway
	.globl _solution_seq
	.globl _agent
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
	.globl _decrypt
	.globl _remove_flag_padding
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_alleyway::
	.ds 176
_alleyway_map::
	.ds 360
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
_flag_a::
	.ds 8
_flag_b::
	.ds 8
_key_a::
	.ds 16
_key_b::
	.ds 16
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
;main.c:25: unsigned char alleyway[] =
	ld	hl,#_alleyway
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 1
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0002)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 3
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0004)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 5
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0006)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 7
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0008)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 9
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x000a)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 11
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x000c)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 13
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x000e)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 15
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 16
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0011)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 18
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0013)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 20
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0015)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 22
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0017)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 24
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0019)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 26
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x001b)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 28
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x001d)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 30
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x001f)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0020)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0021)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0022)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0023)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0024)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0025)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0026)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0027)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0028)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0029)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x002a)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x002b)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x002c)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x002d)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x002e)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x002f)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 48
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 49
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 50
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 51
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 52
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 53
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 54
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 55
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 56
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 57
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 58
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 59
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 60
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 61
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 62
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 63
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0040)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0041)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0042)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0043)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0044)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0045)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0046)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0047)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0048)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0049)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x004a)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x004b)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x004c)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x004d)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x004e)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x004f)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 80
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0051)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 82
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0053)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 84
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0055)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 86
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0057)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 88
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0059)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 90
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x005b)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 92
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x005d)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x005e)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x005f)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0060)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0061)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0062)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0063)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0064)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0065)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0066)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0067)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x0068)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x0069)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x006a)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x006b)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x006c)
	ld	(hl),#0x08
	ld	hl,#(_alleyway + 0x006d)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x006e)
	ld	(hl),#0xFF
	ld	hl,#(_alleyway + 0x006f)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 112
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0071)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 114
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0073)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 116
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0075)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 118
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0077)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 120
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0079)
	ld	(hl),#0xFF
	ld	bc,#_alleyway + 122
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x007b)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 124
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x007d)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 126
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x007f)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 128
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0081)
	ld	(hl),#0x6D
	ld	bc,#_alleyway + 130
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0083)
	ld	(hl),#0x80
	ld	bc,#_alleyway + 132
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0085)
	ld	(hl),#0x08
	ld	bc,#_alleyway + 134
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0087)
	ld	(hl),#0x80
	ld	bc,#_alleyway + 136
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0089)
	ld	(hl),#0xD5
	ld	bc,#_alleyway + 138
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x008b)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 140
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 141
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 142
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x008f)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 144
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0091)
	ld	(hl),#0xBD
	ld	bc,#_alleyway + 146
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0093)
	ld	(hl),#0x08
	ld	bc,#_alleyway + 148
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0095)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 150
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0097)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 152
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x0099)
	ld	(hl),#0xF5
	ld	bc,#_alleyway + 154
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x009b)
	ld	(hl),#0x08
	ld	bc,#_alleyway + 156
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x009d)
	ld	(hl),#0x80
	ld	bc,#_alleyway + 158
	xor	a, a
	ld	(bc),a
	ld	hl,#(_alleyway + 0x009f)
	ld	(hl),#0x88
	ld	bc,#_alleyway + 160
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 161
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 162
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 163
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 164
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 165
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 166
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 167
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 168
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 169
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 170
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 171
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 172
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 173
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 174
	xor	a, a
	ld	(bc),a
	ld	bc,#_alleyway + 175
	xor	a, a
	ld	(bc),a
;main.c:53: unsigned char alleyway_map[] =
	ld	hl,#_alleyway_map
	ld	(hl),#0x38
	ld	hl,#(_alleyway_map + 0x0001)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0002)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0003)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0004)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0005)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0006)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0007)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0008)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0009)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x000a)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x000b)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x000c)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x000d)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x000e)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x000f)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0010)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0011)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0012)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0013)
	ld	(hl),#0x38
	ld	hl,#(_alleyway_map + 0x0014)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0015)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0016)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0017)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0018)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0019)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x001a)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x001b)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x001c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x001d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x001e)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x001f)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0020)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0021)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x0022)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0023)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0024)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0025)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0026)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0027)
	ld	(hl),#0x38
	ld	hl,#(_alleyway_map + 0x0028)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0029)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x002a)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x002b)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x002c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x002d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x002e)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x002f)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0030)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0031)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0032)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0033)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0034)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0035)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x0036)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0037)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0038)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0039)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x003a)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x003b)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x003c)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x003d)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x003e)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x003f)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0040)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0041)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0042)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0043)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0044)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0045)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0046)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0047)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0048)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0049)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x004a)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x004b)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x004c)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x004d)
	ld	(hl),#0x38
	ld	hl,#(_alleyway_map + 0x004e)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x004f)
	ld	(hl),#0x38
	ld	hl,#(_alleyway_map + 0x0050)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0051)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0052)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0053)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0054)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0055)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0056)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0057)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0058)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0059)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x005a)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x005b)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x005c)
	ld	(hl),#0x38
	ld	hl,#(_alleyway_map + 0x005d)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x005e)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x005f)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0060)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0061)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0062)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0063)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0064)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0065)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0066)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0067)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0068)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0069)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x006a)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x006b)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x006c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x006d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x006e)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x006f)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0070)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0071)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x0072)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0073)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0074)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0075)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0076)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0077)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x0078)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0079)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x007a)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x007b)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x007c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x007d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x007e)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x007f)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0080)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0081)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0082)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0083)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0084)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0085)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x0086)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0087)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0088)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0089)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x008a)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x008b)
	ld	(hl),#0x38
	ld	hl,#(_alleyway_map + 0x008c)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x008d)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x008e)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x008f)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x0090)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0091)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0092)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x0093)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x0094)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0095)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0096)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0097)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0098)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x0099)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x009a)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x009b)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x009c)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x009d)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x009e)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x009f)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x00a0)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00a1)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00a2)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00a3)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00a4)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00a5)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00a6)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x00a7)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x00a8)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00a9)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00aa)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00ab)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00ac)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00ad)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x00ae)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00af)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00b0)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00b1)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00b2)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00b3)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x00b4)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x00b5)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x00b6)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00b7)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00b8)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00b9)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00ba)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x00bb)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x00bc)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00bd)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00be)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00bf)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00c0)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00c1)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x00c2)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00c3)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00c4)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00c5)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00c6)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00c7)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x00c8)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00c9)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00ca)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00cb)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00cc)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00cd)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00ce)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x00cf)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x00d0)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00d1)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00d2)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00d3)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00d4)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00d5)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x00d6)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00d7)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00d8)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00d9)
	ld	(hl),#0x39
	ld	hl,#(_alleyway_map + 0x00da)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00db)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x00dc)
	ld	(hl),#0x37
	ld	hl,#(_alleyway_map + 0x00dd)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00de)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00df)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00e0)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00e1)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00e2)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x00e3)
	ld	(hl),#0x33
	ld	hl,#(_alleyway_map + 0x00e4)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00e5)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00e6)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00e7)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00e8)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00e9)
	ld	(hl),#0x34
	ld	hl,#(_alleyway_map + 0x00ea)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00eb)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00ec)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00ed)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00ee)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00ef)
	ld	(hl),#0x31
	ld	hl,#(_alleyway_map + 0x00f0)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f1)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f2)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f3)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f4)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f5)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f6)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f7)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f8)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00f9)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00fa)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00fb)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00fc)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00fd)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00fe)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x00ff)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0100)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0101)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0102)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0103)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0104)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0105)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0106)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0107)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0108)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0109)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x010a)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x010b)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x010c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x010d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x010e)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x010f)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0110)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0111)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0112)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0113)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0114)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0115)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0116)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0117)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0118)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0119)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x011a)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x011b)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x011c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x011d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x011e)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x011f)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0120)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0121)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0122)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0123)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0124)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0125)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0126)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0127)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0128)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0129)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x012a)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x012b)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x012c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x012d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x012e)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x012f)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0130)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0131)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0132)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0133)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0134)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0135)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0136)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0137)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0138)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0139)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x013a)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x013b)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x013c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x013d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x013e)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x013f)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0140)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0141)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0142)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0143)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0144)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0145)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0146)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0147)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0148)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0149)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x014a)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x014b)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x014c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x014d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x014e)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x014f)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0150)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0151)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0152)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0153)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0154)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0155)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0156)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0157)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0158)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0159)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x015a)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x015b)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x015c)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x015d)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x015e)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x015f)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0160)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0161)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0162)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0163)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0164)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0165)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0166)
	ld	(hl),#0x32
	ld	hl,#(_alleyway_map + 0x0167)
	ld	(hl),#0x32
;main.c:117: unsigned char window_border[] =
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
;main.c:143: unsigned char text_box[] =
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
;main.c:162: unsigned char alphabet[] =
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
;main.c:266: unsigned char arrow_tile[] =
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
;main.c:276: unsigned char text_map[] =
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
;main.c:295: UINT8 input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
;main.c:299: UINT8 flag_a[] =
	ld	hl,#_flag_a
	ld	(hl),#0x12
	ld	hl,#(_flag_a + 0x0001)
	ld	(hl),#0x64
	ld	hl,#(_flag_a + 0x0002)
	ld	(hl),#0x88
	ld	hl,#(_flag_a + 0x0003)
	ld	(hl),#0xF7
	ld	hl,#(_flag_a + 0x0004)
	ld	(hl),#0x77
	ld	hl,#(_flag_a + 0x0005)
	ld	(hl),#0x95
	ld	hl,#(_flag_a + 0x0006)
	ld	(hl),#0x8A
	ld	hl,#(_flag_a + 0x0007)
	ld	(hl),#0x5A
;main.c:303: UINT8 flag_b[] =
	ld	hl,#_flag_b
	ld	(hl),#0xE1
	ld	hl,#(_flag_b + 0x0001)
	ld	(hl),#0xD5
	ld	hl,#(_flag_b + 0x0002)
	ld	(hl),#0xFA
	ld	hl,#(_flag_b + 0x0003)
	ld	(hl),#0x93
	ld	hl,#(_flag_b + 0x0004)
	ld	(hl),#0x3E
	ld	hl,#(_flag_b + 0x0005)
	ld	(hl),#0x13
	ld	hl,#(_flag_b + 0x0006)
	ld	(hl),#0x30
	ld	hl,#(_flag_b + 0x0007)
	ld	(hl),#0x5F
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:321: UINT8 divide_UINT8(UINT8 a, UINT8 b)
;	---------------------------------
; Function divide_UINT8
; ---------------------------------
_divide_UINT8::
;main.c:325: while (a >= b) {
	ld	b,#0x00
00101$:
	ldhl	sp,#2
	ld	a,(hl+)
	sub	a, (hl)
	jr	C,00103$
;main.c:326: a -= b;
	dec	hl
	ld	a,(hl+)
	sub	a, (hl)
	dec	hl
	ld	(hl),a
;main.c:327: result++;
	inc	b
	jr	00101$
00103$:
;main.c:329: return result;
	ld	e,b
	ret
_agent:
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x01	; 1
	.db #0x6E	; 110	'n'
	.db #0x01	; 1
	.db #0xEE	; 238
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x01	; 1
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x01	; 1
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0x3C	; 60
	.db #0xC0	; 192
	.db #0x3C	; 60
	.db #0xC8	; 200
	.db #0xBC	; 188
	.db #0x50	; 80	'P'
	.db #0xBC	; 188
	.db #0x50	; 80	'P'
	.db #0x6C	; 108	'l'
	.db #0x90	; 144
	.db #0x38	; 56	'8'
	.db #0xC0	; 192
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1D	; 29
	.db #0x02	; 2
	.db #0x1C	; 28
	.db #0x03	; 3
	.db #0x1C	; 28
	.db #0x03	; 3
	.db #0x1C	; 28
	.db #0x03	; 3
	.db #0x1E	; 30
	.db #0x01	; 1
	.db #0x1E	; 30
	.db #0x01	; 1
	.db #0x1E	; 30
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x3E	; 62
	.db #0x00	; 0
	.db #0x3E	; 62
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0x02	; 2
	.db #0xFC	; 252
	.db #0x02	; 2
	.db #0xFC	; 252
	.db #0x02	; 2
	.db #0xFC	; 252
	.db #0x02	; 2
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x3E	; 62
	.db #0x00	; 0
	.db #0x3F	; 63
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
;main.c:340: void set_text_map(char *text, UINT8 len)
;	---------------------------------
; Function set_text_map
; ---------------------------------
_set_text_map::
	add	sp, #-5
;main.c:349: memset(text_map, EMPTY_TILE_ADDR, text_map_width*text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x24
	push	hl
	push	de
	call	_memset
	add	sp, #6
;main.c:352: if (!text || len > 0x20U || len <= 0x0U) {
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
;main.c:353: return;
;main.c:359: for (i = 0; i < len; ++i) {
	jp	Z,00141$
	ldhl	sp,#0
	ld	(hl),#0x00
00139$:
	ldhl	sp,#0
	ld	a,(hl)
	ldhl	sp,#9
	sub	a, (hl)
	jp	NC,00137$
;main.c:361: if (text[i] >= 'A' && text[i] <= 'Z') {
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
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;main.c:362: text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
	ld	de,#_text_map
	dec	hl
	dec	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),d
;main.c:361: if (text[i] >= 'A' && text[i] <= 'Z') {
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
;main.c:362: text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
	ld	a,b
	add	a, #0xC9
	ld	b,a
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00106$:
;main.c:366: if (text[i] >= '0' && text[i] <= '9') {
	ldhl	sp,#2
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
;main.c:367: text_map[i] = text[i] - '0';
	ld	a,b
	add	a,#0xD0
	ld	b,a
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00109$:
;main.c:371: if (text[i] == '~') {
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	sub	a, #0x7E
	jr	NZ,00135$
;main.c:372: text_map[i] = 0x25U;
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x25
	jp	00140$
00135$:
;main.c:373: } else if (text[i] == '_') {
	ld	a,b
	sub	a, #0x5F
	jr	NZ,00132$
;main.c:374: text_map[i] = 0x26U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x26
	jp	00140$
00132$:
;main.c:375: } else if (text[i] == '!') {
	ld	a,b
	sub	a, #0x21
	jr	NZ,00129$
;main.c:376: text_map[i] = 0x27U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x27
	jp	00140$
00129$:
;main.c:377: } else if (text[i] == '?') {
	ld	a,b
	sub	a, #0x3F
	jr	NZ,00126$
;main.c:378: text_map[i] = 0x28U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x28
	jp	00140$
00126$:
;main.c:379: } else if (text[i] == '\'') {
	ld	a,b
	sub	a, #0x27
	jr	NZ,00123$
;main.c:380: text_map[i] = 0x29U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x29
	jp	00140$
00123$:
;main.c:381: } else if (text[i] == '.') {
	ld	a,b
	sub	a, #0x2E
	jr	NZ,00120$
;main.c:382: text_map[i] = 0x2AU;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2A
	jr	00140$
00120$:
;main.c:383: } else if (text[i] == ',') {
	ld	a,b
	sub	a, #0x2C
	jr	NZ,00117$
;main.c:384: text_map[i] = 0x2BU;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2B
	jr	00140$
00117$:
;main.c:385: } else if (text[i] == '…') {
	ld	a,b
	sub	a, #0xE2
	jr	NZ,00114$
;main.c:386: text_map[i] = 0x2CU;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2C
	jr	00140$
00114$:
;main.c:387: } else if (text[i] == ':') {
	ld	a,b
	sub	a, #0x3A
	jr	NZ,00140$
;main.c:388: text_map[i] = 0x2DU;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2D
00140$:
;main.c:359: for (i = 0; i < len; ++i) {
	ldhl	sp,#0
	inc	(hl)
	jp	00139$
00137$:
;main.c:393: text_map[len] = arrow_address_1;
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
;main.c:398: void clear_window()
;	---------------------------------
; Function clear_window
; ---------------------------------
_clear_window::
;main.c:401: memset(text_map, EMPTY_TILE_ADDR, text_map_width * text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x24
	push	hl
	push	de
	call	_memset
	add	sp, #6
;main.c:402: set_win_tiles(0x2U, 0x2U, text_map_width, text_map_height, text_map);
	ld	de,#_text_map
	push	de
	ld	hl,#0x0210
	push	hl
	ld	l, #0x02
	push	hl
	call	_set_win_tiles
	add	sp, #6
	ret
;main.c:405: void show_text(char *text)
;	---------------------------------
; Function show_text
; ---------------------------------
_show_text::
	add	sp, #-3
;main.c:408: UINT8 cursor_state = 0;
	ldhl	sp,#0
	ld	(hl),#0x00
;main.c:409: UINT8 text_len = strlen(text);
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strlen
	add	sp, #2
	ld	b,e
;main.c:410: UINT8 cursor_index = text_len;
	ld	c,b
;main.c:412: clear_window();
	push	bc
	call	_clear_window
	pop	bc
;main.c:413: set_text_map(text, text_len);
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
;main.c:416: text_len++;
	inc	b
;main.c:417: scroll_text(text_len);
	push	bc
	push	bc
	inc	sp
	call	_scroll_text
	inc	sp
	pop	bc
;main.c:421: x = 2 + (cursor_index % 16);
	ld	a,c
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#1
	ld	(hl),a
;main.c:423: y = 2 + divide_UINT8(cursor_index, 16);
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
;main.c:425: while (!joypad()) {
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
;main.c:426: if (cursor_state == 0) {
	ldhl	sp,#0
	ld	a,(hl)
	or	a, a
	jr	NZ,00102$
;main.c:427: text_map[cursor_index] = arrow_address_2;
	ld	a,#0x2F
	ld	(bc),a
	jr	00103$
00102$:
;main.c:429: text_map[cursor_index] = arrow_address_1;
	ld	a,#0x2E
	ld	(bc),a
00103$:
;main.c:432: set_win_tiles(x, y, 1, 1, &text_map[cursor_index]);
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
	ld	a,(hl)
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
	pop	bc
;main.c:433: cursor_state = !cursor_state;
	ldhl	sp,#0
	ld	a,(hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(hl),a
;main.c:434: delay(50);
	push	bc
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:435: sleep(4);
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
;main.c:444: void scroll_text(UINT8 len)
;	---------------------------------
; Function scroll_text
; ---------------------------------
_scroll_text::
	add	sp, #-3
;main.c:447: for (counter = 0; counter < len; ++counter) {
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#5
	sub	a, (hl)
	jp	NC,00105$
;main.c:448: x = 2 + (counter % 16);
	ld	a,b
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#0
	ld	(hl),a
;main.c:449: y = 2 + divide_UINT8(counter, 16);
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
;main.c:453: set_win_tiles(x, y, 1, 1, &text_map[counter]);
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
;main.c:454: sleep(4);
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
	pop	bc
;main.c:447: for (counter = 0; counter < len; ++counter) {
	inc	b
	jp	00103$
00105$:
	add	sp, #3
	ret
;main.c:458: void sleep(UINT8 cycles)
;	---------------------------------
; Function sleep
; ---------------------------------
_sleep::
;main.c:461: for(counter = 0; counter < cycles; ++counter){
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#2
	sub	a, (hl)
	ret	NC
;main.c:462: wait_vbl_done();
	push	bc
	call	_wait_vbl_done
	pop	bc
;main.c:461: for(counter = 0; counter < cycles; ++counter){
	inc	b
	jr	00103$
	ret
;main.c:466: void process_button_press()
;	---------------------------------
; Function process_button_press
; ---------------------------------
_process_button_press::
;main.c:468: UINT8 input = joypad();
	call	_joypad
	ld	a,e
;main.c:469: if (input) {
	or	a, a
	ret	Z
;main.c:470: input_seq[input_seq_ctr] = joypad();
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
;main.c:472: input_seq_ctr++;
	ld	hl,#_input_seq_ctr
	inc	(hl)
;main.c:476: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
	ret
;main.c:480: void check_sequence()
;	---------------------------------
; Function check_sequence
; ---------------------------------
_check_sequence::
	add	sp, #-3
;main.c:485: for (i = 0; i < SEQ_LEN; ++i) {
	ldhl	sp,#1
	ld	(hl),#0x00
	dec	hl
	ld	(hl),#0x00
00107$:
;main.c:487: key_b[0] = 0x72ae38ba;
	ld	hl,#_key_b
	ld	(hl),#0xBA
	inc	hl
	ld	(hl),#0x38
	inc	hl
	ld	(hl),#0xAE
	inc	hl
	ld	(hl),#0x72
;main.c:488: if (input_seq[i] & solution_seq[i]) {
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
;main.c:489: pass++;
	dec	hl
	inc	(hl)
;main.c:491: key_b[1] = 0xa106f553;
	ld	hl,#(_key_b + 0x0004)
	ld	(hl),#0x53
	inc	hl
	ld	(hl),#0xF5
	inc	hl
	ld	(hl),#0x06
	inc	hl
	ld	(hl),#0xA1
00108$:
;main.c:485: for (i = 0; i < SEQ_LEN; ++i) {
	ldhl	sp,#0
	inc	(hl)
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x10
	ld	a,c
	sbc	a, #0x00
	jp	C,00107$
;main.c:495: if (pass == SEQ_LEN) {
	inc	hl
	ld	e,(hl)
	ld	d,#0x00
	ld	a,e
	sub	a, #0x10
	jr	NZ,00105$
	ld	a,d
	or	a, a
	jr	NZ,00105$
;main.c:498: key_b[2] = 0x1ea97c53;
	ld	hl,#(_key_b + 0x0008)
	ld	(hl),#0x53
	inc	hl
	ld	(hl),#0x7C
	inc	hl
	ld	(hl),#0xA9
	inc	hl
	ld	(hl),#0x1E
;main.c:505: pass_level_1();
	call	_pass_level_1
	jr	00109$
00105$:
;main.c:511: fail_level_1();
	call	_fail_level_1
00109$:
	add	sp, #3
	ret
;main.c:515: void pass_level_1()
;	---------------------------------
; Function pass_level_1
; ---------------------------------
_pass_level_1::
	add	sp, #-33
;main.c:520: key_b[3] = 0xcfa8e0b3;
	ld	hl,#(_key_b + 0x000c)
	ld	(hl),#0xB3
	inc	hl
	ld	(hl),#0xE0
	inc	hl
	ld	(hl),#0xA8
	inc	hl
	ld	(hl),#0xCF
;main.c:523: decrypt((UINT32 *)flag_a, key_a);
	ld	de,#_key_a+0
	ld	bc,#_flag_a
	push	de
	push	bc
	call	_decrypt
	add	sp, #4
;main.c:524: decrypt((UINT32 *)flag_b, key_b);
	ld	de,#_key_b
	ld	bc,#_flag_b
	push	de
	push	bc
	call	_decrypt
	add	sp, #4
;main.c:527: remove_flag_padding();
	call	_remove_flag_padding
;main.c:530: strcpy((char *)flag_string, "1ST FLAG IS     ");
	ldhl	sp,#0
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#___str_0
	push	hl
	push	de
	call	_strcpy
	add	sp, #4
	pop	bc
;main.c:531: memcpy(flag_string + 0x10U, flag_a, FLAG_LEN);
	ld	hl,#0x0010
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	ld	hl,#0x0008
	push	hl
	ld	hl,#_flag_a
	push	hl
	push	de
	call	_memcpy
	add	sp, #6
	pop	bc
;main.c:532: flag_string[0x18U] = '\0';
	ld	hl,#0x0018
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x00
;main.c:533: strcat((char *)flag_string, flag_b);
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#_flag_b
	push	hl
	push	de
	call	_strcat
	add	sp, #4
	pop	bc
;main.c:534: strcat((char *)flag_string, ".");
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#___str_1
	push	hl
	push	de
	call	_strcat
	add	sp, #4
	pop	bc
;main.c:536: SHOW_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	d,a
	ld	e,#0x00
	ld	a,d
	set	5, a
	ld	d,a
	ld	de,#0xFF40
	ld	(de),a
;main.c:537: show_text("THAT WORKED.");
	ld	de,#___str_2+0
	push	bc
	push	de
	call	_show_text
	add	sp, #2
	pop	bc
;main.c:538: show_text("I\'M IN.");
	ld	de,#___str_3+0
	push	bc
	push	de
	call	_show_text
	add	sp, #2
	pop	bc
;main.c:539: show_text((char *)flag_string);
	push	bc
	call	_show_text
	add	sp, #2
;main.c:540: HIDE_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	b,a
	ld	d,#0x00
	res	5, b
	ld	d,#0x00
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:543: while (1) {}
00102$:
	jr	00102$
	add	sp, #33
	ret
___str_0:
	.ascii "1ST FLAG IS     "
	.db 0x00
___str_1:
	.ascii "."
	.db 0x00
___str_2:
	.ascii "THAT WORKED."
	.db 0x00
___str_3:
	.ascii "I'M IN."
	.db 0x00
;main.c:546: void fail_level_1()
;	---------------------------------
; Function fail_level_1
; ---------------------------------
_fail_level_1::
;main.c:548: SHOW_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	5, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:549: show_text("NO GOOD.");
	ld	de,#___str_4
	push	de
	call	_show_text
	add	sp, #2
;main.c:550: show_text("LET ME TRY SOME THING ELSE.");
	ld	de,#___str_5
	push	de
	call	_show_text
	add	sp, #2
;main.c:551: HIDE_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	b,a
	ld	d,#0x00
	res	5, b
	ld	d,#0x00
	ld	hl,#0xFF40
	ld	(hl),b
	ret
___str_4:
	.ascii "NO GOOD."
	.db 0x00
___str_5:
	.ascii "LET ME TRY SOME THING ELSE."
	.db 0x00
;main.c:554: void decrypt(UINT32 *v, UINT32 *k)
;	---------------------------------
; Function decrypt
; ---------------------------------
_decrypt::
	add	sp, #-46
;main.c:556: UINT32 v0=v[0], v1=v[1], sum=0xC6EF3720, i;  /* set up */
	ldhl	sp,#48
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#44
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#4
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#45
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#42
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#0
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;main.c:558: UINT32 k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
	ldhl	sp,#51
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#20
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ld	hl,#0x0004
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#40
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#8
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ld	hl,#0x0008
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#40
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#16
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ld	hl,#0x000C
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#12
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;main.c:559: for (i=0; i<32; i++) {                         /* basic cycle start */
	ldhl	sp,#24
	ld	(hl),#0x20
	xor	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),#0x20
	inc	hl
	ld	(hl),#0x37
	inc	hl
	ld	(hl),#0xEF
	inc	hl
	ld	(hl),#0xC6
00104$:
;main.c:560: v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
	push	af
	ldhl	sp,#6
	ld	a,(hl)
	ldhl	sp,#38
	ld	(hl),a
	ldhl	sp,#7
	ld	a,(hl)
	ldhl	sp,#39
	ld	(hl),a
	ldhl	sp,#8
	ld	a,(hl)
	ldhl	sp,#40
	ld	(hl),a
	ldhl	sp,#9
	ld	a,(hl)
	ldhl	sp,#41
	ld	(hl),a
	pop	af
	ld	a,#0x04
00116$:
	ldhl	sp,#36
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ,00116$
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#16
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#41
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#20
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#28
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#35
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#32
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#35
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	a,(hl)
	ldhl	sp,#36
	xor	a, (hl)
	ldhl	sp,#32
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#37
	xor	a, (hl)
	ldhl	sp,#33
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#38
	xor	a, (hl)
	ldhl	sp,#34
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#39
	xor	a, (hl)
	ldhl	sp,#35
	ld	(hl),a
	push	af
	ldhl	sp,#6
	ld	a,(hl)
	ldhl	sp,#38
	ld	(hl),a
	ldhl	sp,#7
	ld	a,(hl)
	ldhl	sp,#39
	ld	(hl),a
	ldhl	sp,#8
	ld	a,(hl)
	ldhl	sp,#40
	ld	(hl),a
	ldhl	sp,#9
	ld	a,(hl)
	ldhl	sp,#41
	ld	(hl),a
	pop	af
	ld	a,#0x05
00118$:
	ldhl	sp,#39
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	a
	jr	NZ,00118$
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#12
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#41
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#16
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#32
	ld	a,(hl)
	ldhl	sp,#36
	xor	a, (hl)
	ldhl	sp,#32
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#37
	xor	a, (hl)
	ldhl	sp,#33
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#38
	xor	a, (hl)
	ldhl	sp,#34
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#39
	xor	a, (hl)
	ldhl	sp,#35
	ld	(hl),a
	pop	de
	push	de
	ld	a,e
	ldhl	sp,#32
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#3
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#36
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#3
	ld	(hl-),a
	ld	(hl),e
;main.c:561: v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
	push	af
	dec	hl
	dec	hl
	ld	a,(hl)
	ldhl	sp,#34
	ld	(hl),a
	ldhl	sp,#3
	ld	a,(hl)
	ldhl	sp,#35
	ld	(hl),a
	ldhl	sp,#4
	ld	a,(hl)
	ldhl	sp,#36
	ld	(hl),a
	ldhl	sp,#5
	ld	a,(hl)
	ldhl	sp,#37
	ld	(hl),a
	pop	af
	ld	a,#0x04
00120$:
	ldhl	sp,#32
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ,00120$
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#20
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#35
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#37
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#24
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#35
	ld	(hl-),a
	ld	(hl),e
	pop	de
	push	de
	ld	a,e
	ldhl	sp,#28
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#32
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#32
	ld	a,(hl)
	ldhl	sp,#36
	xor	a, (hl)
	ldhl	sp,#32
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#37
	xor	a, (hl)
	ldhl	sp,#33
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#38
	xor	a, (hl)
	ldhl	sp,#34
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#39
	xor	a, (hl)
	ldhl	sp,#35
	ld	(hl),a
	push	af
	ldhl	sp,#2
	ld	a,(hl)
	ldhl	sp,#38
	ld	(hl),a
	ldhl	sp,#3
	ld	a,(hl)
	ldhl	sp,#39
	ld	(hl),a
	ldhl	sp,#4
	ld	a,(hl)
	ldhl	sp,#40
	ld	(hl),a
	ldhl	sp,#5
	ld	a,(hl)
	ldhl	sp,#41
	ld	(hl),a
	pop	af
	ld	a,#0x05
00122$:
	ldhl	sp,#39
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	a
	jr	NZ,00122$
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#8
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#41
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#12
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#32
	ld	a,(hl)
	ldhl	sp,#36
	xor	a, (hl)
	ldhl	sp,#32
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#37
	xor	a, (hl)
	ldhl	sp,#33
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#38
	xor	a, (hl)
	ldhl	sp,#34
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#39
	xor	a, (hl)
	ldhl	sp,#35
	ld	(hl),a
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#32
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#7
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#36
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#7
	ld	(hl-),a
	ld	(hl),e
;main.c:562: sum -= delta;
	ldhl	sp,#29
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a, #0xB9
	ld	e,a
	ld	a,d
	sbc	a, #0x79
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#33
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	sbc	a, #0x37
	ld	e,a
	ld	a,d
	sbc	a, #0x9E
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#25
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a, #0x01
	ld	e,a
	ld	a,d
	sbc	a, #0x00
	push	af
	ldhl	sp,#35
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#29
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	sbc	a, #0x00
	ld	e,a
	ld	a,d
	sbc	a, #0x00
	ldhl	sp,#35
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	d,h
	ld	e,l
	ldhl	sp,#24
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;main.c:559: for (i=0; i<32; i++) {                         /* basic cycle start */
	ldhl	sp,#35
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jp	NZ,00104$
;main.c:564: v[0]=v0; v[1]=v1;
	ldhl	sp,#45
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#4
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	ldhl	sp,#43
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	add	sp, #46
	ret
;main.c:568: void remove_flag_padding()
;	---------------------------------
; Function remove_flag_padding
; ---------------------------------
_remove_flag_padding::
	add	sp, #-3
;main.c:572: UINT8 flab_b_len = flag_b[FLAG_LEN - 1];
	ld	bc,#_flag_b + 7
	ld	a,(bc)
	ldhl	sp,#0
	ld	(hl),a
;main.c:573: memset(flag_b + flab_b_len, '\0', FLAG_LEN - flab_b_len);
	ld	c,(hl)
	ld	b,#0x00
	ld	de,#0x0008
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	inc	hl
	inc	hl
	ld	(hl-),a
	ld	(hl),e
	ld	de,#_flag_b
	dec	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x0000
	push	hl
	push	bc
	call	_memset
	add	sp, #6
	add	sp, #3
	ret
;main.c:576: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:579: key_a[0] = 0xc2bb5c5b;
	ld	hl,#_key_a
	ld	(hl),#0x5B
	inc	hl
	ld	(hl),#0x5C
	inc	hl
	ld	(hl),#0xBB
	inc	hl
	ld	(hl),#0xC2
;main.c:581: disable_interrupts();
	call	_disable_interrupts
;main.c:582: DISPLAY_OFF;
	call	_display_off
;main.c:585: set_bkg_data(0x30U, alleyway_len, alleyway);
	ld	de,#_alleyway
	push	de
	ld	hl,#0x0B30
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:586: set_bkg_tiles(0, 0, alleyway_width, alleyway_height, alleyway_map);
	ld	de,#_alleyway_map
	push	de
	ld	hl,#0x1214
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:589: set_win_data(0x80U, window_border_len, window_border);
	ld	de,#_window_border
	push	de
	ld	hl,#0x0980
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:590: set_win_tiles(0, 0, text_box_width, text_box_height, text_box);
	ld	de,#_text_box
	push	de
	ld	hl,#0x0614
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_win_tiles
	add	sp, #6
;main.c:591: move_win(7,96);
	ld	hl,#0x6007
	push	hl
	call	_move_win
	add	sp, #2
;main.c:594: set_win_data(0U, alphabet_len, alphabet);
	ld	de,#_alphabet
	push	de
	ld	hl,#0x2E00
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:595: set_win_tiles(2U, 2U, text_map_width, text_map_height, text_map);
	ld	de,#_text_map
	push	de
	ld	hl,#0x0210
	push	hl
	ld	l, #0x02
	push	hl
	call	_set_win_tiles
	add	sp, #6
;main.c:598: key_a[1] = 0x93373628;
	ld	hl,#(_key_a + 0x0004)
	ld	(hl),#0x28
	inc	hl
	ld	(hl),#0x36
	inc	hl
	ld	(hl),#0x37
	inc	hl
	ld	(hl),#0x93
;main.c:601: set_win_data(arrow_address_1, arrow_tile_len, arrow_tile);
	ld	de,#_arrow_tile
	push	de
	ld	hl,#0x022E
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:604: SPRITES_8x16;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	2, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:605: set_sprite_data(0, agent_len, agent);
	ld	de,#_agent
	push	de
	ld	hl,#0x0800
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:606: set_sprite_tile(0, 0);
	ld	hl,#0x0000
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:607: set_sprite_tile(1, 2);
	ld	hl,#0x0201
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:608: set_sprite_tile(2, 4);
	ld	hl,#0x0402
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:609: set_sprite_tile(3, 6);
	ld	hl,#0x0603
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:610: move_sprite(0, 0x30U, 0x50U);
	ld	hl,#0x5030
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:611: move_sprite(1, 0x38U, 0x50U);
	ld	hl,#0x5038
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:612: move_sprite(2, 0x30U, 0x60U);
	ld	hl,#0x6030
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:613: move_sprite(3, 0x38U, 0x60U);
	ld	hl,#0x6038
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:615: SHOW_BKG;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	0, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:616: SHOW_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	1, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:617: DISPLAY_ON;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	7, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:618: enable_interrupts();
	call	_enable_interrupts
;main.c:621: key_a[2] = 0xd0849af3;
	ld	hl,#(_key_a + 0x0008)
	ld	(hl),#0xF3
	inc	hl
	ld	(hl),#0x9A
	inc	hl
	ld	(hl),#0x84
	inc	hl
	ld	(hl),#0xD0
;main.c:623: SHOW_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	5, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:624: show_text("MY TARGET IS    INSIDE.");
	ld	de,#___str_6
	push	de
	call	_show_text
	add	sp, #2
;main.c:625: show_text("THIS DOOR NEEDS A CODE…");
	ld	de,#___str_7
	push	de
	call	_show_text
	add	sp, #2
;main.c:626: HIDE_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	b,a
	ld	d,#0x00
	res	5, b
	ld	d,#0x00
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:628: while(1) {
00104$:
;main.c:630: sleep(4);
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
;main.c:631: process_button_press();
	call	_process_button_press
;main.c:633: if (input_seq_ctr >= SEQ_LEN) {
	ld	hl,#_input_seq_ctr
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x10
	ld	a,c
	sbc	a, #0x00
	jr	C,00104$
;main.c:635: key_a[3] = 0x04183ac4;
	ld	hl,#(_key_a + 0x000c)
	ld	(hl),#0xC4
	inc	hl
	ld	(hl),#0x3A
	inc	hl
	ld	(hl),#0x18
	inc	hl
	ld	(hl),#0x04
;main.c:639: check_sequence();
	call	_check_sequence
;main.c:640: input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
	jr	00104$
	ret
___str_6:
	.ascii "MY TARGET IS    INSIDE."
	.db 0x00
___str_7:
	.ascii "THIS DOOR NEEDS A CODE"
	.db 0xE2
	.db 0x80
	.db 0xA6
	.db 0x00
	.area _CODE
	.area _CABS (ABS)
