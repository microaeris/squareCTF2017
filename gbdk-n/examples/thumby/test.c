#include <stdint.h>
#include <stdio.h>

void scroll_text(uint8_t len)
{
    uint8_t counter, x, y;
    for (counter = 0; counter < len; ++counter) {
        x = 2 + (counter % 16);
        y = 2 + (counter / 16);
        printf("%d\n", y);

    }
}

void main() {
    scroll_text(11);
}