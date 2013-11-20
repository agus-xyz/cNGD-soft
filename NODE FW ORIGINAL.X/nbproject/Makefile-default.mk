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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/NODE_FW_ORIGINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/NODE_FW_ORIGINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/CWSN LSI Node/Common/TimeDelay.o" "${OBJECTDIR}/CWSN LSI Node/Common/timer.o" "${OBJECTDIR}/CWSN LSI Node/HardwareProfile.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWi/MiWi.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/SymbolTime.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/NVM.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/EEPROM.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/LCDBlocking.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MSPI.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/P2P/P2P.o" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/Console.o" "${OBJECTDIR}/CWSN LSI Node/NodeHAL.o" "${OBJECTDIR}/CWSN LSI Node/Transceivers/crc.o" "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.o" "${OBJECTDIR}/CWSN LSI Node/Transceivers/security.o" "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.o" "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.o" ${OBJECTDIR}/MainApp.o
POSSIBLE_DEPFILES="${OBJECTDIR}/CWSN LSI Node/Common/TimeDelay.o.d" "${OBJECTDIR}/CWSN LSI Node/Common/timer.o.d" "${OBJECTDIR}/CWSN LSI Node/HardwareProfile.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWi/MiWi.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/SymbolTime.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/NVM.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/EEPROM.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/LCDBlocking.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MSPI.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/P2P/P2P.o.d" "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/Console.o.d" "${OBJECTDIR}/CWSN LSI Node/NodeHAL.o.d" "${OBJECTDIR}/CWSN LSI Node/Transceivers/crc.o.d" "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.o.d" "${OBJECTDIR}/CWSN LSI Node/Transceivers/security.o.d" "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.o.d" "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.o.d" ${OBJECTDIR}/MainApp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/CWSN\ LSI\ Node/Common/TimeDelay.o ${OBJECTDIR}/CWSN\ LSI\ Node/Common/timer.o ${OBJECTDIR}/CWSN\ LSI\ Node/HardwareProfile.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWi/MiWi.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/SymbolTime.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/NVM.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/EEPROM.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO/MiWiPRO.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/LCDBlocking.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MSPI.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/P2P/P2P.o ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/Console.o ${OBJECTDIR}/CWSN\ LSI\ Node/NodeHAL.o ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/crc.o ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF89XA/MRF89XA.o ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/security.o ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF24J40/MRF24J40.o ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF49XA/MRF49XA.o ${OBJECTDIR}/MainApp.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/NODE_FW_ORIGINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512H
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
${OBJECTDIR}/CWSN\ LSI\ Node/Common/TimeDelay.o: CWSN\ LSI\ Node/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Common 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Common/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Common/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Common/TimeDelay.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Common/TimeDelay.o" "CWSN LSI Node/Common/TimeDelay.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Common/timer.o: CWSN\ LSI\ Node/Common/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Common 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Common/timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Common/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Common/timer.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Common/timer.o" "CWSN LSI Node/Common/timer.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/HardwareProfile.o: CWSN\ LSI\ Node/HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/HardwareProfile.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/HardwareProfile.o.d" -o "${OBJECTDIR}/CWSN LSI Node/HardwareProfile.o" "CWSN LSI Node/HardwareProfile.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWi/MiWi.o: CWSN\ LSI\ Node/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWi 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWi/MiWi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWi/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWi/MiWi.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWi/MiWi.o" "CWSN LSI Node/WirelessProtocols/MiWi/MiWi.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/SymbolTime.o: CWSN\ LSI\ Node/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/SymbolTime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/SymbolTime.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/SymbolTime.o" "CWSN LSI Node/WirelessProtocols/SymbolTime.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/NVM.o: CWSN\ LSI\ Node/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/NVM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/NVM.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/NVM.o" "CWSN LSI Node/WirelessProtocols/NVM.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/EEPROM.o: CWSN\ LSI\ Node/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/EEPROM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/EEPROM.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/EEPROM.o" "CWSN LSI Node/WirelessProtocols/EEPROM.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO/MiWiPRO.o: CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO/MiWiPRO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.o" "CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/LCDBlocking.o: CWSN\ LSI\ Node/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/LCDBlocking.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/LCDBlocking.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/LCDBlocking.o" "CWSN LSI Node/WirelessProtocols/LCDBlocking.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MSPI.o: CWSN\ LSI\ Node/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MSPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MSPI.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MSPI.o" "CWSN LSI Node/WirelessProtocols/MSPI.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/P2P/P2P.o: CWSN\ LSI\ Node/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/P2P 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/P2P/P2P.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/P2P/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/P2P/P2P.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/P2P/P2P.o" "CWSN LSI Node/WirelessProtocols/P2P/P2P.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/Console.o: CWSN\ LSI\ Node/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/Console.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/Console.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/Console.o" "CWSN LSI Node/WirelessProtocols/Console.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/NodeHAL.o: CWSN\ LSI\ Node/NodeHAL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/NodeHAL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/NodeHAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/NodeHAL.o.d" -o "${OBJECTDIR}/CWSN LSI Node/NodeHAL.o" "CWSN LSI Node/NodeHAL.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/crc.o: CWSN\ LSI\ Node/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/crc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/crc.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/crc.o" "CWSN LSI Node/Transceivers/crc.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF89XA/MRF89XA.o: CWSN\ LSI\ Node/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF89XA 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF89XA/MRF89XA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.o" "CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/security.o: CWSN\ LSI\ Node/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/security.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/security.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/security.o" "CWSN LSI Node/Transceivers/security.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF24J40/MRF24J40.o: CWSN\ LSI\ Node/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF24J40 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF24J40/MRF24J40.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.o" "CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF49XA/MRF49XA.o: CWSN\ LSI\ Node/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF49XA 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF49XA/MRF49XA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.o" "CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.c"   
	
${OBJECTDIR}/MainApp.o: MainApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/MainApp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/MainApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/MainApp.o.d" -o ${OBJECTDIR}/MainApp.o MainApp.c   
	
else
${OBJECTDIR}/CWSN\ LSI\ Node/Common/TimeDelay.o: CWSN\ LSI\ Node/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Common 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Common/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Common/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Common/TimeDelay.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Common/TimeDelay.o" "CWSN LSI Node/Common/TimeDelay.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Common/timer.o: CWSN\ LSI\ Node/Common/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Common 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Common/timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Common/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Common/timer.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Common/timer.o" "CWSN LSI Node/Common/timer.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/HardwareProfile.o: CWSN\ LSI\ Node/HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/HardwareProfile.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/HardwareProfile.o.d" -o "${OBJECTDIR}/CWSN LSI Node/HardwareProfile.o" "CWSN LSI Node/HardwareProfile.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWi/MiWi.o: CWSN\ LSI\ Node/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWi 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWi/MiWi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWi/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWi/MiWi.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWi/MiWi.o" "CWSN LSI Node/WirelessProtocols/MiWi/MiWi.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/SymbolTime.o: CWSN\ LSI\ Node/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/SymbolTime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/SymbolTime.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/SymbolTime.o" "CWSN LSI Node/WirelessProtocols/SymbolTime.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/NVM.o: CWSN\ LSI\ Node/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/NVM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/NVM.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/NVM.o" "CWSN LSI Node/WirelessProtocols/NVM.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/EEPROM.o: CWSN\ LSI\ Node/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/EEPROM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/EEPROM.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/EEPROM.o" "CWSN LSI Node/WirelessProtocols/EEPROM.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO/MiWiPRO.o: CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MiWiPRO/MiWiPRO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.o" "CWSN LSI Node/WirelessProtocols/MiWiPRO/MiWiPRO.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/LCDBlocking.o: CWSN\ LSI\ Node/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/LCDBlocking.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/LCDBlocking.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/LCDBlocking.o" "CWSN LSI Node/WirelessProtocols/LCDBlocking.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MSPI.o: CWSN\ LSI\ Node/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/MSPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MSPI.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/MSPI.o" "CWSN LSI Node/WirelessProtocols/MSPI.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/P2P/P2P.o: CWSN\ LSI\ Node/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/P2P 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/P2P/P2P.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/P2P/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/P2P/P2P.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/P2P/P2P.o" "CWSN LSI Node/WirelessProtocols/P2P/P2P.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/Console.o: CWSN\ LSI\ Node/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/WirelessProtocols/Console.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/Console.o.d" -o "${OBJECTDIR}/CWSN LSI Node/WirelessProtocols/Console.o" "CWSN LSI Node/WirelessProtocols/Console.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/NodeHAL.o: CWSN\ LSI\ Node/NodeHAL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/NodeHAL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/NodeHAL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/NodeHAL.o.d" -o "${OBJECTDIR}/CWSN LSI Node/NodeHAL.o" "CWSN LSI Node/NodeHAL.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/crc.o: CWSN\ LSI\ Node/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/crc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/crc.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/crc.o" "CWSN LSI Node/Transceivers/crc.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF89XA/MRF89XA.o: CWSN\ LSI\ Node/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF89XA 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF89XA/MRF89XA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.o" "CWSN LSI Node/Transceivers/MRF89XA/MRF89XA.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/security.o: CWSN\ LSI\ Node/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/security.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/security.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/security.o" "CWSN LSI Node/Transceivers/security.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF24J40/MRF24J40.o: CWSN\ LSI\ Node/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF24J40 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF24J40/MRF24J40.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.o" "CWSN LSI Node/Transceivers/MRF24J40/MRF24J40.c"   
	
${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF49XA/MRF49XA.o: CWSN\ LSI\ Node/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF49XA 
	@${RM} ${OBJECTDIR}/CWSN\ LSI\ Node/Transceivers/MRF49XA/MRF49XA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.o.d" -o "${OBJECTDIR}/CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.o" "CWSN LSI Node/Transceivers/MRF49XA/MRF49XA.c"   
	
${OBJECTDIR}/MainApp.o: MainApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/MainApp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/MainApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"/home/agus/pfc/code/cognitiveNGD/NODE FW ORIGINAL.X/CWSN LSI Node/Include" -I"/home/agus/pfc/code/cognitiveNGD/libs/Microchip/Include" -MMD -MF "${OBJECTDIR}/MainApp.o.d" -o ${OBJECTDIR}/MainApp.o MainApp.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/NODE_FW_ORIGINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/NODE_FW_ORIGINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/NODE_FW_ORIGINAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/NODE_FW_ORIGINAL.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/NODE_FW_ORIGINAL.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
