;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Sat Jul 22 23:37:51 2017
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _show_flash
	.globl _show_agent
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
	.globl _input_seq_ctr
	.globl _input_seq
	.globl _text_map
	.globl _flag_b
	.globl _flag_a
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
	.globl _divide_UINT8
	.globl _set_text_map
	.globl _clear_window
	.globl _show_text
	.globl _scroll_text
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
;main.c:457: UINT8 text_map[] =
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
;main.c:484: UINT8 input_seq_ctr = 0;
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
;main.c:501: UINT8 divide_UINT8(UINT8 a, UINT8 b)
;	---------------------------------
; Function divide_UINT8
; ---------------------------------
_divide_UINT8::
;main.c:505: while (a >= b) {
	ld	b,#0x00
00101$:
	ldhl	sp,#2
	ld	a,(hl+)
	sub	a, (hl)
	jr	C,00103$
;main.c:506: a -= b;
	dec	hl
	ld	a,(hl+)
	sub	a, (hl)
	dec	hl
	ld	(hl),a
;main.c:507: result++;
	inc	b
	jr	00101$
00103$:
;main.c:509: return result;
	ld	e,b
	ret
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
_flag_a:
	.db #0x12	; 18
	.db #0x64	; 100	'd'
	.db #0x88	; 136
	.db #0xF7	; 247
	.db #0x77	; 119	'w'
	.db #0x95	; 149
	.db #0x8A	; 138
	.db #0x5A	; 90	'Z'
_flag_b:
	.db #0xE1	; 225
	.db #0xD5	; 213
	.db #0xFA	; 250
	.db #0x93	; 147
	.db #0x3E	; 62
	.db #0x13	; 19
	.db #0x30	; 48	'0'
	.db #0x5F	; 95
;main.c:521: void set_text_map(char *text, UINT8 *len)
;	---------------------------------
; Function set_text_map
; ---------------------------------
_set_text_map::
	add	sp, #-7
;main.c:530: memset(text_map, EMPTY_TILE_ADDR, text_map_width*text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x24
	push	hl
	push	de
	call	_memset
	add	sp, #6
;main.c:533: if (!text || *len > 0x20U || *len <= 0x0U) {
	ldhl	sp,#10
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00141$
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
	ldhl	sp,#5
	ld	(hl),b
	inc	hl
	ld	(hl),#0x00
	dec	hl
	ld	a,#0x20
	sub	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	jp	C,00141$
	ld	a,b
	or	a, a
;main.c:534: return;
;main.c:540: for (i = 0; i < *len; ++i) {
	jp	Z,00141$
	ldhl	sp,#0
	ld	(hl),#0x00
00139$:
;main.c:533: if (!text || *len > 0x20U || *len <= 0x0U) {
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;main.c:540: for (i = 0; i < *len; ++i) {
	dec	hl
	dec	hl
	ld	a,(hl)
	sub	a, b
	jp	NC,00137$
;main.c:542: if (text[i] >= 'A' && text[i] <= 'Z') {
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
	ldhl	sp,#5
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;main.c:543: text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
	ld	de,#_text_map
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),d
;main.c:542: if (text[i] >= 'A' && text[i] <= 'Z') {
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
;main.c:543: text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
	ld	a,b
	add	a, #0xC9
	ld	b,a
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00106$:
;main.c:547: if (text[i] >= '0' && text[i] <= '9') {
	ldhl	sp,#6
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
;main.c:548: text_map[i] = text[i] - '0';
	ld	a,b
	add	a,#0xD0
	ld	b,a
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00109$:
;main.c:552: if (text[i] == '~') {
	ldhl	sp,#6
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	sub	a, #0x7E
	jr	NZ,00135$
;main.c:553: text_map[i] = 0x25U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x25
	jp	00140$
00135$:
;main.c:554: } else if (text[i] == '_') {
	ld	a,b
	sub	a, #0x5F
	jr	NZ,00132$
;main.c:555: text_map[i] = 0x26U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x26
	jp	00140$
00132$:
;main.c:556: } else if (text[i] == '!') {
	ld	a,b
	sub	a, #0x21
	jr	NZ,00129$
;main.c:557: text_map[i] = 0x27U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x27
	jp	00140$
00129$:
;main.c:558: } else if (text[i] == '?') {
	ld	a,b
	sub	a, #0x3F
	jr	NZ,00126$
;main.c:559: text_map[i] = 0x28U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x28
	jp	00140$
00126$:
;main.c:560: } else if (text[i] == '\'') {
	ld	a,b
	sub	a, #0x27
	jr	NZ,00123$
;main.c:561: text_map[i] = 0x29U;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x29
	jp	00140$
00123$:
;main.c:562: } else if (text[i] == '.') {
	ld	a,b
	sub	a, #0x2E
	jr	NZ,00120$
;main.c:563: text_map[i] = 0x2AU;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2A
	jp	00140$
00120$:
;main.c:564: } else if (text[i] == ',') {
	ld	a,b
	sub	a, #0x2C
	jr	NZ,00117$
;main.c:565: text_map[i] = 0x2BU;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2B
	jp	00140$
00117$:
;main.c:566: } else if (text[i] == '…') {
	ld	a,b
	sub	a, #0xE2
	jr	NZ,00114$
;main.c:567: text_map[i] = 0x2CU;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2C
;main.c:571: *len -= 2;
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
	jr	00140$
00114$:
;main.c:572: } else if (text[i] == ':') {
	ld	a,b
	sub	a, #0x3A
	jr	NZ,00140$
;main.c:573: text_map[i] = 0x2DU;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x2D
00140$:
;main.c:540: for (i = 0; i < *len; ++i) {
	ldhl	sp,#0
	inc	(hl)
	jp	00139$
00137$:
;main.c:578: text_map[*len] = arrow_address_1;
	ld	a,#<(_text_map)
	add	a, b
	ld	c,a
	ld	a,#>(_text_map)
	adc	a, #0x00
	ld	b,a
	ld	a,#0x2E
	ld	(bc),a
00141$:
	add	sp, #7
	ret
;main.c:583: void clear_window(void)
;	---------------------------------
; Function clear_window
; ---------------------------------
_clear_window::
;main.c:586: memset(text_map, EMPTY_TILE_ADDR, text_map_width * text_map_height);
	ld	de,#_text_map
	ld	hl,#0x0020
	push	hl
	ld	l, #0x24
	push	hl
	push	de
	call	_memset
	add	sp, #6
;main.c:587: set_win_tiles(0x2U, 0x2U, text_map_width, text_map_height, text_map);
	ld	de,#_text_map
	push	de
	ld	hl,#0x0210
	push	hl
	ld	l, #0x02
	push	hl
	call	_set_win_tiles
	add	sp, #6
	ret
;main.c:590: void show_text(char *text)
;	---------------------------------
; Function show_text
; ---------------------------------
_show_text::
	add	sp, #-4
;main.c:593: UINT8 cursor_state = 0x0;
	ldhl	sp,#1
	ld	(hl),#0x00
;main.c:594: UINT8 text_len = strlen(text);
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strlen
	add	sp, #2
	ldhl	sp,#3
	ld	(hl),e
;main.c:597: clear_window();
	call	_clear_window
;main.c:598: set_text_map(text, &text_len);
	ldhl	sp,#3
	ld	e,l
	ld	d,h
	push	de
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_set_text_map
	add	sp, #4
;main.c:599: cursor_index = text_len;
	ldhl	sp,#3
	ld	b,(hl)
;main.c:602: text_len++;
	ld	a,b
	inc	a
	ld	(hl),a
;main.c:603: scroll_text(text_len);
	push	bc
	ld	a,(hl)
	push	af
	inc	sp
	call	_scroll_text
	inc	sp
	pop	bc
;main.c:607: x = 2 + (cursor_index % 16);
	ld	a,b
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#2
	ld	(hl),a
;main.c:609: y = 2 + divide_UINT8(cursor_index, 16);
	push	bc
	ld	a,#0x10
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_divide_UINT8
	add	sp, #2
	ld	a,e
	pop	bc
	add	a, #0x02
	ldhl	sp,#0
	ld	(hl),a
;main.c:611: while (!joypad()) {
	ld	a,#<(_text_map)
	add	a, b
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
;main.c:612: if (cursor_state == 0) {
	ldhl	sp,#1
	ld	a,(hl)
	or	a, a
	jr	NZ,00102$
;main.c:613: text_map[cursor_index] = arrow_address_2;
	ld	a,#0x2F
	ld	(bc),a
	jr	00103$
00102$:
;main.c:615: text_map[cursor_index] = arrow_address_1;
	ld	a,#0x2E
	ld	(bc),a
00103$:
;main.c:618: set_win_tiles(x, y, 1, 1, &text_map[cursor_index]);
	ld	e, c
	ld	d, b
	push	bc
	push	de
	ld	hl,#0x0101
	push	hl
	ldhl	sp,#6
	ld	a,(hl)
	push	af
	inc	sp
	inc	hl
	inc	hl
	ld	a,(hl)
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
	pop	bc
;main.c:619: cursor_state = !cursor_state;
	ldhl	sp,#1
	ld	a,(hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(hl),a
;main.c:620: delay(50);
	push	bc
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:621: sleep(4);
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
	pop	bc
	jp	00104$
00107$:
	add	sp, #4
	ret
;main.c:630: void scroll_text(UINT8 len)
;	---------------------------------
; Function scroll_text
; ---------------------------------
_scroll_text::
	add	sp, #-3
;main.c:633: for (counter = 0; counter < len; ++counter) {
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#5
	sub	a, (hl)
	jp	NC,00105$
;main.c:634: x = 2 + (counter % 16);
	ld	a,b
	and	a, #0x0F
	add	a, #0x02
	ldhl	sp,#0
	ld	(hl),a
;main.c:635: y = 2 + divide_UINT8(counter, 16);
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
;main.c:639: set_win_tiles(x, y, 1, 1, &text_map[counter]);
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
;main.c:640: sleep(4);
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
	pop	bc
;main.c:633: for (counter = 0; counter < len; ++counter) {
	inc	b
	jp	00103$
00105$:
	add	sp, #3
	ret
;main.c:644: void sleep(UINT8 cycles)
;	---------------------------------
; Function sleep
; ---------------------------------
_sleep::
;main.c:647: for(counter = 0; counter < cycles; ++counter){
	ld	b,#0x00
00103$:
	ld	a,b
	ldhl	sp,#2
	sub	a, (hl)
	ret	NC
;main.c:648: wait_vbl_done();
	push	bc
	call	_wait_vbl_done
	pop	bc
;main.c:647: for(counter = 0; counter < cycles; ++counter){
	inc	b
	jr	00103$
	ret
;main.c:652: void process_button_press(void)
;	---------------------------------
; Function process_button_press
; ---------------------------------
_process_button_press::
	add	sp, #-2
;main.c:654: UINT8 input = joypad();
	call	_joypad
	ld	b,e
;main.c:655: if (input) {
	ld	a,b
	or	a, a
	jp	Z,00108$
;main.c:656: if (number_of_bits_set(input) > 1) {
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
;main.c:657: input = return_lsb_set(input);
	push	bc
	inc	sp
	call	_return_lsb_set
	inc	sp
	ld	b,e
00102$:
;main.c:660: if (input == J_START || input == J_SELECT) {
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
;main.c:661: return;
	jr	Z,00108$
00104$:
;main.c:664: input_seq[input_seq_ctr] = input;
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
;main.c:665: input_seq_ctr++;
	ld	hl,#_input_seq_ctr
	inc	(hl)
;main.c:666: display_button_press();
	call	_display_button_press
;main.c:670: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
00108$:
	add	sp, #2
	ret
;main.c:675: UINT8 number_of_bits_set(UINT8 x)
;	---------------------------------
; Function number_of_bits_set
; ---------------------------------
_number_of_bits_set::
;main.c:679: UINT8 mask = 0x1U;
	ld	b,#0x01
;main.c:681: if (x == 0x0U) {
	ldhl	sp,#2
	ld	a,(hl)
;main.c:682: return result;
	or	a,a
	jr	NZ,00102$
	ld	e,a
	ret
00102$:
;main.c:685: for (i = 0x0U; i < 0x8U; ++i) {
	ld	d,#0x08
	ld	c,#0x00
00108$:
;main.c:686: if (mask & x) {
	ld	a,b
	ldhl	sp,#2
	and	a,(hl)
	jr	Z,00104$
;main.c:687: result++;
	inc	c
00104$:
;main.c:689: mask = mask << 0x1;
	sla	b
	ld	a,d
	add	a,#0xFF
	ld	d,a
;main.c:685: for (i = 0x0U; i < 0x8U; ++i) {
	or	a, a
	jr	NZ,00108$
;main.c:692: return result;
	ld	e,c
	ret
;main.c:698: UINT8 return_lsb_set(UINT8 x)
;	---------------------------------
; Function return_lsb_set
; ---------------------------------
_return_lsb_set::
;main.c:700: UINT8 mask = 0x1U;
	ld	e,#0x01
;main.c:702: if (x == 0x0U) {
	ldhl	sp,#2
	ld	a,(hl)
;main.c:703: return 0x0U;
	or	a,a
	jr	NZ,00103$
	ld	e,a
	ret
;main.c:706: while (!(mask & x)) {
00103$:
	ld	a,e
	ldhl	sp,#2
	and	a,(hl)
	jr	NZ,00105$
;main.c:707: mask = mask << 0x1;
	sla	e
	jr	00103$
00105$:
;main.c:710: return mask;
	ret
;main.c:715: UINT8 log2(UINT8 x)
;	---------------------------------
; Function log2
; ---------------------------------
_log2::
;main.c:718: UINT8 mask = 0x1U;
	ld	d,#0x01
;main.c:720: while (mask != x) {
	ld	e,#0x00
00101$:
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, d
	ret	Z
;main.c:721: result++;
	inc	e
;main.c:722: mask = mask << 0x1;
	sla	d
	jr	00101$
;main.c:725: return result;
	ret
;main.c:730: void display_button_press(void)
;	---------------------------------
; Function display_button_press
; ---------------------------------
_display_button_press::
	add	sp, #-2
;main.c:737: input_index = input_seq_ctr - 1;
	ld	hl,#_input_seq_ctr
	ld	a,(hl)
	add	a,#0xFF
	ldhl	sp,#0
	ld	(hl),a
;main.c:738: button_pressed = input_seq[input_index];
	ld	de,#_input_seq
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
;main.c:739: button_address = button_address_start + log2(button_pressed);
	push	af
	inc	sp
	call	_log2
	inc	sp
	ld	a,e
	add	a, #0x30
	ldhl	sp,#1
	ld	(hl),a
;main.c:740: text_map[input_index] = button_address;
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
;main.c:741: x = 2 + (input_index % 16);
	dec	hl
	ld	a,(hl)
	and	a, #0x0F
	ld	d,a
	inc	d
	inc	d
;main.c:742: set_win_tiles(x, 0x2U, 0x1U, 0x1U, &text_map[input_index]);
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
;main.c:745: void check_konami_code(void)
;	---------------------------------
; Function check_konami_code
; ---------------------------------
_check_konami_code::
	add	sp, #-3
;main.c:750: for (i = 0; i < KONAMI_CODE_LEN; ++i) {
	ldhl	sp,#0
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00106$:
;main.c:751: if (input_seq[i] & konami_code_seq[i]) {
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
	ld	de,#_konami_code_seq
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
;main.c:752: pass++;
	dec	hl
	dec	hl
	inc	(hl)
00107$:
;main.c:750: for (i = 0; i < KONAMI_CODE_LEN; ++i) {
	ldhl	sp,#1
	inc	(hl)
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x0A
	ld	a,c
	sbc	a, #0x00
	jp	C,00106$
;main.c:756: if (pass == KONAMI_CODE_LEN) {
	dec	hl
	ld	d,(hl)
	ld	e,#0x00
	ld	a,d
	sub	a, #0x0A
	jr	NZ,00108$
	ld	a,e
	or	a, a
	jr	NZ,00108$
;main.c:757: show_text("LONG LIVE       KOJIMA.");
	ld	de,#___str_0
	push	de
	call	_show_text
	add	sp, #2
;main.c:758: input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
;main.c:759: clear_window();
	call	_clear_window
00108$:
	add	sp, #3
	ret
___str_0:
	.ascii "LONG LIVE       KOJIMA."
	.db 0x00
;main.c:763: void check_door_sequence(void)
;	---------------------------------
; Function check_door_sequence
; ---------------------------------
_check_door_sequence::
	add	sp, #-3
;main.c:768: for (i = 0; i < SEQ_LEN; ++i) {
	ldhl	sp,#0
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00107$:
;main.c:770: key_b[0] = 0x72ae38ba;
	ld	hl,#_key_b
	ld	(hl),#0xBA
	inc	hl
	ld	(hl),#0x38
	inc	hl
	ld	(hl),#0xAE
	inc	hl
	ld	(hl),#0x72
;main.c:772: if (input_seq[i] & solution_seq[i]) {
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
;main.c:773: pass++;
	dec	hl
	dec	hl
	inc	(hl)
;main.c:776: key_b[1] = 0xa106f553;
	ld	hl,#(_key_b + 0x0004)
	ld	(hl),#0x53
	inc	hl
	ld	(hl),#0xF5
	inc	hl
	ld	(hl),#0x06
	inc	hl
	ld	(hl),#0xA1
00108$:
;main.c:768: for (i = 0; i < SEQ_LEN; ++i) {
	ldhl	sp,#1
	inc	(hl)
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x10
	ld	a,c
	sbc	a, #0x00
	jp	C,00107$
;main.c:780: if (pass == SEQ_LEN) {
	dec	hl
	ld	e,(hl)
	ld	d,#0x00
	ld	a,e
	sub	a, #0x10
	jr	NZ,00105$
	ld	a,d
	or	a, a
	jr	NZ,00105$
;main.c:782: key_b[2] = 0x1ea97c53;
	ld	hl,#(_key_b + 0x0008)
	ld	(hl),#0x53
	inc	hl
	ld	(hl),#0x7C
	inc	hl
	ld	(hl),#0xA9
	inc	hl
	ld	(hl),#0x1E
;main.c:784: pass_level_1();
	call	_pass_level_1
	jr	00109$
00105$:
;main.c:786: fail_level_1();
	call	_fail_level_1
00109$:
	add	sp, #3
	ret
;main.c:790: void pass_level_1(void)
;	---------------------------------
; Function pass_level_1
; ---------------------------------
_pass_level_1::
	add	sp, #-33
;main.c:795: key_b[3] = 0xcfa8e0b3;
	ld	hl,#(_key_b + 0x000c)
	ld	(hl),#0xB3
	inc	hl
	ld	(hl),#0xE0
	inc	hl
	ld	(hl),#0xA8
	inc	hl
	ld	(hl),#0xCF
;main.c:798: decrypt((UINT32 *)flag_a, key_a);
	ld	de,#_flag_a
	ld	hl,#_key_a
	push	hl
	push	de
	call	_decrypt
	add	sp, #4
;main.c:799: decrypt((UINT32 *)flag_b, key_b);
	ld	de,#_flag_b
	ld	hl,#_key_b
	push	hl
	push	de
	call	_decrypt
	add	sp, #4
;main.c:802: remove_flag_padding();
	call	_remove_flag_padding
;main.c:805: strcpy((char *)flag_string, "1ST FLAG IS     ");
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
;main.c:806: memcpy(flag_string + 0x10U, flag_a, FLAG_LEN);
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
;main.c:807: flag_string[0x18U] = '\0';
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
;main.c:808: strcat((char *)flag_string, flag_b);
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#_flag_b
	push	hl
	push	de
	call	_strcat
	add	sp, #4
	pop	bc
;main.c:809: strcat((char *)flag_string, ".");
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#___str_2
	push	hl
	push	de
	call	_strcat
	add	sp, #4
	pop	bc
;main.c:811: show_text("THAT WORKED.");
	ld	de,#___str_3
	push	bc
	push	de
	call	_show_text
	add	sp, #2
	pop	bc
;main.c:812: show_text("I\'M IN.");
	ld	de,#___str_4
	push	bc
	push	de
	call	_show_text
	add	sp, #2
	pop	bc
;main.c:813: show_text((char *)flag_string);
	push	bc
	call	_show_text
	add	sp, #2
;main.c:814: clear_window();
	call	_clear_window
;main.c:817: while (1) {}
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
;main.c:820: void fail_level_1(void)
;	---------------------------------
; Function fail_level_1
; ---------------------------------
_fail_level_1::
;main.c:822: show_text("NO GOOD.");
	ld	de,#___str_5
	push	de
	call	_show_text
	add	sp, #2
;main.c:823: show_text("LET ME TRY SOME THING ELSE.");
	ld	de,#___str_6
	push	de
	call	_show_text
	add	sp, #2
;main.c:824: clear_window();
	jp	_clear_window
___str_5:
	.ascii "NO GOOD."
	.db 0x00
___str_6:
	.ascii "LET ME TRY SOME THING ELSE."
	.db 0x00
;main.c:827: void decrypt(UINT32 *v, UINT32 *k)
;	---------------------------------
; Function decrypt
; ---------------------------------
_decrypt::
	add	sp, #-46
;main.c:829: UINT32 v0=v[0], v1=v[1], sum=0xC6EF3720, i;  /* set up */
	ldhl	sp,#48
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#32
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
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
	ldhl	sp,#33
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
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
;main.c:831: UINT32 k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
	ldhl	sp,#51
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
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
	ld	hl,#0x0004
	add	hl,bc
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
	ld	hl,#0x0008
	add	hl,bc
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
;main.c:832: for (i=0; i<32; i++) {                         /* basic cycle start */
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
;main.c:833: v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
	push	af
	ldhl	sp,#22
	ld	a,(hl)
	ldhl	sp,#40
	ld	(hl),a
	ldhl	sp,#23
	ld	a,(hl)
	ldhl	sp,#41
	ld	(hl),a
	ldhl	sp,#24
	ld	a,(hl)
	ldhl	sp,#42
	ld	(hl),a
	ldhl	sp,#25
	ld	a,(hl)
	ldhl	sp,#43
	ld	(hl),a
	pop	af
	ld	a,#0x04
00116$:
	ldhl	sp,#38
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
	ldhl	sp,#41
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#43
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
	ldhl	sp,#41
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#21
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
	ldhl	sp,#37
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#25
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
	ldhl	sp,#37
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	a,(hl)
	ldhl	sp,#38
	xor	a, (hl)
	ldhl	sp,#34
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#39
	xor	a, (hl)
	ldhl	sp,#35
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#40
	xor	a, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#41
	xor	a, (hl)
	ldhl	sp,#37
	ld	(hl),a
	push	af
	ldhl	sp,#22
	ld	a,(hl)
	ldhl	sp,#40
	ld	(hl),a
	ldhl	sp,#23
	ld	a,(hl)
	ldhl	sp,#41
	ld	(hl),a
	ldhl	sp,#24
	ld	a,(hl)
	ldhl	sp,#42
	ld	(hl),a
	ldhl	sp,#25
	ld	a,(hl)
	ldhl	sp,#43
	ld	(hl),a
	pop	af
	ld	a,#0x05
00118$:
	ldhl	sp,#41
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
	ldhl	sp,#41
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#43
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
	ldhl	sp,#41
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#34
	ld	a,(hl)
	ldhl	sp,#38
	xor	a, (hl)
	ldhl	sp,#34
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#39
	xor	a, (hl)
	ldhl	sp,#35
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#40
	xor	a, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#41
	xor	a, (hl)
	ldhl	sp,#37
	ld	(hl),a
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#34
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
	ldhl	sp,#38
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
;main.c:834: v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
	push	af
	dec	hl
	dec	hl
	ld	a,(hl)
	ldhl	sp,#36
	ld	(hl),a
	ldhl	sp,#11
	ld	a,(hl)
	ldhl	sp,#37
	ld	(hl),a
	ldhl	sp,#12
	ld	a,(hl)
	ldhl	sp,#38
	ld	(hl),a
	ldhl	sp,#13
	ld	a,(hl)
	ldhl	sp,#39
	ld	(hl),a
	pop	af
	ld	a,#0x04
00120$:
	ldhl	sp,#34
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
	ldhl	sp,#4
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#37
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#39
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
	ldhl	sp,#37
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
	ldhl	sp,#41
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
	ldhl	sp,#41
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#34
	ld	a,(hl)
	ldhl	sp,#38
	xor	a, (hl)
	ldhl	sp,#34
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#39
	xor	a, (hl)
	ldhl	sp,#35
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#40
	xor	a, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#41
	xor	a, (hl)
	ldhl	sp,#37
	ld	(hl),a
	push	af
	ldhl	sp,#10
	ld	a,(hl)
	ldhl	sp,#40
	ld	(hl),a
	ldhl	sp,#11
	ld	a,(hl)
	ldhl	sp,#41
	ld	(hl),a
	ldhl	sp,#12
	ld	a,(hl)
	ldhl	sp,#42
	ld	(hl),a
	ldhl	sp,#13
	ld	a,(hl)
	ldhl	sp,#43
	ld	(hl),a
	pop	af
	ld	a,#0x05
00122$:
	ldhl	sp,#41
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
	ldhl	sp,#0
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#41
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#43
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#4
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#41
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#34
	ld	a,(hl)
	ldhl	sp,#38
	xor	a, (hl)
	ldhl	sp,#34
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#39
	xor	a, (hl)
	ldhl	sp,#35
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#40
	xor	a, (hl)
	ldhl	sp,#36
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#41
	xor	a, (hl)
	ldhl	sp,#37
	ld	(hl),a
	ldhl	sp,#21
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#34
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#23
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#25
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#38
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#23
	ld	(hl-),a
	ld	(hl),e
;main.c:835: sum -= delta;
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
	ldhl	sp,#37
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
	ldhl	sp,#37
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
;main.c:832: for (i=0; i<32; i++) {                         /* basic cycle start */
	ldhl	sp,#37
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jp	NZ,00104$
;main.c:837: v[0]=v0; v[1]=v1;
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#20
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
	ldhl	sp,#45
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
;main.c:841: void remove_flag_padding(void)
;	---------------------------------
; Function remove_flag_padding
; ---------------------------------
_remove_flag_padding::
	add	sp, #-3
;main.c:845: UINT8 flab_b_len = flag_b[FLAG_LEN - 1];
	ld	bc,#_flag_b + 7
	ld	a,(bc)
	ldhl	sp,#0
	ld	(hl),a
;main.c:846: memset(flag_b + flab_b_len, '\0', FLAG_LEN - flab_b_len);
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
;main.c:849: void show_agent(void)
;	---------------------------------
; Function show_agent
; ---------------------------------
_show_agent::
;main.c:851: set_sprite_tile(0, 0);
	ld	hl,#0x0000
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:852: set_sprite_tile(1, 2);
	ld	hl,#0x0201
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:853: set_sprite_tile(2, 4);
	ld	hl,#0x0402
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:854: set_sprite_tile(3, 6);
	ld	hl,#0x0603
	push	hl
	call	_set_sprite_tile
	add	sp, #2
	ret
;main.c:857: void show_flash(void)
;	---------------------------------
; Function show_flash
; ---------------------------------
_show_flash::
;main.c:859: set_sprite_tile(0, 0x8);
	ld	hl,#0x0800
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:860: set_sprite_tile(1, 0xA);
	ld	hl,#0x0A01
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:861: set_sprite_tile(2, 0xC);
	ld	hl,#0x0C02
	push	hl
	call	_set_sprite_tile
	add	sp, #2
;main.c:862: set_sprite_tile(3, 0xE);
	ld	hl,#0x0E03
	push	hl
	call	_set_sprite_tile
	add	sp, #2
	ret
;main.c:865: void intro_scene(void)
;	---------------------------------
; Function intro_scene
; ---------------------------------
_intro_scene::
;main.c:867: show_text("L O A D I N G   A G E N T … ");
	ld	de,#___str_7
	push	de
	call	_show_text
	add	sp, #2
;main.c:869: move_sprite(0, 0x27U, 0x50U);
	ld	hl,#0x5027
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:870: move_sprite(1, 0x2FU, 0x50U);
	ld	hl,#0x502F
	push	hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:871: move_sprite(2, 0x27U, 0x60U);
	ld	hl,#0x6027
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:872: move_sprite(3, 0x2FU, 0x60U);
	ld	hl,#0x602F
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;main.c:874: show_flash();
	call	_show_flash
;main.c:875: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:876: show_agent();
	call	_show_agent
;main.c:877: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:878: show_flash();
	call	_show_flash
;main.c:879: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:880: show_agent();
	call	_show_agent
;main.c:881: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:882: show_flash();
	call	_show_flash
;main.c:883: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:884: show_agent();
	call	_show_agent
;main.c:885: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:886: show_flash();
	call	_show_flash
;main.c:887: delay(50);
	ld	hl,#0x0032
	push	hl
	call	_delay
	add	sp, #2
;main.c:888: show_agent();
	call	_show_agent
;main.c:889: delay(100);
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:890: show_flash();
	call	_show_flash
;main.c:891: delay(100);
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:892: show_agent();
	call	_show_agent
;main.c:893: delay(100);
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:894: show_flash();
	call	_show_flash
;main.c:895: delay(100);
	ld	hl,#0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:896: show_agent();
	call	_show_agent
;main.c:897: delay(200);
	ld	hl,#0x00C8
	push	hl
	call	_delay
	add	sp, #2
;main.c:898: show_flash();
	call	_show_flash
;main.c:899: delay(200);
	ld	hl,#0x00C8
	push	hl
	call	_delay
	add	sp, #2
;main.c:900: show_agent();
	call	_show_agent
;main.c:901: delay(1000);
	ld	hl,#0x03E8
	push	hl
	call	_delay
	add	sp, #2
;main.c:903: show_text("MY TARGET IS    INSIDE.");
	ld	de,#___str_8
	push	de
	call	_show_text
	add	sp, #2
;main.c:904: show_text("THIS DOOR NEEDS A CODE…");
	ld	de,#___str_9
	push	de
	call	_show_text
	add	sp, #2
;main.c:905: clear_window();
	jp	_clear_window
___str_7:
	.ascii "L O A D I N G   A G E N T "
	.db 0xE2
	.db 0x80
	.db 0xA6
	.ascii " "
	.db 0x00
___str_8:
	.ascii "MY TARGET IS    INSIDE."
	.db 0x00
___str_9:
	.ascii "THIS DOOR NEEDS A CODE"
	.db 0xE2
	.db 0x80
	.db 0xA6
	.db 0x00
;main.c:908: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:911: key_a[0] = 0xc2bb5c5b;
	ld	hl,#_key_a
	ld	(hl),#0x5B
	inc	hl
	ld	(hl),#0x5C
	inc	hl
	ld	(hl),#0xBB
	inc	hl
	ld	(hl),#0xC2
;main.c:913: disable_interrupts();
	call	_disable_interrupts
;main.c:914: DISPLAY_OFF;
	call	_display_off
;main.c:917: set_bkg_data(0x36U, alleyway_len, alleyway);
	ld	de,#_alleyway
	push	de
	ld	hl,#0xBE36
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:918: set_bkg_tiles(0, 0, alleyway_map_width, alleyway_map_height, alleyway_map);
	ld	de,#_alleyway_map
	push	de
	ld	hl,#0x0C14
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:921: set_win_tiles(0, 0, text_box_width, text_box_height, text_box);
	ld	de,#_text_box
	push	de
	ld	hl,#0x0614
	push	hl
	ld	hl,#0x0000
	push	hl
	call	_set_win_tiles
	add	sp, #6
;main.c:922: move_win(7,96);
	ld	hl,#0x6007
	push	hl
	call	_move_win
	add	sp, #2
;main.c:925: set_win_data(0U, alphabet_len, alphabet);
	ld	de,#_alphabet
	push	de
	ld	hl,#0x2E00
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:926: clear_window();
	call	_clear_window
;main.c:929: set_win_data(button_address_start, button_len, button);
	ld	de,#_button
	push	de
	ld	hl,#0x0630
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:932: key_a[1] = 0x93373628;
	ld	hl,#(_key_a + 0x0004)
	ld	(hl),#0x28
	inc	hl
	ld	(hl),#0x36
	inc	hl
	ld	(hl),#0x37
	inc	hl
	ld	(hl),#0x93
;main.c:935: set_win_data(arrow_address_1, arrow_tile_len, arrow_tile);
	ld	de,#_arrow_tile
	push	de
	ld	hl,#0x022E
	push	hl
	call	_set_win_data
	add	sp, #4
;main.c:938: SPRITES_8x16;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	2, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:939: set_sprite_data(0, agent_len, agent);
	ld	de,#_agent
	push	de
	ld	hl,#0x0800
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:940: set_sprite_data(0x8, agent_flash_len, agent_flash);
	ld	de,#_agent_flash
	push	de
	ld	hl,#0x0808
	push	hl
	call	_set_sprite_data
	add	sp, #4
;main.c:942: SHOW_BKG;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	0, a
	ld	b,a
	ld	hl,#0xFF40
	ld	(hl),b
;main.c:943: SHOW_SPRITES;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	1, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:944: SHOW_WIN;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	5, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:945: DISPLAY_ON;
	ld	de,#0xFF40
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	set	7, a
	ld	b,a
	ld	l, #0x40
	ld	(hl),b
;main.c:946: enable_interrupts();
	call	_enable_interrupts
;main.c:949: key_a[2] = 0xd0849af3;
	ld	hl,#(_key_a + 0x0008)
	ld	(hl),#0xF3
	inc	hl
	ld	(hl),#0x9A
	inc	hl
	ld	(hl),#0x84
	inc	hl
	ld	(hl),#0xD0
;main.c:951: intro_scene();
	call	_intro_scene
;main.c:953: while(1) {
00106$:
;main.c:955: sleep(4);
	ld	a,#0x04
	push	af
	inc	sp
	call	_sleep
	inc	sp
;main.c:956: process_button_press();
	call	_process_button_press
;main.c:958: if (input_seq_ctr == KONAMI_CODE_LEN) {
	ld	hl,#_input_seq_ctr
	ld	d,(hl)
	ld	e,#0x00
	ld	a,d
	sub	a, #0x0A
	jr	NZ,00102$
	ld	a,e
	or	a, a
	jr	NZ,00102$
;main.c:959: check_konami_code();
	call	_check_konami_code
00102$:
;main.c:962: if (input_seq_ctr >= SEQ_LEN) {
	ld	hl,#_input_seq_ctr
	ld	b,(hl)
	ld	c,#0x00
	ld	a,b
	sub	a, #0x10
	ld	a,c
	sbc	a, #0x00
	jr	C,00106$
;main.c:964: key_a[3] = 0x04183ac4;
	ld	hl,#(_key_a + 0x000c)
	ld	(hl),#0xC4
	inc	hl
	ld	(hl),#0x3A
	inc	hl
	ld	(hl),#0x18
	inc	hl
	ld	(hl),#0x04
;main.c:968: check_door_sequence();
	call	_check_door_sequence
;main.c:969: input_seq_ctr = 0;
	ld	hl,#_input_seq_ctr
	ld	(hl),#0x00
	jp	00106$
	ret
	.area _CODE
	.area _CABS (ABS)
