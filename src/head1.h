#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include "head.h"

#define INPUT_SIZE 12
#define test_ing


#define Read_Coil_Status 0x01
#define READ_HOLDING_REGISTERS 0x03
#define WRITE_SINGLE_REGISTER 0x06 
#define READ_INPUT_REGISTERS 0x04

//error
#define illegal_register_address 01

typedef struct {
    WORD_VAL transaction_identifier;
    WORD_VAL protocol_identifier;
    WORD_VAL length;
    BYTE unit_identifier;
    BYTE function_code;
    WORD_VAL start_address;
    WORD_VAL address_length;
} Modbus;

typedef enum
{
    NOERR,                  /*!< no error. */
    ENOREG,                  /*!< illegal register address. */
    EINVAL,                  /*!< illegal argument. */
    EPORTERR,                /*!< porting layer error. */
    ENORES,                  /*!< insufficient resources. */
    EIO,                     /*!< I/O error. */
    EILLSTATE,               /*!< protocol stack in illegal state. */
    ETIMEDOUT                /*!< timeout error occurred. */
} ErrorCode;



extern BYTE ModbusRXbuf[INPUT_SIZE];
extern WORD DataRegister[100];
extern BYTE ModbusTXbuf[26];
extern BYTE Test_TX[26];
extern int increment;
extern int Test_Res;
extern ErrorCode error;


void in_func(Modbus *parse, const BYTE *ModbusRXbuf); // Function declaration
void Test_ing(const BYTE ModbusTXbuf[], const BYTE Test_TX[]);

