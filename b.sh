#!/bin/bash

# Clone Buildroot repository
git clone https://github.com/buildroot/buildroot.git 
ls
# Navigate to buildroot directory
cd buildroot
ls
# Set the configuration file
CONFIG_FILE="qemu_x86_64_x11_defconfig(1).txt"

cd ..
mv qemu_x86_64_x11_defconfig.txt ../buildroot
# Load the configuration
cd buildroot
ls
make qemu_x86_64_x11_defconfig.txt

# Build the Linux distribution
make

# The generated output will be in output/images/
