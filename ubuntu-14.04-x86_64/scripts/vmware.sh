#!/bin/bash

# Bail if we are not running inside VMWare.
if [[ `facter virtual` != "vmware" ]]; then
    exit 0
fi

# Install the VMWare Tools from a linux ISO.

mkdir -p /mnt/vmware
mount -o loop /home/vagrant/linux.iso /mnt/vmware
git clone https://github.com/rasa/vmware-tools-patches.git
cd vmware-tools-patches
cp /mnt/vmware/VMwareTools-*.tar.gz .

./untar-and-patch.sh
./compile.sh

rm -rf vmware-tools-patches
umount /mnt/vmware
