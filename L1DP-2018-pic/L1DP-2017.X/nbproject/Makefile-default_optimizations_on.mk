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
ifeq "$(wildcard nbproject/Makefile-local-default_optimizations_on.mk)" "nbproject/Makefile-local-default_optimizations_on.mk"
include nbproject/Makefile-local-default_optimizations_on.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default_optimizations_on
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L1DP-2017.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L1DP-2017.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=color_management.c drawing_helpers.c fb_control.c resolution_management.c sprites.c text.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/trackerUI.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/intro2017.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/credits2017.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/addDrums.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/shared.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/allTracks.c main.c serial.c music.c demo_management.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/tty.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/hardware.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/color_management.o ${OBJECTDIR}/drawing_helpers.o ${OBJECTDIR}/fb_control.o ${OBJECTDIR}/resolution_management.o ${OBJECTDIR}/sprites.o ${OBJECTDIR}/text.o ${OBJECTDIR}/_ext/957542531/trackerUI.o ${OBJECTDIR}/_ext/957542531/intro2017.o ${OBJECTDIR}/_ext/957542531/credits2017.o ${OBJECTDIR}/_ext/957542531/addDrums.o ${OBJECTDIR}/_ext/957542531/shared.o ${OBJECTDIR}/_ext/957542531/allTracks.o ${OBJECTDIR}/main.o ${OBJECTDIR}/serial.o ${OBJECTDIR}/music.o ${OBJECTDIR}/demo_management.o ${OBJECTDIR}/_ext/957542531/tty.o ${OBJECTDIR}/_ext/957542531/hardware.o
POSSIBLE_DEPFILES=${OBJECTDIR}/color_management.o.d ${OBJECTDIR}/drawing_helpers.o.d ${OBJECTDIR}/fb_control.o.d ${OBJECTDIR}/resolution_management.o.d ${OBJECTDIR}/sprites.o.d ${OBJECTDIR}/text.o.d ${OBJECTDIR}/_ext/957542531/trackerUI.o.d ${OBJECTDIR}/_ext/957542531/intro2017.o.d ${OBJECTDIR}/_ext/957542531/credits2017.o.d ${OBJECTDIR}/_ext/957542531/addDrums.o.d ${OBJECTDIR}/_ext/957542531/shared.o.d ${OBJECTDIR}/_ext/957542531/allTracks.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/serial.o.d ${OBJECTDIR}/music.o.d ${OBJECTDIR}/demo_management.o.d ${OBJECTDIR}/_ext/957542531/tty.o.d ${OBJECTDIR}/_ext/957542531/hardware.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/color_management.o ${OBJECTDIR}/drawing_helpers.o ${OBJECTDIR}/fb_control.o ${OBJECTDIR}/resolution_management.o ${OBJECTDIR}/sprites.o ${OBJECTDIR}/text.o ${OBJECTDIR}/_ext/957542531/trackerUI.o ${OBJECTDIR}/_ext/957542531/intro2017.o ${OBJECTDIR}/_ext/957542531/credits2017.o ${OBJECTDIR}/_ext/957542531/addDrums.o ${OBJECTDIR}/_ext/957542531/shared.o ${OBJECTDIR}/_ext/957542531/allTracks.o ${OBJECTDIR}/main.o ${OBJECTDIR}/serial.o ${OBJECTDIR}/music.o ${OBJECTDIR}/demo_management.o ${OBJECTDIR}/_ext/957542531/tty.o ${OBJECTDIR}/_ext/957542531/hardware.o

# Source Files
SOURCEFILES=color_management.c drawing_helpers.c fb_control.c resolution_management.c sprites.c text.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/trackerUI.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/intro2017.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/credits2017.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/addDrums.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/shared.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/allTracks.c main.c serial.c music.c demo_management.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/tty.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/hardware.c


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
	${MAKE}  -f nbproject/Makefile-default_optimizations_on.mk dist/${CND_CONF}/${IMAGE_TYPE}/L1DP-2017.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256DA206
MP_LINKER_FILE_OPTION=,--script=p24FJ256DA206.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/color_management.o: color_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/color_management.o.d 
	@${RM} ${OBJECTDIR}/color_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  color_management.c  -o ${OBJECTDIR}/color_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/color_management.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/color_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/drawing_helpers.o: drawing_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/drawing_helpers.o.d 
	@${RM} ${OBJECTDIR}/drawing_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  drawing_helpers.c  -o ${OBJECTDIR}/drawing_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/drawing_helpers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/drawing_helpers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/fb_control.o: fb_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fb_control.o.d 
	@${RM} ${OBJECTDIR}/fb_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  fb_control.c  -o ${OBJECTDIR}/fb_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/fb_control.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/fb_control.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/resolution_management.o: resolution_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/resolution_management.o.d 
	@${RM} ${OBJECTDIR}/resolution_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  resolution_management.c  -o ${OBJECTDIR}/resolution_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/resolution_management.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/resolution_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sprites.o: sprites.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sprites.o.d 
	@${RM} ${OBJECTDIR}/sprites.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sprites.c  -o ${OBJECTDIR}/sprites.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sprites.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/sprites.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/text.o: text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/text.o.d 
	@${RM} ${OBJECTDIR}/text.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  text.c  -o ${OBJECTDIR}/text.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/text.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/text.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/trackerUI.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/trackerUI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/trackerUI.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/trackerUI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/trackerUI.c  -o ${OBJECTDIR}/_ext/957542531/trackerUI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/trackerUI.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/trackerUI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/intro2017.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/intro2017.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/intro2017.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/intro2017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/intro2017.c  -o ${OBJECTDIR}/_ext/957542531/intro2017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/intro2017.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/intro2017.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/credits2017.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/credits2017.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/credits2017.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/credits2017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/credits2017.c  -o ${OBJECTDIR}/_ext/957542531/credits2017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/credits2017.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/credits2017.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/addDrums.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/addDrums.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/addDrums.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/addDrums.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/addDrums.c  -o ${OBJECTDIR}/_ext/957542531/addDrums.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/addDrums.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/addDrums.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/shared.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/shared.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/shared.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/shared.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/shared.c  -o ${OBJECTDIR}/_ext/957542531/shared.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/shared.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/shared.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/allTracks.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/allTracks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/allTracks.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/allTracks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/allTracks.c  -o ${OBJECTDIR}/_ext/957542531/allTracks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/allTracks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/allTracks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/serial.o: serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.o.d 
	@${RM} ${OBJECTDIR}/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial.c  -o ${OBJECTDIR}/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/serial.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/serial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/music.o: music.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/music.o.d 
	@${RM} ${OBJECTDIR}/music.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  music.c  -o ${OBJECTDIR}/music.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/music.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/music.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/demo_management.o: demo_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/demo_management.o.d 
	@${RM} ${OBJECTDIR}/demo_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  demo_management.c  -o ${OBJECTDIR}/demo_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/demo_management.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/demo_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/tty.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/tty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/tty.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/tty.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/tty.c  -o ${OBJECTDIR}/_ext/957542531/tty.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/tty.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/tty.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/hardware.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/hardware.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/hardware.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/hardware.c  -o ${OBJECTDIR}/_ext/957542531/hardware.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/hardware.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/hardware.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/color_management.o: color_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/color_management.o.d 
	@${RM} ${OBJECTDIR}/color_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  color_management.c  -o ${OBJECTDIR}/color_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/color_management.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/color_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/drawing_helpers.o: drawing_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/drawing_helpers.o.d 
	@${RM} ${OBJECTDIR}/drawing_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  drawing_helpers.c  -o ${OBJECTDIR}/drawing_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/drawing_helpers.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/drawing_helpers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/fb_control.o: fb_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fb_control.o.d 
	@${RM} ${OBJECTDIR}/fb_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  fb_control.c  -o ${OBJECTDIR}/fb_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/fb_control.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/fb_control.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/resolution_management.o: resolution_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/resolution_management.o.d 
	@${RM} ${OBJECTDIR}/resolution_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  resolution_management.c  -o ${OBJECTDIR}/resolution_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/resolution_management.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/resolution_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sprites.o: sprites.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sprites.o.d 
	@${RM} ${OBJECTDIR}/sprites.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sprites.c  -o ${OBJECTDIR}/sprites.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sprites.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/sprites.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/text.o: text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/text.o.d 
	@${RM} ${OBJECTDIR}/text.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  text.c  -o ${OBJECTDIR}/text.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/text.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/text.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/trackerUI.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/trackerUI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/trackerUI.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/trackerUI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/trackerUI.c  -o ${OBJECTDIR}/_ext/957542531/trackerUI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/trackerUI.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/trackerUI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/intro2017.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/intro2017.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/intro2017.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/intro2017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/intro2017.c  -o ${OBJECTDIR}/_ext/957542531/intro2017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/intro2017.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/intro2017.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/credits2017.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/credits2017.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/credits2017.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/credits2017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/credits2017.c  -o ${OBJECTDIR}/_ext/957542531/credits2017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/credits2017.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/credits2017.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/addDrums.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/addDrums.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/addDrums.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/addDrums.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/addDrums.c  -o ${OBJECTDIR}/_ext/957542531/addDrums.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/addDrums.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/addDrums.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/shared.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/shared.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/shared.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/shared.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/shared.c  -o ${OBJECTDIR}/_ext/957542531/shared.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/shared.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/shared.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/allTracks.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/allTracks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/allTracks.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/allTracks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/allTracks.c  -o ${OBJECTDIR}/_ext/957542531/allTracks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/allTracks.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/allTracks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/serial.o: serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.o.d 
	@${RM} ${OBJECTDIR}/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial.c  -o ${OBJECTDIR}/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/serial.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/serial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/music.o: music.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/music.o.d 
	@${RM} ${OBJECTDIR}/music.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  music.c  -o ${OBJECTDIR}/music.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/music.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/music.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/demo_management.o: demo_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/demo_management.o.d 
	@${RM} ${OBJECTDIR}/demo_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  demo_management.c  -o ${OBJECTDIR}/demo_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/demo_management.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/demo_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/tty.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/tty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/tty.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/tty.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/tty.c  -o ${OBJECTDIR}/_ext/957542531/tty.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/tty.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/tty.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/957542531/hardware.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/957542531" 
	@${RM} ${OBJECTDIR}/_ext/957542531/hardware.o.d 
	@${RM} ${OBJECTDIR}/_ext/957542531/hardware.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/L1Demoparty/L1DP-2017/L1DP-2017.X/hardware.c  -o ${OBJECTDIR}/_ext/957542531/hardware.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/957542531/hardware.o.d"      -mno-eds-warn  -g -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -mlarge-code -mlarge-data -menable-large-arrays -O1 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/957542531/hardware.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
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
dist/${CND_CONF}/${IMAGE_TYPE}/L1DP-2017.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/L1DP-2017.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--no-handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/L1DP-2017.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/L1DP-2017.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -save-temps=obj -DXPRJ_default_optimizations_on=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-arrays -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--no-handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/L1DP-2017.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default_optimizations_on
	${RM} -r dist/default_optimizations_on

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
