obj-m += naviDev.o
naviDev-objs := naviDev_driver.o crc.o header.o

PWD := $(shell pwd)
all:
	make -C $(KDIR) M=$(PWD) clean
	reset
	make -C $(KDIR) M=$(PWD) modules
clean:
	make -C $(KDIR) M=$(PWD) clean
