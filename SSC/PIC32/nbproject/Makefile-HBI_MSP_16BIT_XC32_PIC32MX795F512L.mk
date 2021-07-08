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
ifeq "$(wildcard nbproject/Makefile-local-HBI_MSP_16BIT_XC32_PIC32MX795F512L.mk)" "nbproject/Makefile-local-HBI_MSP_16BIT_XC32_PIC32MX795F512L.mk"
include nbproject/Makefile-local-HBI_MSP_16BIT_XC32_PIC32MX795F512L.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=HBI_MSP_16BIT_XC32_PIC32MX795F512L
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Common/9252_HW.c ../Common/coeappl.c ../Common/ecatappl.c ../Common/ecatcoe.c ../Common/ecateoe.c ../Common/ecatfoe.c ../Common/ecatslv.c ../Common/emcy.c ../Common/eoeappl.c ../Common/foeappl.c ../Common/mailbox.c ../Common/objdef.c ../Common/sdoserv.c PMPDriver/PMPDriver.c PMPDriver/PIC32PMPDriver.c exceptions.c main.c user.c PICHW.c ../Common/m1eph.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2108356922/9252_HW.o ${OBJECTDIR}/_ext/2108356922/coeappl.o ${OBJECTDIR}/_ext/2108356922/ecatappl.o ${OBJECTDIR}/_ext/2108356922/ecatcoe.o ${OBJECTDIR}/_ext/2108356922/ecateoe.o ${OBJECTDIR}/_ext/2108356922/ecatfoe.o ${OBJECTDIR}/_ext/2108356922/ecatslv.o ${OBJECTDIR}/_ext/2108356922/emcy.o ${OBJECTDIR}/_ext/2108356922/eoeappl.o ${OBJECTDIR}/_ext/2108356922/foeappl.o ${OBJECTDIR}/_ext/2108356922/mailbox.o ${OBJECTDIR}/_ext/2108356922/objdef.o ${OBJECTDIR}/_ext/2108356922/sdoserv.o ${OBJECTDIR}/PMPDriver/PMPDriver.o ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o ${OBJECTDIR}/exceptions.o ${OBJECTDIR}/main.o ${OBJECTDIR}/user.o ${OBJECTDIR}/PICHW.o ${OBJECTDIR}/_ext/2108356922/m1eph.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2108356922/9252_HW.o.d ${OBJECTDIR}/_ext/2108356922/coeappl.o.d ${OBJECTDIR}/_ext/2108356922/ecatappl.o.d ${OBJECTDIR}/_ext/2108356922/ecatcoe.o.d ${OBJECTDIR}/_ext/2108356922/ecateoe.o.d ${OBJECTDIR}/_ext/2108356922/ecatfoe.o.d ${OBJECTDIR}/_ext/2108356922/ecatslv.o.d ${OBJECTDIR}/_ext/2108356922/emcy.o.d ${OBJECTDIR}/_ext/2108356922/eoeappl.o.d ${OBJECTDIR}/_ext/2108356922/foeappl.o.d ${OBJECTDIR}/_ext/2108356922/mailbox.o.d ${OBJECTDIR}/_ext/2108356922/objdef.o.d ${OBJECTDIR}/_ext/2108356922/sdoserv.o.d ${OBJECTDIR}/PMPDriver/PMPDriver.o.d ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o.d ${OBJECTDIR}/exceptions.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/user.o.d ${OBJECTDIR}/PICHW.o.d ${OBJECTDIR}/_ext/2108356922/m1eph.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2108356922/9252_HW.o ${OBJECTDIR}/_ext/2108356922/coeappl.o ${OBJECTDIR}/_ext/2108356922/ecatappl.o ${OBJECTDIR}/_ext/2108356922/ecatcoe.o ${OBJECTDIR}/_ext/2108356922/ecateoe.o ${OBJECTDIR}/_ext/2108356922/ecatfoe.o ${OBJECTDIR}/_ext/2108356922/ecatslv.o ${OBJECTDIR}/_ext/2108356922/emcy.o ${OBJECTDIR}/_ext/2108356922/eoeappl.o ${OBJECTDIR}/_ext/2108356922/foeappl.o ${OBJECTDIR}/_ext/2108356922/mailbox.o ${OBJECTDIR}/_ext/2108356922/objdef.o ${OBJECTDIR}/_ext/2108356922/sdoserv.o ${OBJECTDIR}/PMPDriver/PMPDriver.o ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o ${OBJECTDIR}/exceptions.o ${OBJECTDIR}/main.o ${OBJECTDIR}/user.o ${OBJECTDIR}/PICHW.o ${OBJECTDIR}/_ext/2108356922/m1eph.o

# Source Files
SOURCEFILES=../Common/9252_HW.c ../Common/coeappl.c ../Common/ecatappl.c ../Common/ecatcoe.c ../Common/ecateoe.c ../Common/ecatfoe.c ../Common/ecatslv.c ../Common/emcy.c ../Common/eoeappl.c ../Common/foeappl.c ../Common/mailbox.c ../Common/objdef.c ../Common/sdoserv.c PMPDriver/PMPDriver.c PMPDriver/PIC32PMPDriver.c exceptions.c main.c user.c PICHW.c ../Common/m1eph.c



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
	${MAKE}  -f nbproject/Makefile-HBI_MSP_16BIT_XC32_PIC32MX795F512L.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
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
${OBJECTDIR}/_ext/2108356922/9252_HW.o: ../Common/9252_HW.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/9252_HW.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/9252_HW.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/9252_HW.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/9252_HW.o.d" -o ${OBJECTDIR}/_ext/2108356922/9252_HW.o ../Common/9252_HW.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/coeappl.o: ../Common/coeappl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/coeappl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/coeappl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/coeappl.o.d" -o ${OBJECTDIR}/_ext/2108356922/coeappl.o ../Common/coeappl.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecatappl.o: ../Common/ecatappl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatappl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecatappl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecatappl.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecatappl.o ../Common/ecatappl.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecatcoe.o: ../Common/ecatcoe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatcoe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecatcoe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecatcoe.o ../Common/ecatcoe.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecateoe.o: ../Common/ecateoe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecateoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecateoe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecateoe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecateoe.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecateoe.o ../Common/ecateoe.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecatfoe.o: ../Common/ecatfoe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatfoe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecatfoe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecatfoe.o ../Common/ecatfoe.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecatslv.o: ../Common/ecatslv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatslv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecatslv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecatslv.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecatslv.o ../Common/ecatslv.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/emcy.o: ../Common/emcy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/emcy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/emcy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/emcy.o.d" -o ${OBJECTDIR}/_ext/2108356922/emcy.o ../Common/emcy.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/eoeappl.o: ../Common/eoeappl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/eoeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/eoeappl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/eoeappl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/eoeappl.o.d" -o ${OBJECTDIR}/_ext/2108356922/eoeappl.o ../Common/eoeappl.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/foeappl.o: ../Common/foeappl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/foeappl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/foeappl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/foeappl.o.d" -o ${OBJECTDIR}/_ext/2108356922/foeappl.o ../Common/foeappl.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/mailbox.o: ../Common/mailbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/mailbox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/mailbox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/mailbox.o.d" -o ${OBJECTDIR}/_ext/2108356922/mailbox.o ../Common/mailbox.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/objdef.o: ../Common/objdef.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/objdef.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/objdef.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/objdef.o.d" -o ${OBJECTDIR}/_ext/2108356922/objdef.o ../Common/objdef.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/sdoserv.o: ../Common/sdoserv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/sdoserv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/sdoserv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/sdoserv.o.d" -o ${OBJECTDIR}/_ext/2108356922/sdoserv.o ../Common/sdoserv.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/PMPDriver/PMPDriver.o: PMPDriver/PMPDriver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/PMPDriver" 
	@${RM} ${OBJECTDIR}/PMPDriver/PMPDriver.o.d 
	@${RM} ${OBJECTDIR}/PMPDriver/PMPDriver.o 
	@${FIXDEPS} "${OBJECTDIR}/PMPDriver/PMPDriver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/PMPDriver/PMPDriver.o.d" -o ${OBJECTDIR}/PMPDriver/PMPDriver.o PMPDriver/PMPDriver.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o: PMPDriver/PIC32PMPDriver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/PMPDriver" 
	@${RM} ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o.d 
	@${RM} ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o 
	@${FIXDEPS} "${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o.d" -o ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o PMPDriver/PIC32PMPDriver.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/exceptions.o: exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/exceptions.o.d 
	@${RM} ${OBJECTDIR}/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/exceptions.o.d" -o ${OBJECTDIR}/exceptions.o exceptions.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/user.o: user.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.o.d 
	@${RM} ${OBJECTDIR}/user.o 
	@${FIXDEPS} "${OBJECTDIR}/user.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/user.o.d" -o ${OBJECTDIR}/user.o user.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/PICHW.o: PICHW.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PICHW.o.d 
	@${RM} ${OBJECTDIR}/PICHW.o 
	@${FIXDEPS} "${OBJECTDIR}/PICHW.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/PICHW.o.d" -o ${OBJECTDIR}/PICHW.o PICHW.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/m1eph.o: ../Common/m1eph.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/m1eph.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/m1eph.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/m1eph.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/m1eph.o.d" -o ${OBJECTDIR}/_ext/2108356922/m1eph.o ../Common/m1eph.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
else
${OBJECTDIR}/_ext/2108356922/9252_HW.o: ../Common/9252_HW.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/9252_HW.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/9252_HW.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/9252_HW.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/9252_HW.o.d" -o ${OBJECTDIR}/_ext/2108356922/9252_HW.o ../Common/9252_HW.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/coeappl.o: ../Common/coeappl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/coeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/coeappl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/coeappl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/coeappl.o.d" -o ${OBJECTDIR}/_ext/2108356922/coeappl.o ../Common/coeappl.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecatappl.o: ../Common/ecatappl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatappl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecatappl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecatappl.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecatappl.o ../Common/ecatappl.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecatcoe.o: ../Common/ecatcoe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatcoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatcoe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecatcoe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecatcoe.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecatcoe.o ../Common/ecatcoe.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecateoe.o: ../Common/ecateoe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecateoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecateoe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecateoe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecateoe.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecateoe.o ../Common/ecateoe.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecatfoe.o: ../Common/ecatfoe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatfoe.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatfoe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecatfoe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecatfoe.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecatfoe.o ../Common/ecatfoe.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/ecatslv.o: ../Common/ecatslv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatslv.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ecatslv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/ecatslv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/ecatslv.o.d" -o ${OBJECTDIR}/_ext/2108356922/ecatslv.o ../Common/ecatslv.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/emcy.o: ../Common/emcy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/emcy.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/emcy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/emcy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/emcy.o.d" -o ${OBJECTDIR}/_ext/2108356922/emcy.o ../Common/emcy.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/eoeappl.o: ../Common/eoeappl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/eoeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/eoeappl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/eoeappl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/eoeappl.o.d" -o ${OBJECTDIR}/_ext/2108356922/eoeappl.o ../Common/eoeappl.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/foeappl.o: ../Common/foeappl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/foeappl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/foeappl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/foeappl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/foeappl.o.d" -o ${OBJECTDIR}/_ext/2108356922/foeappl.o ../Common/foeappl.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/mailbox.o: ../Common/mailbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/mailbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/mailbox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/mailbox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/mailbox.o.d" -o ${OBJECTDIR}/_ext/2108356922/mailbox.o ../Common/mailbox.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/objdef.o: ../Common/objdef.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/objdef.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/objdef.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/objdef.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/objdef.o.d" -o ${OBJECTDIR}/_ext/2108356922/objdef.o ../Common/objdef.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/sdoserv.o: ../Common/sdoserv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/sdoserv.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/sdoserv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/sdoserv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/sdoserv.o.d" -o ${OBJECTDIR}/_ext/2108356922/sdoserv.o ../Common/sdoserv.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/PMPDriver/PMPDriver.o: PMPDriver/PMPDriver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/PMPDriver" 
	@${RM} ${OBJECTDIR}/PMPDriver/PMPDriver.o.d 
	@${RM} ${OBJECTDIR}/PMPDriver/PMPDriver.o 
	@${FIXDEPS} "${OBJECTDIR}/PMPDriver/PMPDriver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/PMPDriver/PMPDriver.o.d" -o ${OBJECTDIR}/PMPDriver/PMPDriver.o PMPDriver/PMPDriver.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o: PMPDriver/PIC32PMPDriver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/PMPDriver" 
	@${RM} ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o.d 
	@${RM} ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o 
	@${FIXDEPS} "${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o.d" -o ${OBJECTDIR}/PMPDriver/PIC32PMPDriver.o PMPDriver/PIC32PMPDriver.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/exceptions.o: exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/exceptions.o.d 
	@${RM} ${OBJECTDIR}/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/exceptions.o.d" -o ${OBJECTDIR}/exceptions.o exceptions.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/user.o: user.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/user.o.d 
	@${RM} ${OBJECTDIR}/user.o 
	@${FIXDEPS} "${OBJECTDIR}/user.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/user.o.d" -o ${OBJECTDIR}/user.o user.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/PICHW.o: PICHW.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PICHW.o.d 
	@${RM} ${OBJECTDIR}/PICHW.o 
	@${FIXDEPS} "${OBJECTDIR}/PICHW.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/PICHW.o.d" -o ${OBJECTDIR}/PICHW.o PICHW.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2108356922/m1eph.o: ../Common/m1eph.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/m1eph.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/m1eph.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2108356922/m1eph.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPIC32_STARTER_KIT -DPIC32_HW -DHBI_MSP_16BIT -D_SUPPRESS_PLIB_WARNING -I"../Common" -MMD -MF "${OBJECTDIR}/_ext/2108356922/m1eph.o.d" -o ${OBJECTDIR}/_ext/2108356922/m1eph.o ../Common/m1eph.c    -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=4096,--no-code-in-dinit,--no-dinit-in-serial-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_HBI_MSP_16BIT_XC32_PIC32MX795F512L=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--no-code-in-dinit,--no-dinit-in-serial-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PIC32.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/HBI_MSP_16BIT_XC32_PIC32MX795F512L
	${RM} -r dist/HBI_MSP_16BIT_XC32_PIC32MX795F512L
