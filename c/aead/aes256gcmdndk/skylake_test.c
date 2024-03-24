/* @generated */

#include "skylake.h"

int main(void) {
  haberdashery_skylake_aes_256_gcm_dndk_t aead;
  unsigned char key[HABERDASHERY_SKYLAKE_AES_256_GCMDNDK_KEY_LEN] = {0};
  unsigned char nonce[HABERDASHERY_SKYLAKE_AES_256_GCMDNDK_NONCE_LEN] = {0};
  unsigned char tag[HABERDASHERY_SKYLAKE_AES_256_GCMDNDK_TAG_LEN] = {0};
  unsigned char aad[1] = {0};
  unsigned char plaintext[1] = {0};
  unsigned char ciphertext[1] = {0};

  if (!haberdashery_aes256gcmdndk_skylake_is_supported()) {
    return 0;
  }

  if (!haberdashery_aes256gcmdndk_skylake_init(&aead, key, sizeof(key))) {
    return 1;
  }
  if (!haberdashery_aes256gcmdndk_skylake_encrypt(&aead, nonce, sizeof(nonce), aad, sizeof(aad), plaintext, sizeof(plaintext), ciphertext, sizeof(ciphertext), tag, sizeof(tag))) {
    return 2;
  }
  if (!haberdashery_aes256gcmdndk_skylake_decrypt(&aead, nonce, sizeof(nonce), aad, sizeof(aad), ciphertext, sizeof(ciphertext), tag, sizeof(tag), plaintext, sizeof(plaintext))) {
    return 3;
  }
  return 0;
}
