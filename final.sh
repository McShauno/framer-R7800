#!/bin/bash

logline "Updating OpenWrt feeds..."
${repository_target}/scripts/feeds update -i

logline "Installing packages..."
${repository_target}/scripts/feeds install -a

logline "Finalizing config..."
cp --verbose ${repository_target}/.config.init ${repository_target}/.config

logline "Making defconfig..."
make -C ${repository_target} defconfig

logline "Making download..."
make -C ${repository_target} download

