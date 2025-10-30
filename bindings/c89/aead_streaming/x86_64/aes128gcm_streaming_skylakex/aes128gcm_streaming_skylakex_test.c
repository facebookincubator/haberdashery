/* @generated */
#include "aes128gcm_streaming_skylakex.h"

int main(void) {
  haberdashery_aes128gcm_streaming_skylakex_key_t aead_key;
  haberdashery_aes128gcm_streaming_skylakex_state_t aead_state;
  unsigned char key[HABERDASHERY_AES_128_GCM_SKYLAKEX_KEY_LEN] = {0};
  unsigned char nonce[HABERDASHERY_AES_128_GCM_SKYLAKEX_NONCE_LEN] = {0};
  unsigned char tag[HABERDASHERY_AES_128_GCM_SKYLAKEX_TAG_LEN] = {0};
  unsigned char aad[1] = {0};
  unsigned char plaintext[1] = {0};
  unsigned char ciphertext[1] = {0};

  if (!haberdashery_aes128gcm_streaming_skylakex_is_supported()) {
    return 0;
  }

  if (!haberdashery_aes128gcm_streaming_skylakex_init_key(&aead_key, key, sizeof(key))) {
    return 1;
  }
  if (!haberdashery_aes128gcm_streaming_skylakex_init_state(&aead_state, &aead_key, nonce, sizeof(nonce))) {
    return 2;
  }
  if (!haberdashery_aes128gcm_streaming_skylakex_aad_update(&aead_state, &aead_key, aad, sizeof(aad))) {
    return 3;
  }
  if (!haberdashery_aes128gcm_streaming_skylakex_encrypt_update(&aead_state, &aead_key, plaintext, sizeof(plaintext), ciphertext, sizeof(ciphertext))) {
    return 4;
  }
  if (!haberdashery_aes128gcm_streaming_skylakex_encrypt_finalize(&aead_state, &aead_key, tag, sizeof(tag))) {
    return 5;
  }
  if (!haberdashery_aes128gcm_streaming_skylakex_init_state(&aead_state, &aead_key, nonce, sizeof(nonce))) {
    return 2;
  }
  if (!haberdashery_aes128gcm_streaming_skylakex_aad_update(&aead_state, &aead_key, aad, sizeof(aad))) {
    return 3;
  }
  if (!haberdashery_aes128gcm_streaming_skylakex_decrypt_update(&aead_state, &aead_key, ciphertext, sizeof(ciphertext), plaintext, sizeof(plaintext))) {
    return 4;
  }
  if (!haberdashery_aes128gcm_streaming_skylakex_decrypt_finalize(&aead_state, &aead_key, tag, sizeof(tag))) {
    return 5;
  }
  return 0;
}
