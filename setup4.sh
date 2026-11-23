#!/usr/bin/bash

BOOTTYPE="UEFI"
BOOTTYPE="BIOS"

echo $0

# set -x

if "${BOOTTYPE}" == "BIOS"

#    _  ___  _   __ 
#   |_)  |  / \ (_  
#   |_) _|_ \_/ __) 

    echo "go on for BIOS boot preparation"

    echo "install grub"
    pacman -S --noconfigm grub




elif "${BOOTTYPE}" == "UEFI"

#         _  _ ___ 
#    | | |_ |_  |  
#    |_| |_ |  _|_ 
           
    echo "go on for UEFI boot preparation"

    echo "install grub and uefi boot manager"
    pacman -S --noconfirm grub efibootmgr

    echo "UEFI boot is not yet complitly implemented"
    exit 1
else

#   
#        ._  |  ._   _       ._  
#    |_| | | |< | | (_) \/\/ | | 

    echo "variable \"BOOTTYPE\" is not set to BIOS nor UEFI"
    exit 1
fi



# EOF
