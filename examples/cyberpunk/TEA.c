#include <stdint.h>
#include <stdio.h>
#include <string.h>

// gcc -Wall TEA.c -o TEA

void encrypt (uint32_t* v, uint32_t* k) {
    uint32_t v0=v[0], v1=v[1], sum=0, i;           /* set up */
    uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
    uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i < 32; i++) {                       /* basic cycle start */
        sum += delta;
        v0 += ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        v1 += ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}

void decrypt (uint32_t* v, uint32_t* k) {
    uint32_t v0=v[0], v1=v[1], sum=0xC6EF3720, i;  /* set up */
    uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
    uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i<32; i++) {                         /* basic cycle start */
        v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
        v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        sum -= delta;
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}

// PKCS7 padding
// assumes dest is a 64 bit array->len 8 uint8_t array
void copy_and_pad_string(uint8_t *str, uint8_t *dest) {
    uint8_t str_len = strlen((char *)str);
    memcpy(dest, str, str_len);

    if (str_len == 8) {
        return;
    }
    printf("-- str len of original string, not padded: %d\n", str_len);

    // Pad dest with the length of the string
    memset(dest+str_len, str_len, 8 - str_len);
}

void copy_and_remove_padding(uint8_t *src, uint8_t *dest) {
    uint8_t str_len = src[7];
    memcpy(dest, src, str_len);

    if (str_len == 8) {
        return;
    }
    printf("-- str len of original string, not padded: %d\n", str_len);

    // Pad dest with null terminator
    memset(dest+str_len, '\0', 8 - str_len);
}

void print_array(uint8_t *arr_a, uint8_t *arr_b, char *str) {
    printf("%s\n", str);
    for (uint8_t i = 0; i < 8; i++) {
        printf("0x%02x ", arr_a[i]);
    }
    printf("\n");
    for (uint8_t i = 0; i < 8; i++) {
        printf("0x%02x ", arr_b[i]);
    }
    printf("\n");
}

int main() {
    // 128 bit key
    uint32_t key_a[4] = { 0xc2bb5c5b, 0x93373628,
                          0xd0849af3, 0x04183ac4 };

    // Second 128 bit Key
    uint32_t key_b[4] = { 0x72ae38ba, 0xa106f553,
                          0x1ea97c53, 0xcfa8e0b3 };

    // uint8_t flag[] = "SUP3R_S3CUR3_1";
    // uint8_t flag[] = "SUP3R";
    uint8_t flag_a[] = "SUP3R_S3";
    uint8_t flag_b[] = "CUR3_1";
    uint8_t flag_b_padded[8];
    uint8_t flag_b_no_pad[8];

    printf("Original String:\n");
    for (uint8_t i = 0; i < strlen((char *)flag_a); i++) {
        printf("0x%02x ", flag_a[i]);
    }
    printf("\n");
    for (int i = 0; i < strlen((char *)flag_b); i++) {
        printf("0x%02x ", flag_b[i]);
    }
    printf("\n");

    encrypt((uint32_t *)flag_a, (uint32_t *)key_a);
    copy_and_pad_string(flag_b, flag_b_padded);
    encrypt((uint32_t *)flag_b_padded, (uint32_t *)key_b);
    print_array(flag_a, flag_b_padded, "Encrypted strings: ");

    decrypt((uint32_t *)flag_a, (uint32_t *)key_a);
    decrypt((uint32_t *)flag_b_padded, (uint32_t *)key_b);
    copy_and_remove_padding(flag_b_padded, flag_b_no_pad);
    print_array(flag_a, flag_b_no_pad, "Decrypted strings: ");

    return 0;
}

// OUTPUT
// ✦ ./TEA
// Original String:
// 0x53 0x55 0x50 0x33 0x52 0x5f 0x53 0x33
// 0x43 0x55 0x52 0x33 0x5f 0x31
// -- str len of original string, not padded: 6
// Encrypted strings:
// 0x12 0x64 0x88 0xf7 0x77 0x95 0x8a 0x5a
// 0xe1 0xd5 0xfa 0x93 0x3e 0x13 0x30 0x5f
// -- str len of original string, not padded: 6
// Decrypted strings:
// 0x53 0x55 0x50 0x33 0x52 0x5f 0x53 0x33
// 0x43 0x55 0x52 0x33 0x5f 0x31 0x00 0x00