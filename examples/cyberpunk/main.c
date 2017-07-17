// TODO
// Fix this issue with division: i'm running into the same issue when i replace y = 2 + (counter / 16); with y = 2 + (counter >> 4); o_o

#include <stdio.h>
#include <string.h>
#include <gb/gb.h>

#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))

void set_text_map(char *text, UINT8 len);
void clear_window();
void sleep(UINT8 cycles);
void scroll_text(UINT8 len);
void process_button_press();
void check_sequence();
void pass_level_1();
void fail_level_1();
UINT8 divide_UINT8(UINT8 a, UINT8 b);
void show_text(char *text);
void decrypt(UINT32 *v, UINT32 *k);
void remove_flag_padding();

#define alleyway_len 11
unsigned char alleyway[] =
{
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,
  0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,
  0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,
  0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
  0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x08,0xFF,0x08,0xFF,0x08,0xFF,0x08,0xFF,
  0x08,0xFF,0x08,0xFF,0x08,0xFF,0x08,0xFF,
  0x00,0xFF,0x00,0xFF,0x00,0xFF,0x00,0xFF,
  0x00,0xFF,0x00,0xFF,0x00,0xFF,0xFF,0xFF,
  0x08,0xFF,0x08,0xFF,0x08,0xFF,0x08,0xFF,
  0x08,0xFF,0x08,0xFF,0x08,0xFF,0xFF,0xFF,
  0x00,0xFF,0x00,0x88,0x00,0x88,0x00,0x88,
  0x00,0xFF,0x00,0x88,0x00,0x88,0x00,0x88,
  0x00,0x6D,0x00,0x80,0x00,0x08,0x00,0x80,
  0x00,0xD5,0x00,0x88,0x00,0x00,0x00,0x88,
  0x00,0xBD,0x00,0x08,0x00,0x88,0x00,0x88,
  0x00,0xF5,0x00,0x08,0x00,0x80,0x00,0x88,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
};

#define alleyway_width 20
#define alleyway_height 18
unsigned char alleyway_map[] =
{
  0x38,0x39,0x39,0x37,0x32,0x32,0x32,0x32,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x37,0x39,0x39,0x39,0x38,
  0x39,0x31,0x31,0x31,0x32,0x32,0x32,0x32,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x37,0x37,0x39,0x39,0x38,
  0x31,0x31,0x31,0x31,0x32,0x32,0x32,0x32,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x31,0x39,0x39,0x39,0x39,
  0x39,0x31,0x37,0x31,0x32,0x32,0x32,0x32,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x31,0x37,0x38,0x39,0x38,
  0x39,0x31,0x31,0x31,0x32,0x32,0x32,0x32,0x32,0x32,
  0x31,0x31,0x38,0x34,0x31,0x31,0x37,0x37,0x39,0x31,
  0x31,0x31,0x31,0x31,0x32,0x32,0x32,0x32,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x31,0x31,0x37,0x37,0x39,
  0x31,0x31,0x31,0x31,0x32,0x32,0x32,0x32,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x31,0x31,0x31,0x37,0x38,
  0x31,0x31,0x31,0x37,0x32,0x32,0x33,0x33,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x37,0x31,0x31,0x37,0x37,
  0x31,0x31,0x31,0x31,0x32,0x32,0x33,0x33,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x31,0x31,0x31,0x31,0x37,
  0x39,0x37,0x31,0x31,0x32,0x32,0x33,0x33,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x31,0x31,0x31,0x31,0x37,
  0x31,0x31,0x31,0x31,0x32,0x32,0x33,0x33,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x31,0x31,0x39,0x31,0x37,
  0x37,0x31,0x31,0x31,0x32,0x32,0x33,0x33,0x32,0x32,
  0x31,0x31,0x31,0x34,0x31,0x31,0x31,0x31,0x31,0x31,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,
  0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32,0x32
};


#define agent_len 8
const UINT8 agent[] =
{
  0x00,0x07,0x00,0x0F,0x00,0x0F,0x00,0x7F,
  0x00,0x6F,0x01,0x6E,0x01,0xEE,0x00,0x0F,
  0x00,0x03,0x01,0x00,0x00,0x01,0x00,0x07,
  0x00,0x0F,0x01,0x0E,0x00,0x1F,0x01,0x1E,
  0x00,0xF8,0x00,0xFC,0x00,0xFC,0x3C,0xC0,
  0x3C,0xC8,0xBC,0x50,0xBC,0x50,0x6C,0x90,
  0x38,0xC0,0xF0,0x00,0x00,0xC0,0x00,0xF0,
  0x00,0xF8,0x00,0xF8,0x00,0xF8,0x00,0xF8,
  0x00,0x1F,0x1D,0x02,0x1C,0x03,0x1C,0x03,
  0x1C,0x03,0x1E,0x01,0x1E,0x01,0x1E,0x01,
  0x00,0x0F,0x00,0x0F,0x0F,0x00,0x00,0x1E,
  0x00,0x1E,0x00,0x3E,0x00,0x3E,0x00,0x3F,
  0x00,0xF8,0x00,0xF8,0x00,0xFC,0x00,0xFC,
  0x02,0xFC,0x02,0xFC,0x02,0xFC,0x02,0xFC,
  0x00,0x3C,0x00,0x3C,0x3C,0x00,0x00,0x3C,
  0x00,0x3C,0x00,0x3C,0x00,0x3E,0x00,0x3F
};

// 8 tiles + 1 blank tile
#define window_border_len 9
unsigned char window_border[] =
{
  0x1F,0x1F,0x20,0x3F,0x40,0x70,0x87,0xE0,
  0x8F,0xC3,0x9C,0xC4,0x98,0xC8,0x98,0xC8,
  0x98,0xC8,0x98,0xC8,0x98,0xC8,0x98,0xC8,
  0x98,0xC8,0x98,0xC8,0x98,0xC8,0x98,0xC8,
  0xFF,0xFF,0x00,0xFF,0x00,0x00,0xFF,0x00,
  0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
  0x98,0xC8,0x98,0xC8,0x94,0xC8,0x83,0xCC,
  0x80,0xE7,0x40,0x70,0x2F,0x30,0x1F,0x1F,
  0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,
  0x00,0xFF,0x00,0x00,0xFF,0x00,0xFF,0xFF,
  0x13,0x09,0x13,0x09,0x23,0x19,0xC3,0x31,
  0x07,0xE1,0x0E,0x02,0xFC,0x04,0xF8,0xF8,
  0x13,0x09,0x13,0x09,0x13,0x09,0x13,0x09,
  0x13,0x09,0x13,0x09,0x13,0x09,0x13,0x09,
  0xF8,0xF8,0x04,0xFC,0x02,0x0E,0xE1,0x07,
  0xF1,0xC3,0x23,0x39,0x13,0x09,0x13,0x09,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
};

#define text_box_width 20
#define text_box_height 6
#define text_boxBank 0

unsigned char text_box[] =
{
  0x80,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,
  0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x87,
  0x81,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,
  0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x86,
  0x81,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,
  0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x86,
  0x81,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,
  0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x86,
  0x81,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,
  0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x86,
  0x83,0x84,0x84,0x84,0x84,0x84,0x84,0x84,0x84,0x84,
  0x84,0x84,0x84,0x84,0x84,0x84,0x84,0x84,0x84,0x85
};

//ALPHABET CHARACTERS
// From Harvest Moon GBC 2
#define alphabet_len 46 // Number of tiles
unsigned char alphabet[] =
{
    // Numbers 0-9
    // NOTE: this is different from the generated numbers
    // because i moved 0 to the front
    0x7C,0x7C,0x82,0x82,0x82,0x82,0x82,0x82,
    0x82,0x82,0x82,0x82,0x7C,0x7C,0x00,0x00,
    0x10,0x10,0x30,0x30,0x10,0x10,0x10,0x10,
    0x10,0x10,0x10,0x10,0x7C,0x7C,0x00,0x00,
    0x7C,0x7C,0x82,0x82,0x02,0x02,0x0C,0x0C,
    0x30,0x30,0x40,0x40,0xFE,0xFE,0x00,0x00,
    0x7C,0x7C,0x82,0x82,0x02,0x02,0x3C,0x3C,
    0x02,0x02,0x82,0x82,0x7C,0x7C,0x00,0x00,
    0x0C,0x0C,0x14,0x14,0x24,0x24,0x44,0x44,
    0x84,0x84,0xFE,0xFE,0x04,0x04,0x00,0x00,
    0xFC,0xFC,0x80,0x80,0x80,0x80,0xFC,0xFC,
    0x02,0x02,0x82,0x82,0x7C,0x7C,0x00,0x00,
    0x7C,0x7C,0x82,0x82,0x80,0x80,0xFC,0xFC,
    0x82,0x82,0x82,0x82,0x7C,0x7C,0x00,0x00,
    0x7E,0x7E,0x82,0x82,0x02,0x02,0x04,0x04,
    0x04,0x04,0x08,0x08,0x08,0x08,0x00,0x00,
    0x7C,0x7C,0x82,0x82,0x82,0x82,0x7C,0x7C,
    0x82,0x82,0x82,0x82,0x7C,0x7C,0x00,0x00,
    0x7C,0x7C,0x82,0x82,0x82,0x82,0x7E,0x7E,
    0x02,0x02,0x82,0x82,0x7C,0x7C,0x00,0x00,

    // Letters
    0x10,0x10,0x28,0x28,0x28,0x28,0x44,0x44,
    0x7C,0x7C,0x82,0x82,0x82,0x82,0x00,0x00,
    0xF8,0xF8,0x84,0x84,0x84,0x84,0xFC,0xFC,
    0x82,0x82,0x82,0x82,0xFC,0xFC,0x00,0x00,
    0x3C,0x3C,0x42,0x42,0x80,0x80,0x80,0x80,
    0x80,0x80,0x42,0x42,0x3C,0x3C,0x00,0x00,
    0xF8,0xF8,0x84,0x84,0x82,0x82,0x82,0x82,
    0x82,0x82,0x84,0x84,0xF8,0xF8,0x00,0x00,
    0xFE,0xFE,0x80,0x80,0x80,0x80,0xFC,0xFC,
    0x80,0x80,0x80,0x80,0xFE,0xFE,0x00,0x00,
    0xFE,0xFE,0x80,0x80,0x80,0x80,0xFC,0xFC,
    0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,
    0x3C,0x3C,0x42,0x42,0x80,0x80,0x9E,0x9E,
    0x82,0x82,0x42,0x42,0x3C,0x3C,0x00,0x00,
    0x82,0x82,0x82,0x82,0x82,0x82,0xFE,0xFE,
    0x82,0x82,0x82,0x82,0x82,0x82,0x00,0x00,
    0x7C,0x7C,0x10,0x10,0x10,0x10,0x10,0x10,
    0x10,0x10,0x10,0x10,0x7C,0x7C,0x00,0x00,
    0x7E,0x7E,0x08,0x08,0x08,0x08,0x08,0x08,
    0x88,0x88,0x88,0x88,0x70,0x70,0x00,0x00,
    0x84,0x84,0x88,0x88,0x90,0x90,0xB0,0xB0,
    0xC8,0xC8,0x84,0x84,0x82,0x82,0x00,0x00,
    0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
    0x80,0x80,0x80,0x80,0xFE,0xFE,0x00,0x00,
    0x82,0x82,0xC6,0xC6,0xAA,0xAA,0x92,0x92,
    0x82,0x82,0x82,0x82,0x82,0x82,0x00,0x00,
    0x82,0x82,0xC2,0xC2,0xA2,0xA2,0x92,0x92,
    0x8A,0x8A,0x86,0x86,0x82,0x82,0x00,0x00,
    0x38,0x38,0x44,0x44,0x82,0x82,0x82,0x82,
    0x82,0x82,0x44,0x44,0x38,0x38,0x00,0x00,
    0xFC,0xFC,0x82,0x82,0x82,0x82,0xFC,0xFC,
    0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,
    0x38,0x38,0x44,0x44,0x82,0x82,0x82,0x82,
    0x8A,0x8A,0x44,0x44,0x3A,0x3A,0x00,0x00,
    0xFC,0xFC,0x82,0x82,0x82,0x82,0xFC,0xFC,
    0x88,0x88,0x84,0x84,0x82,0x82,0x00,0x00,
    0x78,0x78,0x84,0x84,0x80,0x80,0x7C,0x7C,
    0x02,0x02,0x82,0x82,0x7C,0x7C,0x00,0x00,
    0xFE,0xFE,0x10,0x10,0x10,0x10,0x10,0x10,
    0x10,0x10,0x10,0x10,0x10,0x10,0x00,0x00,
    0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,
    0x82,0x82,0x82,0x82,0x7C,0x7C,0x00,0x00,
    0x82,0x82,0x82,0x82,0x44,0x44,0x44,0x44,
    0x28,0x28,0x28,0x28,0x10,0x10,0x00,0x00,
    0x82,0x82,0x92,0x92,0xAA,0xAA,0xAA,0xAA,
    0xC6,0xC6,0xC6,0xC6,0x82,0x82,0x00,0x00,
    0xC6,0xC6,0x44,0x44,0x28,0x28,0x10,0x10,
    0x28,0x28,0x44,0x44,0xC6,0xC6,0x00,0x00,
    0x82,0x82,0x44,0x44,0x28,0x28,0x10,0x10,
    0x10,0x10,0x10,0x10,0x10,0x10,0x00,0x00,
    0xFE,0xFE,0x04,0x04,0x08,0x08,0x10,0x10,
    0x20,0x20,0x40,0x40,0xFE,0xFE,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x60,0x60,0x92,0x92,
    0x0C,0x0C,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0xFE,0xFE,0x00,0x00,
    0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,
    0x10,0x10,0x00,0x00,0x10,0x10,0x00,0x00,
    0x3C,0x3C,0x42,0x42,0x42,0x42,0x1C,0x1C,
    0x10,0x10,0x00,0x00,0x10,0x10,0x00,0x00,
    0x18,0x18,0x18,0x18,0x08,0x08,0x10,0x10,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x18,0x18,0x18,0x18,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x18,0x18,
    0x18,0x18,0x08,0x08,0x10,0x10,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x54,0x54,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x10,0x10,
    0x00,0x00,0x10,0x10,0x00,0x00,0x00,0x00
};

#define arrow_address_1 0x2EU
#define arrow_address_2 0x2FU
#define arrow_tile_len 2U // number of 8*8 tiles
unsigned char arrow_tile[] =
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x7E,
  0x7E,0x7E,0x7E,0x7E,0x3C,0x3C,0x18,0x18,
  0x00,0x00,0x00,0x00,0x00,0x7E,0x7E,0x7E,
  0x7E,0x7E,0x3C,0x3C,0x18,0x18,0x00,0x00
};

#define text_map_width 16
#define text_map_height 2
unsigned char text_map[] =
{
    22,23,41,04,04,04,04,04,04,04,04,04,04,04,04,04,
    04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04
};

// Empty tile address
#define EMPTY_TILE_ADDR 0x24U

// Solution sequence for level 1
#define SEQ_LEN 0x10U
const UINT8 solution_seq[] =
{
    J_DOWN, J_LEFT, J_A, J_UP, J_B, J_A, J_UP, J_DOWN,
    J_DOWN, J_A, J_UP, J_RIGHT, J_LEFT, J_RIGHT, J_B, J_DOWN
};

// Space to save the user inputted sequence for level 1
UINT8 input_seq[SEQ_LEN];
UINT8 input_seq_ctr = 0;

// Encrypted Flag
#define FLAG_LEN 8
UINT8 flag_a[] =
{
    0x12, 0x64, 0x88, 0xf7, 0x77, 0x95, 0x8a, 0x5a
};
UINT8 flag_b[] =
{
    0xe1, 0xd5, 0xfa, 0x93, 0x3e, 0x13, 0x30, 0x5f
};

// Space to load the keys for TEA decryption!
UINT32 key_a[4];
UINT32 key_b[4];

    // // REMOVE ME
    // // 128 bit key
    // UINT32 key_a[4] = { 0xc2bb5c5b, 0x93373628,
    //                       0xd0849af3, 0x04183ac4 };

    // // Second 128 bit Key
    // UINT32 key_b[4] = { 0x72ae38ba, 0xa106f553,
    //                       0x1ea97c53, 0xcfa8e0b3 };

UINT8 divide_UINT8(UINT8 a, UINT8 b)
{
    // Return a / b
    UINT8 result = 0;
    while (a >= b) {
        a -= b;
        result++;
    }
    return result;
}

// Edits the text map
// Must call update separately for the text to appear in the window
// Only supports _uppercase_ characters, numbers and ~_!?'.,…:
// Does not check for validity of input characters.
// You must also handle new lines yourself.
// You can write up to 31 characters.
// The last character is the arrow prompt.
// Please use with caution
void set_text_map(char *text, UINT8 len)
{
    UINT8 i;
    // Letters start at tile 0A
    // Numbers start at tile 0

    // Reset text map to all blank spaces
    // Space is tile 4
    // FIXME the space tile number shouldn't be hard coded
    memset(text_map, EMPTY_TILE_ADDR, text_map_width*text_map_height);

    // Don't try to set the text if there is nothing to write
    if (!text || len > 0x20U || len <= 0x0U) {
        return;
    }


    // FIXME THIS SHOULDN"T BE HARDCODED TILE INDECIES

    for (i = 0; i < len; ++i) {
        // Upper case characters
        if (text[i] >= 'A' && text[i] <= 'Z') {
            text_map[i] = text[i] - 'A' + 0xAU; // eg. character A - ascii value of A + index of A in VRAM
        }

        // Numbers
        if (text[i] >= '0' && text[i] <= '9') {
            text_map[i] = text[i] - '0';
        }

        // Symbols (~_!?'.,…:)
        if (text[i] == '~') {
            text_map[i] = 0x25U;
        } else if (text[i] == '_') {
            text_map[i] = 0x26U;
        } else if (text[i] == '!') {
            text_map[i] = 0x27U;
        } else if (text[i] == '?') {
            text_map[i] = 0x28U;
        } else if (text[i] == '\'') {
            text_map[i] = 0x29U;
        } else if (text[i] == '.') {
            text_map[i] = 0x2AU;
        } else if (text[i] == ',') {
            text_map[i] = 0x2BU;
        } else if (text[i] == '…') {
            text_map[i] = 0x2CU;
        } else if (text[i] == ':') {
            text_map[i] = 0x2DU;
        }
    }

    // Write the arrow as the last character.
    text_map[len] = arrow_address_1;
}

// CAREFUL
// This function will edit the text map
void clear_window()
{
    // FIXME here are more hard coded tile indices
    memset(text_map, EMPTY_TILE_ADDR, text_map_width * text_map_height);
    set_win_tiles(0x2U, 0x2U, text_map_width, text_map_height, text_map);
}

void show_text(char *text)
{
    UINT8 x, y;
    UINT8 cursor_state = 0;
    UINT8 text_len = strlen(text);
    UINT8 cursor_index = text_len;

    clear_window();
    set_text_map(text, text_len);

    // Plus one to account for the extra arrow character.
    text_len++;
    scroll_text(text_len);

    // Animate the cursor while waiting for text to advance
    // from button input.
    x = 2 + (cursor_index % 16);
    // y = 2 + (text_len / 16);
    y = 2 + divide_UINT8(cursor_index, 16);
    // FIXME why wouldn't division work? same issue as above...
    while (!joypad()) {
        if (cursor_state == 0) {
            text_map[cursor_index] = arrow_address_2;
        } else {
            text_map[cursor_index] = arrow_address_1;
        }

        set_win_tiles(x, y, 1, 1, &text_map[cursor_index]);
        cursor_state = !cursor_state;
        delay(50);
        sleep(4);
    }
}

// Scroll text
// Display the new text character by character
// Assumes that the text_map has already been set
// Assumes that we are writing to a blank window.
// Must have called clear window before calling this.
void scroll_text(UINT8 len)
{
    UINT8 counter, x, y;
    for (counter = 0; counter < len; ++counter) {
        x = 2 + (counter % 16);
        y = 2 + divide_UINT8(counter, 16);
        // FIXME why wouldn't division work?
        // y = 2 + (counter / 16);
        // //printf("%d\n", (unsigned int)y);
        set_win_tiles(x, y, 1, 1, &text_map[counter]);
        sleep(4);
    }
}

void sleep(UINT8 cycles)
{
    UINT8 counter;
    for(counter = 0; counter < cycles; ++counter){
        wait_vbl_done();
    }
}

void process_button_press()
{
    UINT8 input = joypad();
    if (input) {
        input_seq[input_seq_ctr] = joypad();
        //printf("%d ", input_seq[input_seq_ctr]);
        input_seq_ctr++;

        // For debouncing
        // Don't read in another button press too quickly.
        delay(50);
    }
}

void check_sequence()
{
    UINT8 pass = 0;
    UINT8 i;

    for (i = 0; i < SEQ_LEN; ++i) {
        // Scattering the key
        key_b[0] = 0x72ae38ba;
        if (input_seq[i] & solution_seq[i]) {
            pass++;
            // Scattering the key
            key_b[1] = 0xa106f553;
        }
    }
    // REMOVE ME
    if (pass == SEQ_LEN) {

        // Scattering the key
        key_b[2] = 0x1ea97c53;

        // Show the passing text
        // "That worked. I'm in."
        // "Flag: asdjasldasldasd"
        // FIXME
        //printf("\ncorrect\n");
        pass_level_1();
    } else {
        // Show the failing text
        // "That's not it. Let me try again."
        // FIXME
        //printf("\nwrong\n");
        fail_level_1();
    }
}

void pass_level_1()
{
    UINT8 flag_string[31];

    // Scattering the key
    key_b[3] = 0xcfa8e0b3;

    // Decrypt
    decrypt((UINT32 *)flag_a, key_a);
    decrypt((UINT32 *)flag_b, key_b);

    // Remove padding
    remove_flag_padding();

    // Concat
    strcpy((char *)flag_string, "1ST FLAG IS     ");
    memcpy(flag_string + 0x10U, flag_a, FLAG_LEN);
    flag_string[0x18U] = '\0';
    strcat((char *)flag_string, flag_b);
    strcat((char *)flag_string, ".");

    SHOW_WIN;
    show_text("THAT WORKED.");
    show_text("I\'M IN.");
    show_text((char *)flag_string);
    HIDE_WIN;

    // Go to level 2
    while (1) {}
}

void fail_level_1()
{
    SHOW_WIN;
    show_text("NO GOOD.");
    show_text("LET ME TRY SOME THING ELSE.");
    HIDE_WIN;
}

void decrypt(UINT32 *v, UINT32 *k)
{
    UINT32 v0=v[0], v1=v[1], sum=0xC6EF3720, i;  /* set up */
    UINT32 delta=0x9e3779b9;                     /* a key schedule constant */
    UINT32 k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i<32; i++) {                         /* basic cycle start */
        v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
        v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        sum -= delta;
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}

// PKCS7 padding style
void remove_flag_padding()
{
    // Assumes that Flag B has been decrypted
    // Removes the len and adds null terms in its place.
    UINT8 flab_b_len = flag_b[FLAG_LEN - 1];
    memset(flag_b + flab_b_len, '\0', FLAG_LEN - flab_b_len);
}

void main()
{
    // Scattering the key
    key_a[0] = 0xc2bb5c5b;

    disable_interrupts();
    DISPLAY_OFF;

    // load background
    set_bkg_data(0x30U, alleyway_len, alleyway);
    set_bkg_tiles(0, 0, alleyway_width, alleyway_height, alleyway_map);

    // Initialize the window
    set_win_data(0x80U, window_border_len, window_border);
    set_win_tiles(0, 0, text_box_width, text_box_height, text_box);
    move_win(7,96);

    // Write text to the window
    set_win_data(0U, alphabet_len, alphabet);
    set_win_tiles(2U, 2U, text_map_width, text_map_height, text_map);

    // Scattering the key
    key_a[1] = 0x93373628;

    // Set the arrow in memory
    set_win_data(arrow_address_1, arrow_tile_len, arrow_tile);

    // Load sprite
    SPRITES_8x16;
    set_sprite_data(0, agent_len, agent);
    set_sprite_tile(0, 0);
    set_sprite_tile(1, 2);
    set_sprite_tile(2, 4);
    set_sprite_tile(3, 6);
    move_sprite(0, 0x30U, 0x50U);
    move_sprite(1, 0x38U, 0x50U);
    move_sprite(2, 0x30U, 0x60U);
    move_sprite(3, 0x38U, 0x60U);

    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;
    enable_interrupts();

    // Scattering the key
    key_a[2] = 0xd0849af3;

    SHOW_WIN;
    show_text("MY TARGET IS    INSIDE.");
    show_text("THIS DOOR NEEDS A CODE…");
    HIDE_WIN;

    while(1) {
        /* Skip four VBLs (slow down animation) */
        sleep(4);
        process_button_press();

        if (input_seq_ctr >= SEQ_LEN) {
            // Scattering the key
            key_a[3] = 0x04183ac4;

            // User has inputted 16 button presses
            // Check if seq is correct
            check_sequence();
            input_seq_ctr = 0;
        }
    }
}

// 20 tiles across, 18 down <- main screen size