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
SOURCEFILES_QUOTED_IF_SPACED=../main.c ../../../../../base/cirbuf/cirbuf_get_tail.c ../../../../../base/cirbuf/cirbuf.c ../../../../../base/cirbuf/cirbuf_add_buf_head.c ../../../../../base/cirbuf/cirbuf_add_buf_tail.c ../../../../../base/cirbuf/cirbuf_add_head.c ../../../../../base/cirbuf/cirbuf_add_tail.c ../../../../../base/cirbuf/cirbuf_align.c ../../../../../base/cirbuf/cirbuf_del_buf_head.c ../../../../../base/cirbuf/cirbuf_del_buf_tail.c ../../../../../base/cirbuf/cirbuf_del_head.c ../../../../../base/cirbuf/cirbuf_del_tail.c ../../../../../base/cirbuf/cirbuf_get_buf_head.c ../../../../../base/cirbuf/cirbuf_get_buf_tail.c ../../../../../base/cirbuf/cirbuf_get_head.c ../../../../../debug/error/error.c ../../../../../hardware/dspic/oscillator/oscillator.c ../../spi.c ../../../uart/uart_setconf.c ../../../uart/uart.c ../../../uart/uart_dev_io.c ../../../uart/uart_recv.c ../../../uart/uart_recv_nowait.c ../../../uart/uart_send.c ../../../uart/uart_send_nowait.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o ${OBJECTDIR}/_ext/1684952899/error.o ${OBJECTDIR}/_ext/721348212/oscillator.o ${OBJECTDIR}/_ext/43898991/spi.o ${OBJECTDIR}/_ext/32752413/uart_setconf.o ${OBJECTDIR}/_ext/32752413/uart.o ${OBJECTDIR}/_ext/32752413/uart_dev_io.o ${OBJECTDIR}/_ext/32752413/uart_recv.o ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o ${OBJECTDIR}/_ext/32752413/uart_send.o ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d ${OBJECTDIR}/_ext/1684952899/error.o.d ${OBJECTDIR}/_ext/721348212/oscillator.o.d ${OBJECTDIR}/_ext/43898991/spi.o.d ${OBJECTDIR}/_ext/32752413/uart_setconf.o.d ${OBJECTDIR}/_ext/32752413/uart.o.d ${OBJECTDIR}/_ext/32752413/uart_dev_io.o.d ${OBJECTDIR}/_ext/32752413/uart_recv.o.d ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.d ${OBJECTDIR}/_ext/32752413/uart_send.o.d ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o ${OBJECTDIR}/_ext/1684952899/error.o ${OBJECTDIR}/_ext/721348212/oscillator.o ${OBJECTDIR}/_ext/43898991/spi.o ${OBJECTDIR}/_ext/32752413/uart_setconf.o ${OBJECTDIR}/_ext/32752413/uart.o ${OBJECTDIR}/_ext/32752413/uart_dev_io.o ${OBJECTDIR}/_ext/32752413/uart_recv.o ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o ${OBJECTDIR}/_ext/32752413/uart_send.o ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o

# Source Files
SOURCEFILES=../main.c ../../../../../base/cirbuf/cirbuf_get_tail.c ../../../../../base/cirbuf/cirbuf.c ../../../../../base/cirbuf/cirbuf_add_buf_head.c ../../../../../base/cirbuf/cirbuf_add_buf_tail.c ../../../../../base/cirbuf/cirbuf_add_head.c ../../../../../base/cirbuf/cirbuf_add_tail.c ../../../../../base/cirbuf/cirbuf_align.c ../../../../../base/cirbuf/cirbuf_del_buf_head.c ../../../../../base/cirbuf/cirbuf_del_buf_tail.c ../../../../../base/cirbuf/cirbuf_del_head.c ../../../../../base/cirbuf/cirbuf_del_tail.c ../../../../../base/cirbuf/cirbuf_get_buf_head.c ../../../../../base/cirbuf/cirbuf_get_buf_tail.c ../../../../../base/cirbuf/cirbuf_get_head.c ../../../../../debug/error/error.c ../../../../../hardware/dspic/oscillator/oscillator.c ../../spi.c ../../../uart/uart_setconf.c ../../../uart/uart.c ../../../uart/uart_dev_io.c ../../../uart/uart_recv.c ../../../uart/uart_recv_nowait.c ../../../uart/uart_send.c ../../../uart/uart_send_nowait.c


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
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o: ../../../../../base/cirbuf/cirbuf_get_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o ../../../../../base/cirbuf/cirbuf_get_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf.o: ../../../../../base/cirbuf/cirbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf.o ../../../../../base/cirbuf/cirbuf.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o: ../../../../../base/cirbuf/cirbuf_add_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o ../../../../../base/cirbuf/cirbuf_add_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o: ../../../../../base/cirbuf/cirbuf_add_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o ../../../../../base/cirbuf/cirbuf_add_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o: ../../../../../base/cirbuf/cirbuf_add_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o ../../../../../base/cirbuf/cirbuf_add_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o: ../../../../../base/cirbuf/cirbuf_add_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o ../../../../../base/cirbuf/cirbuf_add_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_align.o: ../../../../../base/cirbuf/cirbuf_align.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o ../../../../../base/cirbuf/cirbuf_align.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o: ../../../../../base/cirbuf/cirbuf_del_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o ../../../../../base/cirbuf/cirbuf_del_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o: ../../../../../base/cirbuf/cirbuf_del_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o ../../../../../base/cirbuf/cirbuf_del_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o: ../../../../../base/cirbuf/cirbuf_del_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o ../../../../../base/cirbuf/cirbuf_del_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o: ../../../../../base/cirbuf/cirbuf_del_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o ../../../../../base/cirbuf/cirbuf_del_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o: ../../../../../base/cirbuf/cirbuf_get_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o ../../../../../base/cirbuf/cirbuf_get_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o: ../../../../../base/cirbuf/cirbuf_get_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o ../../../../../base/cirbuf/cirbuf_get_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o: ../../../../../base/cirbuf/cirbuf_get_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o ../../../../../base/cirbuf/cirbuf_get_head.c    
	
${OBJECTDIR}/_ext/1684952899/error.o: ../../../../../debug/error/error.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1684952899" 
	@${RM} ${OBJECTDIR}/_ext/1684952899/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684952899/error.o.ok ${OBJECTDIR}/_ext/1684952899/error.o.err 
	@${RM} ${OBJECTDIR}/_ext/1684952899/error.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1684952899/error.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1684952899/error.o.d" -o ${OBJECTDIR}/_ext/1684952899/error.o ../../../../../debug/error/error.c    
	
${OBJECTDIR}/_ext/721348212/oscillator.o: ../../../../../hardware/dspic/oscillator/oscillator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/721348212" 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.d 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.ok ${OBJECTDIR}/_ext/721348212/oscillator.o.err 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/721348212/oscillator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/721348212/oscillator.o.d" -o ${OBJECTDIR}/_ext/721348212/oscillator.o ../../../../../hardware/dspic/oscillator/oscillator.c    
	
${OBJECTDIR}/_ext/43898991/spi.o: ../../spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/spi.o.ok ${OBJECTDIR}/_ext/43898991/spi.o.err 
	@${RM} ${OBJECTDIR}/_ext/43898991/spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/43898991/spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/43898991/spi.o.d" -o ${OBJECTDIR}/_ext/43898991/spi.o ../../spi.c    
	
${OBJECTDIR}/_ext/32752413/uart_setconf.o: ../../../uart/uart_setconf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_setconf.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_setconf.o.ok ${OBJECTDIR}/_ext/32752413/uart_setconf.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_setconf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_setconf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_setconf.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_setconf.o ../../../uart/uart_setconf.c    
	
${OBJECTDIR}/_ext/32752413/uart.o: ../../../uart/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart.o.ok ${OBJECTDIR}/_ext/32752413/uart.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart.o.d" -o ${OBJECTDIR}/_ext/32752413/uart.o ../../../uart/uart.c    
	
${OBJECTDIR}/_ext/32752413/uart_dev_io.o: ../../../uart/uart_dev_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_dev_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_dev_io.o.ok ${OBJECTDIR}/_ext/32752413/uart_dev_io.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_dev_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_dev_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_dev_io.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_dev_io.o ../../../uart/uart_dev_io.c    
	
${OBJECTDIR}/_ext/32752413/uart_recv.o: ../../../uart/uart_recv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv.o.ok ${OBJECTDIR}/_ext/32752413/uart_recv.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_recv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_recv.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_recv.o ../../../uart/uart_recv.c    
	
${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o: ../../../uart/uart_recv_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.ok ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o ../../../uart/uart_recv_nowait.c    
	
${OBJECTDIR}/_ext/32752413/uart_send.o: ../../../uart/uart_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send.o.ok ${OBJECTDIR}/_ext/32752413/uart_send.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_send.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_send.o ../../../uart/uart_send.c    
	
${OBJECTDIR}/_ext/32752413/uart_send_nowait.o: ../../../uart/uart_send_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.ok ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o ../../../uart/uart_send_nowait.c    
	
else
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.ok ${OBJECTDIR}/_ext/1472/main.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o: ../../../../../base/cirbuf/cirbuf_get_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_tail.o ../../../../../base/cirbuf/cirbuf_get_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf.o: ../../../../../base/cirbuf/cirbuf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf.o ../../../../../base/cirbuf/cirbuf.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o: ../../../../../base/cirbuf/cirbuf_add_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_head.o ../../../../../base/cirbuf/cirbuf_add_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o: ../../../../../base/cirbuf/cirbuf_add_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_buf_tail.o ../../../../../base/cirbuf/cirbuf_add_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o: ../../../../../base/cirbuf/cirbuf_add_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_head.o ../../../../../base/cirbuf/cirbuf_add_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o: ../../../../../base/cirbuf/cirbuf_add_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_add_tail.o ../../../../../base/cirbuf/cirbuf_add_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_align.o: ../../../../../base/cirbuf/cirbuf_align.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_align.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_align.o ../../../../../base/cirbuf/cirbuf_align.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o: ../../../../../base/cirbuf/cirbuf_del_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_head.o ../../../../../base/cirbuf/cirbuf_del_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o: ../../../../../base/cirbuf/cirbuf_del_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_buf_tail.o ../../../../../base/cirbuf/cirbuf_del_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o: ../../../../../base/cirbuf/cirbuf_del_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_head.o ../../../../../base/cirbuf/cirbuf_del_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o: ../../../../../base/cirbuf/cirbuf_del_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_del_tail.o ../../../../../base/cirbuf/cirbuf_del_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o: ../../../../../base/cirbuf/cirbuf_get_buf_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_head.o ../../../../../base/cirbuf/cirbuf_get_buf_head.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o: ../../../../../base/cirbuf/cirbuf_get_buf_tail.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_buf_tail.o ../../../../../base/cirbuf/cirbuf_get_buf_tail.c    
	
${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o: ../../../../../base/cirbuf/cirbuf_get_head.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1045283690" 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.ok ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.err 
	@${RM} ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o.d" -o ${OBJECTDIR}/_ext/1045283690/cirbuf_get_head.o ../../../../../base/cirbuf/cirbuf_get_head.c    
	
${OBJECTDIR}/_ext/1684952899/error.o: ../../../../../debug/error/error.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1684952899" 
	@${RM} ${OBJECTDIR}/_ext/1684952899/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684952899/error.o.ok ${OBJECTDIR}/_ext/1684952899/error.o.err 
	@${RM} ${OBJECTDIR}/_ext/1684952899/error.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1684952899/error.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/1684952899/error.o.d" -o ${OBJECTDIR}/_ext/1684952899/error.o ../../../../../debug/error/error.c    
	
${OBJECTDIR}/_ext/721348212/oscillator.o: ../../../../../hardware/dspic/oscillator/oscillator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/721348212" 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.d 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o.ok ${OBJECTDIR}/_ext/721348212/oscillator.o.err 
	@${RM} ${OBJECTDIR}/_ext/721348212/oscillator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/721348212/oscillator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/721348212/oscillator.o.d" -o ${OBJECTDIR}/_ext/721348212/oscillator.o ../../../../../hardware/dspic/oscillator/oscillator.c    
	
${OBJECTDIR}/_ext/43898991/spi.o: ../../spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/spi.o.ok ${OBJECTDIR}/_ext/43898991/spi.o.err 
	@${RM} ${OBJECTDIR}/_ext/43898991/spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/43898991/spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/43898991/spi.o.d" -o ${OBJECTDIR}/_ext/43898991/spi.o ../../spi.c    
	
${OBJECTDIR}/_ext/32752413/uart_setconf.o: ../../../uart/uart_setconf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_setconf.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_setconf.o.ok ${OBJECTDIR}/_ext/32752413/uart_setconf.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_setconf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_setconf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_setconf.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_setconf.o ../../../uart/uart_setconf.c    
	
${OBJECTDIR}/_ext/32752413/uart.o: ../../../uart/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart.o.ok ${OBJECTDIR}/_ext/32752413/uart.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart.o.d" -o ${OBJECTDIR}/_ext/32752413/uart.o ../../../uart/uart.c    
	
${OBJECTDIR}/_ext/32752413/uart_dev_io.o: ../../../uart/uart_dev_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_dev_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_dev_io.o.ok ${OBJECTDIR}/_ext/32752413/uart_dev_io.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_dev_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_dev_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_dev_io.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_dev_io.o ../../../uart/uart_dev_io.c    
	
${OBJECTDIR}/_ext/32752413/uart_recv.o: ../../../uart/uart_recv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv.o.ok ${OBJECTDIR}/_ext/32752413/uart_recv.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_recv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_recv.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_recv.o ../../../uart/uart_recv.c    
	
${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o: ../../../uart/uart_recv_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.ok ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_recv_nowait.o ../../../uart/uart_recv_nowait.c    
	
${OBJECTDIR}/_ext/32752413/uart_send.o: ../../../uart/uart_send.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send.o.ok ${OBJECTDIR}/_ext/32752413/uart_send.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_send.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_send.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_send.o ../../../uart/uart_send.c    
	
${OBJECTDIR}/_ext/32752413/uart_send_nowait.o: ../../../uart/uart_send_nowait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/32752413" 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.d 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.ok ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.err 
	@${RM} ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../.." -I"../../../../../../include" -I"../../../../../../include/aversive" -I"../../../../../../include/aversive/dspic" -I"../../../../../../modules/base/cirbuf" -I"../../../../../../modules/comm/dspic/spi" -I"../../../../../../modules/comm/dspic/uart" -I"../../../../../../modules/debug" -I"../../../../../../modules/debug/error" -I"../../../../../../modules/hardware/dspic/oscillator" -I"../../../../../debug/error" -I"../../../../../hardware/dspic/oscillator" -I"../../../uart" -I"." -MMD -MF "${OBJECTDIR}/_ext/32752413/uart_send_nowait.o.d" -o ${OBJECTDIR}/_ext/32752413/uart_send_nowait.o ../../../uart/uart_send_nowait.c    
	
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
