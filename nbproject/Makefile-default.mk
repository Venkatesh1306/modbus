#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/test.c src/input_func.c src/Readholing_reg.c src/error.c src/PresetSingle_reg.c src/ReadInput_reg.c src/ForceSingle_coil.c src/ForceMultiple_coils.c src/PresetMultiple_reg.c src/ReadCoil_Status.c src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/test.o ${OBJECTDIR}/src/input_func.o ${OBJECTDIR}/src/Readholing_reg.o ${OBJECTDIR}/src/error.o ${OBJECTDIR}/src/PresetSingle_reg.o ${OBJECTDIR}/src/ReadInput_reg.o ${OBJECTDIR}/src/ForceSingle_coil.o ${OBJECTDIR}/src/ForceMultiple_coils.o ${OBJECTDIR}/src/PresetMultiple_reg.o ${OBJECTDIR}/src/ReadCoil_Status.o ${OBJECTDIR}/src/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/test.o.d ${OBJECTDIR}/src/input_func.o.d ${OBJECTDIR}/src/Readholing_reg.o.d ${OBJECTDIR}/src/error.o.d ${OBJECTDIR}/src/PresetSingle_reg.o.d ${OBJECTDIR}/src/ReadInput_reg.o.d ${OBJECTDIR}/src/ForceSingle_coil.o.d ${OBJECTDIR}/src/ForceMultiple_coils.o.d ${OBJECTDIR}/src/PresetMultiple_reg.o.d ${OBJECTDIR}/src/ReadCoil_Status.o.d ${OBJECTDIR}/src/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/test.o ${OBJECTDIR}/src/input_func.o ${OBJECTDIR}/src/Readholing_reg.o ${OBJECTDIR}/src/error.o ${OBJECTDIR}/src/PresetSingle_reg.o ${OBJECTDIR}/src/ReadInput_reg.o ${OBJECTDIR}/src/ForceSingle_coil.o ${OBJECTDIR}/src/ForceMultiple_coils.o ${OBJECTDIR}/src/PresetMultiple_reg.o ${OBJECTDIR}/src/ReadCoil_Status.o ${OBJECTDIR}/src/main.o

# Source Files
SOURCEFILES=src/test.c src/input_func.c src/Readholing_reg.c src/error.c src/PresetSingle_reg.c src/ReadInput_reg.c src/ForceSingle_coil.c src/ForceMultiple_coils.c src/PresetMultiple_reg.c src/ReadCoil_Status.c src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ48GA004
MP_LINKER_FILE_OPTION=,--script=p24FJ48GA004.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/test.o: src/test.c  .generated_files/flags/default/bb55adb25d1cb643bd1d8f13ce783748a7e9dd32 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/test.o.d 
	@${RM} ${OBJECTDIR}/src/test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/test.c  -o ${OBJECTDIR}/src/test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/input_func.o: src/input_func.c  .generated_files/flags/default/49136694f4cd57a4313176e282940cdfcff1fdb5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/input_func.o.d 
	@${RM} ${OBJECTDIR}/src/input_func.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/input_func.c  -o ${OBJECTDIR}/src/input_func.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/input_func.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/Readholing_reg.o: src/Readholing_reg.c  .generated_files/flags/default/3eb7e2d4d9a9701a5c1df0c3490c150a4a51b5ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/Readholing_reg.o.d 
	@${RM} ${OBJECTDIR}/src/Readholing_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/Readholing_reg.c  -o ${OBJECTDIR}/src/Readholing_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/Readholing_reg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/error.o: src/error.c  .generated_files/flags/default/a4c151b28fecefed847aed89fe890ca49c59c710 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/error.o.d 
	@${RM} ${OBJECTDIR}/src/error.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/error.c  -o ${OBJECTDIR}/src/error.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/error.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/PresetSingle_reg.o: src/PresetSingle_reg.c  .generated_files/flags/default/e780d9393c6b555e9dc0a35689d42af2014ed43e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/PresetSingle_reg.o.d 
	@${RM} ${OBJECTDIR}/src/PresetSingle_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/PresetSingle_reg.c  -o ${OBJECTDIR}/src/PresetSingle_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/PresetSingle_reg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ReadInput_reg.o: src/ReadInput_reg.c  .generated_files/flags/default/353d011d6d7cff7ff3e87b91d21e504c1f7de494 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ReadInput_reg.o.d 
	@${RM} ${OBJECTDIR}/src/ReadInput_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ReadInput_reg.c  -o ${OBJECTDIR}/src/ReadInput_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ReadInput_reg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ForceSingle_coil.o: src/ForceSingle_coil.c  .generated_files/flags/default/5d48b41dd3f0f7a70a4c9318633cad10a403811f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ForceSingle_coil.o.d 
	@${RM} ${OBJECTDIR}/src/ForceSingle_coil.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ForceSingle_coil.c  -o ${OBJECTDIR}/src/ForceSingle_coil.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ForceSingle_coil.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ForceMultiple_coils.o: src/ForceMultiple_coils.c  .generated_files/flags/default/f96a32a0836886db7615a10f6a099706a2955257 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ForceMultiple_coils.o.d 
	@${RM} ${OBJECTDIR}/src/ForceMultiple_coils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ForceMultiple_coils.c  -o ${OBJECTDIR}/src/ForceMultiple_coils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ForceMultiple_coils.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/PresetMultiple_reg.o: src/PresetMultiple_reg.c  .generated_files/flags/default/c726b513f6ddfb54fcec08c80d49f4c20df8352d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/PresetMultiple_reg.o.d 
	@${RM} ${OBJECTDIR}/src/PresetMultiple_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/PresetMultiple_reg.c  -o ${OBJECTDIR}/src/PresetMultiple_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/PresetMultiple_reg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ReadCoil_Status.o: src/ReadCoil_Status.c  .generated_files/flags/default/142bab66c3aba5d061fab09c50402e2dbb4baa0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ReadCoil_Status.o.d 
	@${RM} ${OBJECTDIR}/src/ReadCoil_Status.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ReadCoil_Status.c  -o ${OBJECTDIR}/src/ReadCoil_Status.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ReadCoil_Status.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/9228cb59a9558776ea9869312e3b60758745b421 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/src/test.o: src/test.c  .generated_files/flags/default/796c27c45887302e1d495d17fe7ddbd29a323b7a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/test.o.d 
	@${RM} ${OBJECTDIR}/src/test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/test.c  -o ${OBJECTDIR}/src/test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/test.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/input_func.o: src/input_func.c  .generated_files/flags/default/555149e305741ddda7482a92a16113a1b39ab7bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/input_func.o.d 
	@${RM} ${OBJECTDIR}/src/input_func.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/input_func.c  -o ${OBJECTDIR}/src/input_func.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/input_func.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/Readholing_reg.o: src/Readholing_reg.c  .generated_files/flags/default/44647e27402c5c5ff4ebb8bddd9daf6126c91b8f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/Readholing_reg.o.d 
	@${RM} ${OBJECTDIR}/src/Readholing_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/Readholing_reg.c  -o ${OBJECTDIR}/src/Readholing_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/Readholing_reg.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/error.o: src/error.c  .generated_files/flags/default/95a458660bebaae507eef1d677d243dfd76ded76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/error.o.d 
	@${RM} ${OBJECTDIR}/src/error.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/error.c  -o ${OBJECTDIR}/src/error.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/error.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/PresetSingle_reg.o: src/PresetSingle_reg.c  .generated_files/flags/default/834abbae255d9eb4f0454c12ec24476c296abde8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/PresetSingle_reg.o.d 
	@${RM} ${OBJECTDIR}/src/PresetSingle_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/PresetSingle_reg.c  -o ${OBJECTDIR}/src/PresetSingle_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/PresetSingle_reg.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ReadInput_reg.o: src/ReadInput_reg.c  .generated_files/flags/default/a92b4aac5e4eb4d8098932e3557f32e12803f405 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ReadInput_reg.o.d 
	@${RM} ${OBJECTDIR}/src/ReadInput_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ReadInput_reg.c  -o ${OBJECTDIR}/src/ReadInput_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ReadInput_reg.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ForceSingle_coil.o: src/ForceSingle_coil.c  .generated_files/flags/default/50fca9c54ff9d08485d2e03d0f8e4e6200f3be41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ForceSingle_coil.o.d 
	@${RM} ${OBJECTDIR}/src/ForceSingle_coil.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ForceSingle_coil.c  -o ${OBJECTDIR}/src/ForceSingle_coil.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ForceSingle_coil.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ForceMultiple_coils.o: src/ForceMultiple_coils.c  .generated_files/flags/default/4339ca99f669dbee28d8a7bbbcb7caf8515b2ebc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ForceMultiple_coils.o.d 
	@${RM} ${OBJECTDIR}/src/ForceMultiple_coils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ForceMultiple_coils.c  -o ${OBJECTDIR}/src/ForceMultiple_coils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ForceMultiple_coils.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/PresetMultiple_reg.o: src/PresetMultiple_reg.c  .generated_files/flags/default/b25e7c5daec6a669b023e32b0154e3c1acca8ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/PresetMultiple_reg.o.d 
	@${RM} ${OBJECTDIR}/src/PresetMultiple_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/PresetMultiple_reg.c  -o ${OBJECTDIR}/src/PresetMultiple_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/PresetMultiple_reg.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ReadCoil_Status.o: src/ReadCoil_Status.c  .generated_files/flags/default/d79fd4e26fe83b2442e2a708666202d43d9d3c93 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ReadCoil_Status.o.d 
	@${RM} ${OBJECTDIR}/src/ReadCoil_Status.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ReadCoil_Status.c  -o ${OBJECTDIR}/src/ReadCoil_Status.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ReadCoil_Status.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/23ffd38c63b4975cd32c57c443c879ba0ed892a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a    -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
