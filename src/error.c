/*
 * File:   error.c
 * Author: Green2
 *
 * Created on 10 April, 2024, 11:32 AM
 */


#include "head1.h"

WORD error_1(ErrorCode error) {
   
   // Modbus parse; // Consider if parse needs to be initialized or used in error handling
//    if (error == illegal_address) {
        // Handle illegal address error
        // Assuming ModbusTXbuf is accessible and initialized correctly
        ModbusTXbuf[7] = 0x80 + ModbusTXbuf[7]; // Set exception code in Modbus response
        ModbusTXbuf[8] = error; // Set specific error code
        // Perform additional actions for handling this specific error if needed

        //testing
        Test_TX[5]  =  0x03;
        Test_TX[7]  =  0x80 + Test_TX[7];
        Test_TX[8]  =  error;
//    }
//    if (error == Function_error) {
//        // Handle function error
//        // Assuming ModbusTXbuf is accessible and initialized correctly
//        // ModbusTXbuf[7] = 0x80 + ModbusTXbuf[7]; // Uncomment if needed for exception code
//        ModbusTXbuf[7] = 0x80 + ModbusTXbuf[7];
//        ModbusTXbuf[8] = error; // Set specific error code
//        
//        
//        Test_TX[5]  =  0x03;
//        Test_TX[7]  =  0x80 + Test_TX[7];
//        Test_TX[8]  =  error;
//        // Perform additional actions for handling this specific error if needed
//
//        
//    }
//    if(error == Illegal_data_value){
//        ModbusTXbuf[7] = 0x80 + ModbusTXbuf[7]; // Set exception code in Modbus response
//        ModbusTXbuf[8] = error; // Set specific error code
//        // Perform additional actions for handling this specific error if needed
//
//        //testing
//        Test_TX[5]  =  0x03;
//        Test_TX[7]  =  0x80 + Test_TX[7];
//        Test_TX[8]  =  error;
//
//    }
    return error; // Return error code or consider if another return type or handling is needed
}

