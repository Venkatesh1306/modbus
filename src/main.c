
/*
 * File:   main.c
 * Author: Green2
 *
 * Created on 10 April, 2024, 9:39 AM
 */

#include "head1.h"

int main(){
    
    #ifdef test_ing 
        Test_TX[0] = ModbusRXbuf[0];
        Test_TX[1] = ModbusRXbuf[1];
        Test_TX[2] = ModbusRXbuf[2];
        Test_TX[3] = ModbusRXbuf[3];
        Test_TX[4] = ModbusRXbuf[4];
        // Corrected from ModbusRXbuf[8] to ModbusRXbuf[5]
        Test_TX[6] = ModbusRXbuf[6];
        Test_TX[7] = ModbusRXbuf[7];
        Test_TX[8] = ModbusRXbuf[11] * 2;
        Test_TX[5] = Test_TX[8] + 0x03;
 for (increment = 0; increment < ModbusRXbuf[11]; increment++) {
        Test_TX[9 + increment * 2] = DataRegister[ModbusRXbuf[9] + increment] / 0x100;   // High byte
        Test_TX[10 + increment * 2] = DataRegister[ModbusRXbuf[9] + increment] % 0x100; // Low byte
    }
#endif

    Modbus parse;
    ErrorCode error = NOERR;
    in_func(&parse, ModbusRXbuf);
  
    ModbusTXbuf[0] = parse.transaction_identifier.v[1];
    ModbusTXbuf[1] = parse.transaction_identifier.v[0];
    ModbusTXbuf[2] = parse.protocol_identifier.v[1];
    ModbusTXbuf[3] = parse.protocol_identifier.v[0];
    
   if (parse.function_code != 01 && parse.function_code != 03 && parse.function_code != 04 && parse.function_code!= 05 && parse.function_code != 06 && parse.function_code != 15 && parse.function_code != 16)
    {
        ErrorCode error = ENOFUNC; 
    ModbusTXbuf[5] = 0x03;
    ModbusTXbuf[6] = parse.unit_identifier;
    ModbusTXbuf[7] = parse.function_code;
         error_1(error);//function call
    }
//Common for all the function code.
    else{
    
    if (parse.function_code == READ_HOLDING_REGISTERS) { 
        ReadHolding_Reg(DataRegister, ModbusTXbuf, &parse, error); // Adjust parameter types
    }
//    if (parse.function_code == WRITE_SINGLE_REGISTER) { 
//        PresetSingle_Reg(DataRegister, ModbusTXbuf, &parse, error); // Adjust parameter types
//    }
//    if (parse.function_code == READ_INPUT_REGISTERS) { 
//        ReadInput_Reg(DataRegister, ModbusTXbuf, &parse, error); // Adjust parameter types
//    }
//    if (parse.function_code == FORCE_SINGLE_COIL) { 
//        ForceSingle_Coil(DataRegister, ModbusTXbuf, &parse, error); // Adjust parameter types
//    }
//    if (parse.function_code == FORCE_Multiple_COILS) { 
//        ForceMultiple_Coils(DataRegister, ModbusTXbuf, &parse, error); // Adjust parameter types
//    }
//    if (parse.function_code == PRESET_MULTIPLE_REG) { 
//        PresetMultiple_Reg(DataRegister, ModbusTXbuf, &parse, error); // Adjust parameter types
//    }

    }
    Test_ing(ModbusTXbuf, Test_TX);
    while(1)
    {
        ModbusTXbuf[27] = 0;
    }
}
