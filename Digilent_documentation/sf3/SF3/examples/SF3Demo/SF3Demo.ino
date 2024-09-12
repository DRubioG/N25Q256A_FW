
#include "SF3.h"

/**************************************************/
/* PmodSF3 Demo                                   */
/**************************************************/
/*    Author: Samuel Lowe                         */
/*    Copyright 2016, Digilent Inc.               */
/*                                                */
/*   Made for use with chipKIT uC32               */
/**************************************************/
/*  Module Description:                           */
/*                                                */
/*    This module implements a demo application   */
/*    of the PmodSF3.                             */
/*                                                */
/*  Functionality:                                */
/*                                                */  
/*    This module initializes the PmodSF3         */
/*    then reads some flash memory. Then writes   */
/*    a page and reads it back                    */
/*                                                */
/**************************************************/
/*  Revision History:                             */
/*                                                */
/*      10/7/2016(SamL): Created                  */
/*                                                */
/**************************************************/

SF3 mySF3;

#define BASE_ADDRESS 0x004000

void printData (unsigned int address);

int id, address, data, i = 0;

void setup() {
  // put your setup code here, to run once:
  uint8_t page[256];
  mySF3.begin();
  Serial.begin(9600);

  //print off device ID
  id = mySF3.getDeviceID();
  Serial.print("id: ");Serial.println(id, HEX);
  //print first couple members of the base address
  printData(BASE_ADDRESS);
  printData(BASE_ADDRESS+1);
  printData(BASE_ADDRESS+2);
  printData(BASE_ADDRESS+3);
  printData(BASE_ADDRESS+4);
  

  mySF3.writeEnable();
  
  mySF3.subSectorErase(BASE_ADDRESS);

  Serial.print("sr check: " );Serial.println(mySF3.readSR());
  Serial.println("after the subsector is erased");
  printData(BASE_ADDRESS);
  printData(BASE_ADDRESS+1);
  printData(BASE_ADDRESS+2);
  printData(BASE_ADDRESS+3);
  printData(BASE_ADDRESS+4);

  //populate array
  for(int i = 0; i < 256; i++){
    page[i] = i;
  }

  mySF3.writeEnable();
  mySF3.writePage(page, BASE_ADDRESS);
  
  Serial.print("sr check after write: " );Serial.println(mySF3.readSR());

  for(i = 0; i < 256; i++){
    printData(BASE_ADDRESS + i);
  }
  
}

void loop() {
  // put your main code here, to run repeatedly:

}

//prints data at a given address
void printData (unsigned int address)
{
    data = mySF3.normalRead(address);
    Serial.print("Address 0x");
    Serial.print(address, HEX);
    Serial.print(": 0x");
    Serial.println(data, HEX);
}
