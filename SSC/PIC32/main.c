/*******************************************************************************
  EtherCAT demo main

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    Contains the functional implementation of main file of EtherCAT demo.

  Description:
    This file contains the functional implementation of main file of EtherCAT demo.
*******************************************************************************/

/*******************************************************************************
Copyright (c) 2015 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/



// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
/* Standard Includes */
#include <stdint.h>                 /* For uint32_t definition */
#include <stdbool.h>                /* For true/false definition */

/* PIC32 related includes */
#include <plib.h>                   /* Include to use PIC32 peripheral libraries */
#ifdef __XC32
    #include <xc.h>                 /* Defines special funciton registers, CP0 regs */
#endif

/* Application related includes */
                   /* User funct/params, such as InitApp */




/* EtherCAT Slave Stack related includes */
#include "ecat_def.h"
#include "ecatslv.h"
#include "ecatappl.h"
#include "objdef.h"
#include "9252_HW.h"
#include "bsp.h"
#include "console.h"
#include "ti_wdt.h"
#include "semi_auto.h"
//#include "global.h"
#include "m1eph.h"


//void __ISR(_CORE_TIMER_VECTOR, IPL2SOFT) CoreTimerHandler(void)
//{
//  mCTClearIntFlag();
//  
//  pet_the_dog();
//
//  UpdateCoreTimer(M1SA_CTRL_TICKS);
//
//}


//#define SYS_FREQ     80000000L

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/
/* i.e. uint32_t <variable_name>; */

// *****************************************************************************
// Section: Configuration Bit Settings
//#pragma config FSOSCEN = OFF    /* Disable secondary oscillator */
//#pragma config FWDTEN = OFF     /* Disable watchdog timer */
//#pragma config POSCMOD=HS       /* High speed crystal mode */
//#pragma config FNOSC=PRIPLL     /* Use Primary Oscillator with PLL (XT, HS, or EC) */
//#pragma config FPLLIDIV=DIV_2   /* Divide 8MHz to between 4-5MHz before PLL (now 4MHz) */
//#pragma config FPLLMUL=MUL_20   /* Multiply with PLL (now 80MHz) */
//#pragma config FPLLODIV=DIV_1   /* Divide After PLL (now 80 MHz) */
//#pragma config FPBDIV = DIV_1   /* pheripheral clock = sys clk */
/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/





int32_t main(void)
{
//    UINT pbclk, value;
//    
//    
//#ifndef PIC32_STARTER_KIT
//    /*The JTAG is on by default on POR.  A PIC32 Starter Kit uses the JTAG, but
//    for other debug tool use, like ICD 3 and Real ICE, the JTAG should be off
//    to free up the JTAG I/O */
//    DDPCONbits.JTAGEN = 0;
//#endif
//    
//    value = SYSTEMConfigWaitStatesAndPB( SYS_FREQ );
//
//    /* Enable the cache for the best performance */
//    CheKseg0CacheOn();
//
//    INTEnableSystemMultiVectoredInt();
//
//    value = OSCCON;
//    
//    while (!(value & 0x00000020))
//    {
//            value = OSCCON;    /* Wait for PLL lock to stabilize */
//    }
//
//    pbclk = SYSTEMConfig(SYS_FREQ, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);
//
//
//  
//    
//    /**********************************************************
//     * Configure Multivector Interrupt Mode.  Using Single Vector Mode
//     * is expensive from a timing perspective, so most applications
//     * should probably not use a Single Vector Mode
//     ***********************************************************/    
//    INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);

    bsp_init();
//    pet_the_dog();

    semi_auto_init();
//    pet_the_dog();

    /* PMP port is kept open throught the session */
    PDI_Init();
//    pet_the_dog();

    /* <INSERT USER APPLICATION CODE HERE> */

    
    /* Initialize the Hardware and the EtherCAT Slave Controller */
    LAN9252_Init();
//    pet_the_dog();
    printk("LAN initialized \r\n");
    MainInit();
//    pet_the_dog();

//    write to alias address
      UINT16 MBXMEM Aliasid = PORTRead(IOPORT_B);
    Misc0x8005.Unique_id = PORTRead(IOPORT_B)+3000;
    if(Aliasid != 0){
        HW_EscWriteDWord(Misc0x8005.Unique_id , 0x12); // 0x12 = configured station alias
    }

    /*Initialize Axes structures*/
	//TODO:    CiA402_Init();

    /*Create basic mapping*/
    APPL_GenerateMapping(&nPdInputSize,&nPdOutputSize);

    
    bRunApplication = TRUE;
    do
    {
        MainLoop();
 
    } while (bRunApplication == TRUE);

	//TODO:    CiA402_DeallocateAxis();

    HW_Release();
    bsp_close();
    return 0;
}
