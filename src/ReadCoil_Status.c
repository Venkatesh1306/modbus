/*
 * File:   ReadCoil_Status.c
 * Author: Green2
 *
 * Created on 10 April, 2024, 3:12 PM
 */


#include "head1.h"

void ReadCoil_Status(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error){
        if(parse->start_address.Val > 26){
         ErrorCode error = ENOREG;
         ModbusTXbuf[6] = parse->unit_identifier;
         ModbusTXbuf[7] = parse->function_code;
         error_1(error);
    }
    else{
    int quotient = (parse->address_length.Val / 8);
    ModbusTXbuf[6] = parse->unit_identifier;
    ModbusTXbuf[7] = parse->function_code;
    ModbusTXbuf[8] = (BYTE)(quotient + 1);
    ModbusTXbuf[4] = 0x00;
    ModbusTXbuf[5] = 0x03 + ModbusTXbuf[8]; // Corrected the index to 5
    
     for(increment = 0;increment <  ModbusTXbuf[8]; increment++){
         parse->force_data[increment].Val = DataRegister[parse->start_address.Val+increment]/0x100; 
         parse->force_data[increment+1].Val = DataRegister[parse->start_address.Val+increment]%0x100; 
      }
    for(increment = 0;increment <  (parse->address_length.Val / 8); increment++){
        ModbusTXbuf[9 + increment] = parse->force_data[increment].Val;
    }
    
//    switch
//            case((parse->address_length.Val % 8 == 1)){
//                Bit_rev.bits.b0 = 
//            }
    }   

}
