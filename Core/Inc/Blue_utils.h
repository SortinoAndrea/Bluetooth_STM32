/*
 * Blue_utils.h
 *
 *  Created on: 13 apr 2023
 *      Author: Casa
 */

#ifndef INC_BLUE_UTILS_H_
#define INC_BLUE_UTILS_H_

#include "main.h"

#include "bluenrg_aci.h"
#include "bluenrg_gap.h"
#include "link_layer.h"
#include "sm.h"




typedef enum
{
  APP_SUCCESS = 0x00, /*!< APP Success.*/
  APP_ERROR = 0x10    /*!< APP Error.*/
} APP_Status;




APP_Status PER_APP_Init_BLE(void);


#endif /* INC_BLUE_UTILS_H_ */
