/* @generated */

#include "sivmac_raptorlake.h"

int main(void) {
  haberdashery_sivmac_raptorlake_t mac;
  unsigned char key[HABERDASHERY_SIV_MAC_RAPTORLAKE_KEY_LEN] = {0};
  unsigned char tag[HABERDASHERY_SIV_MAC_RAPTORLAKE_TAG_LEN] = {0};
  unsigned char message[1] = {0};

  if (!haberdashery_sivmac_raptorlake_is_supported()) {
    return 0;
  }

  if (!haberdashery_sivmac_raptorlake_init(&mac, key, sizeof(key))) {
    return 1;
  }
  if (!haberdashery_sivmac_raptorlake_sign(&mac, message, sizeof(message), tag, sizeof(tag))) {
    return 2;
  }
  if (!haberdashery_sivmac_raptorlake_verify(&mac, message, sizeof(message), tag, sizeof(tag))) {
    return 3;
  }
  return 0;
}
