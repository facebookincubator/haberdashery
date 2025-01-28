/* @generated */

#ifndef HABERDASHERY_SIV_MAC_HASWELL_H
#define HABERDASHERY_SIV_MAC_HASWELL_H

#include <stdint.h>
#include <stdlib.h>

#define HABERDASHERY_SIV_MAC_HASWELL_KEY_LEN 32
#define HABERDASHERY_SIV_MAC_HASWELL_TAG_LEN 16

__attribute__((aligned(16)))
typedef struct haberdashery_sivmac_haswell_t {
  uint8_t value[368];
} haberdashery_sivmac_haswell_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_sivmac_haswell_init(
    haberdashery_sivmac_haswell_t *mac,
    const unsigned char *key,         size_t key_len);
int haberdashery_sivmac_haswell_sign(
    const haberdashery_sivmac_haswell_t *mac,
    const unsigned char *message,     size_t message_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_sivmac_haswell_verify(
    const haberdashery_sivmac_haswell_t *mac,
    const unsigned char *message,     size_t message_len,
    const unsigned char *tag,         size_t tag_len);
int haberdashery_sivmac_haswell_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_SIV_MAC_HASWELL_H */
