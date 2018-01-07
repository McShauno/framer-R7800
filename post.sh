#!/bin/bash

logline "Updating OpenWrt feeds."
${repository_target}/scripts/feeds update -a

logline "Changing permissions on set_cpu_affinit script..."
chmod -v +x ${repository_target}/files/etc/init.d/set_cpu_affinity
