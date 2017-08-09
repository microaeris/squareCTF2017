#include "mission.h"
#include "map_and_tile_data.h"

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
// You can write up to 32 characters.
// The last character is the arrow prompt if you have space for it.
// This function will edit the value of len as needed (ie. for ellipses)
// Please use with caution
//
// Note:
// Letters start at tile 0A
// Numbers start at tile 0
void set_text_map(char *text, UINT8 *len)
{
    UINT8 i;

    // Reset text map to all blank spaces
    memset(text_map, EMPTY_TILE_ADDR, text_map_width*text_map_height);

    // Don't try to set the text if there is nothing to write
    if (!text || *len > 0x20U || *len <= 0x0U) {
        return;
    }

    for (i = 0; i < *len; ++i) {
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
            // Ellipses has a strlen of 3
            // even though it's displayed
            // as a single character.
            *len -= 2;
        } else if (text[i] == ':') {
            text_map[i] = 0x2DU;
        }
    }

    if (*len < 0x2U) {
        // Write the arrow as the last character.
        text_map[*len] = arrow_address_1;
    }
}

// CAREFUL
// This function will edit the text map
void clear_window(void)
{
    memset(text_map, EMPTY_TILE_ADDR, text_map_width * text_map_height);
    set_win_tiles(0x2U, 0x2U, text_map_width, text_map_height, text_map);
}

// Can only show text between 1-31 characters long
void show_text(char *text)
{
    UINT8 text_len = strlen(text);
    UINT8 cursor_index;

    clear_window();
    set_text_map(text, &text_len);
    cursor_index = text_len;

    // Plus one to account for the extra arrow character.
    text_len++;
    scroll_text(text_len);
    animate_and_wait_cursor(cursor_index);
}

// Can only show text 33+ characters long
// Text will be chunked up into 32 character long
// segments. The last segment of whatever is remaining
// must leave 1 character for a cursor.
// Note that there is no way to display a string that
// is 32 characters long because then only the cursor
// will be in the next window, which looks weird.
void show_long_text(char *text)
{
    UINT8 temp_text[32];
    UINT8 temp_text_len = 32;
    UINT8 text_len = strlen(text);
    UINT8 cursor_index;
    UINT8 num_text_windows;
    UINT8 i;

    if (text_len < 33) {
        return;
    }

    // Number of text windows we need to
    // display the entire message
    num_text_windows = text_len / 32;

    // Call show_text for every 32 characters,
    // except for the last batch of characters
    for (i = 0; i < num_text_windows; ++i) {
        memcpy(&temp_text, text + (i * 32), 32);

        // Need to reset this every loop because the
        // text_len is an out param to set_text_map().
        temp_text_len = 32;

        clear_window();
        set_text_map(temp_text, &temp_text_len);
        scroll_text(temp_text_len);
        delay(200);
    }

    // Last batch of characters is a special case
    temp_text_len = text_len % 32;
    memcpy(&temp_text, text + (num_text_windows * 32), temp_text_len);
    clear_window();
    set_text_map(temp_text, &temp_text_len);
    cursor_index = temp_text_len;
    // Plus one to account for the extra arrow character.
    temp_text_len++;
    scroll_text(temp_text_len);
    animate_and_wait_cursor(cursor_index);
}

void animate_and_wait_cursor(UINT8 cursor_index)
{
    UINT8 x, y;
    UINT8 cursor_state = 0x0;

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
    delay(50);
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

void shift_bg_map(const UINT8 *source_map, UINT8 *dest_map, UINT8 screen_size, UINT8 offset)
{
    UINT8 i;
    for (i = 0; i < screen_size; ++i) {
        dest_map[i] = source_map[i] + offset;
    }
}

// Overlay first static texture
// Assumes that none of the tiles are already index 0 FIXME
// actually, that will probably stay true since my alphabet is loaded at
// tile 0 in VRAM
void overlay_black_tiles(UINT8 *bg_map, UINT8 *black_map, UINT8 screen_size)
{
    UINT8 i;
    for (i = 0; i < screen_size; ++i) {
        if (black_map[i] == 0) {
            bg_map[i] = EMPTY_TILE_ADDR;
        }
    }
}

// Fade the background layer to all black
// Swap out tiles to use black tiles in a pattern
// Glitch out the screen and load in next screen
void fade_screen_to_next(const UINT8 *starting_map, const UINT8 *ending_map)
{
    UINT8 temp_map[screen_tile_size];
    UINT8 shift_map[screen_tile_size];
    memcpy(temp_map, starting_map, screen_tile_size);

    // First static texture
    overlay_black_tiles(temp_map, tv_static_1_map, screen_tile_size);
    set_bkg_tiles(0, 0, bg_map_width, bg_map_height, temp_map);
    delay(500);

    shift_bg_map(intro_scene_map, shift_map, screen_tile_size, 20);
    set_bkg_tiles(0, 0, bg_map_width, bg_map_height, shift_map);
    memcpy(temp_map, starting_map, screen_tile_size);
    delay(500);

    // Second static texture
    overlay_black_tiles(temp_map, tv_static_2_map, screen_tile_size);
    set_bkg_tiles(0, 0, bg_map_width, bg_map_height, temp_map);
    delay(200);

    shift_bg_map(intro_scene_map, shift_map, screen_tile_size, 8);
    set_bkg_tiles(0, 0, bg_map_width, bg_map_height, shift_map);
    memcpy(temp_map, starting_map, screen_tile_size);
    delay(100);

    // Third static texture
    overlay_black_tiles(temp_map, tv_static_3_map, screen_tile_size);
    set_bkg_tiles(0, 0, bg_map_width, bg_map_height, temp_map);
    delay(50);

    // Load in new texture in one go
    set_bkg_data(0x36U, alleyway_len, alleyway);
    set_bkg_tiles(0, 0, bg_map_width, bg_map_height, ending_map);
}

void sleep(UINT8 cycles)
{
    UINT8 counter;
    for(counter = 0; counter < cycles; ++counter){
        wait_vbl_done();
    }
}

void process_button_press(void)
{
    UINT8 input = joypad();
    if (input) {
        if (number_of_bits_set(input) > 1) {
            input = return_lsb_set(input);
        }

        if (input == J_START || input == J_SELECT) {
            return;
        }

        input_seq[input_seq_ctr] = input;
        input_seq_ctr++;
        display_button_press();

        // For debouncing
        // Don't read in another button press too quickly.
        delay(50);
    }
}

// Return number of bits set in the input
UINT8 number_of_bits_set(UINT8 x)
{
    UINT8 i = 0x0U;
    UINT8 result = 0x0U;
    UINT8 mask = 0x1U;

    if (x == 0x0U) {
        return result;
    }

    for (i = 0x0U; i < 0x8U; ++i) {
        if (mask & x) {
            result++;
        }
        mask = mask << 0x1;
    }

    return result;
}

// Returns the least significant bit that is set to 1.
// eg. x = 0b01010101, result = 0b1
// eg. x = 0b00110000, result = 0b00010000
UINT8 return_lsb_set(UINT8 x)
{
    UINT8 mask = 0x1U;

    if (x == 0x0U) {
        return 0x0U;
    }

    while (!(mask & x)) {
        mask = mask << 0x1;
    }

    return mask;
}

// Computes log base 2 of x.
// Assumes x is a multiple of 2.
UINT8 log2(UINT8 x)
{
    UINT8 result = 0x0U;
    UINT8 mask = 0x1U;

    while (mask != x) {
        result++;
        mask = mask << 0x1;
    }

    return result;
}

// Shows the latest button press
// Assumes that all the previous button presses have already been drawn.
void display_button_press(void)
{
    UINT8 x;
    UINT8 button_pressed;
    UINT8 button_address;
    UINT8 input_index;

    input_index = input_seq_ctr - 1;
    button_pressed = input_seq[input_index];
    button_address = button_address_start + log2(button_pressed);
    text_map[input_index] = button_address;
    x = 2 + (input_index % 16);
    set_win_tiles(x, 0x2U, 0x1U, 0x1U, &text_map[input_index]);
}

void check_konami_code(void)
{
    UINT8 pass = 0;
    UINT8 i;

    for (i = 0; i < KONAMI_CODE_LEN; ++i) {
        if (input_seq[i] & konami_code_seq[i]) {
            pass++;
        }
    }

    if (pass == KONAMI_CODE_LEN) {
        show_text("LONG LIVE       KOJIMA.");
        input_seq_ctr = 0;
        clear_window();
    }
}

void check_door_sequence(void)
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

    // Scattering the key
    key_b[2] = 0x1ea97c53;

    // // Set the zero flag to use the offset into the level 1 jump table
    // _asm

    // _endasm ;

    if (pass == SEQ_LEN) {
        pass_level_1();
    } else {
        fail_level_1();
    }
}

void pass_level_1(void)
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

    show_text("THAT WORKED.");
    show_text("I\'M IN.");
    show_text((char *)flag_string);
    clear_window();
    input_seq_ctr = 0;

    // Go to level 2
    while (1) {}
}

void fail_level_1(void)
{
    show_text("NO GOOD.");
    show_text("LET ME TRY SOME THING ELSE.");
    clear_window();
    input_seq_ctr = 0;
}

void decrypt(UINT32 *v, UINT32 *k)
{
    UINT32 v0=v[0], v1=v[1], sum=0xC6EF3720, i;     /* set up */
    UINT32 delta=0x9e3779b9;                        /* a key schedule constant */
    UINT32 k0=k[0], k1=k[1], k2=k[2], k3=k[3];      /* cache key */
    for (i=0; i<32; i++) {                          /* basic cycle start */
        v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
        v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        sum -= delta;
    }                                               /* end cycle */
    v[0]=v0; v[1]=v1;
}

// PKCS7 padding style
void remove_flag_padding(void)
{
    // Assumes that Flag B has been decrypted
    // Removes the len and adds null terms in its place.
    UINT8 flab_b_len = flag_b[FLAG_LEN - 1];
    memset(flag_b + flab_b_len, '\0', FLAG_LEN - flab_b_len);
}

void show_agent(void)
{
    set_sprite_tile(0, 0);
    set_sprite_tile(1, 2);
    set_sprite_tile(2, 4);
    set_sprite_tile(3, 6);
}

void show_flash(void)
{
    set_sprite_tile(0, 0x8);
    set_sprite_tile(1, 0xA);
    set_sprite_tile(2, 0xC);
    set_sprite_tile(3, 0xE);
}

void intro_scene(void)
{
    show_long_text("BOSS: OUR VR    WORLD IS AT     RISK.");
    show_long_text("YOUR MISSION IS TO TRACK DOWN   THE ROGUE AI.");
    show_text("ARE YOU READY?");
    show_text("AGENT: YOU GOT  IT BOSS.");
    show_text("I'M GOING IN.");
    clear_window();

    fade_screen_to_next(intro_scene_map, alleyway_map);

    show_text("L O A D I N G   A G E N T … ");

    move_sprite(0, 0x27U, 0x50U);
    move_sprite(1, 0x2FU, 0x50U);
    move_sprite(2, 0x27U, 0x60U);
    move_sprite(3, 0x2FU, 0x60U);

    show_flash();
    delay(50);
    show_agent();
    delay(50);
    show_flash();
    delay(50);
    show_agent();
    delay(50);
    show_flash();
    delay(50);
    show_agent();
    delay(50);
    show_flash();
    delay(50);
    show_agent();
    delay(100);
    show_flash();
    delay(100);
    show_agent();
    delay(100);
    show_flash();
    delay(100);
    show_agent();
    delay(200);
    show_flash();
    delay(200);
    show_agent();
    delay(1000);

    show_text("MY TARGET IS    INSIDE.");
    show_text("THIS DOOR NEEDS A CODE…");
    clear_window();
}

void main()
{
    // Scattering the key
    key_a[0] = 0xc2bb5c5b;

    disable_interrupts();
    DISPLAY_OFF;

    // load background
    set_bkg_data(0x36U, intro_scene_tiles_len, intro_scene_tiles);
    set_bkg_tiles(0, 0, bg_map_width, bg_map_height, intro_scene_map);

    // Initialize the window
    set_win_tiles(0, 0, text_box_width, text_box_height, text_box);
    move_win(7,96);

    // Write text to the window
    set_win_data(0U, alphabet_len, alphabet);
    clear_window();

    // Load buttons
    set_win_data(button_address_start, button_len, button);

    // Scattering the key
    key_a[1] = 0x93373628;

    // Set the arrow in memory
    set_win_data(arrow_address_1, arrow_tile_len, arrow_tile);

    // Load sprites
    SPRITES_8x16;
    set_sprite_data(0, agent_len, agent);
    set_sprite_data(0x8, agent_flash_len, agent_flash);

    SHOW_BKG;
    SHOW_SPRITES;
    SHOW_WIN;
    DISPLAY_ON;
    enable_interrupts();

    // Scattering the key
    key_a[2] = 0xd0849af3;

    intro_scene();

    while(1) {
        /* Skip four VBLs (slow down animation) */
        sleep(4);
        process_button_press();

        if (input_seq_ctr == KONAMI_CODE_LEN) {
            check_konami_code();
        }

        if (input_seq_ctr >= SEQ_LEN) {
            // Scattering the key
            key_a[3] = 0x04183ac4;

            // User has inputted 16 button presses
            // Check if seq is correct
            check_door_sequence();
        }
    }
}
