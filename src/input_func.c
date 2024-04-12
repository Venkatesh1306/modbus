/*
 * File:   input_func.c
 * Author: Green2
 *
 * Created on 9 April, 2024, 3:38 PM
 */


#include "head1.h"

WORD in_func(Modbus *parse, const BYTE *ModbusRXbuf) {
    //ErrorCode error;

    parse->transaction_identifier.v[1]   = ModbusRXbuf[0];
    parse->transaction_identifier.v[0]   = ModbusRXbuf[1];
    parse->protocol_identifier.v[1]      = ModbusRXbuf[2];
    parse->protocol_identifier.v[0]      = ModbusRXbuf[3];
    parse->length.v[1]                   = ModbusRXbuf[4];
    parse->length.v[0]                   = ModbusRXbuf[5];
    parse->unit_identifier               = ModbusRXbuf[6];
    parse->function_code                 = ModbusRXbuf[7];
    parse->start_address.v[1]            = ModbusRXbuf[8];
    parse->start_address.v[0]            = ModbusRXbuf[9];
    parse->address_length.v[1]           = ModbusRXbuf[10];
    parse->address_length.v[0]           = ModbusRXbuf[11]; 
    
    if (parse->function_code == FORCE_Multiple_COILS) { 
        parse->byte_cnt = ModbusRXbuf[12];
        for(increment = 0;increment < parse->byte_cnt; increment++)
        {
            parse->force_data[increment].Val = ModbusRXbuf[13+increment];
        }
    }
    
    if (parse->function_code == PRESET_MULTIPLE_REG) { 
      for(increment = 0;increment <(parse->length.Val - 6); increment++){
         parse->force_data[increment].Val = ModbusRXbuf[12+increment]; 
      }  
    }
    return 0x09 + ModbusTXbuf[5];
}
