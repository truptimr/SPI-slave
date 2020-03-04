/*
 *    Copyright (C) 2017 Matthieu Bec
 *
 *    This file is part of m1cs.
 *
 *    This program is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "bsp.h"

#include <plib.h>
#include <stdint.h>
//#include "usleep.h"
#include "gpio_fast.h"
#include "console.h"
#include "i2c.h"



// DEVCFG3
// USERID = No Setting
#pragma config FSRSSEL = PRIORITY_7     // SRS Select (SRS Priority 7)
#pragma config FMIIEN = ON              // Ethernet RMII/MII Enable (MII Enabled)
#pragma config FETHIO = ON              // Ethernet I/O Pin Select (Default Ethernet I/O)
#pragma config FCANIO = ON              // CAN I/O Pin Select (Default CAN I/O)
#pragma config FUSBIDIO = OFF           // USB USID Selection (Controlled by Port Function)
#pragma config FVBUSONIO = OFF          // USB VBUS ON Selection (Controlled by Port Function)

// DEVCFG2
#pragma config FPLLIDIV = DIV_2         // PLL Input Divider (2x Divider)
#pragma config FPLLMUL = MUL_20         // PLL Multiplier (20x Multiplier)
#pragma config UPLLIDIV = DIV_12        // USB PLL Input Divider (12x Divider)
#pragma config UPLLEN = OFF             // USB PLL Enable (Disabled and Bypassed)
#pragma config FPLLODIV = DIV_1         // System PLL Output Clock Divider (PLL Divide by 1)

// DEVCFG1
#pragma config FNOSC = PRIPLL           // Oscillator Selection Bits (Primary Osc w/PLL (XT+,HS+,EC+PLL))
#pragma config FSOSCEN = OFF            // Secondary Oscillator Enable (Disabled)
#pragma config IESO = ON                // Internal/External Switch Over (Enabled)
#pragma config POSCMOD = HS             // Primary Oscillator Configuration (HS osc mode)
#pragma config OSCIOFNC = OFF           // CLKO Output Signal Active on the OSCO Pin (Disabled)
#pragma config FPBDIV = DIV_1           // Peripheral Clock Divisor (Pb_Clk is Sys_Clk/1)
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor Selection (Clock Switch Disable, FSCM Disabled)
#pragma config WDTPS = PS1048576        // Watchdog Timer Postscaler (1:1048576)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (WDT Disabled (SWDTEN Bit Controls))

// DEVCFG0
#pragma config DEBUG = OFF              // Background Debugger Enable (Debugger is disabled)
#pragma config ICESEL = ICS_PGx2        // ICE/ICD Comm Channel Select (ICE EMUC2/EMUD2 pins shared with PGC2/PGD2)
#pragma config PWP = OFF                // Program Flash Write Protect (Disable)
#pragma config BWP = OFF                // Boot Flash Write Protect bit (Protection Disabled)
#pragma config CP = OFF                 // Code Protect (Protection Disabled)

// PIN SIGNAL     TYPE      PORT  MODE     DIR
//----------------------------------------------------
// 17  DIR_CV2    GPIO_OUT  A0    DIGITAL  Out    P15 * 27
// 38  DRV_ENA3/  GPIO_OUT  A1    DIGITAL  Out    P15 * 26
// 91  DRV_ENA2/  GPIO_OUT  A6    DIGITAL  Out    P15 * 39
// 92  DIR_CV1    GPIO_OUT  A7    DIGITAL  Out    P15 * 38
// 29  CV_PWR_EN_ GPIO_OUT  A10   DIGITAL  Out    P15 * 23
// 66  I2C_SCL    SCL1      A14   DIGITAL
// 67  I2C_SDA    SDA1      A15   DIGITAL
// 72  INT        INT0      D0    DIGITAL
// 76  PWM_CV3    OC2       D1    DIGITAL
// 77  PWM_CV1    OC3       D2    DIGITAL
// 78  PWM_CV2    OC4       D3    DIGITAL
// 81  PWMR       OC5       D4    DIGITAL
// 69  DIR_CV3    GPIO_OUT  D9    DIGITAL  Out    P15 * 15
// 71  DRV_SV2    GPIO_OUT  D11   DIGITAL  Out    P15 * 3
// 47  DRV_SV4    GPIO_OUT  D14   DIGITAL  Out    P15 * 7
// 48  DRV_SV1    GPIO_OUT  D15   DIGITAL  Out    P15 * 2
// 51  SG_CNV     GPIO_OUT  F3    DIGITAL  Out    P15 * 19
// 49  ADC_SDI    SDI4      F4    DIGITAL
// 50  ADC_SDO    SDO4      F5    DIGITAL
// 40  ADC_SS     SS4       F12   DIGITAL
// 39  ADC_SCK    SCK4      F13   DIGITAL
// 57  A9p22      GPIO_OUT  A9    DIGITAL  Out    P15 * 22
// 56  DRV_ENA1/  GPIO_OUT  A4    DIGITAL  Out    P15 * 14
// 10  HC_A2      GPIO_OUT  G6    DIGITAL  Out    P15 * 30
// 96  HC_A1      GPIO_OUT  G12   DIGITAL  Out    P15 * 34
// 97  HC_A0      GPIO_OUT  G13   DIGITAL  Out    P15 * 35
// 95  RST_GPIO   GPIO_OUT  G14   DIGITAL  Out    XXX input ?
// 1   HC_ENB     GPIO_OUT  G15   DIGITAL  Out    P15 * 31

// note: RG2, RG3 input only

void bsp_init()
{

  uint32_t pbclk, value;
//
  // The JTAG is on by default on POR.  A PIC32 Starter Kit uses the JTAG, but
  // for other debug tool use, like ICD 3 and Real ICE, the JTAG should be off
  // to free up the JTAG I/O
  DDPCONbits.JTAGEN = 0;

  value = SYSTEMConfigWaitStatesAndPB(M1SA_SYS_FREQ);

  // Enable cache for best performance
  CheKseg0CacheOn();

  value = OSCCON;

  while (!(value & 0x00000020))
    {
      value = OSCCON;    /* Wait for PLL lock to stabilize */
    }

//   Configure cache, wait states and peripheral bus clock
//   Configure the device for maximum performance but do not change the PBDIV
//   Given the options, this function will change the flash wait states, RAM
//   wait state and enable prefetch cache but will not change the PBDIV.
//   The PBDIV value is already set via the pragma FPBDIV option above..
  pbclk = SYSTEMConfig(M1SA_SYS_FREQ, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);
// /*

//  // GPIO
  mPORTAOpenDrainOpen(0x0000);
  mPORTAWrite(0x0000);
  PORTSetPinsDigitalOut(IOPORT_A, BIT_0 | BIT_1 | BIT_6 | BIT_7 | BIT_10 | BIT_4 | BIT_9);
  PORTSetPinsDigitalIn(IOPORT_A, BIT_5);
//  mPORTBOpenDrainOpen(0x0000);
  PORTSetPinsDigitalIn(IOPORT_B, BIT_0 |BIT_1 | BIT_2 | BIT_3 | BIT_4 );
//  mPORTBWrite(0x0000);
//  PORTSetPinsDigitalOut(IOPORT_B, 0);
//   mPORTBCloseAll();
//  
//  PORTSetPinsDigitalOut(IOPORT_B, BIT_0); // Location LED
//
  mPORTDOpenDrainOpen(0x0000); // bit 1 and bit 3 high for reset and OSS pins on eval brd. Bit 1 LED on EPH
  mPORTDWrite(0x0000);
  PORTSetPinsDigitalOut(IOPORT_D, BIT_1 | BIT_12 | BIT_2);
//

////    PORTSetBits(IOPORT_D, BIT_3); // eph eval OSS pin high
    PORTSetBits(IOPORT_D, BIT_12); // eph  reset pin high
    PORTSetBits(IOPORT_D, BIT_2); // eph  OSS pin high
//  // SPI
////  spi_init();
//

//  // disable int0
//  CloseINT0();
//  
  // enable multi-vector interrupts
INTEnableSystemMultiVectoredInt();

  // uart console
  UARTConfigure(UART1, UART_ENABLE_PINS_TX_RX_ONLY);
  UARTSetFifoMode(UART1, 0); // UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY
  UARTSetLineControl(UART1, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
  UARTSetDataRate(UART1, M1SA_PBUS_CLOCK, 9600);
  //UARTSetDataRate(UART1, M1SA_PBUS_CLOCK, 38400);
  //UARTSetDataRate(UART1, M1SA_PBUS_CLOCK, 115200);
  UARTEnable(UART1, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
  printk("in bsp.c \n\r");
  //   I2C
  i2c_init();

  

}

void bsp_close()
{
  i2c_close();
}

