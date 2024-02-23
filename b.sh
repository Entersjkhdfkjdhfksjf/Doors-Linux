#!/bin/bash
PWD=$(PWD)

# Clone Buildroot repository
git clone https://github.com/buildroot/buildroot.git 

# Navigate to buildroot directory
cd buildroot

# Set the configuration file
CONFIG_FILE="qemu_x86_64_x11_defconfig(1).txt"

cd ..
mv qemu_x86_64_x11_defconfig.txt ../buildroot
# Load the configuration
cd buildroot
make qemu_x86_64_x11_defconfig.txt

# Build the Linux distribution
make

# The generated output will be in output/images/
