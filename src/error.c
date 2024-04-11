/*
 * File:   error.c
 * Author: Green2
 *
 * Created on 10 April, 2024, 11:32 AM
 */


#include "head1.h"

void error_1(ErrorCode error) {
    Modbus parse;
    if (error == illegal_address) {
        ModbusTXbuf[7] = 0x80 +   ModbusTXbuf[7]; // Assuming this is how you handle the error
        ModbusTXbuf[8] = error;
        // Perform additional actions if needed for handling this specific error
    }
    if (error == Function_error) {
        //ModbusTXbuf[7] = 0x80 + ModbusTXbuf[7]; // Assuming this is how you handle the error
        ModbusTXbuf[8] = error;
        // Perform additional actions if needed for handling this specific error
    }
}

