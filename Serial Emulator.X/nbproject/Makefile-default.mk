#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Serial_Emulator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Serial_Emulator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/_ext/67102156/SymbolTime.o ${OBJECTDIR}/_ext/67102156/NVM.o ${OBJECTDIR}/_ext/67102156/EEPROM.o ${OBJECTDIR}/_ext/67102156/LCDBlocking.o ${OBJECTDIR}/Console.o ${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o ${OBJECTDIR}/_ext/967747917/usb_device.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/usb_descriptors.o.d ${OBJECTDIR}/_ext/67102156/SymbolTime.o.d ${OBJECTDIR}/_ext/67102156/NVM.o.d ${OBJECTDIR}/_ext/67102156/EEPROM.o.d ${OBJECTDIR}/_ext/67102156/LCDBlocking.o.d ${OBJECTDIR}/Console.o.d ${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o.d ${OBJECTDIR}/_ext/967747917/usb_device.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/_ext/67102156/SymbolTime.o ${OBJECTDIR}/_ext/67102156/NVM.o ${OBJECTDIR}/_ext/67102156/EEPROM.o ${OBJECTDIR}/_ext/67102156/LCDBlocking.o ${OBJECTDIR}/Console.o ${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o ${OBJECTDIR}/_ext/967747917/usb_device.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Serial_Emulator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX675F256L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d" -o ${OBJECTDIR}/usb_descriptors.o usb_descriptors.c   
	
${OBJECTDIR}/_ext/67102156/SymbolTime.o: ../libs/Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/67102156 
	@${RM} ${OBJECTDIR}/_ext/67102156/SymbolTime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/67102156/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/67102156/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/67102156/SymbolTime.o ../libs/Microchip/WirelessProtocols/SymbolTime.c   
	
${OBJECTDIR}/_ext/67102156/NVM.o: ../libs/Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/67102156 
	@${RM} ${OBJECTDIR}/_ext/67102156/NVM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/67102156/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/67102156/NVM.o.d" -o ${OBJECTDIR}/_ext/67102156/NVM.o ../libs/Microchip/WirelessProtocols/NVM.c   
	
${OBJECTDIR}/_ext/67102156/EEPROM.o: ../libs/Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/67102156 
	@${RM} ${OBJECTDIR}/_ext/67102156/EEPROM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/67102156/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/67102156/EEPROM.o.d" -o ${OBJECTDIR}/_ext/67102156/EEPROM.o ../libs/Microchip/WirelessProtocols/EEPROM.c   
	
${OBJECTDIR}/_ext/67102156/LCDBlocking.o: ../libs/Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/67102156 
	@${RM} ${OBJECTDIR}/_ext/67102156/LCDBlocking.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/67102156/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/67102156/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/67102156/LCDBlocking.o ../libs/Microchip/WirelessProtocols/LCDBlocking.c   
	
${OBJECTDIR}/Console.o: Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Console.o.d 
	@${FIXDEPS} "${OBJECTDIR}/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/Console.o.d" -o ${OBJECTDIR}/Console.o Console.c   
	
${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o: ../libs/Microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1104080584 
	@${RM} ${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o.d" -o ${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o "../libs/Microchip/USB/CDC Device Driver/usb_function_cdc.c"   
	
${OBJECTDIR}/_ext/967747917/usb_device.o: ../libs/Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/967747917 
	@${RM} ${OBJECTDIR}/_ext/967747917/usb_device.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/967747917/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/967747917/usb_device.o.d" -o ${OBJECTDIR}/_ext/967747917/usb_device.o ../libs/Microchip/USB/usb_device.c   
	
else
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d" -o ${OBJECTDIR}/usb_descriptors.o usb_descriptors.c   
	
${OBJECTDIR}/_ext/67102156/SymbolTime.o: ../libs/Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/67102156 
	@${RM} ${OBJECTDIR}/_ext/67102156/SymbolTime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/67102156/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/67102156/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/67102156/SymbolTime.o ../libs/Microchip/WirelessProtocols/SymbolTime.c   
	
${OBJECTDIR}/_ext/67102156/NVM.o: ../libs/Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/67102156 
	@${RM} ${OBJECTDIR}/_ext/67102156/NVM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/67102156/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/67102156/NVM.o.d" -o ${OBJECTDIR}/_ext/67102156/NVM.o ../libs/Microchip/WirelessProtocols/NVM.c   
	
${OBJECTDIR}/_ext/67102156/EEPROM.o: ../libs/Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/67102156 
	@${RM} ${OBJECTDIR}/_ext/67102156/EEPROM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/67102156/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/67102156/EEPROM.o.d" -o ${OBJECTDIR}/_ext/67102156/EEPROM.o ../libs/Microchip/WirelessProtocols/EEPROM.c   
	
${OBJECTDIR}/_ext/67102156/LCDBlocking.o: ../libs/Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/67102156 
	@${RM} ${OBJECTDIR}/_ext/67102156/LCDBlocking.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/67102156/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/67102156/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/67102156/LCDBlocking.o ../libs/Microchip/WirelessProtocols/LCDBlocking.c   
	
${OBJECTDIR}/Console.o: Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Console.o.d 
	@${FIXDEPS} "${OBJECTDIR}/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/Console.o.d" -o ${OBJECTDIR}/Console.o Console.c   
	
${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o: ../libs/Microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1104080584 
	@${RM} ${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o.d" -o ${OBJECTDIR}/_ext/1104080584/usb_function_cdc.o "../libs/Microchip/USB/CDC Device Driver/usb_function_cdc.c"   
	
${OBJECTDIR}/_ext/967747917/usb_device.o: ../libs/Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/967747917 
	@${RM} ${OBJECTDIR}/_ext/967747917/usb_device.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/967747917/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/Serial Emulator.X/include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/_ext/967747917/usb_device.o.d" -o ${OBJECTDIR}/_ext/967747917/usb_device.o ../libs/Microchip/USB/usb_device.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Serial_Emulator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Serial_Emulator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/Serial_Emulator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Serial_Emulator.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Serial_Emulator.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
