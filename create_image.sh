#!/bin/bash

# create an empty image 
dd if=/dev/zero of=system_new.img bs=4k count=600
# partition it as an ext4 disk
mkfs.ext4 -F system_new.img

# create mount point for our fs
sudo mkdir /mnt/ext4
# mount the ext4 in all data journal mode
sudo mount system_new.img /mnt/ext4 -o data=journal
