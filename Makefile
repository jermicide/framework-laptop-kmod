ifneq ($(KERNELRELEASE),)
# kbuild part of makefile
obj-m  := framework_laptop.o

else
# normal makefile
KDIR ?= /lib/modules/`uname -r`/build

modules:

install:
 $(MAKE) -C $(KDIR) M=$$PWD modules_install
 depmod -a

%:
 $(MAKE) -C $(KDIR) M=$$PWD $@
endif