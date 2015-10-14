#!/bin/sh

wget kernel.ubuntu.com/~kernel-ppa/mainline/v3.16-rc4-utopic/linux-headers-3.16.0-031600rc4_3.16.0-031600rc4.201407061635_all.deb

wget kernel.ubuntu.com/~kernel-ppa/mainline/v3.16-rc4-utopic/linux-headers-3.16.0-031600rc4_3.16.0-031600rc4.201407061635_all.deb

wget kernel.ubuntu.com/~kernel-ppa/mainline/v3.16-rc4-utopic/linux-image-3.16.0-031600rc4-generic_3.16.0-031600rc4.201407061635_amd64.deb

sudo dpkg -i linux-headers-3.16*.deb linux-image-3.16*.deb


echo "remember to reboot your system~\n"
#sudo reboot
