/*
 * File:   test.c
 * Author: Green2
 *
 * Created on 9 April, 2024, 11:13 AM
 */

#include "head1.h"

    
BYTE ModbusRXbuf[INPUT_SIZE] = {0x00, 0x01, 0x00, 0x02, 0x00, 0x06, 0x03, 0x03, 0x00, 0x04, 0x00, 0x2};
WORD DataRegister[100] = {0x3A2B, 0x3c7e, 0x0065, 0x2217, 0x1123, 0x1321, 0x3A2B, 0x3c7e, 0x0065, 0x2217, 0x1123, 0x1321, 0x3A2B, 0x3c7e, 0x0065, 0x2217, 0x1123, 0x1321, 0x3A2B, 0x3c7e, 0x0065, 0x2217, 0x1123, 0x1321, 0x3A2B, 0x3c7e};
BYTE ModbusTXbuf[26]; // Assuming output array size is 100
BYTE Test_TX[26] = {0x00, 0x01, 0x00, 0x02, 0x00, 0x07, 0x03, 0x03,0x04,0x11, 0x23, 0x13, 0x21};
int increment; // Global declaration of increment variable
int Test_Res;



void Test_ing(const BYTE ModbusTXbuf[], const BYTE Test_TX[]) {
    Test_Res = 1; // Assuming the test will pass unless a mismatch is found
    for (increment = 0; increment < 0x08 + ModbusTXbuf[8]; increment++) {
        if (ModbusTXbuf[increment] != Test_TX[increment]) {
            Test_Res = 0; // Set to 0 if a mismatch is found
            break; // Exit the loop since the test has failed
        }
    }
#ifdef test_ing
if(Test_Res == 1){
    printf("Test is Passed");
}
else if (Test_Res == 0)
{
   printf("Test is not Passed");
}
#endif  
    // Optionally, you can do something with test_res here (print it, etc.)
}

