#/bin/bash

# copy the source kernel 
cp host/ext4/  ../linux/fs/ext4 -r
cp host/jbd2/  ../linux/fs/jbd2 -r

# build the kernel
cd ../linux/
make -j12
sudo make modules_install -j12
sudo make install -j12

# reboot the system
sudo reboot

