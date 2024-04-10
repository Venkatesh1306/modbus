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
SOURCEFILES_QUOTED_IF_SPACED=src/test.c src/input_func.c src/Readholing_reg.c src/main.c src/error.c src/PresetSingle_reg.c src/ReadInput_reg.c src/ForceSingle_coil.c src/ForceMultiple_coils.c src/PresetMultiple_reg.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/test.o ${OBJECTDIR}/src/input_func.o ${OBJECTDIR}/src/Readholing_reg.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/error.o ${OBJECTDIR}/src/PresetSingle_reg.o ${OBJECTDIR}/src/ReadInput_reg.o ${OBJECTDIR}/src/ForceSingle_coil.o ${OBJECTDIR}/src/ForceMultiple_coils.o ${OBJECTDIR}/src/PresetMultiple_reg.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/test.o.d ${OBJECTDIR}/src/input_func.o.d ${OBJECTDIR}/src/Readholing_reg.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/error.o.d ${OBJECTDIR}/src/PresetSingle_reg.o.d ${OBJECTDIR}/src/ReadInput_reg.o.d ${OBJECTDIR}/src/ForceSingle_coil.o.d ${OBJECTDIR}/src/ForceMultiple_coils.o.d ${OBJECTDIR}/src/PresetMultiple_reg.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/test.o ${OBJECTDIR}/src/input_func.o ${OBJECTDIR}/src/Readholing_reg.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/error.o ${OBJECTDIR}/src/PresetSingle_reg.o ${OBJECTDIR}/src/ReadInput_reg.o ${OBJECTDIR}/src/ForceSingle_coil.o ${OBJECTDIR}/src/ForceMultiple_coils.o ${OBJECTDIR}/src/PresetMultiple_reg.o

# Source Files
SOURCEFILES=src/test.c src/input_func.c src/Readholing_reg.c src/main.c src/error.c src/PresetSingle_reg.c src/ReadInput_reg.c src/ForceSingle_coil.c src/ForceMultiple_coils.c src/PresetMultiple_reg.c



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
${OBJECTDIR}/src/test.o: src/test.c  .generated_files/flags/default/b5400993fedaf20fc8eaac2d536125b7f735e5be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/test.o.d 
	@${RM} ${OBJECTDIR}/src/test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/test.c  -o ${OBJECTDIR}/src/test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/input_func.o: src/input_func.c  .generated_files/flags/default/94d2689935672d98b91c005aabf57ae895d983fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/input_func.o.d 
	@${RM} ${OBJECTDIR}/src/input_func.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/input_func.c  -o ${OBJECTDIR}/src/input_func.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/input_func.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/Readholing_reg.o: src/Readholing_reg.c  .generated_files/flags/default/4c7285252149980a5b667892ef82ff45b37622d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/Readholing_reg.o.d 
	@${RM} ${OBJECTDIR}/src/Readholing_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/Readholing_reg.c  -o ${OBJECTDIR}/src/Readholing_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/Readholing_reg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/69cf8400d2ce6dafe316655d23c1e3aac34ff4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/error.o: src/error.c  .generated_files/flags/default/7e75e768ece1ccac6cff850d043d741eb830b3d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/error.o.d 
	@${RM} ${OBJECTDIR}/src/error.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/error.c  -o ${OBJECTDIR}/src/error.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/error.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/PresetSingle_reg.o: src/PresetSingle_reg.c  .generated_files/flags/default/f0c7f26232b24c6ee093dfd1989e9b6a979c5ef7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/PresetSingle_reg.o.d 
	@${RM} ${OBJECTDIR}/src/PresetSingle_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/PresetSingle_reg.c  -o ${OBJECTDIR}/src/PresetSingle_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/PresetSingle_reg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ReadInput_reg.o: src/ReadInput_reg.c  .generated_files/flags/default/33560c67db28842e80899cb82db42f62be948f6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ReadInput_reg.o.d 
	@${RM} ${OBJECTDIR}/src/ReadInput_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ReadInput_reg.c  -o ${OBJECTDIR}/src/ReadInput_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ReadInput_reg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ForceSingle_coil.o: src/ForceSingle_coil.c  .generated_files/flags/default/7055b049be5126259101cd74b96f2838a9d1e7f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ForceSingle_coil.o.d 
	@${RM} ${OBJECTDIR}/src/ForceSingle_coil.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ForceSingle_coil.c  -o ${OBJECTDIR}/src/ForceSingle_coil.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ForceSingle_coil.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ForceMultiple_coils.o: src/ForceMultiple_coils.c  .generated_files/flags/default/b2ed473a8a4c1f586855b7fcc91e29ef0740d7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ForceMultiple_coils.o.d 
	@${RM} ${OBJECTDIR}/src/ForceMultiple_coils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ForceMultiple_coils.c  -o ${OBJECTDIR}/src/ForceMultiple_coils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ForceMultiple_coils.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/PresetMultiple_reg.o: src/PresetMultiple_reg.c  .generated_files/flags/default/d20b9cd6854065030494fd7ee0cff155b72fef50 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/PresetMultiple_reg.o.d 
	@${RM} ${OBJECTDIR}/src/PresetMultiple_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/PresetMultiple_reg.c  -o ${OBJECTDIR}/src/PresetMultiple_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/PresetMultiple_reg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/src/test.o: src/test.c  .generated_files/flags/default/52e13cd98080c875808fa9a8754fda603f29ace .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/test.o.d 
	@${RM} ${OBJECTDIR}/src/test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/test.c  -o ${OBJECTDIR}/src/test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/test.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/input_func.o: src/input_func.c  .generated_files/flags/default/d9f28ca3aed30768d0c41758bf24a9665f05467d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/input_func.o.d 
	@${RM} ${OBJECTDIR}/src/input_func.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/input_func.c  -o ${OBJECTDIR}/src/input_func.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/input_func.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/Readholing_reg.o: src/Readholing_reg.c  .generated_files/flags/default/44398839470ad4fc95bcae2e99aadd712dd27ff8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/Readholing_reg.o.d 
	@${RM} ${OBJECTDIR}/src/Readholing_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/Readholing_reg.c  -o ${OBJECTDIR}/src/Readholing_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/Readholing_reg.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/5fd3d0648287066164cc43610e73438cb0a24d69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/error.o: src/error.c  .generated_files/flags/default/1a39af01b7b58c46063ad8a05d042712f60f3854 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/error.o.d 
	@${RM} ${OBJECTDIR}/src/error.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/error.c  -o ${OBJECTDIR}/src/error.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/error.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/PresetSingle_reg.o: src/PresetSingle_reg.c  .generated_files/flags/default/ebc553f4172e138b8c45701af18c21133638cfcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/PresetSingle_reg.o.d 
	@${RM} ${OBJECTDIR}/src/PresetSingle_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/PresetSingle_reg.c  -o ${OBJECTDIR}/src/PresetSingle_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/PresetSingle_reg.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ReadInput_reg.o: src/ReadInput_reg.c  .generated_files/flags/default/7d59ff51117b4c672825968d17ac2cce1a52b1e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ReadInput_reg.o.d 
	@${RM} ${OBJECTDIR}/src/ReadInput_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ReadInput_reg.c  -o ${OBJECTDIR}/src/ReadInput_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ReadInput_reg.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ForceSingle_coil.o: src/ForceSingle_coil.c  .generated_files/flags/default/a4e60dd514896ee42ac4e825f22a77f816f57e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ForceSingle_coil.o.d 
	@${RM} ${OBJECTDIR}/src/ForceSingle_coil.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ForceSingle_coil.c  -o ${OBJECTDIR}/src/ForceSingle_coil.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ForceSingle_coil.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/ForceMultiple_coils.o: src/ForceMultiple_coils.c  .generated_files/flags/default/52a9865e631c8a245a2fdd4e81080d9d48d78532 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/ForceMultiple_coils.o.d 
	@${RM} ${OBJECTDIR}/src/ForceMultiple_coils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/ForceMultiple_coils.c  -o ${OBJECTDIR}/src/ForceMultiple_coils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/ForceMultiple_coils.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/PresetMultiple_reg.o: src/PresetMultiple_reg.c  .generated_files/flags/default/4253256b0f537ef81cf61ea6c30e294e33e57ba1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/PresetMultiple_reg.o.d 
	@${RM} ${OBJECTDIR}/src/PresetMultiple_reg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/PresetMultiple_reg.c  -o ${OBJECTDIR}/src/PresetMultiple_reg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/PresetMultiple_reg.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -mlarge-scalar -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/Modbus.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
