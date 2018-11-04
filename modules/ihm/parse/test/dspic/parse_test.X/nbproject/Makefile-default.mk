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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/parse_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/parse_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=../commands.c ../main.c ../traps.c ../../../../../base/cirbuf/cirbuf_get_tail.c ../../../../../base/cirbuf/cirbuf.c ../../../../../base/cirbuf/cirbuf_add_buf_head.c ../../../../../base/cirbuf/cirbuf_add_buf_tail.c ../../../../../base/cirbuf/cirbuf_add_head.c ../../../../../base/cirbuf/cirbuf_add_tail.c ../../../../../base/cirbuf/cirbuf_align.c ../../../../../base/cirbuf/cirbuf_del_buf_head.c ../../../../../base/cirbuf/cirbuf_del_buf_tail.c ../../../../../base/cirbuf/cirbuf_del_head.c ../../../../../base/cirbuf/cirbuf_del_tail.c ../../../../../base/cirbuf/cirbuf_get_buf_head.c ../../../../../base/cirbuf/cirbuf_get_buf_tail.c ../../../../../base/cirbuf/cirbuf_get_head.c ../../../../../hardware/dspic/oscillator/oscillator.c ../../../parse.c ../../../parse_num.c ../../../parse_string.c ../../../../rdline/rdline.c ../../../../../comm/dspic/uart/uart_setconf.c ../../../../../comm/dspic/uart/uart.c ../../../../../comm/dspic/uart/uart_dev_io.c ../../../../../comm/dspic/uart/uart_recv.c ../../../../../comm/dspic/uart/uart_recv_nowait.c ../../../../../comm/dspic/uart/uart_send.c ../../../../../comm/dspic/uart/uart_send_nowait.c ../../../../vt100/vt100.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/commands.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/traps.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o ${OBJECTDIR}/_ext/721348212/oscillator.o ${OBJECTDIR}/_ext/2124829536/parse.o ${OBJECTDIR}/_ext/2124829536/parse_num.o ${OBJECTDIR}/_ext/2124829536/parse_string.o ${OBJECTDIR}/_ext/1986226074/rdline.o ${OBJECTDIR}/_ext/1998265194/uart_setconf.o ${OBJECTDIR}/_ext/1998265194/uart.o ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o ${OBJECTDIR}/_ext/1998265194/uart_recv.o ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o ${OBJECTDIR}/_ext/1998265194/uart_send.o ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o ${OBJECTDIR}/_ext/1029790925/vt100.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/commands.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/traps.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d ${OBJECTDIR}/_ext/721348212/oscillator.o.d ${OBJECTDIR}/_ext/2124829536/parse.o.d ${OBJECTDIR}/_ext/2124829536/parse_num.o.d ${OBJECTDIR}/_ext/2124829536/parse_string.o.d ${OBJECTDIR}/_ext/1986226074/rdline.o.d ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d ${OBJECTDIR}/_ext/1998265194/uart.o.d ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d ${OBJECTDIR}/_ext/1998265194/uart_recv.o.d ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d ${OBJECTDIR}/_ext/1998265194/uart_send.o.d ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d ${OBJECTDIR}/_ext/1029790925/vt100.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/commands.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/traps.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o ${OBJECTDIR}/_ext/721348212/oscillator.o ${OBJECTDIR}/_ext/2124829536/parse.o ${OBJECTDIR}/_ext/2124829536/parse_num.o ${OBJECTDIR}/_ext/2124829536/parse_string.o ${OBJECTDIR}/_ext/1986226074/rdline.o ${OBJECTDIR}/_ext/1998265194/uart_setconf.o ${OBJECTDIR}/_ext/1998265194/uart.o ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o ${OBJECTDIR}/_ext/1998265194/uart_recv.o ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o ${OBJECTDIR}/_ext/1998265194/uart_send.o ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o ${OBJECTDIR}/_ext/1029790925/vt100.o

# Source Files
SOURCEFILES=../commands.c ../main.c ../traps.c ../../../../../base/cirbuf/cirbuf_get_tail.c ../../../../../base/cirbuf/cirbuf.c ../../../../../base/cirbuf/cirbuf_add_buf_head.c ../../../../../base/cirbuf/cirbuf_add_buf_tail.c ../../../../../base/cirbuf/cirbuf_add_head.c ../../../../../base/cirbuf/cirbuf_add_tail.c ../../../../../base/cirbuf/cirbuf_align.c ../../../../../base/cirbuf/cirbuf_del_buf_head.c ../../../../../base/cirbuf/cirbuf_del_buf_tail.c ../../../../../base/cirbuf/cirbuf_del_head.c ../../../../../base/cirbuf/cirbuf_del_tail.c ../../../../../base/cirbuf/cirbuf_get_buf_head.c ../../../../../base/cirbuf/cirbuf_get_buf_tail.c ../../../../../base/cirbuf/cirbuf_get_head.c ../../../../../hardware/dspic/oscillator/oscillator.c ../../../parse.c ../../../parse_num.c ../../../parse_string.c ../../../../rdline/rdline.c ../../../../../comm/dspic/uart/uart_setconf.c ../../../../../comm/dspic/uart/uart.c ../../../../../comm/dspic/uart/uart_dev_io.c ../../../../../comm/dspic/uart/uart_recv.c ../../../../../comm/dspic/uart/uart_recv_nowait.c ../../../../../comm/dspic/uart/uart_send.c ../../../../../comm/dspic/uart/uart_send_nowait.c ../../../../vt100/vt100.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/parse_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP512MC806
MP_LINKER_FILE_OPTION=,-Tp33EP512MC806.gld
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
${OBJECTDIR}/_ext/1472/commands.o: ../commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/commands.o.ok ${OBJECTDIR}/_ext/1472/commands.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1472/commands.o.d" -o ${OBJECTDIR}/_ext/1472/commands.o ../commands.c    
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    
	
${OBJECTDIR}/_ext/1472/traps.o: ../traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o.ok ${OBJECTDIR}/_ext/1472/traps.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/traps.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1472/traps.o.d" -o ${OBJECTDIR}/_ext/1472/traps.o ../traps.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o: ../../../../../base/cirbuf/cirbuf_get_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o ../../../../../base/cirbuf/cirbuf_get_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf.o: ../../../../../base/cirbuf/cirbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf.o ../../../../../base/cirbuf/cirbuf.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o: ../../../../../base/cirbuf/cirbuf_add_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o ../../../../../base/cirbuf/cirbuf_add_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o: ../../../../../base/cirbuf/cirbuf_add_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o ../../../../../base/cirbuf/cirbuf_add_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o: ../../../../../base/cirbuf/cirbuf_add_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o ../../../../../base/cirbuf/cirbuf_add_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o: ../../../../../base/cirbuf/cirbuf_add_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o ../../../../../base/cirbuf/cirbuf_add_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_align.o: ../../../../../base/cirbuf/cirbuf_align.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o ../../../../../base/cirbuf/cirbuf_align.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o: ../../../../../base/cirbuf/cirbuf_del_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o ../../../../../base/cirbuf/cirbuf_del_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o: ../../../../../base/cirbuf/cirbuf_del_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o ../../../../../base/cirbuf/cirbuf_del_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o: ../../../../../base/cirbuf/cirbuf_del_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o ../../../../../base/cirbuf/cirbuf_del_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o: ../../../../../base/cirbuf/cirbuf_del_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o ../../../../../base/cirbuf/cirbuf_del_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o: ../../../../../base/cirbuf/cirbuf_get_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o ../../../../../base/cirbuf/cirbuf_get_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o: ../../../../../base/cirbuf/cirbuf_get_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o ../../../../../base/cirbuf/cirbuf_get_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o: ../../../../../base/cirbuf/cirbuf_get_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o ../../../../../base/cirbuf/cirbuf_get_head.c    
	
${OBJECTDIR}/_ext/721348212/oscillator.o: ../../../../../hardware/dspic/oscillator/oscillator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/721348212" 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.d 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.ok ${OBJECTDIR}/_ext/721348212/oscillator.o.err 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/721348212/oscillator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/721348212/oscillator.o.d" -o ${OBJECTDIR}/_ext/721348212/oscillator.o ../../../../../hardware/dspic/oscillator/oscillator.c    
	
${OBJECTDIR}/_ext/2124829536/parse.o: ../../../parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse.o.ok ${OBJECTDIR}/_ext/2124829536/parse.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/parse.o.d" -o ${OBJECTDIR}/_ext/2124829536/parse.o ../../../parse.c    
	
${OBJECTDIR}/_ext/2124829536/parse_num.o: ../../../parse_num.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_num.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_num.o.ok ${OBJECTDIR}/_ext/2124829536/parse_num.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_num.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/parse_num.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/parse_num.o.d" -o ${OBJECTDIR}/_ext/2124829536/parse_num.o ../../../parse_num.c    
	
${OBJECTDIR}/_ext/2124829536/parse_string.o: ../../../parse_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_string.o.ok ${OBJECTDIR}/_ext/2124829536/parse_string.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_string.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/parse_string.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/parse_string.o.d" -o ${OBJECTDIR}/_ext/2124829536/parse_string.o ../../../parse_string.c    
	
${OBJECTDIR}/_ext/1986226074/rdline.o: ../../../../rdline/rdline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1986226074" 
	@${RM} ${OBJECTDIR}/_ext/1986226074/rdline.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986226074/rdline.o.ok ${OBJECTDIR}/_ext/1986226074/rdline.o.err 
	@${RM} ${OBJECTDIR}/_ext/1986226074/rdline.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1986226074/rdline.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1986226074/rdline.o.d" -o ${OBJECTDIR}/_ext/1986226074/rdline.o ../../../../rdline/rdline.c    
	
${OBJECTDIR}/_ext/1998265194/uart_setconf.o: ../../../../../comm/dspic/uart/uart_setconf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.ok ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_setconf.o ../../../../../comm/dspic/uart/uart_setconf.c    
	
${OBJECTDIR}/_ext/1998265194/uart.o: ../../../../../comm/dspic/uart/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o.ok ${OBJECTDIR}/_ext/1998265194/uart.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart.o ../../../../../comm/dspic/uart/uart.c    
	
${OBJECTDIR}/_ext/1998265194/uart_dev_io.o: ../../../../../comm/dspic/uart/uart_dev_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.ok ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o ../../../../../comm/dspic/uart/uart_dev_io.c    
	
${OBJECTDIR}/_ext/1998265194/uart_recv.o: ../../../../../comm/dspic/uart/uart_recv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o.ok ${OBJECTDIR}/_ext/1998265194/uart_recv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_recv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_recv.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_recv.o ../../../../../comm/dspic/uart/uart_recv.c    
	
${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o: ../../../../../comm/dspic/uart/uart_recv_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.ok ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o ../../../../../comm/dspic/uart/uart_recv_nowait.c    
	
${OBJECTDIR}/_ext/1998265194/uart_send.o: ../../../../../comm/dspic/uart/uart_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o.ok ${OBJECTDIR}/_ext/1998265194/uart_send.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_send.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_send.o ../../../../../comm/dspic/uart/uart_send.c    
	
${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o: ../../../../../comm/dspic/uart/uart_send_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.ok ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o ../../../../../comm/dspic/uart/uart_send_nowait.c    
	
${OBJECTDIR}/_ext/1029790925/vt100.o: ../../../../vt100/vt100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029790925" 
	@${RM} ${OBJECTDIR}/_ext/1029790925/vt100.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029790925/vt100.o.ok ${OBJECTDIR}/_ext/1029790925/vt100.o.err 
	@${RM} ${OBJECTDIR}/_ext/1029790925/vt100.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029790925/vt100.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1029790925/vt100.o.d" -o ${OBJECTDIR}/_ext/1029790925/vt100.o ../../../../vt100/vt100.c    
	
else
${OBJECTDIR}/_ext/1472/commands.o: ../commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/commands.o.ok ${OBJECTDIR}/_ext/1472/commands.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1472/commands.o.d" -o ${OBJECTDIR}/_ext/1472/commands.o ../commands.c    
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    
	
${OBJECTDIR}/_ext/1472/traps.o: ../traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o.ok ${OBJECTDIR}/_ext/1472/traps.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/traps.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/traps.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1472/traps.o.d" -o ${OBJECTDIR}/_ext/1472/traps.o ../traps.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o: ../../../../../base/cirbuf/cirbuf_get_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o ../../../../../base/cirbuf/cirbuf_get_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf.o: ../../../../../base/cirbuf/cirbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf.o ../../../../../base/cirbuf/cirbuf.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o: ../../../../../base/cirbuf/cirbuf_add_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o ../../../../../base/cirbuf/cirbuf_add_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o: ../../../../../base/cirbuf/cirbuf_add_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o ../../../../../base/cirbuf/cirbuf_add_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o: ../../../../../base/cirbuf/cirbuf_add_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o ../../../../../base/cirbuf/cirbuf_add_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o: ../../../../../base/cirbuf/cirbuf_add_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o ../../../../../base/cirbuf/cirbuf_add_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_align.o: ../../../../../base/cirbuf/cirbuf_align.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o ../../../../../base/cirbuf/cirbuf_align.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o: ../../../../../base/cirbuf/cirbuf_del_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o ../../../../../base/cirbuf/cirbuf_del_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o: ../../../../../base/cirbuf/cirbuf_del_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o ../../../../../base/cirbuf/cirbuf_del_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o: ../../../../../base/cirbuf/cirbuf_del_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o ../../../../../base/cirbuf/cirbuf_del_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o: ../../../../../base/cirbuf/cirbuf_del_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o ../../../../../base/cirbuf/cirbuf_del_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o: ../../../../../base/cirbuf/cirbuf_get_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o ../../../../../base/cirbuf/cirbuf_get_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o: ../../../../../base/cirbuf/cirbuf_get_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o ../../../../../base/cirbuf/cirbuf_get_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o: ../../../../../base/cirbuf/cirbuf_get_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o ../../../../../base/cirbuf/cirbuf_get_head.c    
	
${OBJECTDIR}/_ext/721348212/oscillator.o: ../../../../../hardware/dspic/oscillator/oscillator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/721348212" 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.d 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.ok ${OBJECTDIR}/_ext/721348212/oscillator.o.err 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/721348212/oscillator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/721348212/oscillator.o.d" -o ${OBJECTDIR}/_ext/721348212/oscillator.o ../../../../../hardware/dspic/oscillator/oscillator.c    
	
${OBJECTDIR}/_ext/2124829536/parse.o: ../../../parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse.o.ok ${OBJECTDIR}/_ext/2124829536/parse.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/parse.o.d" -o ${OBJECTDIR}/_ext/2124829536/parse.o ../../../parse.c    
	
${OBJECTDIR}/_ext/2124829536/parse_num.o: ../../../parse_num.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_num.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_num.o.ok ${OBJECTDIR}/_ext/2124829536/parse_num.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_num.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/parse_num.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/parse_num.o.d" -o ${OBJECTDIR}/_ext/2124829536/parse_num.o ../../../parse_num.c    
	
${OBJECTDIR}/_ext/2124829536/parse_string.o: ../../../parse_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_string.o.ok ${OBJECTDIR}/_ext/2124829536/parse_string.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/parse_string.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/parse_string.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/parse_string.o.d" -o ${OBJECTDIR}/_ext/2124829536/parse_string.o ../../../parse_string.c    
	
${OBJECTDIR}/_ext/1986226074/rdline.o: ../../../../rdline/rdline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1986226074" 
	@${RM} ${OBJECTDIR}/_ext/1986226074/rdline.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986226074/rdline.o.ok ${OBJECTDIR}/_ext/1986226074/rdline.o.err 
	@${RM} ${OBJECTDIR}/_ext/1986226074/rdline.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1986226074/rdline.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1986226074/rdline.o.d" -o ${OBJECTDIR}/_ext/1986226074/rdline.o ../../../../rdline/rdline.c    
	
${OBJECTDIR}/_ext/1998265194/uart_setconf.o: ../../../../../comm/dspic/uart/uart_setconf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.ok ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_setconf.o ../../../../../comm/dspic/uart/uart_setconf.c    
	
${OBJECTDIR}/_ext/1998265194/uart.o: ../../../../../comm/dspic/uart/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o.ok ${OBJECTDIR}/_ext/1998265194/uart.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart.o ../../../../../comm/dspic/uart/uart.c    
	
${OBJECTDIR}/_ext/1998265194/uart_dev_io.o: ../../../../../comm/dspic/uart/uart_dev_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.ok ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o ../../../../../comm/dspic/uart/uart_dev_io.c    
	
${OBJECTDIR}/_ext/1998265194/uart_recv.o: ../../../../../comm/dspic/uart/uart_recv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o.ok ${OBJECTDIR}/_ext/1998265194/uart_recv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_recv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_recv.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_recv.o ../../../../../comm/dspic/uart/uart_recv.c    
	
${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o: ../../../../../comm/dspic/uart/uart_recv_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.ok ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o ../../../../../comm/dspic/uart/uart_recv_nowait.c    
	
${OBJECTDIR}/_ext/1998265194/uart_send.o: ../../../../../comm/dspic/uart/uart_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o.ok ${OBJECTDIR}/_ext/1998265194/uart_send.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_send.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_send.o ../../../../../comm/dspic/uart/uart_send.c    
	
${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o: ../../../../../comm/dspic/uart/uart_send_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.ok ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o ../../../../../comm/dspic/uart/uart_send_nowait.c    
	
${OBJECTDIR}/_ext/1029790925/vt100.o: ../../../../vt100/vt100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029790925" 
	@${RM} ${OBJECTDIR}/_ext/1029790925/vt100.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029790925/vt100.o.ok ${OBJECTDIR}/_ext/1029790925/vt100.o.err 
	@${RM} ${OBJECTDIR}/_ext/1029790925/vt100.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029790925/vt100.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../base/cirbuf" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../rdline" -I"../../../../vt100" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1029790925/vt100.o.d" -o ${OBJECTDIR}/_ext/1029790925/vt100.o ../../../../vt100/vt100.c    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/parse_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/parse_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=512,-L"..",-L".",-Map="${DISTDIR}/test.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/parse_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/parse_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=512,-L"..",-L".",-Map="${DISTDIR}/test.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/parse_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
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
