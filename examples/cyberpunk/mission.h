#include <gb/gb.h>
#include <stdio.h>
#include <string.h>

#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))

UINT8 divide_UINT8(UINT8 a, UINT8 b);
UINT8 log2(UINT8 x);
UINT8 number_of_bits_set(UINT8 x);
UINT8 return_lsb_set(UINT8 x);
void sleep(UINT8 cycles);
void set_text_map(char *text, UINT8 *len);
void animate_and_wait_cursor(UINT8 cursor_index);
void show_text(char *text);
void scroll_text(UINT8 len);
void clear_window(void);
void display_button_press(void);
void process_button_press(void);
void check_door_sequence(void);
void check_konami_code(void);
void pass_level_1(void);
void fail_level_1(void);
void decrypt(UINT32 *v, UINT32 *k);
void remove_flag_padding(void);
void intro_scene(void);

// Background animation animation
void fade_screen_to_next(const UINT8 *starting_map, const UINT8 *ending_map);
void overlay_black_tiles(UINT8 *bg_map, UINT8 *black_map, UINT8 screen_size);
void shift_bg_map(const UINT8 *source_map, UINT8 *dest_map, UINT8 screen_size, UINT8 offset);

#define EMPTY_TILE_ADDR     0x24U
#define text_map_width      0x10U
#define text_map_height     0x02U

UINT8 text_map[] =
{
    22,23,41,04,04,04,04,04,04,04,04,04,04,
    04,04,04,04,04,04,04,04,04,04,04,04,04,
    04,04,04,04,04,04
};


/***************************/
/*                         */
/*         Level 1         */
/*                         */
/***************************/


// Konami Code Sequence for fun
#define KONAMI_CODE_LEN 0xAU
const UINT8 konami_code_seq[] =
{
    J_UP, J_UP, J_DOWN, J_DOWN, J_LEFT,
    J_RIGHT, J_LEFT, J_RIGHT, J_B, J_A
};

// Solution sequence for level 1
#define SEQ_LEN 0x10U
const UINT8 solution_seq[] =
{
    J_DOWN, J_LEFT, J_A, J_UP, J_B, J_A,
    J_UP, J_DOWN, J_DOWN, J_A, J_UP,
    J_RIGHT, J_LEFT, J_RIGHT, J_B, J_DOWN
};

// Space to save the user inputted sequence for level 1
UINT8 input_seq[SEQ_LEN];
UINT8 input_seq_ctr = 0x0;

// Encrypted Flag
#define FLAG_LEN 0x08
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

// Success or failure "jump" table
void (*level_1_table[2]) (void) =
{
    pass_level_1,
    fail_level_1
};