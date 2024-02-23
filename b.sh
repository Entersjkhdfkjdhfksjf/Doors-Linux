#!/bin/bash

# Clone Buildroot repository
git clone https://github.com/buildroot/buildroot.git 
ls
# Navigate to buildroot directory
cd buildroot
echo buildrootdir
ls
# Set the configuration file

cd ..
mv qemu_x86_64_x11_defconfig ../buildroot/images
# Load the configuration
cd buildroot
echo makeing
ls
make qemu_x86_64_x11_defconfig

# Build the Linux distribution
make

# The generated output will be in output/images/
