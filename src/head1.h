#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include "head.h"

#define INPUT_SIZE 20
//#define test_ing
#define illegal_address  ENOREG
#define Function_error ENOFUNC

#define Read_Coil_Status 0x01
#define READ_HOLDING_REGISTERS 0x03 
#define READ_INPUT_REGISTERS 0x04
#define FORCE_SINGLE_COIL 0x05
#define WRITE_SINGLE_REGISTER 0x06     
#define FORCE_Multiple_COILS 0x0F
#define PRESET_MULTIPLE_REG 0x10



typedef struct {
    WORD_VAL transaction_identifier;
    WORD_VAL protocol_identifier;
    WORD_VAL length;
    BYTE unit_identifier;
    BYTE function_code;
    WORD_VAL start_address;
    WORD_VAL address_length;
    BYTE byte_cnt;
    BYTE_VAL force_data[100];
} Modbus;

typedef enum
{
    NOERR = 0,      /*!< no error. */
    ENOFUNC = 1,    /*<Function error*/
    ENOREG = 2      /*!< illegal register address. */
//    EINVAL,                  /*!< illegal argument. */
//    EPORTERR,                /*!< porting layer error. */
//    ENORES,                  /*!< insufficient resources. */
//    EIO,                     /*!< I/O error. */
//    EILLSTATE,               /*!< protocol stack in illegal state. */
//    ETIMEDOUT                /*!< timeout error occurred. */
} ErrorCode;



extern BYTE ModbusRXbuf[INPUT_SIZE];
extern WORD DataRegister[100];
extern WORD DataRegister1[100];
extern BYTE ModbusTXbuf[26];
extern BYTE Test_TX[26];
extern int increment;
extern int Test_Res;
//extern ErrorCode error;
//extern Modbus parse;

void in_func(Modbus *parse, const BYTE *ModbusRXbuf); // Function declaration
void Test_ing(const BYTE ModbusTXbuf[], const BYTE Test_TX[]);
void ReadHolding_Reg(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error);
void ReadInput_Reg(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error);
void PresetSingle_Reg(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error);
void ForceSingle_Coil(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error);
void ForceMultiple_Coils(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error);
void PresetMultiple_Reg(WORD *DataRegister,BYTE  *ModbusTXbuf,Modbus *parse,ErrorCode error);
void error_1(ErrorCode error);

