/* @generated */

#include "aes128gcm_haswell.h"

int main(void) {
  haberdashery_aes128gcm_haswell_t aead;
  unsigned char key[HABERDASHERY_AES_128_GCM_HASWELL_KEY_LEN] = {0};
  unsigned char nonce[HABERDASHERY_AES_128_GCM_HASWELL_NONCE_LEN] = {0};
  unsigned char tag[HABERDASHERY_AES_128_GCM_HASWELL_TAG_LEN] = {0};
  unsigned char aad[1] = {0};
  unsigned char plaintext[1] = {0};
  unsigned char ciphertext[1] = {0};

  if (!haberdashery_aes128gcm_haswell_is_supported()) {
    return 0;
  }

  if (!haberdashery_aes128gcm_haswell_init(&aead, key, sizeof(key))) {
    return 1;
  }
  if (!haberdashery_aes128gcm_haswell_encrypt(&aead, nonce, sizeof(nonce), aad, sizeof(aad), plaintext, sizeof(plaintext), ciphertext, sizeof(ciphertext), tag, sizeof(tag))) {
    return 2;
  }
  if (!haberdashery_aes128gcm_haswell_decrypt(&aead, nonce, sizeof(nonce), aad, sizeof(aad), ciphertext, sizeof(ciphertext), tag, sizeof(tag), plaintext, sizeof(plaintext))) {
    return 3;
  }
  return 0;
}
