/*
 * File:   mb03.c
 * Author: Green2
 *
 * Created on 9 April, 2024, 10:36 AM
 */

#include "head1.h"


int main(){
    Modbus parse;
    in_func(&parse, ModbusRXbuf); // Function call with correct arguments
//Common for all the function code.
    ModbusTXbuf[0] = parse.transaction_identifier.v[1];
    ModbusTXbuf[1] = parse.transaction_identifier.v[0];
    ModbusTXbuf[2] = parse.protocol_identifier.v[1];
    ModbusTXbuf[3] = parse.protocol_identifier.v[0];
    
//Function Code 03.
  if(parse.function_code == READ_HOLDING_REGISTERS){ 
    // Assign values to output array based on parsed data
    ModbusTXbuf[6] = parse.unit_identifier;
    ModbusTXbuf[7] = parse.function_code;
    ModbusTXbuf[8] = (BYTE)(parse.address_length.Val * 2);
    ModbusTXbuf[4] = 0x00;
    ModbusTXbuf[5] = 0x03 + ModbusTXbuf[8]; // Adjusted output[5] to output[4] to match the logic below
    
    // Generate output data from DataRegister array based on parsed start_address and address_length
    for (increment = 0; increment <parse.address_length.Val; increment++) {
        ModbusTXbuf[9 + increment * 2] = DataRegister[parse.start_address.Val + increment]/0x100;   // High byte
        ModbusTXbuf[10 + increment * 2] = DataRegister[parse.start_address.Val + increment]%0x100; // Low byte
    }
 } 
#ifdef test_ing
  else{
    printf("invalid function code ");
  }
  printf("\n");
#endif          
    
    
    Test_ing(ModbusTXbuf,Test_TX);
   
         
    while(1)
    {
    ModbusTXbuf[26]= 0;     
    }
}
