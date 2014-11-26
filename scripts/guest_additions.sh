#!/bin/bash

# Must specify the KERN_DIR env var, otherwise the VBox installer won't find them
export KERN_DIR=/usr/src/kernels/`uname -r`

mkdir -p /mnt/virtualbox
mount -o loop /tmp/VBoxGuestAdditions.iso /mnt/virtualbox
/mnt/virtualbox/VBoxLinuxAdditions.run --nox11
umount /mnt/virtualbox

reboot
sleep 60
