/*
 * File:   test.c
 * Author: Green2
 *
 * Created on 9 April, 2024, 11:13 AM
 * developed for testing the inputs 
 */

#include "head1.h"

// Global declaration of increment variable   
BYTE ModbusRXbuf[INPUT_SIZE] = {0x00, 0x01, 0x00, 0x02, 0x00, 0x06, 0x03, 0x3, 0x00, 0x2, 0x00, 0x03};
WORD DataRegister[100] = {0x3A2B, 0x3c7e, 0x0302, 0xFFFF, 0x1123, 0x1321, 0x3A2B, 0x3c7e, 0x0065, 0x2217, 0x1123, 0x1321, 0x3A2B, 0x3c7e, 0x0065, 0x2217, 0x1123, 0x1321, 0x3A2B, 0x3c7e, 0x0065, 0x2217, 0x1123, 0x1321, 0x3A2B, 0x3c7e};
WORD DataRegister1[100] = {0x3A1B, 0x3c2e, 0x0365, 0x2517, 0x0023, 0x1321, 0x3A2B, 0x300e, 0x0065, 0x0517, 0x1123, 0x9621, 0x3A2B, 0x757e, 0x0065, 0x6517, 0x1123, 0x1321, 0x3A2B, 0x3c7e, 0x0065, 0x2567, 0x1123, 0x1950, 0x3A2B, 0x3c7e};
BYTE ModbusTXbuf[26]; // Assuming output array size is 100
//BYTE Test_TX[26] = {0x00, 0x01, 0x00, 0x02, 0x00, 0x09, 0x03, 0x03, 0x06, 0x00, 0x65, 0x22, 0x17,0x11,0x23};
BYTE Test_TX[26];
int increment; 
int Test_Res;
BYTE_VAL Bit_rev;



//function for testing the output with the expected output
WORD Test_ing(const BYTE ModbusTXbuf[], const BYTE Test_TX[]) {
    Test_Res = 1; 
    if(ModbusTXbuf[7] < 0x80){
    for (increment = 0; increment < 0x08 + ModbusTXbuf[8]; increment++) {
        if (ModbusTXbuf[increment] != Test_TX[increment]) {
            Test_Res = 0; 
            break; 
        }
    }
    }
    else{
        for (increment = 0; increment < 0x09 ; increment++) {
        if (ModbusTXbuf[increment] != Test_TX[increment]) {
            Test_Res = 0; 
            break; 
        } 
    }
    }


#ifdef test_ing
   printf("\nQuery Packet:\n");
for (int i = 0; i < 12; i++) {
    printf("%02X ", ModbusRXbuf[i]);
}
printf("\n");
 if(ModbusTXbuf[7] < 0x80){

   printf("Expected Response:\n");
for (int i = 0; i < 0x08 + ModbusTXbuf[8]; i++) {
    printf("%02X ", Test_TX[i]);
}
printf("\n");

printf("Actual Response:\n");
for (int i = 0; i < 0x08 + ModbusTXbuf[8]; i++) {
    printf("%02X ", ModbusTXbuf[i]);
}
printf("\n");
 }
 else{
       printf("Expected Response:\n");
for (int i = 0; i < 0x09 ; i++) {
    printf("%02X ", Test_TX[i]);
}
printf("\n");

printf("Actual Response:\n");
for (int i = 0; i < 0x09; i++) {
    printf("%02X ", ModbusTXbuf[i]);
}
printf("\n");
 }


if (Test_Res == 1) {
    if (ModbusTXbuf[7] > 0x80) {
        if(ModbusTXbuf[8] == 01){
        printf("0%d Function Error\n", ModbusTXbuf[8]);
        }
        if(ModbusTXbuf[8] == 02){
        printf("0%d Address Error\n", ModbusTXbuf[8]);
        }
        if(ModbusTXbuf[8] == 03){
        printf("0%d Data Error\n", ModbusTXbuf[8]);
        }
    } else {
        printf(" Test is Passed\n");
    }
} else {
    printf(" Test failed\n");
}


#endif
    return Test_Res;
}

 