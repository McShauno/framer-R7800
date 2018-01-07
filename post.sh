#!/bin/bash

logline "Updating OpenWrt feeds."
${REPOSITORY_TARGET}/scripts/feeds update -a

logline "Changing permissions on set_cpu_affinit script..."
chmod -v +x ${REPOSITORY_TARGET}/files/etc/init.d/set_cpu_affinity
