/*******************************************************************************
 FileName:      HardwareProfile.h for LSI TARGET BOARD - PIC32MX795F512L (*or H)
 Dependencies:  See INCLUDES section
 Processor:     PIC32 USB Microcontrollers
 Hardware:      PIC32MX795F512L PIM
 Compiler:      Microchip C32 (for PIC32)
 Company:       Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the ?Company?) for its PIC? Microcontroller is intended and supplied to you,
 the Company?s customer, for use solely and exclusively on Microchip PIC
 Microcontroller products. The software is owned by the Company and/or its
 supplier, and is protected under applicable copyright laws. All rights are
 reserved. Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to civil liability
 for the breach of the terms and conditions of this license.

 THIS SOFTWARE IS PROVIDED IN AN ?AS IS? CONDITION. NO WARRANTIES, WHETHER
 EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO
 THIS SOFTWARE. THE COMPANY SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR
 SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
********************************************************************************
 File Description: LSI CWSN NODE TARGET BOARD's HARDWARE PROFILE
 Author:  Juan Domingo Rebollo - LSI - Laboratorio de Sistemas Intergados - UPM

 Designed for PIC32MX 664F064L / 664F128L / 675F256L / 675F512L / 695F512L or
 PIC32MX 775F256L / 775F512L / 795F512L (100 pins layout, 4 SPI modules)

 Most of features also adapted for PIC32MX795F512H (Previous MCU target, 64 pins
 layout and 3 SPI modules) for test and development purposes.
*******************************************************************************/

#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "WirelessProtocols/ConfigApp.h"
#include "Transceivers/ConfigTransceivers.h"

////////////////////////////////////////////////////////////////////////////////
/* RADIO INTERFACES - See individual stacks' config files *********************/
////////////////////////////////////////////////////////////////////////////////

//#define MIWI_0434_RI     //Comment if it is not available in the target board.
#define MIWI_0868_RI     //Comment if it is not available in the target board.
#define MIWI_2400_RI     //Comment if it is not available in the target board.
//#define WIFI_2400_RI     //Comment if it is not available in the target board.

#if defined WIFI_2400_RI
    #define MRF24WB0M       //TEMPORALMENTE AQUI...
#endif

////////////////////////////////////////////////////////////////////////////////
/* TRANSCEIVERS Board configuration *******************************************/
////////////////////////////////////////////////////////////////////////////////
//MiWi transceivers available in the node are selected in "ConfigApp.h" file.

#if defined MRF49XA_1
    // CHOOSE ONLY ONE. The other transceivers must use a different SPI module.
    //#define MRF49XA_1_IN_SPI1     //Module not available in PIC32MX795F512H
    #define MRF49XA_1_IN_SPI2       //Use this for Guilja's extension board, conn. slot 1
    //#define MRF49XA_1_IN_SPI3
    //#define MRF49XA_1_IN_SPI4

    // CHOOSE ONLY ONE. The other transceivers must use another external interrupt.
    //#define MRF49XA_1_USES_INT0
    #define MRF49XA_1_USES_INT1     //Use this for  Guilja's extension board, conn. slot 1
    //#define MRF49XA_1_USES_INT2
    //#define MRF49XA_1_USES_INT3
    //#define MRF49XA_1_USES_INT4
#endif
#if defined MRF49XA_2
    // CHOOSE ONLY ONE. The other transceivers must use a different SPI module.
    //#define MRF49XA_2_IN_SPI1     //Module not available in PIC32MX795F512H
    //#define MRF49XA_2_IN_SPI2
    #define MRF49XA_2_IN_SPI3
    //#define MRF49XA_2_IN_SPI4

    // CHOOSE ONLY ONE. The other transceivers must use another external interrupt.
    //#define MRF49XA_2_USES_INT0
    //#define MRF49XA_2_USES_INT1
    #define MRF49XA_2_USES_INT2
    //#define MRF49XA_2_USES_INT3
    //#define MRF49XA_2_USES_INT4
#endif
#if defined MRF89XA         //NOT ADAPTED FOR MICROCHIP_LSI MIWI STACK YET.
    // CHOOSE ONLY ONE. The other transceivers must use a different SPI module.
    //#define MRF89XA_IN_SPI1       //Module not available in PIC32MX795F512H
    //#define MRF89XA_IN_SPI2
    //#define MRF89XA_IN_SPI3
    //#define MRF89XA_IN_SPI4

    // CHOOSE ONLY ONE. The other transceivers must use another external interrupt.
    //#define MRF89XA_USES_INT0
    //#define MRF89XA_USES_INT1
    //#define MRF89XA_USES_INT2
    //#define MRF89XA_USES_INT3
    //#define MRF89XA_USES_INT4
#endif
#if defined MRF24J40
    // CHOOSE ONLY ONE. The other transceivers must use a different SPI module.
    //#define MRF24J40_IN_SPI1      //Module not available in PIC32MX795F512H
    //#define MRF24J40_IN_SPI2
    //#define MRF24J40_IN_SPI3
    #define MRF24J40_IN_SPI4        //Use this for the "old" node. (by F. Lopez)
                                    //and for cNGD v1.0
    // CHOOSE ONLY ONE. The other transceivers must use another external interrupt.
    //#define MRF24J40_USES_INT0
    //#define MRF24J40_USES_INT1
    //#define MRF24J40_USES_INT2
    #define MRF24J40_USES_INT3    //Use this for the "old" node. (by F. Lopez)
    //#define MRF24J40_USES_INT4    //Use this for cNGD v1.0
#endif
#if defined MRF24WB0M
    //CHOOSE ONLY ONE. The other transceivers must use a different SPI module.

    //#define MRF24WB0M_IN_SPI1
    //#define MRF24WB0M_IN_SPI2     //Use this for the "old" node. (by F. Lopez)
    #define MRF24WB0M_IN_SPI3
    //#define MRF24WB0M_IN_SPI4

    //#define MRF24WB0M_USES_INT0
    //#define MRF24WB0M_USES_INT1   //Use this for the "old" node. (by F. Lopez)
    #define MRF24WB0M_USES_INT2
    //#define MRF24WB0M_USES_INT3
    //#define MRF24WB0M_USES_INT4
#endif

////////////////////////////////////////////////////////////////////////////////
/* DEBUGGING OPTIONS **********************************************************/
////////////////////////////////////////////////////////////////////////////////
//ENABLE CONSOLE is defined in ConfigApp.h. Traces will be sent to PC via RS232
//using UART if this option is enabled. Choose the UART module to be used
//according to your hardware profile.
#if defined ENABLE_CONSOLE //|| defined STACK_USE_UART
    //#define DEBUG_UART1       //IMPORTANT: Do not define if SPI3 is in use.
    //#define DEBUG_UART2       //IMPORTANT: Do not define if SPI4 is in use.
    //#define DEBUG_UART3       //IMPORTANT: Do not define if SPI2 is in use.
    #define DEBUG_UART4         //IMPORTANT: Do not define if SPI3 is in use.
                                //Use UART4 for debugging with the old node.
    //#define DEBUG_UART5       //IMPORTANT: Do not define if SPI4 is in use.
    //#define DEBUG_UART6       //IMPORTANT: Do not define if SPI2 is in use.
                                //Use UART6 for debugging with cNGD v1.0.
#elif defined ENABLE_USB_DEBUG
    //IMPLEMENTAR VOLCAR TRAZAS VÍA USB.
#endif

////////////////////////////////////////////////////////////////////////////////
/* MICROCONTROLLER SLEEP AND WAKE OPTIONS *************************************/
////////////////////////////////////////////////////////////////////////////////
#define WAKE_FROM_SLEEP_WDT
//#define WAKE_FROM_SLEEP_SOSC_T1
#if defined WAKE_FROM_SLEEP_SOSC_T1
    #define SOSC_FREQ_HZ 32768      //Secondary oscillator frequency in Hertz
#endif

    //ASSERTIONS
    #if defined WAKE_FROM_SLEEP_WDT && defined WAKE_FROM_SLEEP_SOSC_T1
        #error "Select only one option for sleeping the device."
    #endif

////////////////////////////////////////////////////////////////////////////////
/* STACKS MAINTENANCE TASKS ***************************************************/
////////////////////////////////////////////////////////////////////////////////
/* Choose if the node is in charge of maintening all the stacks. Enabling this
 * option implies using a timer for doing the task peridically. Conversely, if
 * disabled, the application should call the mainteinance function as often as
 * possible. Second option is only recommended for those applications which
 * demand doing their tasks without being interrupted by the maintenance.
 ******************************************************************************/
#define NODE_DOES_MAINTENANCE_TASKS
    #ifndef NODE_DOES_MAINTENANCE_TASKS
        #define APP_DOES_MANTEINANCE_TASKS //App. code should call AllStacksTasks()
    #endif

/* NODE MAINTENANCE TASKS PERIOD ***********************************************
 * Dflt setting: 16-bit synchronous timer using PBCLK (SYSCLK/PBDIV), PBDIV = 4,
 *               SYSCLK = 80 MHz, Timer PreScaler = 256 (PS), INT priority = 1.
 * T(s) = (PBDIV * PS / SYSCLK (Hz)) * PR => it can vary from ~13 us to ~840 ms.
 *
 *  PR value    0x004E  0x0258  0x030D  0x04E2  0x07A1  0x0C35  0x0F42  0x16E3
 *  T (ms)      1       5       10      16      25      40      50      75
 *
 *  PR value    0x1E84  0x30D4  0x4C4B  0x65B9  0x7A12  0x9896  0xCB73  0xE4E1
 *  T (ms)      100     160     250     333,3   400     500     666,7   750
 ******************************************************************************/
#if defined NODE_DOES_MAINTENANCE_TASKS
    #define MAINTENANCE_PERIOD  0x07A1  //Node Maintenance Tasks Period (PR1)
#endif

////////////////////////////////////////////////////////////////////////////////
/* VALIDATIONS ****************************************************************/
////////////////////////////////////////////////////////////////////////////////
//Communication thru SPI modules.
#if defined MRF49XA_1_IN_SPI1  && (defined MRF49XA_2_IN_SPI1 || \
    defined MRF89XA_IN_SPI1    || defined MRF24J40_IN_SPI1   || \
    defined MRF24WB0M_IN_SPI1) || defined MRF49XA_2_IN_SPI1  && \
    (defined MRF89XA_IN_SPI1   || defined MRF24J40_IN_SPI1   || \
    defined MRF24WB0M_IN_SPI1) || defined MRF89XA_IN_SPI1    && \
    (defined MRF24J40_IN_SPI1  || defined MRF24WB0M_IN_SPI1)
    #error "Select only one transceiver using SPI1."
#endif
#if defined MRF49XA_1_IN_SPI2  && (defined MRF49XA_2_IN_SPI2 || \
    defined MRF89XA_IN_SPI2    || defined MRF24J40_IN_SPI2   || \
    defined MRF24WB0M_IN_SPI2) || defined MRF49XA_2_IN_SPI2  && \
    (defined MRF89XA_IN_SPI2   || defined MRF24J40_IN_SPI2   || \
    defined MRF24WB0M_IN_SPI2) || defined MRF89XA_IN_SPI2    && \
    (defined MRF24J40_IN_SPI2  || defined MRF24WB0M_IN_SPI2)
    #error "Select only one transceiver using SPI2."
#endif
#if defined MRF49XA_1_IN_SPI3  && (defined MRF49XA_2_IN_SPI3 || \
    defined MRF89XA_IN_SPI3    || defined MRF24J40_IN_SPI3   || \
    defined MRF24WB0M_IN_SPI3) || defined MRF49XA_2_IN_SPI3  && \
    (defined MRF89XA_IN_SPI3   || defined MRF24J40_IN_SPI3   || \
    defined MRF24WB0M_IN_SPI3) || defined MRF89XA_IN_SPI3    && \
    (defined MRF24J40_IN_SPI3  || defined MRF24WB0M_IN_SPI3)
    #error "Select only one transceiver using SPI3."
#endif
#if defined MRF49XA_1_IN_SPI4  && (defined MRF49XA_2_IN_SPI4 || \
    defined MRF89XA_IN_SPI4    || defined MRF24J40_IN_SPI4   || \
    defined MRF24WB0M_IN_SPI4) || defined MRF49XA_2_IN_SPI4  && \
    (defined MRF89XA_IN_SPI4   || defined MRF24J40_IN_SPI4   || \
    defined MRF24WB0M_IN_SPI4) || defined MRF89XA_IN_SPI4    && \
    (defined MRF24J40_IN_SPI4  || defined MRF24WB0M_IN_SPI4)
    #error "Select only one transceiver using SPI4."
#endif
//----------------------------------------------------------------------------//
#if defined MRF49XA_1 && !defined MRF49XA_1_IN_SPI1 && \
    !defined MRF49XA_1_IN_SPI2 && !defined MRF49XA_1_IN_SPI3 && \
    !defined MRF49XA_1_IN_SPI4
    #error "Select one SPI module for MRF49XA_1 transceiver."
#endif
#if defined MRF49XA_2 && !defined MRF49XA_2_IN_SPI1 && \
    !defined MRF49XA_2_IN_SPI2 && !defined MRF49XA_2_IN_SPI3 && \
    !defined MRF49XA_2_IN_SPI4
    #error "Select one SPI module for MRF49XA_2 transceiver."
#endif
#if defined MRF89XA && !defined MRF89XA_IN_SPI1 && \
    !defined MRF89XA_IN_SPI2 && !defined MRF89XA_IN_SPI3 && \
    !defined MRF89XA_IN_SPI4
    #error "Select one SPI module for MRF89XA transceiver."
#endif
#if defined MRF24J40 && !defined MRF24J40_IN_SPI1 && \
    !defined MRF24J40_IN_SPI2 && !defined MRF24J40_IN_SPI3 && \
    !defined MRF24J40_IN_SPI4
    #error "Select one SPI module for MRF24J40 transceiver."
#endif
#if defined MRF24WB0M && !defined MRF24WB0M_IN_SPI1 && \
    !defined MRF24WB0M_IN_SPI2 && !defined MRF24WB0M_IN_SPI3 && \
    !defined MRF24WB0M_IN_SPI4
    #error "Select one SPI module for MRF24WB0M transceiver."
#endif
//----------------------------------------------------------------------------//
#if defined MRF49XA_1_IN_SPI1  && (defined MRF49XA_1_IN_SPI2 || \
    defined MRF49XA_1_IN_SPI3  || defined MRF49XA_1_IN_SPI4) || \
    defined MRF49XA_1_IN_SPI2  && (defined MRF49XA_1_IN_SPI3 || \
    defined MRF49XA_1_IN_SPI4) || (defined MRF49XA_1_IN_SPI3 && \
    defined MRF49XA_1_IN_SPI4)
    #error "Select only one SPI module for MRF49XA_1 transceiver"
#endif
#if defined MRF49XA_2_IN_SPI1  && (defined MRF49XA_2_IN_SPI2 || \
    defined MRF49XA_2_IN_SPI3  || defined MRF49XA_2_IN_SPI4) || \
    defined MRF49XA_2_IN_SPI2  && (defined MRF49XA_2_IN_SPI3 || \
    defined MRF49XA_2_IN_SPI4) || (defined MRF49XA_2_IN_SPI3 && \
    defined MRF49XA_2_IN_SPI4)
    #error "Select only one SPI module for MRF49XA_2 transceiver"
#endif
#if defined MRF89XA_IN_SPI1  && (defined MRF89XA_IN_SPI2 || \
    defined MRF89XA_IN_SPI3  || defined MRF89XA_IN_SPI4) || \
    defined MRF89XA_IN_SPI2  && (defined MRF89XA_IN_SPI3 || \
    defined MRF89XA_IN_SPI4) || (defined MRF89XA_IN_SPI3 && \
    defined MRF89XA_IN_SPI4)
    #error "Select only one SPI module for MRF89XA transceiver"
#endif
#if defined MRF24J40_IN_SPI1  && (defined MRF24J40_IN_SPI2 || \
    defined MRF24J40_IN_SPI3  || defined MRF24J40_IN_SPI4) || \
    defined MRF24J40_IN_SPI2  && (defined MRF24J40_IN_SPI3 || \
    defined MRF24J40_IN_SPI4) || (defined MRF24J40_IN_SPI3 && \
    defined MRF24J40_IN_SPI4)
    #error "Select only one SPI module for MRF24J40 transceiver"
#endif    
#if defined MRF24WB0M_IN_SPI1  && (defined MRF24WB0M_IN_SPI2 || \
    defined MRF24WB0M_IN_SPI3  || defined MRF24WB0M_IN_SPI4) || \
    defined MRF24WB0M_IN_SPI2  && (defined MRF24WB0M_IN_SPI3 || \
    defined MRF24WB0M_IN_SPI4) || (defined MRF24WB0M_IN_SPI3 && \
    defined MRF24WB0M_IN_SPI4)
    #error "Select only one SPI module for MRF24WB0M transceiver"
#endif   
//----------------------------------------------------------------------------//
#if defined MRF49XA_1_USES_INT0  && (defined MRF49XA_2_USES_INT0 || \
    defined MRF89XA_USES_INT0    || defined MRF24J40_USES_INT0   || \
    defined MRF24WB0M_USES_INT0) || defined MRF49XA_2_USES_INT0  && \
    (defined MRF89XA_USES_INT0   || defined MRF24J40_USES_INT0   || \
    defined MRF24WB0M_USES_INT0) || defined MRF89XA_USES_INT0    && \
    (defined MRF24J40_USES_INT0  || defined MRF24WB0M_USES_INT0) || \
    (defined MRF24J40_USES_INT0  && defined MRF24WB0M_USES_INT0)
    #error "Select only one transceiver using external interrupt 1."
#endif
#if defined MRF49XA_1_USES_INT1  && (defined MRF49XA_2_USES_INT1 || \
    defined MRF89XA_USES_INT1    || defined MRF24J40_USES_INT1   || \
    defined MRF24WB0M_USES_INT1) || defined MRF49XA_2_USES_INT1  && \
    (defined MRF89XA_USES_INT1   || defined MRF24J40_USES_INT1   || \
    defined MRF24WB0M_USES_INT1) || defined MRF89XA_USES_INT1    && \
    (defined MRF24J40_USES_INT1  || defined MRF24WB0M_USES_INT1) || \
    (defined MRF24J40_USES_INT1  && defined MRF24WB0M_USES_INT1)
    #error "Select only one transceiver using external interrupt 1."
#endif
#if defined MRF49XA_1_USES_INT2  && (defined MRF49XA_2_USES_INT2 || \
    defined MRF89XA_USES_INT2    || defined MRF24J40_USES_INT2   || \
    defined MRF24WB0M_USES_INT2) || defined MRF49XA_2_USES_INT2  && \
    (defined MRF89XA_USES_INT2   || defined MRF24J40_USES_INT2   || \
    defined MRF24WB0M_USES_INT2) || defined MRF89XA_USES_INT2    && \
    (defined MRF24J40_USES_INT2  || defined MRF24WB0M_USES_INT2) || \
    (defined MRF24J40_USES_INT2  && defined MRF24WB0M_USES_INT2)
    #error "Select only one transceiver using external interrupt 2."
#endif
#if defined MRF49XA_1_USES_INT3  && (defined MRF49XA_2_USES_INT3 || \
    defined MRF89XA_USES_INT3    || defined MRF24J40_USES_INT3   || \
    defined MRF24WB0M_USES_INT3) || defined MRF49XA_2_USES_INT3  && \
    (defined MRF89XA_USES_INT3   || defined MRF24J40_USES_INT3   || \
    defined MRF24WB0M_USES_INT3) || defined MRF89XA_USES_INT3    && \
    (defined MRF24J40_USES_INT3  || defined MRF24WB0M_USES_INT3) || \
    (defined MRF24J40_USES_INT3  && defined MRF24WB0M_USES_INT3)
    #error "Select only one transceiver using external interrupt 3."
#endif
#if defined MRF49XA_1_USES_INT4  && (defined MRF49XA_2_USES_INT4 || \
    defined MRF89XA_USES_INT4    || defined MRF24J40_USES_INT4   || \
    defined MRF24WB0M_USES_INT4) || defined MRF49XA_2_USES_INT4  && \
    (defined MRF89XA_USES_INT4   || defined MRF24J40_USES_INT4   || \
    defined MRF24WB0M_USES_INT4) || defined MRF89XA_USES_INT4    && \
    (defined MRF24J40_USES_INT4  || defined MRF24WB0M_USES_INT4) || \
    (defined MRF24J40_USES_INT4  && defined MRF24WB0M_USES_INT4)
    #error "Select only one transceiver using external interrupt 4."
#endif
//----------------------------------------------------------------------------//
#if  defined MRF49XA_1           && !defined MRF49XA_1_USES_INT1 && \
    !defined MRF49XA_1_USES_INT2 && !defined MRF49XA_1_USES_INT3 && \
    !defined MRF49XA_1_USES_INT4
    #error "Select one external interrupt for MRF49XA_1 transceiver"
#endif
#if  defined MRF49XA_2           && !defined MRF49XA_2_USES_INT1 && \
    !defined MRF49XA_2_USES_INT2 && !defined MRF49XA_2_USES_INT3 && \
    !defined MRF49XA_2_USES_INT4
    #error "Select one external interrupt for MRF49XA_2 transceiver"
#endif
#if  defined MRF89XA           && !defined MRF89XA_USES_INT1 && \
    !defined MRF89XA_USES_INT2 && !defined MRF89XA_USES_INT3 && \
    !defined MRF89XA_USES_INT4
    #error "Select one external interrupt for MRF89XA transceiver"
#endif
#if  defined MRF24J40           && !defined MRF24J40_USES_INT1 && \
    !defined MRF24J40_USES_INT2 && !defined MRF24J40_USES_INT3 && \
    !defined MRF24J40_USES_INT4
    #error "Select one external interrupt for MRF24J40 transceiver"
#endif
#if  defined MRF24WB0M           && !defined MRF24WB0M_USES_INT1 && \
    !defined MRF24WB0M_USES_INT2 && !defined MRF24WB0M_USES_INT3 && \
    !defined MRF24WB0M_USES_INT4
    #error "Select one external interrupt for MRF24J40 transceiver"
#endif
//----------------------------------------------------------------------------//
#if defined MRF49XA_1_USES_INT0  && (defined MRF49XA_1_USES_INT1 || \
    defined MRF49XA_1_USES_INT2  || defined MRF49XA_1_USES_INT3  || \
    defined MRF49XA_1_USES_INT4) || defined MRF49XA_1_USES_INT1  && \
    (defined MRF49XA_1_USES_INT2 || defined MRF49XA_1_USES_INT3  || \
    defined MRF49XA_1_USES_INT4) || defined MRF49XA_1_USES_INT2  && \
    (defined MRF49XA_1_USES_INT3 || defined MRF49XA_1_USES_INT4) || \
    (defined MRF49XA_1_USES_INT3 && defined MRF49XA_1_USES_INT4)
    #error "Select only one external interrupt for MRF49XA_1 transceiver"
#endif     
#if defined MRF49XA_2_USES_INT0  && (defined MRF49XA_2_USES_INT1 || \
    defined MRF49XA_2_USES_INT2  || defined MRF49XA_2_USES_INT3  || \
    defined MRF49XA_2_USES_INT4) || defined MRF49XA_2_USES_INT1  && \
    (defined MRF49XA_2_USES_INT2 || defined MRF49XA_2_USES_INT3  || \
    defined MRF49XA_2_USES_INT4) || defined MRF49XA_2_USES_INT2  && \
    (defined MRF49XA_2_USES_INT3 || defined MRF49XA_2_USES_INT4) || \
    (defined MRF49XA_2_USES_INT3 && defined MRF49XA_2_USES_INT4)
    #error "Select only one external interrupt for MRF49XA_2 transceiver"
#endif
#if defined MRF89XA_USES_INT0  && (defined MRF89XA_USES_INT1 || \
    defined MRF89XA_USES_INT2  || defined MRF89XA_USES_INT3  || \
    defined MRF89XA_USES_INT4) || defined MRF89XA_USES_INT1  && \
    (defined MRF89XA_USES_INT2 || defined MRF89XA_USES_INT3  || \
    defined MRF89XA_USES_INT4) || defined MRF89XA_USES_INT2  && \
    (defined MRF89XA_USES_INT3 || defined MRF89XA_USES_INT4) || \
    (defined MRF89XA_USES_INT3 && defined MRF89XA_USES_INT4)
    #error "Select only one external interrupt for MRF89XA transceiver"
#endif 
#if defined MRF24J40_USES_INT0  && (defined MRF24J40_USES_INT1 || \
    defined MRF24J40_USES_INT2  || defined MRF24J40_USES_INT3  || \
    defined MRF24J40_USES_INT4) || defined MRF24J40_USES_INT1  && \
    (defined MRF24J40_USES_INT2 || defined MRF24J40_USES_INT3  || \
    defined MRF24J40_USES_INT4) || defined MRF24J40_USES_INT2  && \
    (defined MRF24J40_USES_INT3 || defined MRF24J40_USES_INT4) || \
    (defined MRF24J40_USES_INT3 && defined MRF24J40_USES_INT4)
    #error "Select only one external interrupt for MRF24J40 transceiver"
#endif
#if defined MMRF24WB0M_USES_INT0  && (defined MRF24WB0M_USES_INT1 || \
    defined MRF24WB0M_USES_INT2  || defined MRF24WB0M_USES_INT3  || \
    defined MRF24WB0M_USES_INT4) || defined MRF24WB0M_USES_INT1  && \
    (defined MMRF24WB0M_USES_INT2 || defined MRF24WB0M_USES_INT3  || \
    defined MRF24WB0M_USES_INT4) || defined MRF24WB0M_USES_INT2  && \
    (defined MRF24WB0M_USES_INT3 || defined MRF24WB0M_USES_INT4) || \
    (defined MRF24WB0M_USES_INT3 && defined MRF24WB0M_USES_INT4)
    #error "Select only one external interrupt for MRF24WB0M transceiver"
#endif

//UART validations.
#if defined DEBUG_UART1  && (defined DEBUG_UART2 || defined DEBUG_UART3  || \
    defined DEBUG_UART4  ||  defined DEBUG_UART5 || defined DEBUG_UART6) || \
    defined DEBUG_UART2  && (defined DEBUG_UART3 || defined DEBUG_UART4  || \
    defined DEBUG_UART5  || defined DEBUG_UART6) || defined DEBUG_UART3  && \
    (defined DEBUG_UART4 || defined DEBUG_UART5  || defined DEBUG_UART6) || \
    defined DEBUG_UART4  && (defined DEBUG_UART5 || defined DEBUG_UART6) || \
    (defined DEBUG_UART5 && defined DEBUG_UART6)
    #error "Select only one UART module for debugging."
#endif

#if defined ENABLE_CONSOLE && !defined DEBUG_UART1 && !defined DEBUG_UART2 && \
    !defined DEBUG_UART3   && !defined DEBUG_UART4 && !defined DEBUG_UART5 && \
    !defined DEBUG_UART6
    #error "Select one UART module for debugging."
#endif

#if (defined MRF49XA_1_IN_SPI2 || defined MRF49XA_2_IN_SPI2 || \
    defined MRF89XA_IN_SPI2    || defined MRF24J40_IN_SPI2  || \
    defined MRF24WB0M_IN_SPI2)
    #if defined DEBUG_UART3
        #error "UART3 and SPI2 modules are incompatible."
    #elif defined DEBUG_UART6
        #define UART6_RXONLY
        #warning "UART6 and SPI2 share some pins. UART6 will be configured in "\
                 "RXonly mode, avoiding debuggin"
    #endif
#endif
#if (defined MRF49XA_1_IN_SPI3 || defined MRF49XA_2_IN_SPI3 || \
    defined MRF89XA_IN_SPI3    || defined MRF24J40_IN_SPI3  || \
    defined MRF24WB0M_IN_SPI3)
    #if defined DEBUG_UART1
        #error "UART1 and SPI3 modules are incompatible."
    #elif defined DEBUG_UART4
        #warning "UART4 and SPI3 share some pins. Check SPI3 is configured in "\
                 "normal mode and UART4 in RX only mode."
    #endif
#endif
#if defined MRF49XA_1_IN_SPI4 || defined MRF49XA_2_IN_SPI4 || \
    defined MRF24J40_IN_SPI4  || defined MRF89XA_IN_SPI4   || \
    defined MRF24WB0M_IN_SPI4
    #if defined DEBUG_UART2
        #error "UART2 and SPI4 modules are incompatible."
    #elif defined DEBUG_UART5
        #warning "UART5 and SPI4 share some pins. Check SPI4 is configured in "\
                 "normal mode and UART5 in RX only mode."
    #endif
#endif

// Suitable transceivers for the radio interfaces.
// Select the appropriate frequency band for each transceiver according to
// your radio interfaces definition in "ConfigTransceivers.h" file.
#if defined MIWI_2400_RI && !defined MRF24J40
    #error "MiWi at 2,4 GHz band requires MRF24J40 transceiver."
#endif
#if defined MIWI_0868_RI
    /***************************************************************************
     * MRF89XA operates in either 868, 915 or 955 MHz band. For Europe, only 868
     * MHz can be selected so, if defined MRF89XA, 868 MHz band must be chosen.
     * If not, a MRF49XA transceiver must use 868 MHz band in order to use
     * MIWI_0868_RI
     **************************************************************************/
    #if defined MRF89XA && !defined BAND_863
        #error "MRF89XA must define BAND_863. See ConfigTransceivers.h file"
    #elif (!defined MRF49XA_1_IN_868 && !defined MRF49XA_2_IN_868)
        #error "If MRF49XA is chosen for MIWI_0868_RI, it must define MiWi "
               "868 MHz band. See ConfigTransceivers.h file"
    #endif
#endif
#if defined MIWI_0434_RI
    #if (!defined MRF49XA_1_IN_434 && !defined MRF49XA_2_IN_434)
        #error "One MRF49XA transceivers must define MiWi 434 MHz band. "
               "See ConfigTransceivers.h file"
    #endif
#endif
#if defined WIFI_2400_RI && !defined MRF24WB0M
    #error "WiFi at 2,4 GHz band requires MRF24WB0M transceiver."
#endif

// Number of interfaces available
#if !defined(MIWI_2400_RI) && !defined(MIWI_0868_RI) && !defined(MIWI_0434_RI) \
    && !defined(WIFI_2400_RI)
    #error "At least one Radio Interface must be defined."
#endif
#if defined(WIFI_2400_RI)
    #if defined(MIWI_2400_RI) && defined(MIWI_0868_RI) && defined(MIWI_0434_RI)
        #define NumRadioInterfaces 4
    #elif !defined(MIWI_2400_RI)&&!defined(MIWI_0868_RI)&&!defined(MIWI_0434_RI)
        #define NumRadioInterfaces 1
    #elif defined(MIWI_2400_RI) ^ defined(MIWI_0868_RI) ^ defined(MIWI_0434_RI)
        #define NumRadioInterfaces 2
    #else
        #define NumRadioInterfaces 3
    #endif
    #define NumMiWiInterfaces (NumRadioInterfaces - 1)
#else
    #if defined(MIWI_2400_RI) && defined(MIWI_0868_RI) && defined(MIWI_0434_RI)
        #define NumRadioInterfaces 3
    #elif defined(MIWI_2400_RI) ^ defined(MIWI_0868_RI) ^ defined(MIWI_0434_RI)
        #define NumRadioInterfaces 1
    #else
        #define NumRadioInterfaces 2
    #endif
    #define NumMiWiInterfaces (NumRadioInterfaces)
#endif
/* END OF VALIFATIONS *********************************************************/

////////////////////////////////////////////////////////////////////////////////
/* PIN DEFINITIONS ************************************************************/
////////////////////////////////////////////////////////////////////////////////
#if defined (__32MX795F512L__) || defined (__32MX775F512L__) || \
    defined (__32MX775F256L__) || defined (__32MX695F512L__) || \
    defined (__32MX675F512L__) || defined (__32MX675F256L__) || \
    defined (__32MX664F128L__) || defined (__32MX664F064L__)
    //PICs 7xx and 6xx are not 100% pin-to-pin compatible (but ther share common
    //pin layout for SPIs, UARTs, I2C and external interrupts).

    //SPI1 & INTERRUPT 0
    #define SPI_SDI1    PORTCbits.RC4
    #define SDI1_TRIS   TRISCbits.TRISC4
    #define SPI_SDO1    PORTDbits.RD0
    #define SDO1_TRIS   TRISDbits.TRISD0
    #define SPI_SCK1    PORTDbits.RD10
    #define SCK1_TRIS   TRISDbits.TRISD10
    #define SPI_nSS1    PORTDbits.RD9
    #define nSS1_TRIS   TRISDbits.TRISD9

    #define EXTINT_INT0 PORTDbits.RD0
    #define INT0_TRIS   TRISDbits.TRISD0
    //SPI2 & UART3, UART6
    #define SPI_SDI2    PORTGbits.RG7
    #define SDI2_TRIS   TRISGbits.TRISG7
    #define SPI_SDO2    PORTGbits.RG8
    #define SDO2_TRIS   TRISGbits.TRISG8
    #define SPI_SCK2    PORTGbits.RG6
    #define SCK2_TRIS   TRISGbits.TRISG6
    #define SPI_nSS2    PORTGbits.RG9
    #define nSS2_TRIS   TRISGbits.TRISG9

    #define UART_U3TX   PORTGbits.RG8
    #define U3TX_TRIS   TRISGbits.TRISG8
    #define UART_U3RX   PORTGbits.RG7
    #define U3RX_TRIS   TRISGbits.TRISG7

    #define UART_U6TX   PORTGbits.RG6
    #define U6TX_TRIS   TRISGbits.TRISG6
    #define UART_U6RX   PORTGbits.RG9
    #define U6RX_TRIS   TRISGbits.TRISG9
    //SPI3 & UART1, UART4
    #define SPI_SDI3    PORTFbits.RF2
    #define SDI3_TRIS   TRISFbits.TRISF2
    #define SPI_SDO3    PORTFbits.RF8
    #define SDO3_TRIS   TRISFbits.TRISF8
    #define SPI_SCK3    PORTDbits.RD15
    #define SCK3_TRIS   TRISDbits.TRISD15
    #define SPI_nSS3    PORTDbits.RD14
    #define nSS3_TRIS   TRISDbits.TRISD14

    #define UART_U1TX   PORTFbits.RF8
    #define U1TX_TRIS   TRISFbits.TRISF8
    #define UART_U1RX   PORTFbits.RF2
    #define U1RX_TRIS   TRISFbits.TRISF2

    #define UART_U4TX   PORTDbits.RD15
    #define U4TX_TRIS   TRISDbits.TRISD15
    #define UART_U4RX   PORTDbits.RD14
    #define U4RX_TRIS   TRISDbits.TRISD14
    //SPI4 & UART2, UART5
    #define SPI_SDI4    PORTFbits.RF4
    #define SDI4_TRIS   TRISFbits.TRISF4
    #define SPI_SDO4    PORTFbits.RF5
    #define SDO4_TRIS   TRISFbits.TRISF5
    #define SPI_SCK4    PORTFbits.RF13
    #define SCK4_TRIS   TRISFbits.TRISF13
    #define SPI_nSS4    PORTFbits.RF12
    #define nSS4_TRIS   TRISFbits.TRISF12

    #define UART_U2TX   PORTFbits.RF5
    #define U2TX_TRIS   TRISFbits.TRISF5
    #define UART_U2RX   PORTFbits.RF4
    #define U2RX_TRIS   TRISFbits.TRISF4

    #define UART_U5TX   PORTFbits.RF13
    #define U5TX_TRIS   TRISFbits.TRISF13
    #define UART_U5RX   PORTFbits.RF12
    #define U5RX_TRIS   TRISFbits.TRISF12
    //I2C
    #define I2C_SDA2    PORTAbits.RA3
    #define SDA2_TRIS   TRISAbits.TRISA3
    #define I2C_SCL2    PORTAbits.RA2
    #define SCL2_TRIS   TRISAbits.TRISA2

    //INTERRUPTS 1,2,3 & 4
    #define EXTINT_INT1 PORTEbits.RE8
    #define INT1_TRIS   TRISEbits.TRISE8
    #define EXTINT_INT2 PORTEbits.RE9
    #define INT2_TRIS   TRISEbits.TRISE9
    #define EXTINT_INT3 PORTAbits.RA14
    #define INT3_TRIS   TRISAbits.TRISA14
    #define EXTINT_INT4 PORTAbits.RA15
    #define INT4_TRIS   TRISAbits.TRISA15

    //IO PORTS Change Notification
//    #define BUTTON_1            PORTxbits.RxX
//    #define BUTTON_2            PORTxbits.RxX
//    #define ReadBUTTONS()       PORTx
//    #define BUTTON_1_PORT_MASK
//    #define BUTTON_2_PORT_MASK

#elif defined (__32MX795F512H__)
    //SPI1
    #if defined MRF49XA_1_IN_SPI1 || defined MRF49XA_2_IN_SPI1 || \
        defined MRF89XA_IN_SPI1   || defined MRF24J40_IN_SPI1
        #error "SPI1 pins are not available in PIC32MX795F512H"
    #endif
    //SPI2 & UART3, UART6
    #define SPI_SDI2    PORTGbits.RG7
    #define SDI2_TRIS   TRISGbits.TRISG7
    #define SPI_SDO2    PORTGbits.RG8
    #define SDO2_TRIS   TRISGbits.TRISG8
    #define SPI_SCK2    PORTGbits.RG6
    #define SCK2_TRIS   TRISGbits.TRISG6
    #define SPI_nSS2    PORTGbits.RG9
    #define nSS2_TRIS   TRISGbits.TRISG9

    #define UART_U3TX   PORTGbits.RG8
    #define U3TX_TRIS   TRISGbits.TRISG8
    #define UART_U3RX   PORTGbits.RG7
    #define U3RX_TRIS   TRISGbits.TRISG7

    #define UART_U6TX   PORTGbits.RG6
    #define U6TX_TRIS   TRISGbits.TRISG6
    #define UART_U6RX   PORTGbits.RG9
    #define U6RX_TRIS   TRISGbits.TRISG9
    //SPI3 & INTERRUPT 2 & UART1, UART4
    //Warning: nSS3/U4RX is shared with INT2 . USE SPI3 in normal mode or UART4
    //TX pin only. Otherwise, avoid using INT2.
    #define SPI_SDI3    PORTDbits.RD2
    #define SDI3_TRIS   TRISDbits.TRISD2
    #define SPI_SDO3    PORTDbits.RD3
    #define SDO3_TRIS   TRISDbits.TRISD3
    #define SPI_SCK3    PORTDbits.RD1
    #define SCK3_TRIS   TRISDbits.TRISD1
    #define SPI_nSS3    PORTDbits.RD9
    #define nSS3_TRIS   TRISDbits.TRISD9

    #define EXTINT_INT2 PORTDbits.RD9
    #define INT2_TRIS   TRISDbits.TRISD9

    #define UART_U1TX   PORTDbits.RD3
    #define U1TX_TRIS   TRISDbits.TRISD3
    #define UART_U1RX   PORTDbits.RD2
    #define U1RX_TRIS   TRISDbits.TRISD2

    #define UART_U4TX   PORTDbits.RD1
    #define U4TX_TRIS   TRISDbits.TRISD1
    #define UART_U4RX   PORTDbits.RD9
    #define U4RX_TRIS   TRISDbits.TRISD9
    //SPI4 & UART2, UART5
    #define SPI_SDI4    PORTFbits.RF4
    #define SDI4_TRIS   TRISFbits.TRISF4
    #define SPI_SDO4    PORTFbits.RF5
    #define SDO4_TRIS   TRISFbits.TRISF5
    #define SPI_SCK4    PORTBbits.RB14
    #define SCK4_TRIS   TRISBbits.TRISB14
    #define SPI_nSS4    PORTBbits.RB8
    #define nSS4_TRIS   TRISBbits.TRISB8

    #define UART_U2TX   PORTFbits.RF5
    #define U2TX_TRIS   TRISFbits.TRISF5
    #define UART_U2RX   PORTFbits.RF4
    #define U2RX_TRIS   TRISFbits.TRISF4

    #define UART_U5TX   PORTBbits.RB14
    #define U5TX_TRIS   TRISBbits.TRISB14
    #define UART_U5RX   PORTBbits.RB8
    #define U5RX_TRIS   TRISBbits.TRISB8
    //I2C

    //INTERRUPTS
    #define EXTINT_INT0 PORTDbits.RD0
    #define INT0_TRIS   TRISDbits.TRISD0
    #define EXTINT_INT1 PORTDbits.RD8
    #define INT1_TRIS   TRISDbits.TRISD8
    #define EXTINT_INT3 PORTDbits.RD10
    #define INT3_TRIS   TRISDbits.TRISD10
    #define EXTINT_INT4 PORTDbits.RD11
    #define INT4_TRIS   TRISDbits.TRISD11

    //IO PORTS Change Notification
    #define BUTTON_1            PORTDbits.RD5   //CN14
    #define BUTTON_2            PORTDbits.RD4   //CN13
    #define ReadBUTTONS()       PORTD
    #define BUTTON_1_PORT_MASK  0x00000020      //Bit5
    #define BUTTON_2_PORT_MASK  0x00000010      //Bit4
#endif
/******************************************************************************/

////////////////////////////////////////////////////////////////////////////////
/* I/O pin definitions ********************************************************/
////////////////////////////////////////////////////////////////////////////////
#define INPUT_PIN           1
#define OUTPUT_PIN          0
/******************************************************************************/

////////////////////////////////////////////////////////////////////////////////
/* Application & Board specific definitions and configuration *****************/
// These defintions will tell the main() function which board is currently
// selected. This will allow the application to add the correct configuration
// bits as well as use the correct initialization functions for the board.
////////////////////////////////////////////////////////////////////////////////

/* SysClock, PBClock... *******************************************************/
#define RUN_AT_80MHZ

#if defined(RUN_AT_80MHZ)
    #define GetSystemClock()        80000000UL
    #define GetPeripheralClock()    80000000UL      //Will be divided down
    #define GetInstructionClock()   (GetSystemClock()/(1 << OSCCONbits.PBDIV))
#else
    #error "Choose a speed"
#endif

#ifdef __PIC32MX__
    #define RCON_SLEEP_MASK (0x8)
    #define RCON_IDLE_MASK  (0x4)
    #define Sleep()         PowerSaveSleep()
    #define CLOCK_FREQ      80000000 //Must be coherent with config in NodeHAL.c
#else
    #define CLOCK_FREQ      8000000
#endif

//TIMERS
#define TMRL TMR2

/* RF TRANSCEIVERS -> SPI interfaces ******************************************/
#if defined(MRF49XA_1)
    //SPI selection and pin definitions were above.
    #if defined MRF49XA_1_IN_SPI1
        #define MRF49XA_1_SPI_SDI     SPI_SDI1
        #define MRF49XA_1_SDI_TRIS    SDI1_TRIS
        #define MRF49XA_1_SPI_SDO     SPI_SDO1
        #define MRF49XA_1_SDO_TRIS    SDO1_TRIS
        #define MRF49XA_1_SPI_SCK     SPI_SCK1
        #define MRF49XA_1_SCK_TRIS    SCK1_TRIS

        #define MRF49XA_1_SPICON      SPI1CON
        #define MRF49XA_1_SPICONCLR   SPI1CONCLR
    #elif defined MRF49XA_1_IN_SPI2
        #define MRF49XA_1_SPI_SDI     SPI_SDI2
        #define MRF49XA_1_SDI_TRIS    SDI2_TRIS
        #define MRF49XA_1_SPI_SDO     SPI_SDO2
        #define MRF49XA_1_SDO_TRIS    SDO2_TRIS
        #define MRF49XA_1_SPI_SCK     SPI_SCK2
        #define MRF49XA_1_SCK_TRIS    SCK2_TRIS

        #define MRF49XA_1_SPICON      SPI2CON
        #define MRF49XA_1_SPICONCLR   SPI2CONCLR
    #elif defined MRF49XA_1_IN_SPI3
        #define MRF49XA_1_SPI_SDI     SPI_SDI3
        #define MRF49XA_1_SDI_TRIS    SDI3_TRIS
        #define MRF49XA_1_SPI_SDO     SPI_SDO3
        #define MRF49XA_1_SDO_TRIS    SDO3_TRIS
        #define MRF49XA_1_SPI_SCK     SPI_SCK3
        #define MRF49XA_1_SCK_TRIS    SCK3_TRIS

        #define MRF49XA_1_SPICON      SPI3CON
        #define MRF49XA_1_SPICONCLR   SPI3CONCLR
    #elif defined MRF49XA_1_IN_SPI4
        #define MRF49XA_1_SPI_SDI     SPI_SDI4
        #define MRF49XA_1_SDI_TRIS    SDI4_TRIS
        #define MRF49XA_1_SPI_SDO     SPI_SDO4
        #define MRF49XA_1_SDO_TRIS    SDO4_TRIS
        #define MRF49XA_1_SPI_SCK     SPI_SCK4
        #define MRF49XA_1_SCK_TRIS    SCK4_TRIS

        #define MRF49XA_1_SPICON      SPI4CON
        #define MRF49XA_1_SPICONCLR   SPI4CONCLR
    #endif

    //Pins selection for debugging with Guilja's extension board Conn. Slot 1 //
        #define MRF49XA_1_PHY_CS            LATEbits.LATE1
        #define MRF49XA_1_PHY_CS_TRIS       TRISEbits.TRISE1
        #define MRF49XA_1_PHY_RESETn        LATEbits.LATE4
        #define MRF49XA_1_PHY_RESETn_TRIS   TRISEbits.TRISE4
        #define MRF49XA_1_nFSEL             LATEbits.LATE3
        #define MRF49XA_1_nFSEL_TRIS        TRISEbits.TRISE3
        #define MRF49XA_1_FINT              PORTBbits.RB2
        #define MRF49XA_1_FINT_TRIS         TRISBbits.TRISB2
    //------------------------------------------------------------------------//
    #if defined MRF49XA_1_USES_INT0
        #define MRF49XA_1_INT_PIN   EXTINT_INT0
        #define MRF49XA_1_INT_TRIS  INT0_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_1 using INT0
        #define MRF49XA_1_IF        IFS0bits.INT0IF
        #define MRF49XA_1_IE        IEC0bits.INT0IE
    #elif defined MRF49XA_1_USES_INT1
        #define MRF49XA_1_INT_PIN   EXTINT_INT1
        #define MRF49XA_1_INT_TRIS  INT1_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_1 using INT1
        #define MRF49XA_1_IF        IFS0bits.INT1IF
        #define MRF49XA_1_IE        IEC0bits.INT1IE
    #elif defined MRF49XA_1_USES_INT2
        #define MRF49XA_1_INT_PIN   EXTINT_INT2
        #define MRF49XA_1_INT_TRIS  INT2_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_1 using INT2
        #define MRF49XA_1_IF        IFS0bits.INT2IF
        #define MRF49XA_1_IE        IEC0bits.INT2IE
    #elif defined MRF49XA_1_USES_INT3
        #define MRF49XA_1_INT_PIN   EXTINT_INT3
        #define MRF49XA_1_INT_TRIS  INT3_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_1 using INT3
        #define MRF49XA_1_IF        IFS0bits.INT3IF
        #define MRF49XA_1_IE        IEC0bits.INT3IE
    #elif defined MRF49XA_1_USES_INT4
        #define MRF49XA_1_INT_PIN   EXTINT_INT4
        #define MRF49XA_1_INT_TRIS  INT4_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_1 using INT4
        #define MRF49XA_1_IF        IFS0bits.INT4IF
        #define MRF49XA_1_IE        IEC0bits.INT4IE
    #endif
#endif

#if defined (MRF49XA_2)
    //SPI selection and pin definitions were above.
    #if defined MRF49XA_2_IN_SPI1
        #define MRF49XA_2_SPI_SDI     SPI_SDI1
        #define MRF49XA_2_SDI_TRIS    SDI1_TRIS
        #define MRF49XA_2_SPI_SDO     SPI_SDO1
        #define MRF49XA_2_SDO_TRIS    SDO1_TRIS
        #define MRF49XA_2_SPI_SCK     SPI_SCK1
        #define MRF49XA_2_SCK_TRIS    SCK1_TRIS

        #define MRF49XA_2_SPICON      SPI1CON
        #define MRF49XA_2_SPICONCLR   SPI1CONCLR
    #elif defined MRF49XA_2_IN_SPI2
        #define MRF49XA_2_SPI_SDI     SPI_SDI2
        #define MRF49XA_2_SDI_TRIS    SDI2_TRIS
        #define MRF49XA_2_SPI_SDO     SPI_SDO2
        #define MRF49XA_2_SDO_TRIS    SDO2_TRIS
        #define MRF49XA_2_SPI_SCK     SPI_SCK2
        #define MRF49XA_2_SCK_TRIS    SCK2_TRIS

        #define MRF49XA_2_SPICON      SPI2CON
        #define MRF49XA_2_SPICONCLR   SPI2CONCLR
    #elif defined MRF49XA_2_IN_SPI3
        #define MRF49XA_2_SPI_SDI     SPI_SDI3
        #define MRF49XA_2_SDI_TRIS    SDI3_TRIS
        #define MRF49XA_2_SPI_SDO     SPI_SDO3
        #define MRF49XA_2_SDO_TRIS    SDO3_TRIS
        #define MRF49XA_2_SPI_SCK     SPI_SCK3
        #define MRF49XA_2_SCK_TRIS    SCK3_TRIS

        #define MRF49XA_2_SPICON      SPI3CON
        #define MRF49XA_2_SPICONCLR   SPI3CONCLR
    #elif defined MRF49XA_2_IN_SPI4
        #define MRF49XA_2_SPI_SDI     SPI_SDI4
        #define MRF49XA_2_SDI_TRIS    SDI4_TRIS
        #define MRF49XA_2_SPI_SDO     SPI_SDO4
        #define MRF49XA_2_SDO_TRIS    SDO4_TRIS
        #define MRF49XA_2_SPI_SCK     SPI_SCK4
        #define MRF49XA_2_SCK_TRIS    SCK4_TRIS

        #define MRF49XA_2_SPICON      SPI4CON
        #define MRF49XA_2_SPICONCLR   SPI4CONCLR
    #endif

    //Pins selection ---------------------------------------------------------//
    #define MRF49XA_2_PHY_CS            LATEbits.LATE5
    #define MRF49XA_2_PHY_CS_TRIS       TRISEbits.TRISE5
    #define MRF49XA_2_PHY_RESETn        LATEbits.LATE7
    #define MRF49XA_2_PHY_RESETn_TRIS   TRISEbits.TRISE7
    #define MRF49XA_2_nFSEL             LATBbits.LATB1
    #define MRF49XA_2_nFSEL_TRIS        TRISBbits.TRISB1
    #define MRF49XA_2_FINT              PORTEbits.RE9
    #define MRF49XA_2_FINT_TRIS         TRISEbits.TRISE9

    #if defined MRF49XA_2_USES_INT0
        #define MRF49XA_2_INT_PIN   EXTINT_INT0
        #define MRF49XA_2_INT_TRIS  INT0_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_2 using INT0
        #define MRF49XA_2_IF        IFS0bits.INT0IF
        #define MRF49XA_2_IE        IEC0bits.INT0IE
    #elif defined MRF49XA_2_USES_INT1
        #define MRF49XA_2_INT_PIN   EXTINT_INT1
        #define MRF49XA_2_INT_TRIS  INT1_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_2 using INT1
        #define MRF49XA_2_IF        IFS0bits.INT1IF
        #define MRF49XA_2_IE        IEC0bits.INT1IE
    #elif defined MRF49XA_2_USES_INT2
        #define MRF49XA_2_INT_PIN   EXTINT_INT2
        #define MRF49XA_2_INT_TRIS  INT2_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_2 using INT2
        #define MRF49XA_2_IF        IFS0bits.INT2IF
        #define MRF49XA_2_IE        IEC0bits.INT2IE
    #elif defined MRF49XA_2_USES_INT3
        #define MRF49XA_2_INT_PIN   EXTINT_INT3
        #define MRF49XA_2_INT_TRIS  INT3_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_2 using INT3
        #define MRF49XA_2_IF        IFS0bits.INT3IF
        #define MRF49XA_2_IE        IEC0bits.INT3IE
    #elif defined MRF49XA_2_USES_INT4
        #define MRF49XA_2_INT_PIN   EXTINT_INT4
        #define MRF49XA_2_INT_TRIS  INT4_TRIS
        //SFRs CONFIGURATION FOR MRF49XA_2 using INT4
        #define MRF49XA_2_IF        IFS0bits.INT4IF
        #define MRF49XA_2_IE        IEC0bits.INT4IE
    #endif
#endif

#if defined(MRF89XA)
    //SPI selection and pin definitions were above.
    #if defined MRF89XA_IN_SPI1
        #define MRF89XA_SPI_SDI     SPI_SDI1
        #define MRF89XA_SDI_TRIS    SDI1_TRIS
        #define MRF89XA_SPI_SDO     SPI_SDO1
        #define MRF89XA_SDO_TRIS    SDO1_TRIS
        #define MRF89XA_SPI_SCK     SPI_SCK1
        #define MRF89XA_SCK_TRIS    SCK1_TRIS
    #elif defined MRF49XA_1_IN_SPI2
        #define MRF89XA_SPI_SDI     SPI_SDI2
        #define MRF89XA_SDI_TRIS    SDI2_TRIS
        #define MRF89XA_SPI_SDO     SPI_SDO2
        #define MRF89XA_SDO_TRIS    SDO2_TRIS
        #define MRF89XA_SPI_SCK     SPI_SCK2
        #define MRF89XA_SCK_TRIS    SCK2_TRIS
    #elif defined MRF49XA_1_IN_SPI3
        #define MRF89XA_SPI_SDI     SPI_SDI3
        #define MRF89XA_SDI_TRIS    SDI3_TRIS
        #define MRF89XA_SPI_SDO     SPI_SDO3
        #define MRF89XA_SDO_TRIS    SDO3_TRIS
        #define MRF89XA_SPI_SCK     SPI_SCK3
        #define MRF89XA_SCK_TRIS    SCK3_TRIS
    #elif defined MRF49XA_1_IN_SPI4
        #define MRF89XA_SPI_SDI     SPI_SDI4
        #define MRF89XA_SDI_TRIS    SDI4_TRIS
        #define MRF89XA_SPI_SDO     SPI_SDO4
        #define MRF89XA_SDO_TRIS    SDO4_TRIS
        #define MRF89XA_SPI_SCK     SPI_SCK4
        #define MRF89XA_SCK_TRIS    SCK4_TRIS
    #endif

    #define Config_nCS          LATBbits.LATB1
    #define Config_nCS_TRIS     TRISBbits.TRISB1
    #define Data_nCS            LATBbits.LATB2
    #define Data_nCS_TRIS       TRISBbits.TRISB2

    #if defined MRF89XA_USES_INT0
        #define PHY_IRQ1_TRIS       INT0_TRIS
        //SFRs CONFIGURATION FOR MRF89XA using INT0
        #define PHY_IRQ1        IFS0bits.INT0IF
        #define PHY_IRQ1_En     IEC0bits.INT0IE
    #elif defined MRF89XA_USES_INT1
        #define PHY_IRQ1_TRIS       INT1_TRIS
        //SFRs CONFIGURATION FOR MRF89XA using INT1
        #define PHY_IRQ1        IFS0bits.INT1IF
        #define PHY_IRQ1_En     IEC0bits.INT1IE
    #elif defined MRF89XA_USES_INT2
        #define PHY_IRQ1_TRIS       INT2_TRIS
        //SFRs CONFIGURATION FOR MRF89XA using INT2
        #define PHY_IRQ1        IFS0bits.INT2IF
        #define PHY_IRQ1_En     IEC0bits.INT2IE
    #elif defined MRF89XA_USES_INT3
        #define PHY_IRQ1_TRIS       INT3_TRIS
        //SFRs CONFIGURATION FOR MRF89XA using INT3
        #define PHY_IRQ1        IFS0bits.INT3IF
        #define PHY_IRQ1_En     IEC0bits.INT3IE
    #elif defined MRF89XA_USES_INT4
        #define PHY_IRQ1_TRIS   INT4_TRIS
        //SFRs CONFIGURATION FOR MRF89XA using INT4
        #define PHY_IRQ1        IFS0bits.INT4IF
        #define PHY_IRQ1_En     IEC0bits.INT4IE
    #endif
#endif

#if defined(MRF24J40)
    //SPI selection and pin definitions were above.
    #if defined MRF24J40_IN_SPI1
        #define SPI_SDI     SPI_SDI1
        #define SDI_TRIS    SDI1_TRIS
        #define SPI_SDO     SPI_SDO1
        #define SDO_TRIS    SDO1_TRIS
        #define SPI_SCK     SPI_SCK1
        #define SCK_TRIS    SCK1_TRIS

        #define SPICON      SPI1CON
        #define SPICONCLR   SPI1CONCLR
    #elif defined MRF24J40_IN_SPI2
        #define SPI_SDI     SPI_SDI2
        #define SDI_TRIS    SDI2_TRIS
        #define SPI_SDO     SPI_SDO2
        #define SDO_TRIS    SDO2_TRIS
        #define SPI_SCK     SPI_SCK2
        #define SCK_TRIS    SCK2_TRIS

        #define SPICON      SPI2CON
        #define SPICONCLR   SPI2CONCLR
    #elif defined MRF24J40_IN_SPI3
        #define SPI_SDI     SPI_SDI3
        #define SDI_TRIS    SDI3_TRIS
        #define SPI_SDO     SPI_SDO3
        #define SDO_TRIS    SDO3_TRIS
        #define SPI_SCK     SPI_SCK3
        #define SCK_TRIS    SCK3_TRIS

        #define SPICON      SPI3CON
        #define SPICONCLR   SPI3CONCLR
    #elif defined MRF24J40_IN_SPI4
        #define SPI_SDI     SPI_SDI4
        #define SDI_TRIS    SDI4_TRIS
        #define SPI_SDO     SPI_SDO4
        #define SDO_TRIS    SDO4_TRIS
        #define SPI_SCK     SPI_SCK4
        #define SCK_TRIS    SCK4_TRIS

        #define SPICON      SPI4CON
        #define SPICONCLR   SPI4CONCLR
    #endif

    //For debugging with Flopez's "old" node.
        #define PHY_CS              LATEbits.LATE5
        #define PHY_CS_TRIS         TRISEbits.TRISE5
        #define PHY_RESETn          LATEbits.LATE7
        #define PHY_RESETn_TRIS     TRISEbits.TRISE7
        #define PHY_WAKE            LATEbits.LATE6
        #define PHY_WAKE_TRIS       TRISEbits.TRISE6
    //
    //Configuration for cNGD v1.0.
//        #define PHY_CS              LATEbits.LATE3
//        #define PHY_CS_TRIS         TRISEbits.TRISE3
//        #define PHY_RESETn          LATEbits.LATE0
//        #define PHY_RESETn_TRIS     TRISEbits.TRISE0
//        #define PHY_WAKE            LATEbits.LATE1
//        #define PHY_WAKE_TRIS       TRISEbits.TRISE1
    //

    #if defined MRF24J40_USES_INT0
        #define MRF24J40_INT_PIN    EXTINT_INT0
        #define MRF24J40_INT_TRIS   INT0_TRIS
        //SFRs CONFIGURATION FOR MRF24J40 using INT0
        #define MRF24J40_IF         IFS0bits.INT0IF
        #define MRF24J40_IE         IEC0bits.INT0IE
    #elif defined MRF24J40_USES_INT1
        #define MRF24J40_INT_PIN    EXTINT_INT1
        #define MRF24J40_INT_TRIS   INT1_TRIS
        //SFRs CONFIGURATION FOR MRF24J40 using INT1
        #define MRF24J40_IF         IFS0bits.INT1IF
        #define MRF24J40_IE         IEC0bits.INT1IE
    #elif defined MRF24J40_USES_INT2
        #define MRF24J40_INT_PIN    EXTINT_INT2
        #define MRF24J40_INT_TRIS   INT2_TRIS
        //SFRs CONFIGURATION FOR MRF24J40 using INT2
        #define MRF24J40_IF         IFS0bits.INT2IF
        #define MRF24J40_IE         IEC0bits.INT2IE
    #elif defined MRF24J40_USES_INT3
        #define MRF24J40_INT_PIN    EXTINT_INT3
        #define MRF24J40_INT_TRIS   INT3_TRIS
        //SFRs CONFIGURATION FOR MRF24J40 using INT3
        #define MRF24J40_IF         IFS0bits.INT3IF
        #define MRF24J40_IE         IEC0bits.INT3IE
    #elif defined MRF24J40_USES_INT4
        #define MRF24J40_INT_PIN    EXTINT_INT4
        #define MRF24J40_INT_TRIS   INT4_TRIS
        //SFRs CONFIGURATION FOR MRF24J40 using INT4
        #define MRF24J40_IF         IFS0bits.INT4IF
        #define MRF24J40_IE         IEC0bits.INT4IE
    #endif
#endif

#if defined MRF24WB0M
    //SPI selection and pin definitions were above.
    #if !defined(MRF24WB0M_IN_SPI4)
        #define WF_SDI_TRIS         SDI4_TRIS
        #define WF_SCK_TRIS         SCK4_TRIS
        #define WF_SDO_TRIS         SDO4_TRIS
        #define WF_CS_TRIS          nSS4_TRIS
        #define WF_CS_IO            SPI_nSS4

        #define WF_SSPBUF           SPI4BUF
        #define WF_SPISTAT          SPI4STAT
        #define WF_SPISTATbits      SPI4STATbits
        #define WF_SPICON1          SPI4CON
        #define WF_SPICON1bits      SPI4CONbits
        #define WF_SPI_IE_CLEAR     IEC1CLR
        #define WF_SPI_IF_CLEAR     IFS1CLR
        #define WF_SPI_INT_BITS     0x00000700  //IEC1/IFS1 bits for SPI4
        #define WF_SPI_BRG          SPI4BRG
        #define WF_INT_IPC_MASK     0x000000FF
        #define WF_INT_IPC_VALUE    0x000000C0  //Priority: 011 Subpriority: 00
        #define WF_INT_IPCSET       IPC8SET
        #define WF_INT_IPCCLR       IPC8CLR
    #elif defined(MRF24WB0M_IN_SPI3)
        #define WF_SDI_TRIS         SDI3_TRIS
        #define WF_SCK_TRIS         SCK3_TRIS
        #define WF_SDO_TRIS         SDO3_TRIS
        #define WF_CS_TRIS          nSS3_TRIS
        #define WF_CS_IO            SPI_nSS3

        #define WF_SSPBUF           SPI3BUF
        #define WF_SPISTAT          SPI3STAT
        #define WF_SPISTATbits      SPI3STATbits
        #define WF_SPICON1          SPI3CON
        #define WF_SPICON1bits      SPI3CONbits
        #define WF_SPI_IE_CLEAR     IEC0CLR
        #define WF_SPI_IF_CLEAR     IFS0CLR
        #define WF_SPI_INT_BITS     0x1C000000  //IEC0/IFS0 bits for SPI3
        #define WF_SPI_BRG          SPI3BRG
        #define WF_INT_IPC_MASK     0x000000FF
        #define WF_INT_IPC_VALUE    0x000000C0  //Priority: 011 Subpriority: 00
        #define WF_INT_IPCSET       IPC6SET
        #define WF_INT_IPCCLR       IPC6CLR
    #elif defined(MRF24WB0M_IN_SPI2)
        #define WF_SDI_TRIS         SDI2_TRIS
        #define WF_SCK_TRIS         SCK2_TRIS
        #define WF_SDO_TRIS         SDO2_TRIS
        #define WF_CS_TRIS          nSS2_TRIS
        #define WF_CS_IO            SPI_nSS2

        #define WF_SSPBUF           SPI2BUF
        #define WF_SPISTAT          SPI2STAT
        #define WF_SPISTATbits      SPI2STATbits
        #define WF_SPICON1          SPI2CON
        #define WF_SPICON1bits      SPI2CONbits
        #define WF_SPI_IE_CLEAR     IEC1CLR
        #define WF_SPI_IF_CLEAR     IFS1CLR
        #define WF_SPI_INT_BITS     0x000000E0  //IEC1/IFS1 bits for SPI2
        #define WF_SPI_BRG          SPI2BRG
        #define WF_INT_IPC_MASK     0xFF000000
        #define WF_INT_IPC_VALUE    0x0C000000  //Priority: 011 Subpriority: 00
        #define WF_INT_IPCSET       IPC7SET
        #define WF_INT_IPCCLR       IPC7CLR
    #elif defined(MRF24WB0M_IN_SPI1)
        #define WF_SDI_TRIS         SDI1_TRIS
        #define WF_SCK_TRIS         SCK1_TRIS
        #define WF_SDO_TRIS         SDO1_TRIS
        #define WF_CS_TRIS          nSS1_TRIS
        #define WF_CS_IO            SPI_nSS1

        #define WF_SSPBUF           SPI1BUF
        #define WF_SPISTAT          SPI1STAT
        #define WF_SPISTATbits      SPI1STATbits
        #define WF_SPICON1          SPI1CON
        #define WF_SPICON1bits      SPI1CONbits
        #define WF_SPI_IE_CLEAR     IEC0CLR
        #define WF_SPI_IF_CLEAR     IFS0CLR
        #define WF_SPI_INT_BITS     0x03800000  //IEC0/IFS0 bits for SPI1
        #define WF_SPI_BRG          SPI1BRG
        #define WF_INT_IPC_MASK     0xFF000000
        #define WF_INT_IPC_VALUE    0x0C000000  //Priority: 011 Subpriority: 00
        #define WF_INT_IPCSET       IPC5SET
        #define WF_INT_IPCCLR       IPC5CLR
    #endif
    //External interrupt
    #if defined MRF24WB0M_USES_INT0
        #define WF_INT_TRIS     INT0_TRIS
        #define WF_INT_IO       EXTINT_INT0
        #define WF_INT_BIT      0x00000008
        #define WF_INT_EDGE	INTCONbits.INT0EP
        #define WF_INT_IE	IEC0bits.INT0IE
        #define WF_INT_IF	IFS0bits.INT0IF
    #elif defined MRF24WB0M_USES_INT1
        #define WF_INT_TRIS     INT1_TRIS
        #define WF_INT_IO       EXTINT_INT1
        #define WF_INT_BIT      0x00000080
        #define WF_INT_EDGE	INTCONbits.INT1EP
        #define WF_INT_IE	IEC0bits.INT1IE
        #define WF_INT_IF	IFS0bits.INT1IF
    #elif defined MRF24WB0M_USES_INT2
        #define WF_INT_TRIS     INT2_TRIS
        #define WF_INT_IO       EXTINT_INT2
        #define WF_INT_BIT	0x00000800
        #define WF_INT_EDGE	INTCONbits.INT2EP
        #define WF_INT_IE	IEC0bits.INT2IE
        #define WF_INT_IF	IFS0bits.INT2IF
    #elif defined MRF24WB0M_USES_INT3
        #define WF_INT_TRIS     INT3_TRIS
        #define WF_INT_IO       EXTINT_INT3
        #define WF_INT_BIT	0x00008000
        #define WF_INT_EDGE	INTCONbits.INT3EP
        #define WF_INT_IE	IEC0bits.INT3IE
        #define WF_INT_IF	IFS0bits.INT3IF
    #elif defined MRF24WB0M_USES_INT4
        #define WF_INT_TRIS     INT4_TRIS
        #define WF_INT_IO       EXTINT_INT4
        #define WF_INT_BIT	0x00080000
        #define WF_INT_EDGE	INTCONbits.INT4EP
        #define WF_INT_IE	IEC0bits.INT4IE
        #define WF_INT_IF	IFS0bits.INT4IF
    #endif

    //Rest of MRF24WB0M pinout and definitions
    #define WF_RESET_TRIS	TRISBbits.TRISB15
    #define WF_RESET_IO		LATBbits.LATB15
    #define WF_HIBERNATE_TRIS	TRISBbits.TRISB14
    #define WF_HIBERNATE_IO     PORTBbits.RB14

    #define WF_MAX_SPI_FREQ	(10000000ul)	// Hz

    #define WF_INT_IE_CLEAR	IEC0CLR
    #define WF_INT_IF_CLEAR	IFS0CLR
    #define WF_INT_IE_SET	IEC0SET
    #define WF_INT_IF_SET	IFS0SET
#endif

/* DEBUG UART MACROS AND DEFINITIONS ******************************************/
#if defined DEBUG_UART1
    #define UBRG                U1BRG
    #define UMODE               U1MODE
    #define USTA                U1STA
    #define BusyUART()          !U1STAbits.TRMT
    #define TxNotRdyUART()      !U1STAbits.UTXBF
    #define DataRdyUART()       U1STAbits.URXDA
    #define ReadUART()          (unsigned int) UARTGetDataByte(UART1)
    #define WriteUART(a)        UARTSendDataByte(UART1, a)
    #define getcUART()          UARTGetDataByte(UART1);
#elif defined DEBUG_UART2
    #define UBRG                U2BRG
    #define UMODE               U2MODE
    #define USTA                U2STA
    #define BusyUART()          !U2STAbits.TRMT
    #define TxNotRdyUART()      !U2STAbits.UTXBF
    #define DataRdyUART()       U2STAbits.URXDA
    #define ReadUART()          (unsigned int) UARTGetDataByte(UART2)
    #define WriteUART(a)        UARTSendDataByte(UART2, a)
    #define getcUART()          UARTGetDataByte(UART2);
#elif defined DEBUG_UART3
    #define UBRG                U3BRG
    #define UMODE               U3MODE
    #define USTA                U3STA
    #define BusyUART()          !U3STAbits.TRMT
    #define TxNotRdyUART()      !U3STAbits.UTXBF
    #define DataRdyUART()       U3STAbits.URXDA
    #define ReadUART()          (unsigned int) UARTGetDataByte(UART3)
    #define WriteUART(a)        UARTSendDataByte(UART3, a)
    #define getcUART()          UARTGetDataByte(UART3);
#elif defined DEBUG_UART4
    #define UBRG                U4BRG
    #define UMODE               U4MODE
    #define USTA                U4STA
    #define BusyUART()          !U4STAbits.TRMT
    #define TxNotRdyUART()      !U4STAbits.UTXBF
    #define DataRdyUART()       U4STAbits.URXDA
    #define ReadUART()          (unsigned int) UARTGetDataByte(UART4)
    #define WriteUART(a)        UARTSendDataByte(UART4, a)
    #define getcUART()          UARTGetDataByte(UART4);
#elif defined DEBUG_UART5
    #define UBRG                U5BRG
    #define UMODE               U5MODE
    #define USTA                U5STA
    #define BusyUART()          !U5STAbits.TRMT
    #define TxNotRdyUART()      !U5STAbits.UTXBF
    #define DataRdyUART()       U5STAbits.URXDA
    #define ReadUART()          (unsigned int) UARTGetDataByte(UART5)
    #define WriteUART(a)        UARTSendDataByte(UART5, a)
    #define getcUART()          UARTGetDataByte(UART5);
#elif defined DEBUG_UART6
    #define UBRG                U6BRG
    #define UMODE               U6MODE
    #define USTA                U6STA
    #define BusyUART()          !U6STAbits.TRMT
    #define TxNotRdyUART()      !U6STAbits.UTXBF
    #define DataRdyUART()       U6STAbits.URXDA
    #define ReadUART()          (unsigned int) UARTGetDataByte(UART6)
    #define WriteUART(a)        UARTSendDataByte(UART6, a)
    #define getcUART()          UARTGetDataByte(UART6);
#endif

#if defined ENABLE_CONSOLE
    #define putcUART(a)  do{while(BusyUART()); WriteUART(a); while(BusyUART());}while(0)
    #define putrsUART(a) WriteStringPC(a)
    #define putsUART(a)  WriteStringPC(a)
    void WriteStringPC(const char *string);
#endif
/******************************************************************************/