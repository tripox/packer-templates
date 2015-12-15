#!/bin/bash

# Bail if we are not running inside VMWare.
if [[ `facter virtual` != "vmware" ]]; then
    exit 0
fi

# Install the VMWare Tools from a linux ISO.

mkdir -p /mnt/vmware
mount -o loop /home/vagrant/linux.iso /mnt/vmware

cd /tmp
tar xzf /mnt/vmware/VMwareTools-*.tar.gz

umount /mnt/vmware
rm -fr /home/vagrant/linux.iso

echo 'yes' | /tmp/vmware-tools-distrib/vmware-install.pl -d
rm -fr /tmp/vmware-tools-distrib
