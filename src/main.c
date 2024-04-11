
/*
 * File:   main.c
 * Author: Green2
 *
 * Created on 10 April, 2024, 9:39 AM
 */

#include "head1.h"

int main(){
    Modbus parse;
    ErrorCode error;
    in_func(&parse, ModbusRXbuf);
    
    ModbusTXbuf[0] = parse.transaction_identifier.v[1];
    ModbusTXbuf[1] = parse.transaction_identifier.v[0];
    ModbusTXbuf[2] = parse.protocol_identifier.v[1];
    ModbusTXbuf[3] = parse.protocol_identifier.v[0];
    
   if (parse.function_code != 01 && parse.function_code != 03 && parse.function_code != 04 && parse.function_code!= 05 && parse.function_code != 06 && parse.function_code != 15 && parse.function_code != 16)
    {
        ErrorCode error = ENOFUNC; 
    ModbusTXbuf[5] = parse.length.v[0];
    ModbusTXbuf[6] = parse.unit_identifier;
    ModbusTXbuf[7] = parse.function_code;
         error_1(error);//function call
    }
//Common for all the function code.
    else{
    
    if (parse.function_code == READ_HOLDING_REGISTERS) { 
       ReadHolding_Reg(&DataRegister, &ModbusTXbuf,&parse,error);
       
    }
    if (parse.function_code == WRITE_SINGLE_REGISTER) { 
       PresetSingle_Reg(&DataRegister, &ModbusTXbuf,&parse,error);
    }
    if (parse.function_code == READ_INPUT_REGISTERS) { 
      ReadInput_Reg(&DataRegister, &ModbusTXbuf,&parse,error);
    }
    
    if (parse.function_code == FORCE_SINGLE_COIL) { 
      ForceSingle_Coil(&DataRegister, &ModbusTXbuf,&parse,error);
    }
    if (parse.function_code == FORCE_Multiple_COILS) { 
      ForceMultiple_Coils(&DataRegister, &ModbusTXbuf,&parse,error);
    }
    if (parse.function_code == PRESET_MULTIPLE_REG) { 
      PresetMultiple_Reg(&DataRegister, &ModbusTXbuf,&parse,error);
    }
    }
    Test_ing(ModbusTXbuf, Test_TX);
    while(1)
    {
        ModbusTXbuf[27] = 0;
    }
}
