#!/bin/bash

# Set the path to the current working directory
CURRENT_DIR="$(pwd)"

# Set the path to the live-build directory
LIVE_BUILD_DIR="$CURRENT_DIR/live-build"

# Install essential packages
sudo apt-get update
sudo apt-get install -y live-build

# Remove existing live-build directory
rm -rf "$LIVE_BUILD_DIR"

# Recreate live-build directory
mkdir -p "$LIVE_BUILD_DIR"

# Change to live-build directory
cd "$LIVE_BUILD_DIR"

# Initialize live-build configuration
lb config --mode debian

# Set architecture to amd64 (adjust if needed)
echo "ARCHITECTURES=\"amd64\"" >> auto/config

# Build the chroot environment
sudo lb chroot

# Exit the chroot environment
sudo lb chroot -- purge

# Build the live system
lb build
