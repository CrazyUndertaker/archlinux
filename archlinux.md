# SmartHome

## Linux Server

### Archlinux

Download installation image for Archlinux [ISO](https://archlinux.org/download) (~1.2 GB 2026-11-11) and write it with [Rufus](https://rufus.io/en/) as a lightweight Windows utility for writing ISO images to USB drives to an USB stick.

### Create USB stick

1. Download ISO image

1. Write ISO image to USB Stick

```bash
loadkeys de-latin1
```

```bash
setfont ter-132b
```

```bash
ip link
```

```bash
ip addr
```

```bash
ping -c 5 ping.archlinux.org
```

```bash
mkfs.ext4 /dev/sda1
mkswap    /dev/sda2
```

```bash
mount /dev/sda1 /mnt
swapon /dev/sda2
```

### install linux system

With this command a small arch linux system will be installed

```bash
pactrap -K /mnt base base-development linux linux-firware nano vim git less
```

```bash
arch-chroot /mnt
```

```shell
pacman -S --noconfirm docker
```

1. Boot from USB stick

    1. Put USB Stick into slot
    1. xxx

1. xxxx

1. yyyy

1. zzzzz

## Docker

## MQTT Brocker

## Homeassist

## Hardware

### Shelly

- Shelly Plug S Gen3
- Shelly 1 PM Gen4
- Shelly 1 Gen4
- Shelly 1 PM mini Gen4
- Shelly 2 PM Gen4
- Shelly Plug 4 Gen4

### AVM

- Fritz!Box 7590
- Fritz!Box 7590 AX
- Fritz!Repeater 1200 AX
- Fritz!Repeater 1800
- Fritz!DECT 201
- Fritz!DECT 200
- Fritz!DECT 400

### Sonoff

- Test
