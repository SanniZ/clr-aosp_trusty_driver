#
# Makefile for trusty components
#

obj-$(CONFIG_TRUSTY)		+= trusty.o
obj-$(CONFIG_TRUSTY)		+= trusty-irq.o
obj-$(CONFIG_TRUSTY_FIQ)	+= trusty-fiq.o
obj-$(CONFIG_TRUSTY_FIQ_ARM)	+= trusty-fiq-arm.o
obj-$(CONFIG_TRUSTY_FIQ_ARM64)	+= trusty-fiq-arm64.o trusty-fiq-arm64-glue.o
obj-$(CONFIG_TRUSTY_LOG)	+= trusty-log.o
obj-$(CONFIG_TRUSTY)		+= trusty-mem.o
obj-$(CONFIG_TRUSTY_VIRTIO)	+= trusty-virtio.o
obj-$(CONFIG_TRUSTY_VIRTIO_IPC)	+= trusty-ipc.o
obj-$(CONFIG_TRUSTY)		+= trusty-wall.o
obj-$(CONFIG_TRUSTY_BACKUP_TIMER) += trusty-timer.o


ifdef CONFIG_RETPOLINE
CFLAGS_trusty.o				+= $(RETPOLINE_CFLAGS)
CFLAGS_trusty-virtio.o		+= $(RETPOLINE_CFLAGS)
CFLAGS_trusty-ipc.o			+= $(RETPOLINE_CFLAGS)
endif
