/*
 * File:   ForceMultiple_coils.c
 * Author: Green2
 *
 * Created on 10 April, 2024, 1:57 PM
 */


#include "head1.h"

WORD ForceMultiple_Coils(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error) {
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
//    ModbusTXbuf[12] = parse->byte_cnt;
//            for(increment = 0;increment < parse->byte_cnt; increment++)
//        {
//           ModbusTXbuf[13+increment] =  parse->force_data[increment].Val;
//        }
   
    }
    return 0x09 + ModbusTXbuf[5];
}