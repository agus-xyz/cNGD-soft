/*******************************************************************************
 * File:   MainApp.c
 * Author: Juan Domingo Rebollo - Laboratorio de Sistemas Integrados - UPM
 *
 * File Description: This is a template for app. code using LSI CWSN Node FW.
 * Change History:
 * Rev   Date         Description
 ******************************************************************************/

#include "NodeHAL.h"
//#include "WirelessProtocols/Console.h"    //Enable for debugging (Printf, ...)

int mainApp(void) {

    while(1){
    
    }
       
}

// Exception handler:
static enum {
    EXCEP_IRQ = 0,                  // interrupt
    EXCEP_AdEL = 4,                 // address error exception (load or ifetch)
    EXCEP_AdES,                     // address error exception (store)
    EXCEP_IBE,                      // bus error (ifetch)
    EXCEP_DBE,                      // bus error (load/store)
    EXCEP_Sys,                      // syscall
    EXCEP_Bp,                       // breakpoint
    EXCEP_RI,                       // reserved instruction
    EXCEP_CpU,                      // coprocessor unusable
    EXCEP_Overflow,                 // arithmetic overflow
    EXCEP_Trap,                     // trap (possible divide by zero)
    EXCEP_IS1 = 16,                 // implementation specfic 1
    EXCEP_CEU,                      // CorExtend Unuseable
    EXCEP_C2E                       // coprocessor 2
} _excep_code;

static unsigned int _epc_code;
static unsigned int _excep_addr;

// this function overrides the normal _weak_ generic handler
void _general_exception_handler(void){
    //Printf("\r\rGeneral Exception Handler...\r\r");

    asm volatile("mfc0 %0,$13" : "=r" (_excep_code));
    asm volatile("mfc0 %0,$14" : "=r" (_excep_addr));

    _excep_code = (_excep_code & 0x0000007C) >> 2;
    while (1) {
        // Examine _excep_code to identify the type of exception
        // Examine _excep_addr to find the address that caused the exception
        Nop();
        Nop();
        Nop();
    }
}//End of exception handler
