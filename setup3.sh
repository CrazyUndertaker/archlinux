#!/usr/bin/bash

HOSTNAME="docker"

echo $0

# set -x

echo "Set TZ information to Europe/Berlin"
ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

echo "Enable ntp drift"
hwclock --systohc

echo "generate local files"
locale-gen

echo "set system language to en_US"
echo "LANG=en_US.UTF8" >> /etc/locale.conf

echo "set keyboard layout to german-german"
echo "KEYMAP=de-latin1" >> /etc/vconsole.conf

echo "set hostname to ${HOSTNAME}"
echo "${HOSTNAME}" >> /etc/hostname

echo "enable RAMFS with cpio"
mkinitcpio -P

echo "Now setup the root password"
echo "please use \"passwd\" to set a new root password"

# EOF
