/* @generated */

#ifndef HABERDASHERY_SIV_MAC_SKYLAKE_H
#define HABERDASHERY_SIV_MAC_SKYLAKE_H

#include <stdint.h>
#include <stdlib.h>

#define HABERDASHERY_SIV_MAC_SKYLAKE_KEY_LEN 32
#define HABERDASHERY_SIV_MAC_SKYLAKE_TAG_LEN 16

__attribute__((aligned(16)))
typedef struct haberdashery_sivmac_skylake_t {
  uint8_t value[368];
} haberdashery_sivmac_skylake_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_sivmac_skylake_init(
    haberdashery_sivmac_skylake_t *mac,
    const unsigned char *key,         size_t key_len);
int haberdashery_sivmac_skylake_sign(
    haberdashery_sivmac_skylake_t *const mac,
    const unsigned char *message,     size_t message_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_sivmac_skylake_verify(
    haberdashery_sivmac_skylake_t *const mac,
    const unsigned char *message,     size_t message_len,
    const unsigned char *tag,         size_t tag_len);
int haberdashery_sivmac_skylake_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_SIV_MAC_SKYLAKE_H */
