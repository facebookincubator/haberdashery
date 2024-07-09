/* @generated */

#include "aes256gcm_streaming_haswell.h"
#include <openssl/evp.h>

#define KEY_LEN 32
#define NONCE_LEN 12
#define TAG_LEN 16

int encrypt_decrypt(
    const EVP_CIPHER *encrypt_cipher,
    const EVP_CIPHER *decrypt_cipher) {
  unsigned char key[KEY_LEN] = {0};
  unsigned char nonce[NONCE_LEN] = {0};
  unsigned char tag[TAG_LEN] = {0};
  unsigned char aad[1] = {0};
  unsigned char plaintext[1] = {0};
  unsigned char ciphertext[1] = {0};
  int output_size;

  {
    EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
    int res = EVP_EncryptInit_ex(ctx, encrypt_cipher, NULL, key, nonce);
    if (0 == res) {
      return 1;
    }
    res = EVP_CipherUpdate(ctx, NULL, &output_size, aad, sizeof(aad));
    if (0 == res) {
      return 2;
    }
    res = EVP_CipherUpdate(
        ctx, ciphertext, &output_size, plaintext, sizeof(plaintext));
    if (0 == res) {
      return 3;
    }
    if (sizeof(ciphertext) != output_size) {
      return 4;
    }
    res = EVP_CipherFinal_ex(ctx, NULL, &output_size);
    if (0 == res) {
      return 5;
    }
    res = EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_GET_TAG, sizeof(tag), tag);
    if (0 == res) {
      return 6;
    }
    EVP_CIPHER_CTX_free(ctx);
  }
  {
    EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
    int res = EVP_DecryptInit_ex(ctx, decrypt_cipher, NULL, key, nonce);
    if (0 == res) {
      return 7;
    }
    res = EVP_CipherUpdate(ctx, NULL, &output_size, aad, sizeof(aad));
    if (0 == res) {
      return 8;
    }
    res = EVP_CipherUpdate(
        ctx, plaintext, &output_size, ciphertext, sizeof(ciphertext));
    if (0 == res) {
      return 9;
    }
    if (sizeof(ciphertext) != output_size) {
      return 10;
    }
    res = EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG, sizeof(tag), tag);
    if (0 == res) {
      return 11;
    }
    res = EVP_CipherFinal_ex(ctx, NULL, &output_size);
    if (0 == res) {
      return 12;
    }
    EVP_CIPHER_CTX_free(ctx);
  }

  return 0;
}
int main(void) {
  int res;
  const EVP_CIPHER *evp_cipher = haberdashery_aes256gcm_haswell_EVP_CIPHER();

  if (NULL == evp_cipher) {
    return 0;
  }

  res = encrypt_decrypt(evp_cipher, evp_cipher);
  if (0 != res) {
    return res;
  }
  res = encrypt_decrypt(EVP_aes_256_gcm(), evp_cipher);
  if (0 != res) {
    return 16 + res;
  }
  res = encrypt_decrypt(evp_cipher, EVP_aes_256_gcm());
  if (0 != res) {
    return 32 + res;
  }
  return 0;
}
