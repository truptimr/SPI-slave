/*******************************************************************************
 User application

  Company:
    Microchip Technology Inc.

  File Name:
    user.c

  Summary:
    Contains the functional implementation of user application

  Description:
    This file contains the functional implementation of user application
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

#ifdef __XC32
    #include <xc.h>          /* Defines special funciton registers, CP0 regs  */
#endif

#include <plib.h>            /* Include to use PIC32 peripheral libraries     */
#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>         /* For true/false definition                     */
#include "user.h"            /* variables/params used by user.c               */

#define SYS_FREQ 80000000
#define GetSystemClock()           (SYS_FREQ)
#define GetPeripheralClock()       (SYS_FREQ/1)
#define GetInstructionClock()      (SYS_FREQ)
#define I2C_CLOCK_FREQ             400000

/******************************************************************************/
/* User Functions                                                             */
/******************************************************************************/

/* TODO Initialize User Ports/Peripherals/Project here */

#define I2C_BUS              I2C1
#define DAC_ADDRESS              0x60        // 0b1010000 Serial EEPROM address
#define UART_MODULE_ID UART1 // RS232 is connected  through UART1 module

extern unsigned int tempSensor;    // Connected to AN0
extern unsigned int pot;   // Connected to AN1 
extern unsigned int dac_input;//Connected to AN2
/*******************************************************************************
  Function:
    BOOL StartTransfer( BOOL restart )

  Summary:
    Starts (or restarts) a transfer to/from the EEPROM.

  Description:
    This routine starts (or restarts) a transfer to/from the EEPROM, waiting (in
    a blocking loop) until the start (or re-start) condition has completed.

  Precondition:
    The I2C module must have been initialized.

  Parameters:
    restart - If FALSE, send a "Start" condition
            - If TRUE, send a "Restart" condition
    
  Returns:
    TRUE    - If successful
    FALSE   - If a collision occured during Start signaling
    
  Example:
    <code>
    StartTransfer(FALSE);
    </code>

  Remarks:
    This is a blocking routine that waits for the bus to be idle and the Start
    (or Restart) signal to complete.
  *****************************************************************************/

BOOL StartTransfer( BOOL restart )
{
    I2C_STATUS  status;
    char i=0xff;
    // Send the Start (or Restart) signal
    if(restart)
    {
        I2CRepeatStart(I2C_BUS);
    }
    else
    {
        // Wait for the bus to be idle, then start the transfer
        while( !I2CBusIsIdle(I2C_BUS)&& i-- );

        if(I2CStart(I2C_BUS) != I2C_SUCCESS)
        {
            //DBPRINTF("Error: Bus collision during transfer Start\n");
            return FALSE;
        }
    }
    i=0xff;
    // Wait for the signal to complete
    do
    {
        status = I2CGetStatus(I2C_BUS);

    } while ( (!(status & I2C_START)) && i-- );

    return TRUE;
}


/*******************************************************************************
  Function:
    BOOL TransmitOneByte( UINT8 data )

  Summary:
    This transmits one byte to the EEPROM.

  Description:
    This transmits one byte to the EEPROM, and reports errors for any bus
    collisions.

  Precondition:
    The transfer must have been previously started.

  Parameters:
    data    - Data byte to transmit

  Returns:
    TRUE    - Data was sent successfully
    FALSE   - A bus collision occured

  Example:
    <code>
    TransmitOneByte(0xAA);
    </code>

  Remarks:
    This is a blocking routine that waits for the transmission to complete.
  *****************************************************************************/

BOOL TransmitOneByte( UINT8 data )
{
    char timeout =0xff;
    // Wait for the transmitter to be ready
    while((!I2CTransmitterIsReady(I2C_BUS)) && timeout--);

    // Transmit the byte
    if(I2CSendByte(I2C_BUS, data) == I2C_MASTER_BUS_COLLISION)
    {
        //DBPRINTF("Error: I2C Master Bus Collision\n");
        return FALSE;
    }

    timeout = 0xff;
    // Wait for the transmission to finish
    while(!I2CTransmissionHasCompleted(I2C_BUS)&& timeout--);

    return TRUE;
}


/*******************************************************************************
  Function:
    void StopTransfer( void )

  Summary:
    Stops a transfer to/from the EEPROM.

  Description:
    This routine Stops a transfer to/from the EEPROM, waiting (in a 
    blocking loop) until the Stop condition has completed.

  Precondition:
    The I2C module must have been initialized & a transfer started.

  Parameters:
    None.
    
  Returns:
    None.
    
  Example:
    <code>
    StopTransfer();
    </code>

  Remarks:
    This is a blocking routine that waits for the Stop signal to complete.
  *****************************************************************************/

void StopTransfer( void )
{
    I2C_STATUS  status;
    char timeout =0xff;
    // Send the Stop signal
    I2CStop(I2C_BUS);

    // Wait for the signal to complete
    do
    {
        status = I2CGetStatus(I2C_BUS);

    } while ( (!(status & I2C_STOP)) && (timeout-- ));
}

BOOL DAC_Init()
{
    UINT32              actualClock;
    
   // Set the I2C baudrate
    actualClock = I2CSetFrequency(I2C_BUS, GetPeripheralClock(), I2C_CLOCK_FREQ);
    if ( abs(actualClock-I2C_CLOCK_FREQ) > I2C_CLOCK_FREQ/10 )
    {
        return FALSE;
    }

    // Enable the I2C bus
    I2CEnable(I2C_BUS, TRUE); 
    
    return TRUE;
}
void setVoltage(UINT16 dac_reg_val)
{
    UINT8               i2cData[10];
    I2C_7_BIT_ADDRESS   SlaveAddress;
    int                 Index;
    int                 DataSz;
    BOOL                Success = TRUE;
      
            
    // Initialize the data buffer
    I2C_FORMAT_7_BIT_ADDRESS(SlaveAddress, DAC_ADDRESS, I2C_WRITE);
    i2cData[0] = SlaveAddress.byte;
    i2cData[1] = dac_reg_val >> 8;              // EEPROM location to program (high address byte)
    i2cData[2] = dac_reg_val &0xff;              // EEPROM location to program (low address byte)
                 // Data to write
    DataSz = 3;

    // Start the transfer to write data to the EEPROM
    if( !StartTransfer(FALSE) )
    {
        return;
    }

    // Transmit all data
    Index = 0;
    while( Success && (Index < DataSz) )
    {
        // Transmit a byte
        if (TransmitOneByte(i2cData[Index]))
        {
            // Advance to the next byte
            Index++;

            // Verify that the byte was acknowledged
            if(!I2CByteWasAcknowledged(I2C_BUS))
            {
                Success = FALSE;
            }
        }
        else
        {
            Success = FALSE;
        }
    }

    // End the transfer (hang here if an error occured)
    StopTransfer();

}


// *****************************************************************************
// void UARTTxBuffer(char *buffer, UINT32 size)
// *****************************************************************************
void SendDataBuffer(const char *buffer, UINT32 size)
{
    while(size)
    {      
        while(!UARTTransmitterIsReady(UART_MODULE_ID)) ;

        UARTSendDataByte(UART_MODULE_ID, *buffer);

        buffer++;
        size--;
    }

    //while(!UARTTransmissionHasCompleted(UART_MODULE_ID));
}
// *****************************************************************************
// UINT32 GetDataBuffer(char *buffer, UINT32 max_size)
// *****************************************************************************
UINT32 GetDataBuffer(char *buffer, UINT32 max_size)
{
    UINT32 num_char;
    num_char = 0;

    
    while(num_char < max_size)
    {
       //while  (IFS0bits.U1RXIF == 1);    // Clear the Recieve Interrupt Flag
     while ( !U1STAbits.URXDA);   // wait until data available in RX buffer
       *buffer = UARTGetDataByte(UART_MODULE_ID); 
        buffer++;
        num_char++;  
    }

    return num_char;
}

void InitApp(void)
{
//    /* Setup analog functionality and port direction */
//    /*Configure the GPIO as output*/
//    /*LED D24 - RD2*/
//    TRISDCLR = 0x04;
//    LATDCLR  = 0x04; // CLear all the values.
//    
//    /*Configure the GPIO as input*/
//    /* Switch SW50-RD3*/
//    TRISDSET = 0x80;
//
//    /*ADC Conversion.*/
//    AD1PCFGCLR = 0x07; // PORTB = Analog; //an0,1,2
//    
//    //AD1CON1 = 0x0040; // SAMP bit = 0 ends sampling
//    AD1CON1bits.ASAM = 1;
//    AD1CON1bits.SSRC = 7;
//       
//    AD1CON2bits.SMPI = 2;   //Interrupt after every 3rd sample.
//    AD1CON2bits.BUFM = 0;   //single 16 word result buffer. so always ADCBUF0 to
//                            //ADCBUF1
//    AD1CON2bits.ALTS = 0;   //Always use MUXA input select.
//    
//  
//    AD1CHSbits.CH0NA = 0;   // Select VR- for MUXA negative input.
//    AD1CON2bits.CSCNA = 1;  // Enable input scan
//    
//    AD1CSSLbits.CSSL = 0x07;    //AN0, AN1,AN2.
//    
//    
//    AD1CON3bits.SAMC =31; // Auto Sample, TAD = internal 6 TPB
//    AD1CON3bits.ADCS = 0X02;// Auto Sample, TAD = internal 6 TPB
//    
//      
//    IPC6bits.AD1IP = 2;//Set Priority to 5
//    IPC6bits.AD1IS = 2;//Set Sub Priority to 3
//    
//    IFS1CLR = 0x0002;// Ensure the interrupt flag is clear
//   // IEC1SET = 0x0002;// Enable ADC interrupts
//    
//   
//    AD1CON1SET = 0x8000; // turn on the ADC
//    
//    AD1CON1SET = 0x0004; // Auto start sampling ...
//    
//  
//    //Enable DAC.
//    DAC_Init();
//    
//    //Enable UART
//    UARTConfigure(UART_MODULE_ID, UART_ENABLE_PINS_TX_RX_ONLY); // UART Enable
//    UARTSetFifoMode(UART_MODULE_ID, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_HALF_FULL);
//   
//    UARTSetLineControl(UART_MODULE_ID, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1); // Parity, Stop, 8bits
//    UARTSetDataRate(UART_MODULE_ID, GetPeripheralClock(), 9600); // Baudrate
//      
//    UARTEnable(UART_MODULE_ID, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
//
//    
}
