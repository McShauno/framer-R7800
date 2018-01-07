#!/bin/bash

logline "Updating OpenWrt feeds..."
${REPOSITORY_TARGET}/scripts/feeds update -i

logline "Installing packages..."
${REPOSITORY_TARGET}/scripts/feeds install -a

logline "Finalizing config..."
cp --verbose ${REPOSITORY_TARGET}/.config.init ${REPOSITORY_TARGET}/.config

logline "Making defconfig..."
make -C ${REPOSITORY_TARGET} defconfig

logline "Making download..."
make -C ${REPOSITORY_TARGET} download

