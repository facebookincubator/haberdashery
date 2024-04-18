/* @generated */

#ifndef HABERDASHERY_SIVMAC_SKYLAKEX_H
#define HABERDASHERY_SIVMAC_SKYLAKEX_H

#include <emmintrin.h>
#include <stdint.h>
#include <stdlib.h>

#define HABERDASHERY_SKYLAKEX_SIVMAC_KEY_LEN 32
#define HABERDASHERY_SKYLAKEX_SIVMAC_TAG_LEN 16

typedef struct haberdashery_skylakex_siv_mac_t {
  __m128i value[23];
} haberdashery_skylakex_siv_mac_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_sivmac_skylakex_init(
    haberdashery_skylakex_siv_mac_t *mac,
    const unsigned char *key,         size_t key_len);
int haberdashery_sivmac_skylakex_sign(
    haberdashery_skylakex_siv_mac_t *const mac,
    const unsigned char *message,     size_t message_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_sivmac_skylakex_verify(
    haberdashery_skylakex_siv_mac_t *const mac,
    const unsigned char *message,     size_t message_len,
    const unsigned char *tag,         size_t tag_len);
int haberdashery_sivmac_skylakex_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_SIVMAC_SKYLAKEX_H */
