setenv bootm_boot_mode sec
setenv bootargs console=tty1,115200 root=/dev/mmcblk0p2 rootwait panic=10
load mmc 0:1 0x43000000 script.bin || load mmc 0:1 0x43000000 boot/script.bin
load mmc 0:1 0x42000000 uImage || load mmc 0:1 0x42000000 boot/uImage
bootm 0x42000000
