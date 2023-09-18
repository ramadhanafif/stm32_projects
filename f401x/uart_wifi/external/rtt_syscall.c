/*
 * rtt_syscall.c
 *
 *  Created on: Sep 16, 2023
 *      Author: ramad
 */

#include "SEGGER_RTT.h"

_ssize_t _write(int file, const void *ptr, size_t len) {
  (void) file;  /* Not used, avoid warning */
  SEGGER_RTT_Write(0, ptr, len);
  return len;
}
