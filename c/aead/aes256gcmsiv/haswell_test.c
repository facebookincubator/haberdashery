/* @generated */

#include "haswell.h"

int main(void) {
  haberdashery_haswell_aes_256_gcm_siv_t aead;
  unsigned char key[HABERDASHERY_HASWELL_AES_256_GCMSIV_KEY_LEN] = {0};
  unsigned char nonce[HABERDASHERY_HASWELL_AES_256_GCMSIV_NONCE_LEN] = {0};
  unsigned char tag[HABERDASHERY_HASWELL_AES_256_GCMSIV_TAG_LEN] = {0};
  unsigned char aad[1] = {0};
  unsigned char plaintext[1] = {0};
  unsigned char ciphertext[1] = {0};

  if (!haberdashery_aes256gcmsiv_haswell_is_supported()) {
    return 0;
  }

  if (!haberdashery_aes256gcmsiv_haswell_init(&aead, key, sizeof(key))) {
    return 1;
  }
  if (!haberdashery_aes256gcmsiv_haswell_encrypt(&aead, nonce, sizeof(nonce), aad, sizeof(aad), plaintext, sizeof(plaintext), ciphertext, sizeof(ciphertext), tag, sizeof(tag))) {
    return 2;
  }
  if (!haberdashery_aes256gcmsiv_haswell_decrypt(&aead, nonce, sizeof(nonce), aad, sizeof(aad), ciphertext, sizeof(ciphertext), tag, sizeof(tag), plaintext, sizeof(plaintext))) {
    return 3;
  }
  return 0;
}
