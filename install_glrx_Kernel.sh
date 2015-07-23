#!/bin/sh
echo "Remove!!!!!!!!!!!!!\n"
sudo apt-get remove --purge fglrx fglrx-amdcccle fglrx-core fglrx-dev



sudo apt-get install dkms lib32gcc1 libc6-i386
echo "\nDowloading!!!!!!!!!!!!!!!!!\n"
cd /tmp
pwd
wget --referer="http://support.amd.com/en-us/download/desktop?os=Ubuntu%20x86%2064" http://www2.ati.com/drivers/linux/fglrx_14.501-0ubuntu1_amd64_UB_14.01.deb
wget --referer="http://support.amd.com/en-us/download/desktop?os=Ubuntu%20x86%2064" http://www2.ati.com/drivers/linux/fglrx-core_14.501-0ubuntu1_amd64_UB_14.01.deb
wget --referer="http://support.amd.com/en-us/download/desktop?os=Ubuntu%20x86%2064" http://www2.ati.com/drivers/linux/fglrx-dev_14.501-0ubuntu1_amd64_UB_14.01.deb
wget --referer="http://support.amd.com/en-us/download/desktop?os=Ubuntu%20x86%2064" http://www2.ati.com/drivers/linux/fglrx-amdcccle_14.501-0ubuntu1_amd64_UB_14.01.deb 


echo "\nIntalling..............\n"
sudo dpkg -i fglrx*
sudo aticonfig --initial

#ecgo "Reboot!!!!!!!!!!!!!!"
#sudo reboot


sudo fglrxinfo
