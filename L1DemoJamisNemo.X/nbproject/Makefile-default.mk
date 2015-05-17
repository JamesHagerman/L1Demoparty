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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L1DemoJamisNemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L1DemoJamisNemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/original.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/color_management.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/resolution_management.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/1684650831/original.o ${OBJECTDIR}/_ext/1684650831/color_management.o ${OBJECTDIR}/_ext/1684650831/resolution_management.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/1684650831/original.o.d ${OBJECTDIR}/_ext/1684650831/color_management.o.d ${OBJECTDIR}/_ext/1684650831/resolution_management.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/1684650831/original.o ${OBJECTDIR}/_ext/1684650831/color_management.o ${OBJECTDIR}/_ext/1684650831/resolution_management.o

# Source Files
SOURCEFILES=main.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/original.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/color_management.c C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/resolution_management.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/L1DemoJamisNemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256DA206
MP_LINKER_FILE_OPTION=,--script=p24FJ256DA206.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-arrays -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1684650831/original.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/original.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1684650831" 
	@${RM} ${OBJECTDIR}/_ext/1684650831/original.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684650831/original.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/original.c  -o ${OBJECTDIR}/_ext/1684650831/original.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1684650831/original.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-arrays -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1684650831/original.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1684650831/color_management.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/color_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1684650831" 
	@${RM} ${OBJECTDIR}/_ext/1684650831/color_management.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684650831/color_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/color_management.c  -o ${OBJECTDIR}/_ext/1684650831/color_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1684650831/color_management.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-arrays -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1684650831/color_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1684650831/resolution_management.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/resolution_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1684650831" 
	@${RM} ${OBJECTDIR}/_ext/1684650831/resolution_management.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684650831/resolution_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/resolution_management.c  -o ${OBJECTDIR}/_ext/1684650831/resolution_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1684650831/resolution_management.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -mlarge-arrays -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1684650831/resolution_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-arrays -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1684650831/original.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/original.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1684650831" 
	@${RM} ${OBJECTDIR}/_ext/1684650831/original.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684650831/original.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/original.c  -o ${OBJECTDIR}/_ext/1684650831/original.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1684650831/original.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-arrays -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1684650831/original.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1684650831/color_management.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/color_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1684650831" 
	@${RM} ${OBJECTDIR}/_ext/1684650831/color_management.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684650831/color_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/color_management.c  -o ${OBJECTDIR}/_ext/1684650831/color_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1684650831/color_management.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-arrays -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1684650831/color_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1684650831/resolution_management.o: C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/resolution_management.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1684650831" 
	@${RM} ${OBJECTDIR}/_ext/1684650831/resolution_management.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684650831/resolution_management.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  C:/Users/jamis/Desktop/my_root/Development/Circuits/PIC/pic-2015/l1DemoParty/MyDemo/L1DemoJamisNemo.X/resolution_management.c  -o ${OBJECTDIR}/_ext/1684650831/resolution_management.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1684650831/resolution_management.o.d"      -mno-eds-warn  -g -omf=elf -mlarge-arrays -menable-large-arrays -O0 -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1684650831/resolution_management.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
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
dist/${CND_CONF}/${IMAGE_TYPE}/L1DemoJamisNemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/L1DemoJamisNemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-arrays  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--no-handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/L1DemoJamisNemo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/L1DemoJamisNemo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -mlarge-arrays -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--no-handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/L1DemoJamisNemo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
