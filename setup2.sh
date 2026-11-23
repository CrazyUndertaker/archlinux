#!/usr/bin/bash

ROOT="/dev/sda3"
GRUB="/dev/sda1"
SWAP="/dev/sda2"

echo $0

# set -x

echo "current disk layout"
fdisk -l

echo "create filesystem for BIOS/GRUB boot partion (${GRUB##*/})"
mkfs.fat  -F 16 ${GRUB}

echo "create swap partion (${SWAP##*/})"
mkswap    -f    ${SWAP}

echo "create ext4 filesystem for / (${ROOT##*/})"
mkfs.ext4 -F ${ROOT}

echo "Mount ${ROOT##*/} to /mnt"
mount ${ROOT} /mnt

echo "Mount ${GRUB##*/} to /mnt/boot"
mount --mkdir ${GRUB} /mnt/boot

echo "Activate swap on ${SWAP##*/}"
swapon ${SWAP}

echo "Install ArchLinux (base, linux, linux-firmware, nano, vim)"
pacstrap -K /mnt base linux linux-firmware nano vim

echo "generate fstab"
genfstab -U /mnt >> /mnt/etc/fstab

echo "now do manual chroot environment"
echo "arch-chroot -S /mnt"

# EOF
