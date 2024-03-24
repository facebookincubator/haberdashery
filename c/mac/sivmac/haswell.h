/* @generated */

#ifndef HABERDASHERY_SIVMAC_HASWELL_H
#define HABERDASHERY_SIVMAC_HASWELL_H

#include <emmintrin.h>
#include <stdint.h>
#include <stdlib.h>

#define HABERDASHERY_HASWELL_SIVMAC_KEY_LEN 32
#define HABERDASHERY_HASWELL_SIVMAC_TAG_LEN 16

typedef struct haberdashery_haswell_siv_mac_t {
  __m128i value[23];
} haberdashery_haswell_siv_mac_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_sivmac_haswell_init(
    haberdashery_haswell_siv_mac_t *mac,
    const unsigned char *key,         size_t key_len);
int haberdashery_sivmac_haswell_sign(
    haberdashery_haswell_siv_mac_t *const mac,
    const unsigned char *message,     size_t message_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_sivmac_haswell_verify(
    haberdashery_haswell_siv_mac_t *const mac,
    const unsigned char *message,     size_t message_len,
    const unsigned char *tag,         size_t tag_len);
int haberdashery_sivmac_haswell_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_SIVMAC_HASWELL_H */
