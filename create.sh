#!/bin/bash

kernelDir=/home/development/Desktop/Raspberry/kernel/linux
targetDir=/tftpboot/rootfs/home/pi

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- all KDIR=$kernelDir

if [ $? -eq 0 ]
then
echo "Copy kernel modules to the target rootfs"
cp *.ko $targetDir
else
echo "Error occured during make"
exit 1
fi

echo "************ SUCCESSFULL ************"
exit 0
