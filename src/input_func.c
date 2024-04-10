/*
 * File:   input_func.c
 * Author: Green2
 *
 * Created on 9 April, 2024, 3:38 PM
 */


#include "head1.h"

void in_func(Modbus *parse, const BYTE *ModbusRXbuf) {
    ErrorCode error;
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


   if(parse->start_address.Val>26){
        error = 01;
        //printf("%d-Illegal register address.\n",error);
    }
}