#!/usr/bin/bash

DISK="/dev/sda"

echo $0

# set -x

echo "load keyboard layout"
loadkeys de-latin1

echo "set terminal font"
setfont ter-132b

echo "show network connection"
ip link

echo "show network address"
ip addr

echo "Ping ArchLinux"
ping -c 5 ping archlinux.org

echo "check ntp time sync"
timedatectl

echo "check disk partions"
fdisk -l ${DISK}

echo "use \"cfdisk ${DISK}\" to repartion the disk"

echo "BIOS boot partions"
echo "${DISK}1 PRIM ID:4  BIOS | FAT <32m (for boot via BIOS) +16M"
echo "${DISK}2 PRIM ID:82 Linux Swap +32G"
echo "${DISK}3 PRIM ID:83 Linux <all>"

echo "UEFI boot partions"
echo "${DISK}1 PRIM ID:ef UEFI boot +1G"
echo "${DISK}2 PRIM ID:82 Linux Swap +32G"
echo "${DISK}3 PRIM ID:83 Linux <all>"

# EOF
