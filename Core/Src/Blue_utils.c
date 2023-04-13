/*
 * Blue_utils.c
 *
 *  Created on: 13 apr 2023
 *      Author: Casa
 */


#include "Blue_utils.h"



uint8_t PERIPHERAL_BDADDR[] = { 0x55, 0x11, 0x07, 0x01, 0x16, 0xE2 };



APP_Status PER_APP_Init_BLE(void)
{
  uint8_t ret = 0;
  uint16_t service_handle, dev_name_char_handle, appearance_char_handle;

  ret = aci_hal_write_config_data(CONFIG_DATA_PUBADDR_OFFSET, CONFIG_DATA_PUBADDR_LEN, PERIPHERAL_BDADDR);

  if (ret != BLE_STATUS_SUCCESS)
  {
    return APP_ERROR;
  }

  aci_hal_set_tx_power_level(1, 4);

  /* GATT Init */
  ret = aci_gatt_init();
  if (ret != BLE_STATUS_SUCCESS)
  {
    return APP_ERROR;
  }

  /* GAP Init */
  ret = aci_gap_init_IDB05A1(GAP_PERIPHERAL_ROLE_IDB05A1, 0, 0x07, &service_handle, &dev_name_char_handle, &appearance_char_handle);
  if (ret != BLE_STATUS_SUCCESS)
  {
    return APP_ERROR;
  }

  /* Set auth requirement*/

  ret = aci_gap_set_auth_requirement(MITM_PROTECTION_REQUIRED, OOB_AUTH_DATA_ABSENT, NULL, 7, 16, USE_FIXED_PIN_FOR_PAIRING, 123456, BONDING);
  if (ret != BLE_STATUS_SUCCESS)
  {
	 return APP_ERROR;
  }
  //aci_gap_set_authentication_requirement(MITM_PROTECTION_REQUIRED, OOB_AUTH_DATA_ABSENT, NULL, 7, 16, USE_FIXED_PIN_FOR_PAIRING, 123456, BONDING);

  return APP_SUCCESS;
}
