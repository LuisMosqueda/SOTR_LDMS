#!/bin/bash

sudo /sbin/losetup /dev/loop1 floppy.img
sudo mount -v /dev/loop1 /mnt/floppy
sudo cp -v src/kernel /mnt/floppy/kernel
sudo cp -v initrd.img /mnt/floppy/initrd
sudo umount -v /dev/loop1
sudo /sbin/losetup -d /dev/loop1
