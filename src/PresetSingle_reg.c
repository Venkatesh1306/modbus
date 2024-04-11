/*
 * File:   ReadInput_reg.c
 * Author: Green2
 *
 * Created on 10 April, 2024, 12:37 PM
 */

#include "head1.h"

void PresetSingle_Reg(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error) {
    if(parse->start_address.Val > 26){
         ErrorCode error = ENOREG;
         ModbusTXbuf[6] = parse->unit_identifier;
         ModbusTXbuf[7] = parse->function_code;
         error_1(error);
    }
    else{
    ModbusTXbuf[4] = 0x00;
    ModbusTXbuf[5] = 0x06;
    ModbusTXbuf[6] = parse->unit_identifier;
    ModbusTXbuf[7] = parse->function_code;
    ModbusTXbuf[8] = parse->start_address.v[1];   
    ModbusTXbuf[9] = parse->start_address.v[0];  
    ModbusTXbuf[10] = parse->address_length.v[1];  
    ModbusTXbuf[11] = parse->address_length.v[0];
    }
}

