/*
 * File:   ReadInput_reg.c
 * Author: Green2
 *
 * Created on 10 April, 2024, 12:49 PM
 */


#include "head1.h"

WORD ReadInput_Reg(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error) {
    if(parse->start_address.Val > 26){
         ErrorCode error = ENOREG;
         ModbusTXbuf[6] = parse->unit_identifier;
         ModbusTXbuf[7] = parse->function_code;
         error_1(error);
    }
    else{
    ModbusTXbuf[6] = parse->unit_identifier;
    ModbusTXbuf[7] = parse->function_code;
    ModbusTXbuf[8] = (BYTE)(parse->address_length.Val * 2);
    ModbusTXbuf[4] = 0x00;
    ModbusTXbuf[5] = 0x03 + ModbusTXbuf[8]; // Corrected the index to 5
    
    // Generate output data from DataRegister array based on parsed start_address and address_length
    for (increment = 0; increment < parse->address_length.Val; increment++) {
        ModbusTXbuf[9 + increment * 2] = DataRegister1[parse->start_address.Val + increment]/0x100;   // High byte
        ModbusTXbuf[10 + increment * 2] = DataRegister1[parse->start_address.Val + increment]%0x100; // Low byte
    }
    
}
   return 0x09 + ModbusTXbuf[5];
}
