/* @generated */

#include "sivmac_skylake.h"

int main(void) {
  haberdashery_sivmac_skylake_t mac;
  unsigned char key[HABERDASHERY_SIV_MAC_SKYLAKE_KEY_LEN] = {0};
  unsigned char tag[HABERDASHERY_SIV_MAC_SKYLAKE_TAG_LEN] = {0};
  unsigned char message[1] = {0};

  if (!haberdashery_sivmac_skylake_is_supported()) {
    return 0;
  }

  if (!haberdashery_sivmac_skylake_init(&mac, key, sizeof(key))) {
    return 1;
  }
  if (!haberdashery_sivmac_skylake_sign(&mac, message, sizeof(message), tag, sizeof(tag))) {
    return 2;
  }
  if (!haberdashery_sivmac_skylake_verify(&mac, message, sizeof(message), tag, sizeof(tag))) {
    return 3;
  }
  return 0;
}
