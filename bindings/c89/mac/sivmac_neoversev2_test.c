/* @generated */

#include "sivmac_neoversev2.h"

int main(void) {
  haberdashery_sivmac_neoversev_2_t mac;
  unsigned char key[HABERDASHERY_SIV_MAC_NEOVERSEV_2_KEY_LEN] = {0};
  unsigned char tag[HABERDASHERY_SIV_MAC_NEOVERSEV_2_TAG_LEN] = {0};
  unsigned char message[1] = {0};

  if (!haberdashery_sivmac_neoversev2_is_supported()) {
    return 0;
  }

  if (!haberdashery_sivmac_neoversev2_init(&mac, key, sizeof(key))) {
    return 1;
  }
  if (!haberdashery_sivmac_neoversev2_sign(&mac, message, sizeof(message), tag, sizeof(tag))) {
    return 2;
  }
  if (!haberdashery_sivmac_neoversev2_verify(&mac, message, sizeof(message), tag, sizeof(tag))) {
    return 3;
  }
  return 0;
}
