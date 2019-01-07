#/bin/bash

cp ext4Host/*  ../linux/fs/ext4
cd ../linux/
make -j12
sudo make modules_install -j12
sudo make install -j12

# reboot the system
sudo reboot

