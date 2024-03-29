/**
 * \file
 *
 * \brief RAMECC related functionality declaration.
 *
 * Copyright (c) 2016-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms applicable
 * to your use of third party software (including open source software) that
 * may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE
 * LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL
 * LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE
 * SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE
 * POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT
 * ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY
 * RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 *
 */

#ifndef _HPL_RAMECC_H_INCLUDED
#define _HPL_RAMECC_H_INCLUDED

/**
 * \addtogroup HPL RAMECC
 *
 * \section hpl_ramecc_rev Revision History
 * - v1.0.0 Initial Release
 *
 *@{
 */

#include <compiler.h>
#include <hpl_irq.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * \brief RAMECC callback type
 */
typedef void (*ramecc_cb_t)(const uint32_t data);

/**
 * \brief RAMECC callback types
 */
enum _ramecc_callback_type { RAMECC_DUAL_ERROR_CB, RAMECC_SINGLE_ERROR_CB };

/**
 * \brief RAMECC interrupt callbacks
 */
struct _ramecc_callbacks {
	ramecc_cb_t dual_bit_err;
	ramecc_cb_t single_bit_err;
};

/**
 * \brief RAMECC device structure
 */
struct _ramecc_device {
	struct _ramecc_callbacks ramecc_cb;
	struct _irq_descriptor   irq;
};

/**
 * \brief Initialize RAMECC
 *
 * This function does low level RAMECC configuration.
 *
 * \return initialize status
 */
int32_t _ramecc_init(void);

/**
 * \brief Register RAMECC callback
 *
 * \param[in] type The type of callback
 * \param[in] cb A callback function
 */
void _ramecc_register_callback(const enum _ramecc_callback_type type, ramecc_cb_t cb);

#ifdef __cplusplus
}
#endif

#endif /* _HPL_RAMECC_H_INCLUDED */
