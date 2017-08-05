;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Thu Aug  3 01:24:26 2017
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _show_flash
	.globl _show_agent
	.globl _show_long_text
	.globl _strlen
	.globl _memset
	.globl _strcat
	.globl _strcpy
	.globl _memcpy
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
	.globl _key_b
	.globl _key_a
	.globl _flag_b
	.globl _flag_a
	.globl _input_seq_ctr
	.globl _input_seq
	.globl _text_map
	.globl _solution_seq
	.globl _konami_code_seq
	.globl _button
	.globl _arrow_tile
	.globl _alphabet
	.globl _text_box
	.globl _agent_flash
	.globl _agent
	.globl _alleyway
	.globl _alleyway_map
	.globl _intro_scene_tiles
	.globl _intro_scene_map
	.globl _tv_static_3_map
	.globl _tv_static_2_map
	.globl _tv_static_1_map
	.globl _divide_UINT8
	.globl _set_text_map
	.globl _clear_window
	.globl _show_text
	.globl _animate_and_wait_cursor
	.globl _scroll_text
	.globl _shift_bg_map
	.globl _overlay_black_tiles
	.globl _fade_screen_to_next
	.globl _sleep
	.globl _process_button_press
	.globl _number_of_bits_set
	.globl _return_lsb_set
	.globl _log2
	.globl _display_button_press
	.globl _check_konami_code
	.globl _check_door_sequence
	.globl _pass_level_1
	.globl _fail_level_1
	.globl _decrypt
	.globl _remove_flag_padding
	.globl _intro_scene
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;main.c:1171: UINT8 text_map[] =
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
;main.c:1200: UINT8 input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
;main.c:1204: UINT8 flag_a[] =
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
;main.c:1208: UINT8 flag_b[] =
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
;main.c:1217: UINT8 divide_UINT8(UINT8 a, UINT8 b)
;	---------------------------------
; Function divide_UINT8
; ---------------------------------
_divide_UINT8::
;main.c:1221: while (a >= b) {
	ld	b,#0x00
00101$:
	ldhl	sp,#2
	ld	a,(hl+)
	sub	a, (hl)
	jr	C,00103$
;main.c:1222: a -= b;
	dec	hl
	ld	a,(hl+)
	sub	a, (hl)
	dec	hl
	ld	(hl),a
;main.c:1223: result++;
	inc	b
	jr	00101$
00103$:
;main.c:1225: return result;
	ld	e,b
	ret
_tv_static_1_map:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_tv_static_2_map:
	.db #0x01	; 1
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
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
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
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
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
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
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
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_tv_static_3_map:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_intro_scene_map:
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3B	; 59
	.db #0x3C	; 60
	.db #0x3D	; 61
	.db #0x3E	; 62
	.db #0x3F	; 63
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4A	; 74	'J'
	.db #0x4B	; 75	'K'
	.db #0x4C	; 76	'L'
	.db #0x4D	; 77	'M'
	.db #0x4E	; 78	'N'
	.db #0x4F	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x3A	; 58
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5A	; 90	'Z'
	.db #0x5B	; 91
	.db #0x5C	; 92
	.db #0x5D	; 93
	.db #0x5E	; 94
	.db #0x5F	; 95
	.db #0x60	; 96
	.db #0x61	; 97	'a'
	.db #0x3A	; 58
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x6A	; 106	'j'
	.db #0x6B	; 107	'k'
	.db #0x6C	; 108	'l'
	.db #0x6D	; 109	'm'
	.db #0x6E	; 110	'n'
	.db #0x6F	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7A	; 122	'z'
	.db #0x7B	; 123
	.db #0x7C	; 124
	.db #0x7D	; 125
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8A	; 138
	.db #0x8B	; 139
	.db #0x8C	; 140
	.db #0x8D	; 141
	.db #0x8E	; 142
	.db #0x8F	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9A	; 154
	.db #0x9B	; 155
	.db #0x9C	; 156
	.db #0x9D	; 157
	.db #0x9E	; 158
	.db #0x9F	; 159
	.db #0xA0	; 160
	.db #0xA1	; 161
	.db #0xA2	; 162
	.db #0x4A	; 74	'J'
	.db #0xA3	; 163
	.db #0xA4	; 164
	.db #0xA5	; 165
	.db #0xA6	; 166
	.db #0xA7	; 167
	.db #0xA8	; 168
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0xA9	; 169
	.db #0xAA	; 170
	.db #0xAB	; 171
	.db #0xAC	; 172
	.db #0xAD	; 173
	.db #0xAE	; 174
	.db #0xAF	; 175
	.db #0xB0	; 176
	.db #0xB1	; 177
	.db #0x4A	; 74	'J'
	.db #0xB2	; 178
	.db #0xB3	; 179
	.db #0xB4	; 180
	.db #0xB5	; 181
	.db #0xB6	; 182
	.db #0xB7	; 183
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0xB8	; 184
	.db #0xB9	; 185
	.db #0xBA	; 186
	.db #0xBB	; 187
	.db #0xBC	; 188
	.db #0xBD	; 189
	.db #0xBE	; 190
	.db #0xBF	; 191
	.db #0xC0	; 192
	.db #0xC1	; 193
	.db #0xC2	; 194
	.db #0xC3	; 195
	.db #0xC4	; 196
	.db #0xC5	; 197
	.db #0xC6	; 198
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0xC7	; 199
	.db #0xC8	; 200
	.db #0x3A	; 58
	.db #0xC9	; 201
	.db #0xCA	; 202
	.db #0xCB	; 203
	.db #0xCC	; 204
	.db #0xCD	; 205
	.db #0xCE	; 206
	.db #0xCF	; 207
	.db #0xD0	; 208
	.db #0xD1	; 209
	.db #0xC2	; 194
	.db #0xD2	; 210
	.db #0xD3	; 211
	.db #0xD4	; 212
	.db #0xC6	; 198
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0xD5	; 213
	.db #0xD6	; 214
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x51	; 81	'Q'
	.db #0xD7	; 215
	.db #0xD8	; 216
	.db #0xD9	; 217
	.db #0xDA	; 218
	.db #0xDB	; 219
	.db #0xDC	; 220
	.db #0xDD	; 221
	.db #0xDE	; 222
	.db #0xDF	; 223
	.db #0xE0	; 224
	.db #0xE1	; 225
	.db #0xE2	; 226
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0x3A	; 58
	.db #0xE3	; 227
	.db #0xE4	; 228
	.db #0x3A	; 58
	.db #0xE5	; 229
	.db #0xE6	; 230
	.db #0x3A	; 58
	.db #0xE7	; 231
	.db #0xE8	; 232
	.db #0xE9	; 233
	.db #0xEA	; 234
	.db #0xEB	; 235
	.db #0xEC	; 236
	.db #0xED	; 237
	.db #0xEE	; 238
	.db #0xEF	; 239
	.db #0xF0	; 240
	.db #0xF1	; 241
_intro_scene_tiles:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xE1	; 225
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xD0	; 208
	.db #0xFF	; 255
	.db #0x90	; 144
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFD	; 253
	.db #0x02	; 2
	.db #0xFB	; 251
	.db #0x04	; 4
	.db #0xF6	; 246
	.db #0x09	; 9
	.db #0xED	; 237
	.db #0x12	; 18
	.db #0xDB	; 219
	.db #0x24	; 36
	.db #0xAD	; 173
	.db #0x52	; 82	'R'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAD	; 173
	.db #0x52	; 82	'R'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0x6D	; 109	'm'
	.db #0x92	; 146
	.db #0xDF	; 223
	.db #0x20	; 32
	.db #0xBD	; 189
	.db #0x42	; 66	'B'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0xF5	; 245
	.db #0x0A	; 10
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0xF5	; 245
	.db #0x0A	; 10
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0xF5	; 245
	.db #0x0A	; 10
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0xF5	; 245
	.db #0x0A	; 10
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xD5	; 213
	.db #0x2A	; 42
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xE3	; 227
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF4	; 244
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xC4	; 196
	.db #0xFF	; 255
	.db #0x84	; 132
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xB6	; 182
	.db #0x49	; 73	'I'
	.db #0xAD	; 173
	.db #0x52	; 82	'R'
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xD5	; 213
	.db #0x2A	; 42
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0x57	; 87	'W'
	.db #0xA8	; 168
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xD5	; 213
	.db #0x2A	; 42
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x4F	; 79	'O'
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0x77	; 119	'w'
	.db #0xFF	; 255
	.db #0x77	; 119	'w'
	.db #0xFF	; 255
	.db #0x67	; 103	'g'
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xF6	; 246
	.db #0xF9	; 249
	.db #0x13	; 19
	.db #0x1C	; 28
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x3F	; 63
	.db #0xC0	; 192
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xAD	; 173
	.db #0x52	; 82	'R'
	.db #0xB6	; 182
	.db #0x49	; 73	'I'
	.db #0xDB	; 219
	.db #0x24	; 36
	.db #0xED	; 237
	.db #0x12	; 18
	.db #0xF6	; 246
	.db #0x08	; 8
	.db #0xF8	; 248
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x7E	; 126
	.db #0x81	; 129
	.db #0xAF	; 175
	.db #0x2F	; 47
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xF8	; 248
	.db #0x1F	; 31
	.db #0xE8	; 232
	.db #0x3F	; 63
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0x0A	; 10
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0xFF	; 255
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0xF7	; 247
	.db #0xF8	; 248
	.db #0x0F	; 15
	.db #0xF8	; 248
	.db #0x07	; 7
	.db #0xFC	; 252
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0x7E	; 126
	.db #0x03	; 3
	.db #0x3E	; 62
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFD	; 253
	.db #0x02	; 2
	.db #0xFA	; 250
	.db #0x05	; 5
	.db #0xE7	; 231
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x7C	; 124
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0xFF	; 255
	.db #0xB0	; 176
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x9B	; 155
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC5	; 197
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xB5	; 181
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0xAA	; 170
	.db #0x02	; 2
	.db #0xFE	; 254
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0xD2	; 210
	.db #0x02	; 2
	.db #0x5A	; 90	'Z'
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1A	; 26
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0x06	; 6
	.db #0xF9	; 249
	.db #0x0D	; 13
	.db #0xF2	; 242
	.db #0xFA	; 250
	.db #0x05	; 5
	.db #0xB5	; 181
	.db #0x4A	; 74	'J'
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0xF7	; 247
	.db #0x00	; 0
	.db #0xF7	; 247
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0xC1	; 193
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0xC1	; 193
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0xC1	; 193
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x20	; 32
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0xFC	; 252
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x79	; 121	'y'
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0xC8	; 200
	.db #0xFF	; 255
	.db #0x48	; 72	'H'
	.db #0xFF	; 255
	.db #0x48	; 72	'H'
	.db #0xFF	; 255
	.db #0x5E	; 94
	.db #0xFF	; 255
	.db #0x5A	; 90	'Z'
	.db #0xFB	; 251
	.db #0x56	; 86	'V'
	.db #0xF7	; 247
	.db #0x82	; 130
	.db #0xBF	; 191
	.db #0x43	; 67	'C'
	.db #0xFE	; 254
	.db #0x43	; 67	'C'
	.db #0xFE	; 254
	.db #0x43	; 67	'C'
	.db #0xFE	; 254
	.db #0x42	; 66	'B'
	.db #0xFF	; 255
	.db #0x43	; 67	'C'
	.db #0xFE	; 254
	.db #0x42	; 66	'B'
	.db #0xFF	; 255
	.db #0x43	; 67	'C'
	.db #0xFE	; 254
	.db #0x05	; 5
	.db #0xFA	; 250
	.db #0xFA	; 250
	.db #0x05	; 5
	.db #0x85	; 133
	.db #0x7A	; 122	'z'
	.db #0x7B	; 123
	.db #0x84	; 132
	.db #0x86	; 134
	.db #0x79	; 121	'y'
	.db #0x7C	; 124
	.db #0x83	; 131
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFD	; 253
	.db #0xFF	; 255
	.db #0xFD	; 253
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0xB5	; 181
	.db #0x00	; 0
	.db #0x95	; 149
	.db #0x00	; 0
	.db #0x95	; 149
	.db #0x00	; 0
	.db #0xB5	; 181
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFD	; 253
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x02	; 2
	.db #0x5A	; 90	'Z'
	.db #0x02	; 2
	.db #0x5A	; 90	'Z'
	.db #0x02	; 2
	.db #0x5A	; 90	'Z'
	.db #0x02	; 2
	.db #0xCA	; 202
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0xFA	; 250
	.db #0x02	; 2
	.db #0x0A	; 10
	.db #0x02	; 2
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0xEB	; 235
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0xE8	; 232
	.db #0xEF	; 239
	.db #0x10	; 16
	.db #0x1F	; 31
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFD	; 253
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0xC7	; 199
	.db #0x00	; 0
	.db #0xC7	; 199
	.db #0x00	; 0
	.db #0xC7	; 199
	.db #0x00	; 0
	.db #0xC7	; 199
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0xC0	; 192
	.db #0xC7	; 199
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xBF	; 191
	.db #0xA0	; 160
	.db #0xBF	; 191
	.db #0xA0	; 160
	.db #0xBF	; 191
	.db #0xA0	; 160
	.db #0xBF	; 191
	.db #0xA0	; 160
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xCF	; 207
	.db #0x0E	; 14
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xBF	; 191
	.db #0xA0	; 160
	.db #0xBF	; 191
	.db #0xA0	; 160
	.db #0xBF	; 191
	.db #0xA0	; 160
	.db #0xBF	; 191
	.db #0xA0	; 160
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0xCB	; 203
	.db #0x03	; 3
	.db #0x5E	; 94
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x78	; 120	'x'
	.db #0xFF	; 255
	.db #0x7C	; 124
	.db #0xC7	; 199
	.db #0x6C	; 108	'l'
	.db #0xD7	; 215
	.db #0x4C	; 76	'L'
	.db #0x77	; 119	'w'
	.db #0xDC	; 220
	.db #0xA7	; 167
	.db #0xDD	; 221
	.db #0x27	; 39
	.db #0x41	; 65	'A'
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x60	; 96
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xDF	; 223
	.db #0x7C	; 124
	.db #0xC3	; 195
	.db #0xF8	; 248
	.db #0x87	; 135
	.db #0xF0	; 240
	.db #0x8F	; 143
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xEF	; 239
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x47	; 71	'G'
	.db #0xB8	; 184
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x3E	; 62
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF1	; 241
	.db #0xFF	; 255
	.db #0x87	; 135
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFD	; 253
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
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
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x7B	; 123
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x7A	; 122	'z'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7D	; 125
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xD5	; 213
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xD5	; 213
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x6A	; 106	'j'
	.db #0x02	; 2
	.db #0x6A	; 106	'j'
	.db #0x02	; 2
	.db #0x6A	; 106	'j'
	.db #0x02	; 2
	.db #0x2A	; 42
	.db #0x02	; 2
	.db #0x0A	; 10
	.db #0x02	; 2
	.db #0x4A	; 74	'J'
	.db #0x02	; 2
	.db #0x6A	; 106	'j'
	.db #0x02	; 2
	.db #0x6A	; 106	'j'
	.db #0x02	; 2
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x13	; 19
	.db #0x1C	; 28
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0xFA	; 250
	.db #0x05	; 5
	.db #0xF5	; 245
	.db #0x0A	; 10
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xD5	; 213
	.db #0x2A	; 42
	.db #0xAB	; 171
	.db #0x54	; 84	'T'
	.db #0x56	; 86	'V'
	.db #0xA9	; 169
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x57	; 87	'W'
	.db #0xA8	; 168
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0xF0	; 240
	.db #0xF7	; 247
	.db #0x00	; 0
	.db #0xF7	; 247
	.db #0x00	; 0
	.db #0xFB	; 251
	.db #0x00	; 0
	.db #0xFD	; 253
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x97	; 151
	.db #0x17	; 23
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xF9	; 249
	.db #0x0F	; 15
	.db #0xF3	; 243
	.db #0x7E	; 126
	.db #0xC7	; 199
	.db #0x7F	; 127
	.db #0xCF	; 207
	.db #0x7F	; 127
	.db #0xFE	; 254
	.db #0x7F	; 127
	.db #0xF8	; 248
	.db #0x7F	; 127
	.db #0xF0	; 240
	.db #0x7F	; 127
	.db #0xF0	; 240
	.db #0x7F	; 127
	.db #0xC1	; 193
	.db #0x3E	; 62
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x05	; 5
	.db #0xFF	; 255
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x18	; 24
	.db #0xE7	; 231
	.db #0x37	; 55	'7'
	.db #0xC8	; 200
	.db #0x68	; 104	'h'
	.db #0x97	; 151
	.db #0xD7	; 215
	.db #0xA8	; 168
	.db #0x68	; 104	'h'
	.db #0xD7	; 215
	.db #0xB7	; 183
	.db #0xE8	; 232
	.db #0x5F	; 95
	.db #0xF0	; 240
	.db #0xBF	; 191
	.db #0xF8	; 248
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xC3	; 195
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0xE3	; 227
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x3F	; 63
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
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF4	; 244
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0x6A	; 106	'j'
	.db #0x02	; 2
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0x11	; 17
	.db #0x1E	; 30
	.db #0xF1	; 241
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x57	; 87	'W'
	.db #0xA8	; 168
	.db #0x57	; 87	'W'
	.db #0xA8	; 168
	.db #0x57	; 87	'W'
	.db #0xA8	; 168
	.db #0x57	; 87	'W'
	.db #0xA8	; 168
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x57	; 87	'W'
	.db #0xA8	; 168
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x57	; 87	'W'
	.db #0xA8	; 168
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0x02	; 2
	.db #0xF7	; 247
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0x7E	; 126
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0x60	; 96
	.db #0xFF	; 255
	.db #0x7C	; 124
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0xF3	; 243
	.db #0x00	; 0
	.db #0xEF	; 239
	.db #0x00	; 0
	.db #0xEE	; 238
	.db #0x00	; 0
	.db #0xEE	; 238
	.db #0x00	; 0
	.db #0xF7	; 247
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xC1	; 193
	.db #0xFF	; 255
	.db #0x21	; 33
	.db #0x7F	; 127
	.db #0x12	; 18
	.db #0x3F	; 63
	.db #0x13	; 19
	.db #0x3F	; 63
	.db #0x5F	; 95
	.db #0xFC	; 252
	.db #0xBF	; 191
	.db #0xFE	; 254
	.db #0x5F	; 95
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x5F	; 95
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0xE3	; 227
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0xE3	; 227
	.db #0x9F	; 159
	.db #0xF3	; 243
	.db #0xCF	; 207
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xC6	; 198
	.db #0x20	; 32
	.db #0xE0	; 224
	.db #0x10	; 16
	.db #0xF0	; 240
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xF5	; 245
	.db #0x0A	; 10
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFD	; 253
	.db #0x51	; 81	'Q'
	.db #0xAE	; 174
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xF1	; 241
	.db #0xFE	; 254
	.db #0x09	; 9
	.db #0x0E	; 14
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0xE2	; 226
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0xD5	; 213
	.db #0xAA	; 170
	.db #0xF0	; 240
	.db #0x07	; 7
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x0F	; 15
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0xC1	; 193
	.db #0x1F	; 31
	.db #0xC2	; 194
	.db #0x1F	; 31
	.db #0xC2	; 194
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x1C	; 28
	.db #0xFF	; 255
	.db #0x14	; 20
	.db #0xF7	; 247
	.db #0x1C	; 28
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xEA	; 234
	.db #0x00	; 0
	.db #0xEA	; 234
	.db #0x00	; 0
	.db #0xEA	; 234
	.db #0x00	; 0
	.db #0xEA	; 234
	.db #0x00	; 0
	.db #0xDB	; 219
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xF3	; 243
	.db #0x00	; 0
	.db #0xF9	; 249
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0xC8	; 200
	.db #0xFF	; 255
	.db #0x12	; 18
	.db #0xFF	; 255
	.db #0x11	; 17
	.db #0xFF	; 255
	.db #0x09	; 9
	.db #0x6F	; 111	'o'
	.db #0x09	; 9
	.db #0x1F	; 31
	.db #0x08	; 8
	.db #0xBF	; 191
	.db #0x08	; 8
	.db #0xBF	; 191
	.db #0x09	; 9
	.db #0xBF	; 191
	.db #0x09	; 9
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xE7	; 231
	.db #0xFC	; 252
	.db #0xF3	; 243
	.db #0xFE	; 254
	.db #0xF9	; 249
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0xCF	; 207
	.db #0xFE	; 254
	.db #0x08	; 8
	.db #0xF8	; 248
	.db #0x04	; 4
	.db #0xFC	; 252
	.db #0x02	; 2
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7E	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x55	; 85	'U'
	.db #0x6A	; 106	'j'
	.db #0x35	; 53	'5'
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x1A	; 26
	.db #0x0E	; 14
	.db #0x89	; 137
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0x35	; 53	'5'
	.db #0xCA	; 202
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xDF	; 223
	.db #0x20	; 32
	.db #0x6F	; 111	'o'
	.db #0x90	; 144
	.db #0x82	; 130
	.db #0x3F	; 63
	.db #0x82	; 130
	.db #0x3F	; 63
	.db #0x82	; 130
	.db #0x3F	; 63
	.db #0x82	; 130
	.db #0x3F	; 63
	.db #0x82	; 130
	.db #0x3F	; 63
	.db #0x82	; 130
	.db #0x3F	; 63
	.db #0x62	; 98	'b'
	.db #0x7F	; 127
	.db #0x7E	; 126
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x38	; 56	'8'
	.db #0xFF	; 255
	.db #0x28	; 40
	.db #0xEF	; 239
	.db #0x38	; 56	'8'
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x2A	; 42
	.db #0xFF	; 255
	.db #0x2A	; 42
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x48	; 72	'H'
	.db #0x7F	; 127
	.db #0xC8	; 200
	.db #0xFF	; 255
	.db #0x88	; 136
	.db #0xFF	; 255
	.db #0x88	; 136
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x0C	; 12
	.db #0xFF	; 255
	.db #0x09	; 9
	.db #0xBF	; 191
	.db #0x0C	; 12
	.db #0xDF	; 223
	.db #0x04	; 4
	.db #0xDF	; 223
	.db #0x04	; 4
	.db #0xDF	; 223
	.db #0x04	; 4
	.db #0xDF	; 223
	.db #0x04	; 4
	.db #0xDF	; 223
	.db #0x04	; 4
	.db #0xDF	; 223
	.db #0x0C	; 12
	.db #0xDF	; 223
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xE7	; 231
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0xFF	; 255
	.db #0xFD	; 253
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0x7F	; 127
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xEA	; 234
	.db #0x15	; 21
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xBA	; 186
	.db #0x55	; 85	'U'
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0xE0	; 224
	.db #0xEF	; 239
	.db #0x10	; 16
	.db #0x37	; 55	'7'
	.db #0xC8	; 200
	.db #0xDB	; 219
	.db #0x24	; 36
	.db #0x6D	; 109	'm'
	.db #0x92	; 146
	.db #0xB6	; 182
	.db #0x48	; 72	'H'
	.db #0xD9	; 217
	.db #0x20	; 32
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0xF0	; 240
	.db #0x0C	; 12
	.db #0xFB	; 251
	.db #0x00	; 0
	.db #0xF7	; 247
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xEF	; 239
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0xE5	; 229
	.db #0x0D	; 13
	.db #0xF2	; 242
	.db #0x06	; 6
	.db #0xF9	; 249
	.db #0x03	; 3
	.db #0x7C	; 124
	.db #0x81	; 129
	.db #0x3E	; 62
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0x5B	; 91
	.db #0xA4	; 164
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0x56	; 86	'V'
	.db #0xA8	; 168
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x7E	; 126
	.db #0x03	; 3
	.db #0x7E	; 126
	.db #0x03	; 3
	.db #0x7E	; 126
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFB	; 251
	.db #0x0F	; 15
	.db #0xF8	; 248
	.db #0x0F	; 15
	.db #0xF8	; 248
	.db #0x07	; 7
	.db #0xFC	; 252
	.db #0x07	; 7
	.db #0xFC	; 252
	.db #0x07	; 7
	.db #0xFC	; 252
	.db #0x07	; 7
	.db #0xFC	; 252
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xFC	; 252
	.db #0xF7	; 247
	.db #0xFC	; 252
	.db #0x07	; 7
	.db #0xFC	; 252
	.db #0x07	; 7
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0xC3	; 195
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
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0xCF	; 207
	.db #0xFF	; 255
	.db #0xE7	; 231
	.db #0xFF	; 255
	.db #0xF1	; 241
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF1	; 241
	.db #0xFF	; 255
	.db #0xE7	; 231
	.db #0xFF	; 255
	.db #0xCF	; 207
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xE7	; 231
	.db #0x11	; 17
	.db #0xF7	; 247
	.db #0x02	; 2
	.db #0xEF	; 239
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0x12	; 18
	.db #0xFF	; 255
	.db #0xF2	; 242
	.db #0xFF	; 255
	.db #0x12	; 18
	.db #0xFD	; 253
	.db #0x0F	; 15
	.db #0xFC	; 252
	.db #0x07	; 7
	.db #0xDF	; 223
	.db #0x03	; 3
	.db #0xDF	; 223
	.db #0x42	; 66	'B'
	.db #0xFF	; 255
	.db #0x65	; 101	'e'
	.db #0xFE	; 254
	.db #0x5B	; 91
	.db #0xFC	; 252
	.db #0x47	; 71	'G'
	.db #0xFC	; 252
	.db #0x27	; 39
	.db #0xD8	; 216
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x60	; 96
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xF0	; 240
	.db #0x1F	; 31
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x7F	; 127
	.db #0xC1	; 193
	.db #0x7E	; 126
	.db #0xC7	; 199
	.db #0x9F	; 159
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x78	; 120	'x'
	.db #0xC7	; 199
	.db #0x7F	; 127
	.db #0x95	; 149
	.db #0xFF	; 255
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0x29	; 41
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xBE	; 190
	.db #0xFF	; 255
	.db #0x5E	; 94
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xE1	; 225
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFC	; 252
	.db #0x03	; 3
	.db #0xF8	; 248
	.db #0x03	; 3
	.db #0xF0	; 240
	.db #0x0B	; 11
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0xC4	; 196
	.db #0x5F	; 95
	.db #0x46	; 70	'F'
	.db #0xDF	; 223
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x21	; 33
	.db #0xFF	; 255
	.db #0x22	; 34
	.db #0xFF	; 255
	.db #0x22	; 34
	.db #0xFF	; 255
	.db #0x22	; 34
	.db #0xFF	; 255
	.db #0x42	; 66	'B'
	.db #0xFF	; 255
	.db #0xC6	; 198
	.db #0xFE	; 254
	.db #0x33	; 51	'3'
	.db #0xFF	; 255
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0x2B	; 43
	.db #0xFF	; 255
	.db #0x2B	; 43
	.db #0xFF	; 255
	.db #0x2B	; 43
	.db #0xFF	; 255
	.db #0x2F	; 47
	.db #0xF8	; 248
	.db #0x2F	; 47
	.db #0xF0	; 240
	.db #0x7F	; 127
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF1	; 241
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFC	; 252
	.db #0x07	; 7
	.db #0xF6	; 246
	.db #0x0B	; 11
	.db #0x0B	; 11
	.db #0xF5	; 245
	.db #0xF5	; 245
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0xF4	; 244
	.db #0xF7	; 247
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0x3F	; 63
	.db #0xC0	; 192
	.db #0x7F	; 127
	.db #0x38	; 56	'8'
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x0A	; 10
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xAC	; 172
	.db #0xFC	; 252
	.db #0x57	; 87	'W'
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x1E	; 30
	.db #0x1F	; 31
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x0D	; 13
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x7B	; 123
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x70	; 112	'p'
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFD	; 253
	.db #0xFF	; 255
	.db #0x34	; 52	'4'
	.db #0xFF	; 255
	.db #0x2A	; 42
	.db #0xFF	; 255
	.db #0x35	; 53	'5'
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x5F	; 95
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
_alleyway_map:
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3A	; 58
	.db #0x3B	; 59
	.db #0x3C	; 60
	.db #0x3D	; 61
	.db #0x3E	; 62
	.db #0x3F	; 63
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x36	; 54	'6'
	.db #0x46	; 70	'F'
	.db #0x36	; 54	'6'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4A	; 74	'J'
	.db #0x4B	; 75	'K'
	.db #0x4C	; 76	'L'
	.db #0x4D	; 77	'M'
	.db #0x4E	; 78	'N'
	.db #0x36	; 54	'6'
	.db #0x4F	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x44	; 68	'D'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x36	; 54	'6'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5A	; 90	'Z'
	.db #0x5B	; 91
	.db #0x5C	; 92
	.db #0x5D	; 93
	.db #0x5E	; 94
	.db #0x5F	; 95
	.db #0x60	; 96
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x36	; 54	'6'
	.db #0x65	; 101	'e'
	.db #0x44	; 68	'D'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x6A	; 106	'j'
	.db #0x6B	; 107	'k'
	.db #0x6C	; 108	'l'
	.db #0x6D	; 109	'm'
	.db #0x6E	; 110	'n'
	.db #0x6F	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x44	; 68	'D'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x7A	; 122	'z'
	.db #0x7B	; 123
	.db #0x7C	; 124
	.db #0x7D	; 125
	.db #0x7E	; 126
	.db #0x3D	; 61
	.db #0x4E	; 78	'N'
	.db #0x3D	; 61
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x44	; 68	'D'
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x36	; 54	'6'
	.db #0x8A	; 138
	.db #0x8B	; 139
	.db #0x8C	; 140
	.db #0x8D	; 141
	.db #0x3D	; 61
	.db #0x8E	; 142
	.db #0x8F	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x44	; 68	'D'
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9A	; 154
	.db #0x9B	; 155
	.db #0x9C	; 156
	.db #0x3D	; 61
	.db #0x9D	; 157
	.db #0x9E	; 158
	.db #0x9F	; 159
	.db #0xA0	; 160
	.db #0xA1	; 161
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0xA2	; 162
	.db #0xA3	; 163
	.db #0xA4	; 164
	.db #0xA5	; 165
	.db #0xA6	; 166
	.db #0xA7	; 167
	.db #0xA8	; 168
	.db #0xA9	; 169
	.db #0xAA	; 170
	.db #0xAB	; 171
	.db #0xAC	; 172
	.db #0x9C	; 156
	.db #0x3D	; 61
	.db #0xAD	; 173
	.db #0xAE	; 174
	.db #0xAF	; 175
	.db #0xB0	; 176
	.db #0xB1	; 177
	.db #0xB2	; 178
	.db #0xB3	; 179
	.db #0xB4	; 180
	.db #0xB5	; 181
	.db #0xB6	; 182
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0xB7	; 183
	.db #0xB8	; 184
	.db #0xB9	; 185
	.db #0x36	; 54	'6'
	.db #0xBA	; 186
	.db #0xBB	; 187
	.db #0x9C	; 156
	.db #0x3D	; 61
	.db #0xBC	; 188
	.db #0xBD	; 189
	.db #0xBE	; 190
	.db #0xBF	; 191
	.db #0xC0	; 192
	.db #0xC1	; 193
	.db #0xC2	; 194
	.db #0xC3	; 195
	.db #0xC4	; 196
	.db #0xC5	; 197
	.db #0xC6	; 198
	.db #0xC7	; 199
	.db #0xC8	; 200
	.db #0xC9	; 201
	.db #0xCA	; 202
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x9C	; 156
	.db #0x3D	; 61
	.db #0xBC	; 188
	.db #0xCB	; 203
	.db #0xCC	; 204
	.db #0xCD	; 205
	.db #0xCE	; 206
	.db #0xCF	; 207
	.db #0xD0	; 208
	.db #0xD1	; 209
	.db #0xD2	; 210
	.db #0xD3	; 211
	.db #0xD4	; 212
	.db #0x4E	; 78	'N'
	.db #0xD5	; 213
	.db #0xC9	; 201
	.db #0xCA	; 202
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0x36	; 54	'6'
	.db #0x9C	; 156
	.db #0x3D	; 61
	.db #0xBC	; 188
	.db #0xD8	; 216
	.db #0xD9	; 217
	.db #0x4E	; 78	'N'
	.db #0xDA	; 218
	.db #0xDB	; 219
	.db #0xDC	; 220
	.db #0xDD	; 221
	.db #0xDE	; 222
	.db #0xDF	; 223
	.db #0xE0	; 224
	.db #0x4E	; 78	'N'
	.db #0xE1	; 225
	.db #0xE2	; 226
	.db #0xE3	; 227
	.db #0xE4	; 228
	.db #0xE5	; 229
	.db #0xE6	; 230
	.db #0xE7	; 231
	.db #0x3D	; 61
	.db #0xBC	; 188
	.db #0xE8	; 232
	.db #0x85	; 133
	.db #0xE9	; 233
	.db #0xEA	; 234
	.db #0xEB	; 235
	.db #0xEC	; 236
	.db #0xED	; 237
	.db #0xEE	; 238
	.db #0xEF	; 239
	.db #0xF0	; 240
	.db #0x4E	; 78	'N'
	.db #0xF1	; 241
	.db #0xF2	; 242
	.db #0xF3	; 243
_alleyway:
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0xC3	; 195
	.db #0x3B	; 59
	.db #0xC4	; 196
	.db #0x33	; 51	'3'
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0xF0	; 240
	.db #0x0E	; 14
	.db #0xF8	; 248
	.db #0x7F	; 127
	.db #0x84	; 132
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xE3	; 227
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x81	; 129
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
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0x02	; 2
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x70	; 112	'p'
	.db #0xCF	; 207
	.db #0x70	; 112	'p'
	.db #0xEF	; 239
	.db #0x70	; 112	'p'
	.db #0x8F	; 143
	.db #0x70	; 112	'p'
	.db #0x8F	; 143
	.db #0x70	; 112	'p'
	.db #0x8F	; 143
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x33	; 51	'3'
	.db #0xCC	; 204
	.db #0x31	; 49	'1'
	.db #0xCE	; 206
	.db #0x31	; 49	'1'
	.db #0xCE	; 206
	.db #0x3F	; 63
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0xC0	; 192
	.db #0x38	; 56	'8'
	.db #0xC7	; 199
	.db #0x3F	; 63
	.db #0xC3	; 195
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0xFE	; 254
	.db #0x04	; 4
	.db #0x27	; 39
	.db #0xDC	; 220
	.db #0x27	; 39
	.db #0xDC	; 220
	.db #0xF6	; 246
	.db #0x0C	; 12
	.db #0xB7	; 183
	.db #0x4C	; 76	'L'
	.db #0x3F	; 63
	.db #0xC8	; 200
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0C	; 12
	.db #0xFF	; 255
	.db #0x0E	; 14
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC6	; 198
	.db #0xFF	; 255
	.db #0xC6	; 198
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0x13	; 19
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x0F	; 15
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
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x7E	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xBE	; 190
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x8E	; 142
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0x7C	; 124
	.db #0xDF	; 223
	.db #0x73	; 115	's'
	.db #0xCF	; 207
	.db #0x70	; 112	'p'
	.db #0xCE	; 206
	.db #0x40	; 64
	.db #0xFC	; 252
	.db #0x40	; 64
	.db #0xFE	; 254
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x60	; 96
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xBF	; 191
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0xBF	; 191
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x82	; 130
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0x82	; 130
	.db #0xFF	; 255
	.db #0xC6	; 198
	.db #0xFF	; 255
	.db #0xC6	; 198
	.db #0xFF	; 255
	.db #0x06	; 6
	.db #0xFF	; 255
	.db #0x06	; 6
	.db #0xFF	; 255
	.db #0x06	; 6
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xA8	; 168
	.db #0xFF	; 255
	.db #0xA9	; 169
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0xFF	; 255
	.db #0x05	; 5
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
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
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x1C	; 28
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x7E	; 126
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0xBF	; 191
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x50	; 80	'P'
	.db #0xFF	; 255
	.db #0x48	; 72	'H'
	.db #0xFF	; 255
	.db #0x44	; 68	'D'
	.db #0xFF	; 255
	.db #0x43	; 67	'C'
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x70	; 112	'p'
	.db #0xCF	; 207
	.db #0x70	; 112	'p'
	.db #0xCF	; 207
	.db #0x70	; 112	'p'
	.db #0xCF	; 207
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x30	; 48	'0'
	.db #0xFF	; 255
	.db #0x0C	; 12
	.db #0xEF	; 239
	.db #0x03	; 3
	.db #0xC7	; 199
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x09	; 9
	.db #0xFF	; 255
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0x09	; 9
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xA8	; 168
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xD7	; 215
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x89	; 137
	.db #0xFF	; 255
	.db #0x89	; 137
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0xBE	; 190
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x80	; 128
	.db #0xB4	; 180
	.db #0x80	; 128
	.db #0xB2	; 178
	.db #0x80	; 128
	.db #0x70	; 112	'p'
	.db #0xCF	; 207
	.db #0x70	; 112	'p'
	.db #0xCF	; 207
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xEF	; 239
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFB	; 251
	.db #0x00	; 0
	.db #0xF1	; 241
	.db #0x00	; 0
	.db #0xFB	; 251
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0xC8	; 200
	.db #0xFF	; 255
	.db #0x4F	; 79	'O'
	.db #0xFF	; 255
	.db #0x4F	; 79	'O'
	.db #0xFF	; 255
	.db #0xCF	; 207
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xCF	; 207
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xD7	; 215
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFB	; 251
	.db #0x96	; 150
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xFF	; 255
	.db #0x49	; 73	'I'
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0x1B	; 27
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0x03	; 3
	.db #0x6F	; 111	'o'
	.db #0x03	; 3
	.db #0x6F	; 111	'o'
	.db #0x03	; 3
	.db #0x6F	; 111	'o'
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0xB1	; 177
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xEE	; 238
	.db #0x11	; 17
	.db #0xEE	; 238
	.db #0x11	; 17
	.db #0xEE	; 238
	.db #0x11	; 17
	.db #0xEE	; 238
	.db #0x11	; 17
	.db #0xEE	; 238
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x0F	; 15
	.db #0xE0	; 224
	.db #0x0F	; 15
	.db #0xC4	; 196
	.db #0x0B	; 11
	.db #0xC0	; 192
	.db #0x0F	; 15
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0xF2	; 242
	.db #0x01	; 1
	.db #0x1A	; 26
	.db #0x01	; 1
	.db #0x1A	; 26
	.db #0xC1	; 193
	.db #0x1A	; 26
	.db #0xC1	; 193
	.db #0x1A	; 26
	.db #0xC1	; 193
	.db #0x1A	; 26
	.db #0xC1	; 193
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0x0D	; 13
	.db #0xFF	; 255
	.db #0x0E	; 14
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xB0	; 176
	.db #0xFF	; 255
	.db #0x4F	; 79	'O'
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xE3	; 227
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xCF	; 207
	.db #0xFF	; 255
	.db #0x3F	; 63
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
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xF8	; 248
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xA0	; 160
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0x20	; 32
	.db #0xDF	; 223
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xEF	; 239
	.db #0x00	; 0
	.db #0xEF	; 239
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x80	; 128
	.db #0x9B	; 155
	.db #0x80	; 128
	.db #0xBF	; 191
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x4F	; 79	'O'
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xEF	; 239
	.db #0x3F	; 63
	.db #0xEF	; 239
	.db #0x3F	; 63
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x8E	; 142
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x95	; 149
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0x01	; 1
	.db #0xFA	; 250
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x5D	; 93
	.db #0xA2	; 162
	.db #0x5D	; 93
	.db #0xA2	; 162
	.db #0x5D	; 93
	.db #0x3F	; 63
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0x82	; 130
	.db #0xFF	; 255
	.db #0x82	; 130
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0x04	; 4
	.db #0xFF	; 255
	.db #0x04	; 4
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0x3F	; 63
	.db #0xDF	; 223
	.db #0x20	; 32
	.db #0xDF	; 223
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x20	; 32
	.db #0xFF	; 255
	.db #0x20	; 32
	.db #0xFF	; 255
	.db #0x20	; 32
	.db #0xFF	; 255
	.db #0x20	; 32
	.db #0xFF	; 255
	.db #0x20	; 32
	.db #0xFF	; 255
	.db #0x98	; 152
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0x7C	; 124
	.db #0x7F	; 127
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x4F	; 79	'O'
	.db #0xFF	; 255
	.db #0x4F	; 79	'O'
	.db #0xFF	; 255
	.db #0x4F	; 79	'O'
	.db #0xFB	; 251
	.db #0x4F	; 79	'O'
	.db #0xFB	; 251
	.db #0x4F	; 79	'O'
	.db #0xFB	; 251
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xA5	; 165
	.db #0x00	; 0
	.db #0x6D	; 109	'm'
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xA2	; 162
	.db #0x5D	; 93
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0xBF	; 191
	.db #0x40	; 64
	.db #0x3F	; 63
	.db #0xC0	; 192
	.db #0x3A	; 58
	.db #0xC0	; 192
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x90	; 144
	.db #0x6F	; 111	'o'
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBE	; 190
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x9F	; 159
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
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x18	; 24
	.db #0xE7	; 231
	.db #0x1E	; 30
	.db #0xE1	; 225
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x38	; 56	'8'
	.db #0xC7	; 199
	.db #0x7C	; 124
	.db #0x83	; 131
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0x1C	; 28
	.db #0xE3	; 227
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0x06	; 6
	.db #0xF9	; 249
	.db #0x1F	; 31
	.db #0xE0	; 224
	.db #0xFC	; 252
	.db #0x03	; 3
	.db #0x88	; 136
	.db #0x77	; 119	'w'
	.db #0x0B	; 11
	.db #0xF4	; 244
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0x0C	; 12
	.db #0xF3	; 243
	.db #0xCC	; 204
	.db #0x33	; 51	'3'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xF8	; 248
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0xE7	; 231
	.db #0x50	; 80	'P'
	.db #0xAF	; 175
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x20	; 32
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x20	; 32
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFB	; 251
	.db #0x7F	; 127
	.db #0xFB	; 251
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7E	; 126
	.db #0xFE	; 254
	.db #0x7C	; 124
	.db #0xFC	; 252
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0xF4	; 244
	.db #0xF4	; 244
	.db #0xEE	; 238
	.db #0xEE	; 238
	.db #0xDF	; 223
	.db #0xDF	; 223
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x3F	; 63
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x0F	; 15
	.db #0xBC	; 188
	.db #0xFF	; 255
	.db #0xB8	; 184
	.db #0xFF	; 255
	.db #0xB0	; 176
	.db #0xFF	; 255
	.db #0xA0	; 160
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0xFC	; 252
	.db #0x83	; 131
	.db #0xFC	; 252
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0xFC	; 252
	.db #0x07	; 7
	.db #0xF8	; 248
	.db #0x0C	; 12
	.db #0xF3	; 243
	.db #0x98	; 152
	.db #0x67	; 103	'g'
	.db #0xC2	; 194
	.db #0x3D	; 61
	.db #0xE2	; 226
	.db #0x1D	; 29
	.db #0x06	; 6
	.db #0xF9	; 249
	.db #0x06	; 6
	.db #0xF9	; 249
	.db #0x84	; 132
	.db #0x7B	; 123
	.db #0x0C	; 12
	.db #0xF3	; 243
	.db #0x37	; 55	'7'
	.db #0xC8	; 200
	.db #0x63	; 99	'c'
	.db #0x9C	; 156
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x23	; 35
	.db #0xDC	; 220
	.db #0x67	; 103	'g'
	.db #0x98	; 152
	.db #0x5E	; 94
	.db #0xA1	; 161
	.db #0x38	; 56	'8'
	.db #0xC7	; 199
	.db #0x0E	; 14
	.db #0xF1	; 241
	.db #0x0C	; 12
	.db #0xF3	; 243
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x08	; 8
	.db #0xF7	; 247
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0x09	; 9
	.db #0xF6	; 246
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x70	; 112	'p'
	.db #0x8F	; 143
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x04	; 4
	.db #0xFB	; 251
	.db #0x04	; 4
	.db #0xFB	; 251
	.db #0x07	; 7
	.db #0xF8	; 248
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x82	; 130
	.db #0x7D	; 125
	.db #0xC2	; 194
	.db #0x3D	; 61
	.db #0xC7	; 199
	.db #0x38	; 56	'8'
	.db #0xC2	; 194
	.db #0x02	; 2
	.db #0x3F	; 63
	.db #0xBF	; 191
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0xAC	; 172
	.db #0xC1	; 193
	.db #0xA1	; 161
	.db #0xCC	; 204
	.db #0xAC	; 172
	.db #0xC1	; 193
	.db #0xBF	; 191
	.db #0xC0	; 192
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x30	; 48	'0'
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x81	; 129
	.db #0xF8	; 248
	.db #0x01	; 1
	.db #0x00	; 0
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
	.db #0x78	; 120	'x'
	.db #0xF8	; 248
	.db #0x70	; 112	'p'
	.db #0xF0	; 240
	.db #0x60	; 96
	.db #0xE0	; 224
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
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
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0xC8	; 200
	.db #0xCF	; 207
	.db #0x89	; 137
	.db #0x8F	; 143
	.db #0x89	; 137
	.db #0x8F	; 143
	.db #0x89	; 137
	.db #0x8F	; 143
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0x10	; 16
	.db #0xEF	; 239
	.db #0x10	; 16
	.db #0xEF	; 239
	.db #0x10	; 16
	.db #0xEF	; 239
	.db #0x83	; 131
	.db #0xFC	; 252
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x82	; 130
	.db #0xFD	; 253
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x82	; 130
	.db #0xFD	; 253
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0x26	; 38
	.db #0xD9	; 217
	.db #0x30	; 48	'0'
	.db #0xCF	; 207
	.db #0x30	; 48	'0'
	.db #0xCF	; 207
	.db #0x10	; 16
	.db #0xEF	; 239
	.db #0x18	; 24
	.db #0xE7	; 231
	.db #0x19	; 25
	.db #0xE6	; 230
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x98	; 152
	.db #0x67	; 103	'g'
	.db #0x17	; 23
	.db #0xE8	; 232
	.db #0x31	; 49	'1'
	.db #0xCE	; 206
	.db #0x30	; 48	'0'
	.db #0xCF	; 207
	.db #0x7B	; 123
	.db #0x84	; 132
	.db #0xCE	; 206
	.db #0x31	; 49	'1'
	.db #0xC4	; 196
	.db #0x3B	; 59
	.db #0x60	; 96
	.db #0x9F	; 159
	.db #0x60	; 96
	.db #0x9F	; 159
	.db #0xC0	; 192
	.db #0x3F	; 63
	.db #0xFC	; 252
	.db #0x03	; 3
	.db #0x3E	; 62
	.db #0xC1	; 193
	.db #0x0C	; 12
	.db #0xF3	; 243
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0x62	; 98	'b'
	.db #0x9D	; 157
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0x3F	; 63
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xD5	; 213
	.db #0x80	; 128
	.db #0xD5	; 213
	.db #0x80	; 128
	.db #0xD5	; 213
	.db #0xBF	; 191
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x50	; 80	'P'
	.db #0x21	; 33
	.db #0x70	; 112	'p'
	.db #0x01	; 1
	.db #0xF8	; 248
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x06	; 6
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x30	; 48	'0'
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0x89	; 137
	.db #0x8F	; 143
	.db #0x89	; 137
	.db #0x8F	; 143
	.db #0xC9	; 201
	.db #0xCF	; 207
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x10	; 16
	.db #0xEF	; 239
	.db #0x10	; 16
	.db #0xEF	; 239
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x1C	; 28
	.db #0xE3	; 227
	.db #0x1C	; 28
	.db #0xE3	; 227
	.db #0x1E	; 30
	.db #0xE1	; 225
	.db #0x0E	; 14
	.db #0xF1	; 241
	.db #0x0E	; 14
	.db #0xF1	; 241
	.db #0x0C	; 12
	.db #0xF3	; 243
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xF7	; 247
	.db #0x1C	; 28
	.db #0xE3	; 227
	.db #0x18	; 24
	.db #0xE7	; 231
	.db #0x18	; 24
	.db #0xE7	; 231
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xF8	; 248
	.db #0x19	; 25
	.db #0xF0	; 240
	.db #0x1F	; 31
	.db #0xF0	; 240
	.db #0x3C	; 60
	.db #0xFB	; 251
	.db #0x7F	; 127
	.db #0xF8	; 248
	.db #0xFE	; 254
	.db #0xF9	; 249
	.db #0xFE	; 254
	.db #0xF9	; 249
	.db #0xC0	; 192
	.db #0x9F	; 159
	.db #0xF0	; 240
	.db #0x01	; 1
	.db #0xBE	; 190
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7E	; 126
	.db #0xFF	; 255
	.db #0x7C	; 124
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xC0	; 192
	.db #0xBF	; 191
	.db #0xDF	; 223
	.db #0xBF	; 191
	.db #0xC0	; 192
	.db #0xBF	; 191
	.db #0xDF	; 223
	.db #0xBF	; 191
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xAA	; 170
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0xAA	; 170
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0xAA	; 170
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xC0	; 192
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x05	; 5
	.db #0xFD	; 253
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x09	; 9
	.db #0xF7	; 247
	.db #0x05	; 5
	.db #0xFB	; 251
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xB0	; 176
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0xFE	; 254
	.db #0xEA	; 234
	.db #0xFD	; 253
	.db #0x1A	; 26
	.db #0xFD	; 253
	.db #0xFB	; 251
	.db #0xFC	; 252
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x8F	; 143
	.db #0x7F	; 127
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
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
	.db #0x84	; 132
	.db #0xFB	; 251
	.db #0x95	; 149
	.db #0xEA	; 234
	.db #0x8E	; 142
	.db #0xF1	; 241
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0xF7	; 247
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xF9	; 249
	.db #0xFD	; 253
	.db #0xFA	; 250
	.db #0xFD	; 253
	.db #0xFA	; 250
	.db #0xFE	; 254
	.db #0xF9	; 249
	.db #0x9E	; 158
	.db #0xF9	; 249
	.db #0xCE	; 206
	.db #0xF9	; 249
	.db #0x2E	; 46
	.db #0xF9	; 249
	.db #0xCE	; 206
	.db #0xF9	; 249
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x57	; 87	'W'
	.db #0xAA	; 170
	.db #0x57	; 87	'W'
	.db #0xAF	; 175
	.db #0x57	; 87	'W'
	.db #0xAF	; 175
	.db #0x57	; 87	'W'
	.db #0xA1	; 161
	.db #0x41	; 65	'A'
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x78	; 120	'x'
	.db #0xFF	; 255
	.db #0x70	; 112	'p'
	.db #0xFF	; 255
	.db #0x60	; 96
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xC7	; 199
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0x40	; 64
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x1C	; 28
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x71	; 113	'q'
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFF	; 255
_agent:
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x10	; 16
	.db #0x6F	; 111	'o'
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
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x01	; 1
	.db #0x1F	; 31
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
	.db #0x03	; 3
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
	.db #0x3C	; 60
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
_agent_flash:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_text_box:
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
_alphabet:
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xCF	; 207
	.db #0xCF	; 207
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0xF3	; 243
	.db #0xF3	; 243
	.db #0xCF	; 207
	.db #0xCF	; 207
	.db #0xBF	; 191
	.db #0xBF	; 191
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0xC3	; 195
	.db #0xC3	; 195
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xF3	; 243
	.db #0xEB	; 235
	.db #0xEB	; 235
	.db #0xDB	; 219
	.db #0xDB	; 219
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC3	; 195
	.db #0xC3	; 195
	.db #0xBD	; 189
	.db #0xBD	; 189
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0xBD	; 189
	.db #0xBD	; 189
	.db #0xC3	; 195
	.db #0xC3	; 195
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC3	; 195
	.db #0xC3	; 195
	.db #0xBD	; 189
	.db #0xBD	; 189
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xBD	; 189
	.db #0xBD	; 189
	.db #0xC3	; 195
	.db #0xC3	; 195
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0x77	; 119	'w'
	.db #0x77	; 119	'w'
	.db #0x77	; 119	'w'
	.db #0x77	; 119	'w'
	.db #0x8F	; 143
	.db #0x8F	; 143
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x77	; 119	'w'
	.db #0x77	; 119	'w'
	.db #0x6F	; 111	'o'
	.db #0x6F	; 111	'o'
	.db #0x4F	; 79	'O'
	.db #0x4F	; 79	'O'
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x6D	; 109	'm'
	.db #0x6D	; 109	'm'
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x3D	; 61
	.db #0x3D	; 61
	.db #0x5D	; 93
	.db #0x5D	; 93
	.db #0x6D	; 109	'm'
	.db #0x6D	; 109	'm'
	.db #0x75	; 117	'u'
	.db #0x75	; 117	'u'
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xC7	; 199
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0xC7	; 199
	.db #0xC7	; 199
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xC7	; 199
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x75	; 117	'u'
	.db #0x75	; 117	'u'
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0xC5	; 197
	.db #0xC5	; 197
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x77	; 119	'w'
	.db #0x77	; 119	'w'
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0x6D	; 109	'm'
	.db #0x6D	; 109	'm'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7D	; 125
	.db #0x7D	; 125
	.db #0xBB	; 187
	.db #0xBB	; 187
	.db #0xD7	; 215
	.db #0xD7	; 215
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xDF	; 223
	.db #0xDF	; 223
	.db #0xBF	; 191
	.db #0xBF	; 191
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0x9F	; 159
	.db #0x6D	; 109	'm'
	.db #0x6D	; 109	'm'
	.db #0xF3	; 243
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC3	; 195
	.db #0xC3	; 195
	.db #0xBD	; 189
	.db #0xBD	; 189
	.db #0xBD	; 189
	.db #0xBD	; 189
	.db #0xE3	; 227
	.db #0xE3	; 227
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xF7	; 247
	.db #0xF7	; 247
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xAB	; 171
	.db #0xAB	; 171
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
_arrow_tile:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xC3	; 195
	.db #0xC3	; 195
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xC3	; 195
	.db #0xC3	; 195
	.db #0xE7	; 231
	.db #0xE7	; 231
	.db #0xFF	; 255
	.db #0xFF	; 255
_button:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xEF	; 239
	.db #0xDF	; 223
	.db #0xE7	; 231
	.db #0xDF	; 223
	.db #0xE3	; 227
	.db #0xDF	; 223
	.db #0xE7	; 231
	.db #0xDF	; 223
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xEF	; 239
	.db #0xF7	; 247
	.db #0xCF	; 207
	.db #0xF7	; 247
	.db #0x8F	; 143
	.db #0xF7	; 247
	.db #0xCF	; 207
	.db #0xF7	; 247
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x83	; 131
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xEF	; 239
	.db #0x93	; 147
	.db #0xC7	; 199
	.db #0xBB	; 187
	.db #0xD7	; 215
	.db #0xAB	; 171
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xCF	; 207
	.db #0xB3	; 179
	.db #0xC7	; 199
	.db #0xBB	; 187
	.db #0xC7	; 199
	.db #0xBB	; 187
	.db #0xFF	; 255
	.db #0xC7	; 199
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
_konami_code_seq:
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x10	; 16
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
;main.c:1241: void set_text_map(char *text, UINT8 *len)
;	---------------------------------
; Function set_text_map
; ---------------------------------
_set_text_map::
	add	sp, #-7
;main.c:1246: memset(text_map, EMPTY_TILE_ADDR, text_map_width*text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x24
	push	hl
	push	de
	call	_memset
	add	sp, #6
;main.c:1249: if (!text || *len > 0x20U || *len <= 0x0U) {
	ldhl	sp,#10
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00143$
	inc	hl
	inc	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),#0x00
	dec	hl
	ld	a,#0x20
	sub	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	jp	C,00143$
	ld	a,b
	or	a, a
;main.c:1250: return;
;main.c:1253: for (i = 0; i < *len; ++i) {
	jp	Z,00143$
	ldhl	sp,#0
	ld	(hl),#0x00
00141$:
;main.c:1249: if (!text || *len > 0x20U || *len <= 0x0U) {
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;main.c:1253: for (i = 0; i < *len; ++i) {
	dec	hl
	dec	hl
	ld	a,(hl)
	sub	a, b
	jp	NC,00137$
;main.c:1255: if (text[i] >= 'A' && text[i] <= 'Z') {
	ldhl	sp,#10
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
;main.c:1256: text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
	ld	de,#_text_map
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#5
	ld	(hl+),a
	ld	(hl),d
;main.c:1255: if (text[i] >= 'A' && text[i] <= 'Z') {
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
	jr	Z,00218$
	bit	7, d
	jr	NZ,00219$
	cp	a, a
	jr	00219$
00218$:
	bit	7, d
	jr	Z,00219$
	scf
00219$:
	jr	C,00106$
;main.c:1256: text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
	ld	a,b
	add	a, #0xC9
	ld	b,a
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00106$:
;main.c:1260: if (text[i] >= '0' && text[i] <= '9') {
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
	jr	Z,00220$
	bit	7, d
	jr	NZ,00221$
	cp	a, a
	jr	00221$
00220$:
	bit	7, d
	jr	Z,00221$
	scf
00221$:
	jr	C,00109$
;main.c:1261: text_map[i] = text[i] - '0';
	ld	a,b
	add	a,#0xD0
	ld	b,a
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00109$:
;main.c:1265: if (text[i] == '~') {
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	sub	a, #0x7E
	jr	NZ,00135$
;main.c:1266: text_map[i] = 0x25U;
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x25
	jp	00142$
00135$:
;main.c:1267: } else if (text[i] == '_') {
	ld	a,b
	sub	a, #0x5F
	jr	NZ,00132$
;main.c:1268: text_map[i] = 0x26U;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x26
	jp	00142$
00132$:
;main.c:1269: } else if (text[i] == '!') {
	ld	a,b
	sub	a, #0x21
	jr	NZ,00129$
;main.c:1270: text_map[i] = 0x27U;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x27
	jp	00142$
00129$:
;main.c:1271: } else if (text[i] == '?') {
	ld	a,b
	sub	a, #0x3F
	jr	NZ,00126$
;main.c:1272: text_map[i] = 0x28U;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x28
	jp	00142$
00126$:
;main.c:1273: } else if (text[i] == '\'') {
	ld	a,b
	sub	a, #0x27
	jr	NZ,00123$
;main.c:1274: text_map[i] = 0x29U;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x29
	jp	00142$
00123$:
;main.c:1275: } else if (text[i] == '.') {
	ld	a,b
	sub	a, #0x2E
	jr	NZ,00120$
;main.c:1276: text_map[i] = 0x2AU;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2A
	jp	00142$
00120$:
;main.c:1277: } else if (text[i] == ',') {
	ld	a,b
	sub	a, #0x2C
	jr	NZ,00117$
;main.c:1278: text_map[i] = 0x2BU;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2B
	jp	00142$
00117$:
;main.c:1279: } else if (text[i] == '…') {
	ld	a,b
	sub	a, #0xE2
	jr	NZ,00114$
;main.c:1280: text_map[i] = 0x2CU;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2C
;main.c:1284: *len -= 2;
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	dec	b
	dec	b
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
	jr	00142$
00114$:
;main.c:1285: } else if (text[i] == ':') {
	ld	a,b
	sub	a, #0x3A
	jr	NZ,00142$
;main.c:1286: text_map[i] = 0x2DU;
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2D
00142$:
;main.c:1253: for (i = 0; i < *len; ++i) {
	ldhl	sp,#0
	inc	(hl)
	jp	00141$
00137$:
;main.c:1290: if (*len < 0x2U) {
	ldhl	sp,#5
	ld	(hl),b
	inc	hl
	ld	(hl),#0x00
	dec	hl
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	NC,00143$
;main.c:1292: text_map[*len] = arrow_address_1;
	ld	a,#<(_text_map)
	add	a, b
	ld	c,a
	ld	a,#>(_text_map)
	adc	a, #0x00
	ld	b,a
	ld	a,#0x2E
	ld	(bc),a
00143$:
	add	sp, #7
	ret
;main.c:1298: void clear_window(void)
;	---------------------------------
; Function clear_window
; ---------------------------------
_clear_window::
;main.c:1300: memset(text_map, EMPTY_TILE_ADDR, text_map_width * text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x24
	push	hl
	push	de
	call	_memset
	add	sp, #6
;main.c:1301: set_win_tiles(0x2U, 0x2U, text_map_width, text_map_height, text_map);
	ld	de,#_text_map
	push	de
	ld	hl,#0x0210
	push	hl
	ld	l, #0x02
	push	hl
	call	_set_win_tiles
	add	sp, #6
	ret
;main.c:1305: void show_text(char *text)
;	---------------------------------
; Function show_text
; ---------------------------------
_show_text::
	dec	sp
;main.c:1307: UINT8 text_len = strlen(text);
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strlen
	add	sp, #2
	ldhl	sp,#0
	ld	(hl),e
;main.c:1310: clear_window();
	call	_clear_window
;main.c:1311: set_text_map(text, &text_len);
	ldhl	sp,#0
	ld	e,l
	ld	d,h
	push	de
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_set_text_map
	add	sp, #4
;main.c:1312: cursor_index = text_len;
	ldhl	sp,#0
	ld	d,(hl)
;main.c:1315: text_len++;
	ld	a,d
	inc	a
	ld	(hl),a
;main.c:1316: scroll_text(text_len);
	push	de
	ld	a,(hl)
	push	af
	inc	sp
	call	_scroll_text
	inc	sp
	pop	de
;main.c:1317: animate_and_wait_cursor(cursor_index);
	push	de
	inc	sp
	call	_animate_and_wait_cursor
	inc	sp
	inc	sp
	ret
;main.c:1327: void show_long_text(char *text)
;	---------------------------------
; Function show_long_text
; ---------------------------------
_show_long_text::
	add	sp, #-40
;main.c:1330: UINT8 temp_text_len = 32;
	ldhl	sp,#33
	ld	(hl),#0x20
;main.c:1331: UINT8 text_len = strlen(text);
	ldhl	sp,#42
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strlen
	add	sp, #2
	ldhl	sp,#34
	ld	(hl),e
;main.c:1336: if (text_len < 33) {
	ld	a,(hl)
	sub	a, #0x21
;main.c:1337: return;
	jp	C,00107$
;main.c:1342: num_text_windows = text_len / 32;
	ldhl	sp,#34
	ld	a,(hl)
	swap	a
	rrca
	and	a,#0x07
	ldhl	sp,#0
	ld	(hl),a
;main.c:1346: for (i = 0; i < num_text_windows; ++i) {
	ldhl	sp,#1
	ld	a,l
	ld	d,h
	ldhl	sp,#38
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	(hl),#0x00
00105$:
	ldhl	sp,#35
	ld	a,(hl)
	ldhl	sp,#0
	sub	a, (hl)
	jp	NC,00103$
;main.c:1347: memcpy(&temp_text, text + (i * 32), 32);
	ldhl	sp,#35
	ld	c,(hl)
	ld	b,#0x00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ldhl	sp,#42
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#39
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0020
	push	hl
	push	bc
	push	de
	call	_memcpy
	add	sp, #6
;main.c:1351: temp_text_len = 32;
	ldhl	sp,#33
	ld	(hl),#0x20
;main.c:1353: clear_window();
	call	_clear_window
;main.c:1354: set_text_map(temp_text, &temp_text_len);
	ldhl	sp,#33
	ld	e,l
	ld	d,h
	ldhl	sp,#37
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	push	bc
	call	_set_text_map
	add	sp, #4
;main.c:1355: scroll_text(temp_text_len);
	ldhl	sp,#33
	ld	a,(hl)
	push	af
	inc	sp
	call	_scroll_text
	inc	sp
;main.c:1356: delay(200);
	ld	hl,#0x00C8
	push	hl
	call	_delay
	add	sp, #2
;main.c:1346: for (i = 0; i < num_text_windows; ++i) {
	ldhl	sp,#35
	inc	(hl)
	jp	00105$
00103$:
;main.c:1360: temp_text_len = text_len % 32;
	ldhl	sp,#34
	ld	a,(hl)
	and	a, #0x1F
	dec	hl
	ld	(hl),a
;main.c:1361: memcpy(&temp_text, text + (num_text_windows * 32), temp_text_len);
	ldhl	sp,#36
	ld	(hl+),a
	ld	(hl),#0x00
	ldhl	sp,#0
	ld	c,(hl)
	ld	b,#0x00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ldhl	sp,#42
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#39
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#36
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	push	de
	call	_memcpy
	add	sp, #6
;main.c:1362: clear_window();
	call	_clear_window
;main.c:1363: set_text_map(temp_text, &temp_text_len);
	ldhl	sp,#33
	ld	e,l
	ld	d,h
	ldhl	sp,#39
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	push	bc
	call	_set_text_map
	add	sp, #4
;main.c:1364: cursor_index = temp_text_len;
	ldhl	sp,#33
	ld	d,(hl)
;main.c:1366: temp_text_len++;
	ld	a,d
	inc	a
	ld	(hl),a
;main.c:1367: scroll_text(temp_text_len);
	push	de
	ld	a,(hl)
	push	af
	inc	sp
	call	_scroll_text
	inc	sp
	pop	de
;main.c:1368: animate_and_wait_cursor(cursor_index);
	push	de
	inc	sp
	call	_animate_and_wait_cursor
	inc	sp
00107$:
	add	sp, #40
	ret
;main.c:1371: void animate_and_wait_cursor(UINT8 cursor_index)
;	---------------------------------
; Function animate_and_wait_cursor
; ---------------------------------
_animate_and_wait_cursor::
	add	sp, #-3
;main.c:1374: UINT8 cursor_state = 0x0;
	ldhl	sp,#1
	ld	(hl),#0x00
;main.c:1378: x = 2 + (cursor_index % 16);
	ldhl	sp,#5
	ld	a,(hl)
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#0
	ld	(hl),a
;main.c:1380: y = 2 + divide_UINT8(cursor_index, 16);
	ld	a,#0x10
	push	af
	inc	sp
	ldhl	sp,#6
	ld	a,(hl)
	push	af
	inc	sp
	call	_divide_UINT8
	add	sp, #2
	ld	a,e
	add	a, #0x02
	ldhl	sp,#2
	ld	(hl),a
;main.c:1382: while (!joypad()) {
	ld	de,#_text_map
	ldhl	sp,#5
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
00104$:
	push	bc
	call	_joypad
	ld	a,e
	pop	bc
	or	a, a
	jp	NZ,00106$
;main.c:1383: if (cursor_state == 0) {
	ldhl	sp,#1
	ld	a,(hl)
	or	a, a
	jr	NZ,00102$
;main.c:1384: text_map[cursor_index] = arrow_address_2;
	ld	a,#0x2F
	ld	(bc),a
	jr	00103$
00102$:
;main.c:1386: text_map[cursor_index] = arrow_address_1;
	ld	a,#0x2E
	ld	(bc),a
00103$:
;main.c:1389: set_win_tiles(x, y, 1, 1, &text_map[cursor_index]);
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
;main.c:1390: cursor_state = !cursor_state;
	ldhl	sp,#1
	ld	a,(hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(hl),a
;main.c:1391: delay(50);
	push	bc
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:1392: sleep(4);
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
	pop	bc
	jp	00104$
00106$:
;main.c:1394: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
	add	sp, #3
	ret
;main.c:1402: void scroll_text(UINT8 len)
;	---------------------------------
; Function scroll_text
; ---------------------------------
_scroll_text::
	add	sp, #-3
;main.c:1405: for (counter = 0; counter < len; ++counter) {
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#5
	sub	a, (hl)
	jp	NC,00105$
;main.c:1406: x = 2 + (counter % 16);
	ld	a,b
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#0
	ld	(hl),a
;main.c:1407: y = 2 + divide_UINT8(counter, 16);
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
;main.c:1411: set_win_tiles(x, y, 1, 1, &text_map[counter]);
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
;main.c:1412: sleep(4);
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
	pop	bc
;main.c:1405: for (counter = 0; counter < len; ++counter) {
	inc	b
	jp	00103$
00105$:
	add	sp, #3
	ret
;main.c:1416: void shift_bg_map(const UINT8 *source_map, UINT8 *dest_map, UINT8 screen_size, UINT8 offset)
;	---------------------------------
; Function shift_bg_map
; ---------------------------------
_shift_bg_map::
	add	sp, #-3
;main.c:1419: for (i = 0; i < screen_size; ++i) {
	ldhl	sp,#0
	ld	(hl),#0x00
00103$:
	ldhl	sp,#0
	ld	a,(hl)
	ldhl	sp,#9
	sub	a, (hl)
	jp	NC,00105$
;main.c:1420: dest_map[i] = source_map[i] + offset;
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
	ldhl	sp,#6
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	d,a
	ldhl	sp,#10
	add	a, (hl)
	ld	b,a
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
;main.c:1419: for (i = 0; i < screen_size; ++i) {
	ldhl	sp,#0
	inc	(hl)
	jp	00103$
00105$:
	add	sp, #3
	ret
;main.c:1428: void overlay_black_tiles(UINT8 *bg_map, UINT8 *black_map, UINT8 screen_size)
;	---------------------------------
; Function overlay_black_tiles
; ---------------------------------
_overlay_black_tiles::
	dec	sp
;main.c:1431: for (i = 0; i < screen_size; ++i) {
	ldhl	sp,#0
	ld	(hl),#0x00
00105$:
	ldhl	sp,#0
	ld	a,(hl)
	ldhl	sp,#7
	sub	a, (hl)
	jr	NC,00107$
;main.c:1432: if (black_map[i] == 0) {
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	or	a, a
	jr	NZ,00106$
;main.c:1433: bg_map[i] = EMPTY_TILE_ADDR;
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x24
	ld	(bc),a
00106$:
;main.c:1431: for (i = 0; i < screen_size; ++i) {
	ldhl	sp,#0
	inc	(hl)
	jp	00105$
00107$:
	inc	sp
	ret
;main.c:1441: void fade_screen_to_next(const UINT8 *starting_map, const UINT8 *ending_map)
;	---------------------------------
; Function fade_screen_to_next
; ---------------------------------
_fade_screen_to_next::
	add	sp, #-128
	add	sp, #-128
	add	sp, #-128
	add	sp, #-100
;main.c:1445: memcpy(temp_map, starting_map, screen_tile_size);
	ld	hl,#0x01E6
	add	hl,sp
	ld	a,(hl+)
	ld	e, (hl)
	ld	hl,#0x01E2
	add	hl,sp
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#0
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x00F0
	push	hl
	ld	hl,#0x01E6
	add	hl,sp
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	de
	call	_memcpy
	add	sp, #6
	pop	bc
;main.c:1448: overlay_black_tiles(temp_map, tv_static_1_map, screen_tile_size);
	ld	e, c
	ld	d, b
	push	bc
	ld	a,#0xF0
	push	af
	inc	sp
	ld	hl,#_tv_static_1_map
	push	hl
	push	de
	call	_overlay_black_tiles
	add	sp, #5
	pop	bc
;main.c:1449: set_bkg_tiles(0, 0, intro_scene_map_width, intro_scene_map_height, temp_map);
	ld	e, c
	ld	d, b
	push	bc
	push	de
	ld	hl,#0x0C14
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	pop	bc
;main.c:1450: delay(500);
	push	bc
	ld	hl,#0x01F4
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:1452: shift_bg_map(intro_scene_map, shift_map, screen_tile_size, 20);
	ld	hl,#0x00F0
	add	hl,sp
	ld	a,l
	ld	d,h
	ld	hl,#0x01E0
	add	hl,sp
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	ld	hl,#0x14F0
	push	hl
	push	de
	ld	hl,#_intro_scene_map
	push	hl
	call	_shift_bg_map
	add	sp, #6
	pop	bc
;main.c:1453: set_bkg_tiles(0, 0, intro_scene_map_width, intro_scene_map_height, shift_map);
	ld	hl,#0x01E1
	add	hl,sp
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	ld	hl,#0x0C14
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	pop	bc
;main.c:1454: memcpy(temp_map, starting_map, screen_tile_size);
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x00F0
	push	hl
	ld	hl,#0x01E6
	add	hl,sp
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	de
	call	_memcpy
	add	sp, #6
	pop	bc
;main.c:1455: delay(500);
	push	bc
	ld	hl,#0x01F4
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:1458: overlay_black_tiles(temp_map, tv_static_2_map, screen_tile_size);
	ld	e, c
	ld	d, b
	push	bc
	ld	a,#0xF0
	push	af
	inc	sp
	ld	hl,#_tv_static_2_map
	push	hl
	push	de
	call	_overlay_black_tiles
	add	sp, #5
	pop	bc
;main.c:1459: set_bkg_tiles(0, 0, intro_scene_map_width, intro_scene_map_height, temp_map);
	ld	e, c
	ld	d, b
	push	bc
	push	de
	ld	hl,#0x0C14
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	pop	bc
;main.c:1460: delay(200);
	push	bc
	ld	hl,#0x00C8
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:1462: shift_bg_map(intro_scene_map, shift_map, screen_tile_size, 8);
	ld	hl,#0x01E1
	add	hl,sp
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	ld	hl,#0x08F0
	push	hl
	push	de
	ld	hl,#_intro_scene_map
	push	hl
	call	_shift_bg_map
	add	sp, #6
	pop	bc
;main.c:1463: set_bkg_tiles(0, 0, intro_scene_map_width, intro_scene_map_height, shift_map);
	ld	hl,#0x01E1
	add	hl,sp
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	ld	hl,#0x0C14
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	pop	bc
;main.c:1464: memcpy(temp_map, starting_map, screen_tile_size);
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x00F0
	push	hl
	ld	hl,#0x01E6
	add	hl,sp
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	de
	call	_memcpy
	add	sp, #6
	pop	bc
;main.c:1465: delay(100);
	push	bc
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:1468: overlay_black_tiles(temp_map, tv_static_3_map, screen_tile_size);
	ld	e, c
	ld	d, b
	push	bc
	ld	a,#0xF0
	push	af
	inc	sp
	ld	hl,#_tv_static_3_map
	push	hl
	push	de
	call	_overlay_black_tiles
	add	sp, #5
	pop	bc
;main.c:1469: set_bkg_tiles(0, 0, intro_scene_map_width, intro_scene_map_height, temp_map);
	push	bc
	ld	hl,#0x0C14
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:1470: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:1473: set_bkg_data(0x36U, alleyway_len, alleyway);
	ld	de,#_alleyway
	push	de
	ld	hl,#0xBE36
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:1474: set_bkg_tiles(0, 0, alleyway_map_width, alleyway_map_height, alleyway_map);
	ld	de,#_alleyway_map
	push	de
	ld	hl,#0x0C14
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	add	sp, #127
	add	sp, #127
	add	sp, #127
	add	sp, #103
	ret
;main.c:1477: void sleep(UINT8 cycles)
;	---------------------------------
; Function sleep
; ---------------------------------
_sleep::
;main.c:1480: for(counter = 0; counter < cycles; ++counter){
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#2
	sub	a, (hl)
	ret	NC
;main.c:1481: wait_vbl_done();
	push	bc
	call	_wait_vbl_done
	pop	bc
;main.c:1480: for(counter = 0; counter < cycles; ++counter){
	inc	b
	jr	00103$
	ret
;main.c:1485: void process_button_press(void)
;	---------------------------------
; Function process_button_press
; ---------------------------------
_process_button_press::
	add	sp, #-2
;main.c:1487: UINT8 input = joypad();
	call	_joypad
	ld	b,e
;main.c:1488: if (input) {
	ld	a,b
	or	a, a
	jp	Z,00108$
;main.c:1489: if (number_of_bits_set(input) > 1) {
	push	bc
	push	bc
	inc	sp
	call	_number_of_bits_set
	inc	sp
	ld	c,e
	pop	af
	ld	b,a
	ld	a,#0x01
	sub	a, c
	jr	NC,00102$
;main.c:1490: input = return_lsb_set(input);
	push	bc
	inc	sp
	call	_return_lsb_set
	inc	sp
	ld	b,e
00102$:
;main.c:1493: if (input == J_START || input == J_SELECT) {
	ld	d,b
	ld	e,#0x00
	ld	a,d
	sub	a, #0x80
	jr	NZ,00122$
	ld	a,e
	or	a, a
	jr	Z,00108$
00122$:
	ld	a,d
	sub	a, #0x40
	jr	NZ,00104$
	ld	a,e
	or	a, a
;main.c:1494: return;
	jr	Z,00108$
00104$:
;main.c:1497: input_seq[input_seq_ctr] = input;
	ld	de,#_input_seq
	ld	hl,#_input_seq_ctr
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	inc	sp
	inc	sp
	push	hl
	pop	hl
	push	hl
	ld	(hl),b
;main.c:1498: input_seq_ctr++;
	ld	hl,#_input_seq_ctr
	inc	(hl)
;main.c:1499: display_button_press();
	call	_display_button_press
;main.c:1503: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
00108$:
	add	sp, #2
	ret
;main.c:1508: UINT8 number_of_bits_set(UINT8 x)
;	---------------------------------
; Function number_of_bits_set
; ---------------------------------
_number_of_bits_set::
;main.c:1512: UINT8 mask = 0x1U;
	ld	b,#0x01
;main.c:1514: if (x == 0x0U) {
	ldhl	sp,#2
	ld	a,(hl)
;main.c:1515: return result;
	or	a,a
	jr	NZ,00102$
	ld	e,a
	ret
00102$:
;main.c:1518: for (i = 0x0U; i < 0x8U; ++i) {
	ld	d,#0x08
	ld	c,#0x00
00108$:
;main.c:1519: if (mask & x) {
	ld	a,b
	ldhl	sp,#2
	and	a,(hl)
	jr	Z,00104$
;main.c:1520: result++;
	inc	c
00104$:
;main.c:1522: mask = mask << 0x1;
	sla	b
	ld	a,d
	add	a,#0xFF
	ld	d,a
;main.c:1518: for (i = 0x0U; i < 0x8U; ++i) {
	or	a, a
	jr	NZ,00108$
;main.c:1525: return result;
	ld	e,c
	ret
;main.c:1531: UINT8 return_lsb_set(UINT8 x)
;	---------------------------------
; Function return_lsb_set
; ---------------------------------
_return_lsb_set::
;main.c:1533: UINT8 mask = 0x1U;
	ld	e,#0x01
;main.c:1535: if (x == 0x0U) {
	ldhl	sp,#2
	ld	a,(hl)
;main.c:1536: return 0x0U;
	or	a,a
	jr	NZ,00103$
	ld	e,a
	ret
;main.c:1539: while (!(mask & x)) {
00103$:
	ld	a,e
	ldhl	sp,#2
	and	a,(hl)
	jr	NZ,00105$
;main.c:1540: mask = mask << 0x1;
	sla	e
	jr	00103$
00105$:
;main.c:1543: return mask;
	ret
;main.c:1548: UINT8 log2(UINT8 x)
;	---------------------------------
; Function log2
; ---------------------------------
_log2::
;main.c:1551: UINT8 mask = 0x1U;
	ld	d,#0x01
;main.c:1553: while (mask != x) {
	ld	e,#0x00
00101$:
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, d
	ret	Z
;main.c:1554: result++;
	inc	e
;main.c:1555: mask = mask << 0x1;
	sla	d
	jr	00101$
;main.c:1558: return result;
	ret
;main.c:1563: void display_button_press(void)
;	---------------------------------
; Function display_button_press
; ---------------------------------
_display_button_press::
	add	sp, #-2
;main.c:1570: input_index = input_seq_ctr - 1;
	ld	hl,#_input_seq_ctr
	ld	a,(hl)
	add	a,#0xFF
	ldhl	sp,#0
	ld	(hl),a
;main.c:1571: button_pressed = input_seq[input_index];
	ld	de,#_input_seq
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
;main.c:1572: button_address = button_address_start + log2(button_pressed);
	push	af
	inc	sp
	call	_log2
	inc	sp
	ld	a,e
	add	a, #0x30
	ldhl	sp,#1
	ld	(hl),a
;main.c:1573: text_map[input_index] = button_address;
	ld	de,#_text_map
	dec	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ldhl	sp,#1
	ld	a,(hl)
	ld	(bc),a
;main.c:1574: x = 2 + (input_index % 16);
	dec	hl
	ld	a,(hl)
	and	a, #0x0F
	ld	d,a
	inc	d
	inc	d
;main.c:1575: set_win_tiles(x, 0x2U, 0x1U, 0x1U, &text_map[input_index]);
	push	bc
	ld	hl,#0x0101
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	push	de
	inc	sp
	call	_set_win_tiles
	add	sp, #6
	add	sp, #2
	ret
;main.c:1578: void check_konami_code(void)
;	---------------------------------
; Function check_konami_code
; ---------------------------------
_check_konami_code::
	add	sp, #-3
;main.c:1583: for (i = 0; i < KONAMI_CODE_LEN; ++i) {
	ldhl	sp,#1
	ld	(hl),#0x00
	dec	hl
	ld	(hl),#0x00
00106$:
;main.c:1584: if (input_seq[i] & konami_code_seq[i]) {
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
	ld	de,#_konami_code_seq
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
	jr	Z,00107$
;main.c:1585: pass++;
	dec	hl
	inc	(hl)
00107$:
;main.c:1583: for (i = 0; i < KONAMI_CODE_LEN; ++i) {
	ldhl	sp,#0
	inc	(hl)
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x0A
	ld	a,c
	sbc	a, #0x00
	jp	C,00106$
;main.c:1589: if (pass == KONAMI_CODE_LEN) {
	inc	hl
	ld	d,(hl)
	ld	e,#0x00
	ld	a,d
	sub	a, #0x0A
	jr	NZ,00108$
	ld	a,e
	or	a, a
	jr	NZ,00108$
;main.c:1590: show_text("LONG LIVE       KOJIMA.");
	ld	de,#___str_0
	push	de
	call	_show_text
	add	sp, #2
;main.c:1591: input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
;main.c:1592: clear_window();
	call	_clear_window
00108$:
	add	sp, #3
	ret
___str_0:
	.ascii "LONG LIVE       KOJIMA."
	.db 0x00
;main.c:1596: void check_door_sequence(void)
;	---------------------------------
; Function check_door_sequence
; ---------------------------------
_check_door_sequence::
	add	sp, #-3
;main.c:1601: for (i = 0; i < SEQ_LEN; ++i) {
	ldhl	sp,#0
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00107$:
;main.c:1603: key_b[0] = 0x72ae38ba;
	ld	hl,#_key_b
	ld	(hl),#0xBA
	inc	hl
	ld	(hl),#0x38
	inc	hl
	ld	(hl),#0xAE
	inc	hl
	ld	(hl),#0x72
;main.c:1605: if (input_seq[i] & solution_seq[i]) {
	ld	de,#_input_seq
	ldhl	sp,#1
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
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ldhl	sp,#2
	and	a,(hl)
	jr	Z,00108$
;main.c:1606: pass++;
	dec	hl
	dec	hl
	inc	(hl)
;main.c:1609: key_b[1] = 0xa106f553;
	ld	hl,#(_key_b + 0x0004)
	ld	(hl),#0x53
	inc	hl
	ld	(hl),#0xF5
	inc	hl
	ld	(hl),#0x06
	inc	hl
	ld	(hl),#0xA1
00108$:
;main.c:1601: for (i = 0; i < SEQ_LEN; ++i) {
	ldhl	sp,#1
	inc	(hl)
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x10
	ld	a,c
	sbc	a, #0x00
	jp	C,00107$
;main.c:1613: if (pass == SEQ_LEN) {
	dec	hl
	ld	e,(hl)
	ld	d,#0x00
	ld	a,e
	sub	a, #0x10
	jr	NZ,00105$
	ld	a,d
	or	a, a
	jr	NZ,00105$
;main.c:1615: key_b[2] = 0x1ea97c53;
	ld	hl,#(_key_b + 0x0008)
	ld	(hl),#0x53
	inc	hl
	ld	(hl),#0x7C
	inc	hl
	ld	(hl),#0xA9
	inc	hl
	ld	(hl),#0x1E
;main.c:1617: pass_level_1();
	call	_pass_level_1
	jr	00109$
00105$:
;main.c:1619: fail_level_1();
	call	_fail_level_1
00109$:
	add	sp, #3
	ret
;main.c:1623: void pass_level_1(void)
;	---------------------------------
; Function pass_level_1
; ---------------------------------
_pass_level_1::
	add	sp, #-33
;main.c:1628: key_b[3] = 0xcfa8e0b3;
	ld	hl,#(_key_b + 0x000c)
	ld	(hl),#0xB3
	inc	hl
	ld	(hl),#0xE0
	inc	hl
	ld	(hl),#0xA8
	inc	hl
	ld	(hl),#0xCF
;main.c:1631: decrypt((UINT32 *)flag_a, key_a);
	ld	de,#_flag_a
	ld	hl,#_key_a
	push	hl
	push	de
	call	_decrypt
	add	sp, #4
;main.c:1632: decrypt((UINT32 *)flag_b, key_b);
	ld	de,#_flag_b
	ld	hl,#_key_b
	push	hl
	push	de
	call	_decrypt
	add	sp, #4
;main.c:1635: remove_flag_padding();
	call	_remove_flag_padding
;main.c:1638: strcpy((char *)flag_string, "1ST FLAG IS     ");
	ldhl	sp,#0
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#___str_1
	push	hl
	push	de
	call	_strcpy
	add	sp, #4
	pop	bc
;main.c:1639: memcpy(flag_string + 0x10U, flag_a, FLAG_LEN);
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
;main.c:1640: flag_string[0x18U] = '\0';
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
;main.c:1641: strcat((char *)flag_string, flag_b);
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#_flag_b
	push	hl
	push	de
	call	_strcat
	add	sp, #4
	pop	bc
;main.c:1642: strcat((char *)flag_string, ".");
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#___str_2
	push	hl
	push	de
	call	_strcat
	add	sp, #4
	pop	bc
;main.c:1644: show_text("THAT WORKED.");
	ld	de,#___str_3
	push	bc
	push	de
	call	_show_text
	add	sp, #2
	pop	bc
;main.c:1645: show_text("I\'M IN.");
	ld	de,#___str_4
	push	bc
	push	de
	call	_show_text
	add	sp, #2
	pop	bc
;main.c:1646: show_text((char *)flag_string);
	push	bc
	call	_show_text
	add	sp, #2
;main.c:1647: clear_window();
	call	_clear_window
;main.c:1648: input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
;main.c:1651: while (1) {}
00102$:
	jr	00102$
	add	sp, #33
	ret
___str_1:
	.ascii "1ST FLAG IS     "
	.db 0x00
___str_2:
	.ascii "."
	.db 0x00
___str_3:
	.ascii "THAT WORKED."
	.db 0x00
___str_4:
	.ascii "I'M IN."
	.db 0x00
;main.c:1654: void fail_level_1(void)
;	---------------------------------
; Function fail_level_1
; ---------------------------------
_fail_level_1::
;main.c:1656: show_text("NO GOOD.");
	ld	de,#___str_5
	push	de
	call	_show_text
	add	sp, #2
;main.c:1657: show_text("LET ME TRY SOME THING ELSE.");
	ld	de,#___str_6
	push	de
	call	_show_text
	add	sp, #2
;main.c:1658: clear_window();
	call	_clear_window
;main.c:1659: input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
	ret
___str_5:
	.ascii "NO GOOD."
	.db 0x00
___str_6:
	.ascii "LET ME TRY SOME THING ELSE."
	.db 0x00
;main.c:1662: void decrypt(UINT32 *v, UINT32 *k)
;	---------------------------------
; Function decrypt
; ---------------------------------
_decrypt::
	add	sp, #-46
;main.c:1664: UINT32 v0=v[0], v1=v[1], sum=0xC6EF3720, i;     /* set up */
	ldhl	sp,#48
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#34
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
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#35
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#32
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
;main.c:1666: UINT32 k0=k[0], k1=k[1], k2=k[2], k3=k[3];      /* cache key */
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
	ldhl	sp,#44
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
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
	ld	hl,#0x0008
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#44
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
;main.c:1667: for (i=0; i<32; i++) {                          /* basic cycle start */
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
;main.c:1668: v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
	push	af
	ldhl	sp,#2
	ld	a,(hl)
	ldhl	sp,#42
	ld	(hl),a
	ldhl	sp,#3
	ld	a,(hl)
	ldhl	sp,#43
	ld	(hl),a
	ldhl	sp,#4
	ld	a,(hl)
	ldhl	sp,#44
	ld	(hl),a
	ldhl	sp,#5
	ld	a,(hl)
	ldhl	sp,#45
	ld	(hl),a
	pop	af
	ld	a,#0x04
00116$:
	ldhl	sp,#40
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
	ldhl	sp,#43
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#45
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
	ldhl	sp,#43
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
	dec	hl
	dec	hl
	ld	a,(hl)
	ldhl	sp,#40
	xor	a, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#41
	xor	a, (hl)
	ldhl	sp,#37
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#42
	xor	a, (hl)
	ldhl	sp,#38
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#43
	xor	a, (hl)
	ldhl	sp,#39
	ld	(hl),a
	push	af
	ldhl	sp,#2
	ld	a,(hl)
	ldhl	sp,#42
	ld	(hl),a
	ldhl	sp,#3
	ld	a,(hl)
	ldhl	sp,#43
	ld	(hl),a
	ldhl	sp,#4
	ld	a,(hl)
	ldhl	sp,#44
	ld	(hl),a
	ldhl	sp,#5
	ld	a,(hl)
	ldhl	sp,#45
	ld	(hl),a
	pop	af
	ld	a,#0x05
00118$:
	ldhl	sp,#43
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
	ldhl	sp,#4
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#43
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#45
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#8
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#43
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#36
	ld	a,(hl)
	ldhl	sp,#40
	xor	a, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#41
	xor	a, (hl)
	ldhl	sp,#37
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#42
	xor	a, (hl)
	ldhl	sp,#38
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#43
	xor	a, (hl)
	ldhl	sp,#39
	ld	(hl),a
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#36
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#13
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#40
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
;main.c:1669: v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
	push	af
	dec	hl
	dec	hl
	ld	a,(hl)
	ldhl	sp,#38
	ld	(hl),a
	ldhl	sp,#11
	ld	a,(hl)
	ldhl	sp,#39
	ld	(hl),a
	ldhl	sp,#12
	ld	a,(hl)
	ldhl	sp,#40
	ld	(hl),a
	ldhl	sp,#13
	ld	a,(hl)
	ldhl	sp,#41
	ld	(hl),a
	pop	af
	ld	a,#0x04
00120$:
	ldhl	sp,#36
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
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#41
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
	ldhl	sp,#39
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#9
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
	ldhl	sp,#43
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#13
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
	ldhl	sp,#43
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#36
	ld	a,(hl)
	ldhl	sp,#40
	xor	a, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#41
	xor	a, (hl)
	ldhl	sp,#37
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#42
	xor	a, (hl)
	ldhl	sp,#38
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#43
	xor	a, (hl)
	ldhl	sp,#39
	ld	(hl),a
	push	af
	ldhl	sp,#10
	ld	a,(hl)
	ldhl	sp,#42
	ld	(hl),a
	ldhl	sp,#11
	ld	a,(hl)
	ldhl	sp,#43
	ld	(hl),a
	ldhl	sp,#12
	ld	a,(hl)
	ldhl	sp,#44
	ld	(hl),a
	ldhl	sp,#13
	ld	a,(hl)
	ldhl	sp,#45
	ld	(hl),a
	pop	af
	ld	a,#0x05
00122$:
	ldhl	sp,#43
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
	ldhl	sp,#12
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#43
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#45
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
	ldhl	sp,#43
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#36
	ld	a,(hl)
	ldhl	sp,#40
	xor	a, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#41
	xor	a, (hl)
	ldhl	sp,#37
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#42
	xor	a, (hl)
	ldhl	sp,#38
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#43
	xor	a, (hl)
	ldhl	sp,#39
	ld	(hl),a
	pop	de
	push	de
	ld	a,e
	ldhl	sp,#36
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
	ldhl	sp,#40
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
;main.c:1670: sum -= delta;
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
	ldhl	sp,#39
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
	ldhl	sp,#39
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
;main.c:1667: for (i=0; i<32; i++) {                          /* basic cycle start */
	ldhl	sp,#39
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jp	NZ,00104$
;main.c:1672: v[0]=v0; v[1]=v1;
	dec	hl
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
	ldhl	sp,#33
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#8
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
;main.c:1676: void remove_flag_padding(void)
;	---------------------------------
; Function remove_flag_padding
; ---------------------------------
_remove_flag_padding::
	add	sp, #-3
;main.c:1680: UINT8 flab_b_len = flag_b[FLAG_LEN - 1];
	ld	bc,#_flag_b + 7
	ld	a,(bc)
	ldhl	sp,#0
	ld	(hl),a
;main.c:1681: memset(flag_b + flab_b_len, '\0', FLAG_LEN - flab_b_len);
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
;main.c:1684: void show_agent(void)
;	---------------------------------
; Function show_agent
; ---------------------------------
_show_agent::
;main.c:1686: set_sprite_tile(0, 0);
	ld	hl,#0x0000
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:1687: set_sprite_tile(1, 2);
	ld	hl,#0x0201
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:1688: set_sprite_tile(2, 4);
	ld	hl,#0x0402
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:1689: set_sprite_tile(3, 6);
	ld	hl,#0x0603
	push	hl
	call	_set_sprite_tile
	add	sp, #2
	ret
;main.c:1692: void show_flash(void)
;	---------------------------------
; Function show_flash
; ---------------------------------
_show_flash::
;main.c:1694: set_sprite_tile(0, 0x8);
	ld	hl,#0x0800
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:1695: set_sprite_tile(1, 0xA);
	ld	hl,#0x0A01
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:1696: set_sprite_tile(2, 0xC);
	ld	hl,#0x0C02
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:1697: set_sprite_tile(3, 0xE);
	ld	hl,#0x0E03
	push	hl
	call	_set_sprite_tile
	add	sp, #2
	ret
;main.c:1700: void intro_scene(void)
;	---------------------------------
; Function intro_scene
; ---------------------------------
_intro_scene::
;main.c:1702: show_long_text("BOSS: OUR VR    WORLD IS AT     RISK.");
	ld	de,#___str_7
	push	de
	call	_show_long_text
	add	sp, #2
;main.c:1703: show_long_text("YOUR MISSION IS TO TRACK DOWN   THE ROGUE AI.");
	ld	de,#___str_8
	push	de
	call	_show_long_text
	add	sp, #2
;main.c:1704: show_text("ARE YOU READY?");
	ld	de,#___str_9
	push	de
	call	_show_text
	add	sp, #2
;main.c:1705: show_text("AGENT: YOU GOT  IT BOSS.");
	ld	de,#___str_10
	push	de
	call	_show_text
	add	sp, #2
;main.c:1706: show_text("I'M GOING IN.");
	ld	de,#___str_11
	push	de
	call	_show_text
	add	sp, #2
;main.c:1707: clear_window();
	call	_clear_window
;main.c:1709: fade_screen_to_next(intro_scene_map, alleyway_map);
	ld	de,#_intro_scene_map
	ld	hl,#_alleyway_map
	push	hl
	push	de
	call	_fade_screen_to_next
	add	sp, #4
;main.c:1711: show_text("L O A D I N G   A G E N T … ");
	ld	de,#___str_12
	push	de
	call	_show_text
	add	sp, #2
;main.c:1713: move_sprite(0, 0x27U, 0x50U);
	ld	hl,#0x5027
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:1714: move_sprite(1, 0x2FU, 0x50U);
	ld	hl,#0x502F
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:1715: move_sprite(2, 0x27U, 0x60U);
	ld	hl,#0x6027
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:1716: move_sprite(3, 0x2FU, 0x60U);
	ld	hl,#0x602F
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:1718: show_flash();
	call	_show_flash
;main.c:1719: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:1720: show_agent();
	call	_show_agent
;main.c:1721: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:1722: show_flash();
	call	_show_flash
;main.c:1723: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:1724: show_agent();
	call	_show_agent
;main.c:1725: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:1726: show_flash();
	call	_show_flash
;main.c:1727: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:1728: show_agent();
	call	_show_agent
;main.c:1729: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:1730: show_flash();
	call	_show_flash
;main.c:1731: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:1732: show_agent();
	call	_show_agent
;main.c:1733: delay(100);
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:1734: show_flash();
	call	_show_flash
;main.c:1735: delay(100);
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:1736: show_agent();
	call	_show_agent
;main.c:1737: delay(100);
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:1738: show_flash();
	call	_show_flash
;main.c:1739: delay(100);
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:1740: show_agent();
	call	_show_agent
;main.c:1741: delay(200);
	ld	hl,#0x00C8
	push	hl
	call	_delay
	add	sp, #2
;main.c:1742: show_flash();
	call	_show_flash
;main.c:1743: delay(200);
	ld	hl,#0x00C8
	push	hl
	call	_delay
	add	sp, #2
;main.c:1744: show_agent();
	call	_show_agent
;main.c:1745: delay(1000);
	ld	hl,#0x03E8
	push	hl
	call	_delay
	add	sp, #2
;main.c:1747: show_text("MY TARGET IS    INSIDE.");
	ld	de,#___str_13
	push	de
	call	_show_text
	add	sp, #2
;main.c:1748: show_text("THIS DOOR NEEDS A CODE…");
	ld	de,#___str_14
	push	de
	call	_show_text
	add	sp, #2
;main.c:1749: clear_window();
	jp	_clear_window
___str_7:
	.ascii "BOSS: OUR VR    WORLD IS AT     RISK."
	.db 0x00
___str_8:
	.ascii "YOUR MISSION IS TO TRACK DOWN   THE ROGUE AI."
	.db 0x00
___str_9:
	.ascii "ARE YOU READY?"
	.db 0x00
___str_10:
	.ascii "AGENT: YOU GOT  IT BOSS."
	.db 0x00
___str_11:
	.ascii "I'M GOING IN."
	.db 0x00
___str_12:
	.ascii "L O A D I N G   A G E N T "
	.db 0xE2
	.db 0x80
	.db 0xA6
	.ascii " "
	.db 0x00
___str_13:
	.ascii "MY TARGET IS    INSIDE."
	.db 0x00
___str_14:
	.ascii "THIS DOOR NEEDS A CODE"
	.db 0xE2
	.db 0x80
	.db 0xA6
	.db 0x00
;main.c:1752: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:1755: key_a[0] = 0xc2bb5c5b;
	ld	hl,#_key_a
	ld	(hl),#0x5B
	inc	hl
	ld	(hl),#0x5C
	inc	hl
	ld	(hl),#0xBB
	inc	hl
	ld	(hl),#0xC2
;main.c:1757: disable_interrupts();
	call	_disable_interrupts
;main.c:1758: DISPLAY_OFF;
	call	_display_off
;main.c:1761: set_bkg_data(0x36U, intro_scene_tiles_len, intro_scene_tiles);
	ld	de,#_intro_scene_tiles
	push	de
	ld	hl,#0xBC36
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:1762: set_bkg_tiles(0, 0, intro_scene_map_width, intro_scene_map_height, intro_scene_map);
	ld	de,#_intro_scene_map
	push	de
	ld	hl,#0x0C14
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:1765: set_win_tiles(0, 0, text_box_width, text_box_height, text_box);
	ld	de,#_text_box
	push	de
	ld	hl,#0x0614
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_win_tiles
	add	sp, #6
;main.c:1766: move_win(7,96);
	ld	hl,#0x6007
	push	hl
	call	_move_win
	add	sp, #2
;main.c:1769: set_win_data(0U, alphabet_len, alphabet);
	ld	de,#_alphabet
	push	de
	ld	hl,#0x2E00
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:1770: clear_window();
	call	_clear_window
;main.c:1773: set_win_data(button_address_start, button_len, button);
	ld	de,#_button
	push	de
	ld	hl,#0x0630
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:1776: key_a[1] = 0x93373628;
	ld	hl,#(_key_a + 0x0004)
	ld	(hl),#0x28
	inc	hl
	ld	(hl),#0x36
	inc	hl
	ld	(hl),#0x37
	inc	hl
	ld	(hl),#0x93
;main.c:1779: set_win_data(arrow_address_1, arrow_tile_len, arrow_tile);
	ld	de,#_arrow_tile
	push	de
	ld	hl,#0x022E
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:1782: SPRITES_8x16;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	2, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:1783: set_sprite_data(0, agent_len, agent);
	ld	de,#_agent
	push	de
	ld	hl,#0x0800
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:1784: set_sprite_data(0x8, agent_flash_len, agent_flash);
	ld	de,#_agent_flash
	push	de
	ld	hl,#0x0808
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:1786: SHOW_BKG;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	0, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:1787: SHOW_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	1, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:1788: SHOW_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	5, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:1789: DISPLAY_ON;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	7, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:1790: enable_interrupts();
	call	_enable_interrupts
;main.c:1793: key_a[2] = 0xd0849af3;
	ld	hl,#(_key_a + 0x0008)
	ld	(hl),#0xF3
	inc	hl
	ld	(hl),#0x9A
	inc	hl
	ld	(hl),#0x84
	inc	hl
	ld	(hl),#0xD0
;main.c:1795: intro_scene();
	call	_intro_scene
;main.c:1797: while(1) {
00106$:
;main.c:1799: sleep(4);
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
;main.c:1800: process_button_press();
	call	_process_button_press
;main.c:1802: if (input_seq_ctr == KONAMI_CODE_LEN) {
	ld	hl,#_input_seq_ctr
	ld	d,(hl)
	ld	e,#0x00
	ld	a,d
	sub	a, #0x0A
	jr	NZ,00102$
	ld	a,e
	or	a, a
	jr	NZ,00102$
;main.c:1803: check_konami_code();
	call	_check_konami_code
00102$:
;main.c:1806: if (input_seq_ctr >= SEQ_LEN) {
	ld	hl,#_input_seq_ctr
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x10
	ld	a,c
	sbc	a, #0x00
	jr	C,00106$
;main.c:1808: key_a[3] = 0x04183ac4;
	ld	hl,#(_key_a + 0x000c)
	ld	(hl),#0xC4
	inc	hl
	ld	(hl),#0x3A
	inc	hl
	ld	(hl),#0x18
	inc	hl
	ld	(hl),#0x04
;main.c:1812: check_door_sequence();
	call	_check_door_sequence
	jp	00106$
	ret
	.area _CODE
	.area _CABS (ABS)
