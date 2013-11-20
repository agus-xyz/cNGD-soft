/*******************************************************************************
* FileName:	Console.c                       MODIFIED FROM ORIGINAL STACK!!
* Dependencies: Console.h
* Processor:	PIC18, PIC24F, PIC32, dsPIC30, dsPIC33
*               tested with 18F4620, dsPIC33FJ256GP710	
* Hardware:	PICDEM Z, Explorer 16, PIC18 Explorer
* Complier:     Microchip C18 v3.04 or higher
*		Microchip C30 v2.03 or higher
*               Microchip C32 v1.02 or higher	
* Company:	Microchip Technology, Inc.
*
* Copyright © 2007-2010 Microchip Technology Inc.  All rights reserved.
*
* Microchip licenses to you the right to use, modify, copy and distribute
* Software only when embedded on a Microchip microcontroller or digital signal
* controller and used with a Microchip radio frequency transceiver, which are
* integrated into your product or third party product (pursuant to the terms in
* the accompanying license agreement).
*
* You should refer to the license agreement accompanying this Software for
* additional information regarding your rights and obligations.
*
* SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
* EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
* MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
* IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
* CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
* OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
* INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
* CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
* SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
* (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
********************************************************************************
* File Description:
*
*   This file configures and provides the function for using the
*   UART to transmit data over RS232 to the computer.
*
* Change History:
*  Rev   Date         Author    Description
*  0.1   11/09/2006   yfy       Initial revision
*  1.0   01/09/2007   yfy       Initial release
*  2.0   4/24/2009    yfy       Modified for MiApp interface
*  2.1   6/20/2009    yfy       Add LCD support
*  3.1   5/28/2010    yfy       MiWi DE 3.1
*  4.1   6/3/2011     yfy       MAL v2011-06
*******************************************************************************/

/********************************** HEADERS ***********************************/
#include "WirelessProtocols/Console.h"
#include "WirelessProtocols/ConfigApp.h"
#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"

#if defined(ENABLE_CONSOLE)
#if defined(__dsPIC33F__) || defined(__PIC24F__) || defined(__PIC24FK__) || \
    defined(__PIC24H__) || defined(__PIC32MX__)

/******************************* VARIABLES ************************************/
ROM unsigned char CharacterArray[]={'0','1','2','3','4','5','6','7','8','9','A',
                                    'B','C','D','E','F'};

/******************************* FUNCTIONS ************************************/

/*******************************************************************************
* Function:         void ConsoleInit(void)
* PreCondition:     none
* Input:            none
* Output:	    none
* Side Effects:	    UART selected for debugging is configured
* Overview:         This function will configure the UART with the options:
*                   8 bits data, 1 stop bit, no flowcontrol mode
* Note:		    None
*******************************************************************************/
void ConsoleInit(void){
#if defined __32MX795F512H__ || defined __32MX795F512L__
        #if defined DEBUG_UART1
            U1BRG = ((CLOCK_FREQ/(1<<mOSCGetPBDIV()))/(UBRGH_DIV*BAUD_RATE))-1;
            U1STA = 0;
            U1MODE = UMODE_CONF;
            U1STA = (1 << 12)|UART_TX_ENABLE;   //0x1400    TX/RX EN
        #elif defined DEBUG_UART2
            U2BRG = ((CLOCK_FREQ/(1<<mOSCGetPBDIV()))/(UBRGH_DIV*BAUD_RATE))-1;
            U2STA = 0;
            U2MODE = UMODE_CONF;
            U2STA = (1 << 12)|UART_TX_ENABLE;   //0x1400    TX/RX EN
        #elif defined DEBUG_UART3
            U3BRG = ((CLOCK_FREQ/(1<<mOSCGetPBDIV()))/(UBRGH_DIV*BAUD_RATE))-1;
            U3STA = 0;
            U3MODE = UMODE_CONF;
            U3STA = (1 << 12)|UART_TX_ENABLE;   //0x1400    TX/RX EN
        #elif defined DEBUG_UART4
            U4BRG = ((CLOCK_FREQ/(1<<mOSCGetPBDIV()))/(UBRGH_DIV*BAUD_RATE))-1;
            U4STA = 0;
            U4MODE = UMODE_CONF;
            U4STA = (1 << 12)|UART_TX_ENABLE;   //0x1400    TX/RX EN
        #elif defined DEBUG_UART5
            U5BRG = ((CLOCK_FREQ/(1<<mOSCGetPBDIV()))/(UBRGH_DIV*BAUD_RATE))-1;
            U5STA = 0;
            U5MODE = UMODE_CONF;
            U5STA = (1 << 12)|UART_TX_ENABLE;   //0x1400    TX/RX EN
        #elif defined DEBUG_UART6
            U6BRG = ((CLOCK_FREQ/(1<<mOSCGetPBDIV()))/(UBRGH_DIV*BAUD_RATE))-1;
            U6STA = 0;
            U6MODE = UMODE_CONF;
            U6STA = (1 << 12)|UART_TX_ENABLE;   //0x1400    TX/RX EN
        #endif
    #else    
        #error Microcontroller not supported.
    #endif
}

/*******************************************************************************
* Function:         void ConsolePutROMString(ROM char* str)
* PreCondition:     none
* Input:	    str - ROM string that needs to be printed
* Output:           none
* Side Effects:	    str is printed to the console
* Overview:         This function will print the inputed ROM string
* Note:             Do not power down the microcontroller until the transmission
*                   is complete or the last transmission of the string can be
*                   corrupted.
*******************************************************************************/
void ConsolePutROMString(ROM char* str){
    BYTE c;
    while((c = *str++))
        ConsolePut(c);
}

/*******************************************************************************
* Function:         void ConsolePut(BYTE c)
* PreCondition:     none
* Input:	    c - character to be printed
* Output:           none
* Side Effects:	    c is printed to the console
* Overview:         This function will print the inputed character
* Note:             Do not power down the microcontroller until the transmission
*                   is complete or the last transmission of the string can be
*                   corrupted.
*******************************************************************************/
void ConsolePut(BYTE c){
    #if defined DEBUG_UART1
        while(U1STAbits.TRMT == 0);
        U1TXREG = c;
    #elif defined DEBUG_UART2
        while(U2STAbits.TRMT == 0);
        U2TXREG = c;
    #elif defined DEBUG_UART3
        while(U3STAbits.TRMT == 0);
        U3TXREG = c;
    #elif defined DEBUG_UART4
        while(U4STAbits.TRMT == 0);
        U4TXREG = c;
    #elif defined DEBUG_UART5
        while(U5STAbits.TRMT == 0);
        U5TXREG = c;
    #elif defined DEBUG_UART6
        while(U6STAbits.TRMT == 0);
        U6TXREG = c;
    #endif
}

/*******************************************************************************
* Function:         BYTE ConsoleGet(void)
* PreCondition:     none
* Input:	    none
* Output:	    one byte received by UART
* Side Effects:	    none
* Overview:	    This function will receive one byte from UART
* Note:             Do not power down the microcontroller until the transmission
*                   is complete or the last transmission of the string can be
*                   corrupted.  
*******************************************************************************/
BYTE ConsoleGet(void){
    char Temp;

    #if defined DEBUG_UART1
        while(IFS0bits.U1RXIF == 0);
        Temp = U1RXREG;
        IFS0bits.U1RXIF = 0;
    #elif defined DEBUG_UART2
        while(IFS1bits.U2RXIF == 0);
        Temp = U2RXREG;
        IFS1bits.U2RXIF = 0;
    #elif defined DEBUG_UART3
        while(IFS1bits.U3RXIF == 0);
        Temp = U3RXREG;
        IFS1bits.U3RXIF = 0;
    #elif defined DEBUG_UART4
        while(IFS2bits.U4RXIF == 0);
        Temp = U4RXREG;
        IFS2bits.U4RXIF = 0;
    #elif defined DEBUG_UART5
        while(IFS2bits.U5RXIF == 0);
        Temp = U5RXREG;
        IFS2bits.U5RXIF = 0;
    #elif defined DEBUG_UART6
        while(IFS2bits.U6RXIF == 0);
        Temp = U6RXREG;
        IFS2bits.U6RXIF = 0;
    #endif

    return Temp;
}

/*******************************************************************************
* Function:         void PrintChar(BYTE toPrint)
* PreCondition:     none
* Input:	    toPrint - character to be printed
* Output:           none
* Side Effects:	    toPrint is printed to the console
* Overview:         This function will print the inputed BYTE to the console in
*                   hexidecimal form
* Note:             Do not power down the microcontroller until the transmission
*                   is complete or the last transmission of the string can be
*                   corrupted.
*******************************************************************************/
void PrintChar(BYTE toPrint){
    BYTE PRINT_VAR;
    PRINT_VAR = toPrint;
    toPrint = (toPrint>>4)&0x0F;
    ConsolePut(CharacterArray[toPrint]);
    toPrint = (PRINT_VAR)&0x0F;
    ConsolePut(CharacterArray[toPrint]);
    return;
}

/*******************************************************************************
* Function:         void PrintDec(BYTE toPrint)
* PreCondition:     none
* Input:	    toPrint - character to be printed. Range is 0-99
* Output:           none
* Side Effects:	    toPrint is printed to the console in decimal
* Overview:         This function will print the inputed BYTE to the console in
*                   decimal form
* Note:             Do not power down the microcontroller until the transmission
*                   is complete or the last transmission of the string can be
*                   corrupted.
*******************************************************************************/
void PrintDec(BYTE toPrint){
    ConsolePut(CharacterArray[toPrint/10]);
    ConsolePut(CharacterArray[toPrint%10]);
}

#else
    #error Unknown processor.  See Compiler.h
#endif

#endif  //ENABLE_CONSOLE
