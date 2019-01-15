#!/bin/bash

# create an empty image 
dd if=/dev/zero of=system_new.img bs=4k count=600
# partition it as an ext4 disk
mkfs.ext4 -F system_new.img

# call the mount script to mount it 
./mount
