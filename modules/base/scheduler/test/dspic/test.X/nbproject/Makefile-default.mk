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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../main.c ../../../../cirbuf/cirbuf_get_tail.c ../../../../cirbuf/cirbuf.c ../../../../cirbuf/cirbuf_add_buf_head.c ../../../../cirbuf/cirbuf_add_buf_tail.c ../../../../cirbuf/cirbuf_add_head.c ../../../../cirbuf/cirbuf_add_tail.c ../../../../cirbuf/cirbuf_align.c ../../../../cirbuf/cirbuf_del_buf_head.c ../../../../cirbuf/cirbuf_del_buf_tail.c ../../../../cirbuf/cirbuf_del_head.c ../../../../cirbuf/cirbuf_del_tail.c ../../../../cirbuf/cirbuf_get_buf_head.c ../../../../cirbuf/cirbuf_get_buf_tail.c ../../../../cirbuf/cirbuf_get_head.c ../../../../../hardware/dspic/oscillator/oscillator.c ../../../scheduler.c ../../../scheduler_add.c ../../../scheduler_del.c ../../../scheduler_dump.c ../../../scheduler_interrupt.c ../../../../time/time.c ../../../../../comm/dspic/uart/uart_setconf.c ../../../../../comm/dspic/uart/uart.c ../../../../../comm/dspic/uart/uart_dev_io.c ../../../../../comm/dspic/uart/uart_recv.c ../../../../../comm/dspic/uart/uart_recv_nowait.c ../../../../../comm/dspic/uart/uart_send.c ../../../../../comm/dspic/uart/uart_send_nowait.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf.o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o ${OBJECTDIR}/_ext/721348212/oscillator.o ${OBJECTDIR}/_ext/2124829536/scheduler.o ${OBJECTDIR}/_ext/2124829536/scheduler_add.o ${OBJECTDIR}/_ext/2124829536/scheduler_del.o ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o ${OBJECTDIR}/_ext/659449357/time.o ${OBJECTDIR}/_ext/1998265194/uart_setconf.o ${OBJECTDIR}/_ext/1998265194/uart.o ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o ${OBJECTDIR}/_ext/1998265194/uart_recv.o ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o ${OBJECTDIR}/_ext/1998265194/uart_send.o ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.d ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.d ${OBJECTDIR}/_ext/721348212/oscillator.o.d ${OBJECTDIR}/_ext/2124829536/scheduler.o.d ${OBJECTDIR}/_ext/2124829536/scheduler_add.o.d ${OBJECTDIR}/_ext/2124829536/scheduler_del.o.d ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.d ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.d ${OBJECTDIR}/_ext/659449357/time.o.d ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d ${OBJECTDIR}/_ext/1998265194/uart.o.d ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d ${OBJECTDIR}/_ext/1998265194/uart_recv.o.d ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d ${OBJECTDIR}/_ext/1998265194/uart_send.o.d ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf.o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o ${OBJECTDIR}/_ext/721348212/oscillator.o ${OBJECTDIR}/_ext/2124829536/scheduler.o ${OBJECTDIR}/_ext/2124829536/scheduler_add.o ${OBJECTDIR}/_ext/2124829536/scheduler_del.o ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o ${OBJECTDIR}/_ext/659449357/time.o ${OBJECTDIR}/_ext/1998265194/uart_setconf.o ${OBJECTDIR}/_ext/1998265194/uart.o ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o ${OBJECTDIR}/_ext/1998265194/uart_recv.o ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o ${OBJECTDIR}/_ext/1998265194/uart_send.o ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o

# Source Files
SOURCEFILES=../main.c ../../../../cirbuf/cirbuf_get_tail.c ../../../../cirbuf/cirbuf.c ../../../../cirbuf/cirbuf_add_buf_head.c ../../../../cirbuf/cirbuf_add_buf_tail.c ../../../../cirbuf/cirbuf_add_head.c ../../../../cirbuf/cirbuf_add_tail.c ../../../../cirbuf/cirbuf_align.c ../../../../cirbuf/cirbuf_del_buf_head.c ../../../../cirbuf/cirbuf_del_buf_tail.c ../../../../cirbuf/cirbuf_del_head.c ../../../../cirbuf/cirbuf_del_tail.c ../../../../cirbuf/cirbuf_get_buf_head.c ../../../../cirbuf/cirbuf_get_buf_tail.c ../../../../cirbuf/cirbuf_get_head.c ../../../../../hardware/dspic/oscillator/oscillator.c ../../../scheduler.c ../../../scheduler_add.c ../../../scheduler_del.c ../../../scheduler_dump.c ../../../scheduler_interrupt.c ../../../../time/time.c ../../../../../comm/dspic/uart/uart_setconf.c ../../../../../comm/dspic/uart/uart.c ../../../../../comm/dspic/uart/uart_dev_io.c ../../../../../comm/dspic/uart/uart_recv.c ../../../../../comm/dspic/uart/uart_recv_nowait.c ../../../../../comm/dspic/uart/uart_send.c ../../../../../comm/dspic/uart/uart_send_nowait.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP512MU814
MP_LINKER_FILE_OPTION=,-Tp33EP512MU814.gld
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
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o: ../../../../cirbuf/cirbuf_get_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o ../../../../cirbuf/cirbuf_get_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf.o: ../../../../cirbuf/cirbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf.o ../../../../cirbuf/cirbuf.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o: ../../../../cirbuf/cirbuf_add_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o ../../../../cirbuf/cirbuf_add_buf_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o: ../../../../cirbuf/cirbuf_add_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o ../../../../cirbuf/cirbuf_add_buf_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o: ../../../../cirbuf/cirbuf_add_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o ../../../../cirbuf/cirbuf_add_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o: ../../../../cirbuf/cirbuf_add_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o ../../../../cirbuf/cirbuf_add_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_align.o: ../../../../cirbuf/cirbuf_align.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o ../../../../cirbuf/cirbuf_align.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o: ../../../../cirbuf/cirbuf_del_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o ../../../../cirbuf/cirbuf_del_buf_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o: ../../../../cirbuf/cirbuf_del_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o ../../../../cirbuf/cirbuf_del_buf_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o: ../../../../cirbuf/cirbuf_del_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o ../../../../cirbuf/cirbuf_del_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o: ../../../../cirbuf/cirbuf_del_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o ../../../../cirbuf/cirbuf_del_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o: ../../../../cirbuf/cirbuf_get_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o ../../../../cirbuf/cirbuf_get_buf_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o: ../../../../cirbuf/cirbuf_get_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o ../../../../cirbuf/cirbuf_get_buf_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o: ../../../../cirbuf/cirbuf_get_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o ../../../../cirbuf/cirbuf_get_head.c    
	
${OBJECTDIR}/_ext/721348212/oscillator.o: ../../../../../hardware/dspic/oscillator/oscillator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/721348212" 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.d 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.ok ${OBJECTDIR}/_ext/721348212/oscillator.o.err 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/721348212/oscillator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/721348212/oscillator.o.d" -o ${OBJECTDIR}/_ext/721348212/oscillator.o ../../../../../hardware/dspic/oscillator/oscillator.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler.o: ../../../scheduler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler.o ../../../scheduler.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler_add.o: ../../../scheduler_add.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_add.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_add.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler_add.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_add.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler_add.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler_add.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler_add.o ../../../scheduler_add.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler_del.o: ../../../scheduler_del.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_del.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_del.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler_del.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_del.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler_del.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler_del.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler_del.o ../../../scheduler_del.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler_dump.o: ../../../scheduler_dump.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o ../../../scheduler_dump.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o: ../../../scheduler_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o ../../../scheduler_interrupt.c    
	
${OBJECTDIR}/_ext/659449357/time.o: ../../../../time/time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659449357" 
	@${RM} ${OBJECTDIR}/_ext/659449357/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/659449357/time.o.ok ${OBJECTDIR}/_ext/659449357/time.o.err 
	@${RM} ${OBJECTDIR}/_ext/659449357/time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659449357/time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/659449357/time.o.d" -o ${OBJECTDIR}/_ext/659449357/time.o ../../../../time/time.c    
	
${OBJECTDIR}/_ext/1998265194/uart_setconf.o: ../../../../../comm/dspic/uart/uart_setconf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.ok ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_setconf.o ../../../../../comm/dspic/uart/uart_setconf.c    
	
${OBJECTDIR}/_ext/1998265194/uart.o: ../../../../../comm/dspic/uart/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o.ok ${OBJECTDIR}/_ext/1998265194/uart.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart.o ../../../../../comm/dspic/uart/uart.c    
	
${OBJECTDIR}/_ext/1998265194/uart_dev_io.o: ../../../../../comm/dspic/uart/uart_dev_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.ok ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o ../../../../../comm/dspic/uart/uart_dev_io.c    
	
${OBJECTDIR}/_ext/1998265194/uart_recv.o: ../../../../../comm/dspic/uart/uart_recv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o.ok ${OBJECTDIR}/_ext/1998265194/uart_recv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_recv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_recv.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_recv.o ../../../../../comm/dspic/uart/uart_recv.c    
	
${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o: ../../../../../comm/dspic/uart/uart_recv_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.ok ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o ../../../../../comm/dspic/uart/uart_recv_nowait.c    
	
${OBJECTDIR}/_ext/1998265194/uart_send.o: ../../../../../comm/dspic/uart/uart_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o.ok ${OBJECTDIR}/_ext/1998265194/uart_send.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_send.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_send.o ../../../../../comm/dspic/uart/uart_send.c    
	
${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o: ../../../../../comm/dspic/uart/uart_send_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.ok ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o ../../../../../comm/dspic/uart/uart_send_nowait.c    
	
else
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o: ../../../../cirbuf/cirbuf_get_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_tail.o ../../../../cirbuf/cirbuf_get_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf.o: ../../../../cirbuf/cirbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf.o ../../../../cirbuf/cirbuf.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o: ../../../../cirbuf/cirbuf_add_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_head.o ../../../../cirbuf/cirbuf_add_buf_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o: ../../../../cirbuf/cirbuf_add_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_buf_tail.o ../../../../cirbuf/cirbuf_add_buf_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o: ../../../../cirbuf/cirbuf_add_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_head.o ../../../../cirbuf/cirbuf_add_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o: ../../../../cirbuf/cirbuf_add_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_add_tail.o ../../../../cirbuf/cirbuf_add_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_align.o: ../../../../cirbuf/cirbuf_align.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_align.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_align.o ../../../../cirbuf/cirbuf_align.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o: ../../../../cirbuf/cirbuf_del_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_head.o ../../../../cirbuf/cirbuf_del_buf_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o: ../../../../cirbuf/cirbuf_del_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_buf_tail.o ../../../../cirbuf/cirbuf_del_buf_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o: ../../../../cirbuf/cirbuf_del_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_head.o ../../../../cirbuf/cirbuf_del_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o: ../../../../cirbuf/cirbuf_del_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_del_tail.o ../../../../cirbuf/cirbuf_del_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o: ../../../../cirbuf/cirbuf_get_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_head.o ../../../../cirbuf/cirbuf_get_buf_head.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o: ../../../../cirbuf/cirbuf_get_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_buf_tail.o ../../../../cirbuf/cirbuf_get_buf_tail.c    
	
${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o: ../../../../cirbuf/cirbuf_get_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884093799" 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.ok ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o.d" -o ${OBJECTDIR}/_ext/1884093799/cirbuf_get_head.o ../../../../cirbuf/cirbuf_get_head.c    
	
${OBJECTDIR}/_ext/721348212/oscillator.o: ../../../../../hardware/dspic/oscillator/oscillator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/721348212" 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.d 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.ok ${OBJECTDIR}/_ext/721348212/oscillator.o.err 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/721348212/oscillator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/721348212/oscillator.o.d" -o ${OBJECTDIR}/_ext/721348212/oscillator.o ../../../../../hardware/dspic/oscillator/oscillator.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler.o: ../../../scheduler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler.o ../../../scheduler.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler_add.o: ../../../scheduler_add.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_add.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_add.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler_add.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_add.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler_add.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler_add.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler_add.o ../../../scheduler_add.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler_del.o: ../../../scheduler_del.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_del.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_del.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler_del.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_del.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler_del.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler_del.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler_del.o ../../../scheduler_del.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler_dump.o: ../../../scheduler_dump.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler_dump.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler_dump.o ../../../scheduler_dump.c    
	
${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o: ../../../scheduler_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.ok ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.err 
	@${RM} ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o.d" -o ${OBJECTDIR}/_ext/2124829536/scheduler_interrupt.o ../../../scheduler_interrupt.c    
	
${OBJECTDIR}/_ext/659449357/time.o: ../../../../time/time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659449357" 
	@${RM} ${OBJECTDIR}/_ext/659449357/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/659449357/time.o.ok ${OBJECTDIR}/_ext/659449357/time.o.err 
	@${RM} ${OBJECTDIR}/_ext/659449357/time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659449357/time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/659449357/time.o.d" -o ${OBJECTDIR}/_ext/659449357/time.o ../../../../time/time.c    
	
${OBJECTDIR}/_ext/1998265194/uart_setconf.o: ../../../../../comm/dspic/uart/uart_setconf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.ok ${OBJECTDIR}/_ext/1998265194/uart_setconf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_setconf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_setconf.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_setconf.o ../../../../../comm/dspic/uart/uart_setconf.c    
	
${OBJECTDIR}/_ext/1998265194/uart.o: ../../../../../comm/dspic/uart/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o.ok ${OBJECTDIR}/_ext/1998265194/uart.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart.o ../../../../../comm/dspic/uart/uart.c    
	
${OBJECTDIR}/_ext/1998265194/uart_dev_io.o: ../../../../../comm/dspic/uart/uart_dev_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.ok ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_dev_io.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_dev_io.o ../../../../../comm/dspic/uart/uart_dev_io.c    
	
${OBJECTDIR}/_ext/1998265194/uart_recv.o: ../../../../../comm/dspic/uart/uart_recv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o.ok ${OBJECTDIR}/_ext/1998265194/uart_recv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_recv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_recv.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_recv.o ../../../../../comm/dspic/uart/uart_recv.c    
	
${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o: ../../../../../comm/dspic/uart/uart_recv_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.ok ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_recv_nowait.o ../../../../../comm/dspic/uart/uart_recv_nowait.c    
	
${OBJECTDIR}/_ext/1998265194/uart_send.o: ../../../../../comm/dspic/uart/uart_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o.ok ${OBJECTDIR}/_ext/1998265194/uart_send.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_send.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_send.o ../../../../../comm/dspic/uart/uart_send.c    
	
${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o: ../../../../../comm/dspic/uart/uart_send_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1998265194" 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.ok ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/base/scheduler" -I"../../../../../../modules/base/time" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../../modules/ihm/parse" -I"../../../../../../modules/ihm/rdline" -I"../../../../../../modules/ihm/vt100" -I"../../../../../comm/dspic/uart" -I"../../../../../hardware/dspic/oscillator" -I"../../../../cirbuf" -I"." -Os -MMD -MF "${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o.d" -o ${OBJECTDIR}/_ext/1998265194/uart_send_nowait.o ../../../../../comm/dspic/uart/uart_send_nowait.c    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=512,-L"..",-L".",-Map="${DISTDIR}/test.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=512,-L"..",-L".",-Map="${DISTDIR}/test.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
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
