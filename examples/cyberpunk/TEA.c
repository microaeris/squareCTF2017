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
void pad_string(uint8_t *str, uint8_t *dest) {
    uint8_t str_len = strlen((char *)str);
    memcpy(dest, str, str_len);

    if (str_len == 8) {
        return;
    }
    printf("-- str len of original string, not padded: %d\n", str_len);

    // Pad dest with the length of the string
    memset(dest+str_len, str_len, 8 - str_len);
}

void print_array(uint8_t *arr_a, uint8_t *arr_b, char *str) {
    printf("%s\n", str);
    for (uint8_t i = 0; i < 8; i++) {
        printf("0x%02x ", arr_b[i]);
    }
    printf("\n");
    for (uint8_t i = 0; i < 8; i++) {
        printf("0x%02x ", arr_b[i]);
    }
    printf("\n");
}

void encrypt_flag(uint8_t *flag,
                  uint32_t *key_a,
                  uint32_t *key_b,
                  uint8_t *flag_a_out) {
    // Flag is at most 32 bytes.
    // Need at most two calls to TEA

    uint8_t flag_a[8]; // assumes we can only encode 64 bits at a time
    uint8_t flag_b[8];
    uint8_t flag_len = strlen((char *)flag);

    if (flag_len <= 8) {
        // Pad string
        pad_string(flag, flag_a);
        printf("-- base case: Padded String: \n-- ");
        for (uint8_t i = 0; i < 8; i++) {
            printf("0x%02x ", flag_a[i]);
        }
        printf("\n");


        // Call encrypt once
        encrypt((uint32_t *)flag_a, key_a);
        printf("-- base case: Encoded String: \n-- ");
        for (uint8_t i = 0; i < 8; i++) {
            printf("0x%02x ", flag_a[i]);
        }
        printf("\n");

        // Testing
        //decrypt((uint32_t *)flag_a, key_a);
        // printf("Decrypted String: \n");
        // for (uint8_t i = 0; i < 8; i++) {
        //     printf("0x%02x ", flag_a[i]);
        // }
        // printf("\n");

        memcpy(flag_a_out, flag_a, 8);
        return;
    }

    if (flag_len < 16) {
        // have to call encrypt twice
        memcpy(flag_a, flag, 8);
        memcpy(flag_b, flag + 8, flag_len - 8);
        print_array(flag_a, flag_b, "Original String: ");

        encrypt((uint32_t *)flag_a, key_a);
        // Recursion!!
        encrypt_flag(flag_b, key_b, NULL, flag_b);
        print_array(flag_a, flag_b, "Encoded String: ");

        decrypt((uint32_t *)flag_a, key_a);
        decrypt((uint32_t *)flag_b, key_b);
        print_array(flag_a, flag_b, "Decrypted String: ");
    }
}

int main() {
    // 128 bit key
    uint32_t key_a[4] = { 0xc2bb5c5b, 0x93373628,
                          0xd0849af3, 0x04183ac4 };

    // Second 128 bit Key
    uint32_t key_b[4] = { 0x72ae38ba, 0xa106f553,
                          0x1ea97c53, 0xcfa8e0b3 };

    uint8_t flag[] = "SUP3R_S3CUR3_1";
    // uint8_t flag[] = "SUP3R";

    uint8_t temp[8];
    encrypt_flag(flag, key_a, key_b, temp);

    return 0;
}