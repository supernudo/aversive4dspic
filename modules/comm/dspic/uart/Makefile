TARGET = uart

# List C source files here. (C dependencies are automatically generated.)
ifeq ($(HOST),avr)
SRC  = uart_setconf.c uart_dev_io.c
SRC += uart_private.c uart_events.c
SRC += uart.c

SRC += uart_send.c uart_send_nowait.c
SRC += uart_recv.c uart_recv_nowait.c
else
SRC = uart_host.c uart_events.c
endif

include $(AVERSIVE_DIR)/mk/aversive_module.mk
