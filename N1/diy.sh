#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.10.251/g' package/base-files/files/bin/config_generate

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
#git clone https://github.com/xiaorouji/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/nantayo/My-Pkg package/my-pkg
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic

# Update packages
#rm -rf feeds/luci/applications/luci-app-passwall
#cp -rf clone/amlogic/luci-app-amlogic clone/passwall/luci-app-passwall feeds/luci/applications/

# Clean packages
rm -rf clone
