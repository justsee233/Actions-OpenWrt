#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

#openwrt开启wifi-20211226
#sed -i 's/set wireless.radio${devidx}.disabled=1/set wireless.radio${devidx}.disabled=0/' /package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 只编译K3固件
#sed -i 's|^TARGET_|# TARGET_|g; s|# TARGET_DEVICES += phicomm-k3|TARGET_DEVICES += phicomm-k3| ; s|# TARGET_DEVICES += phicomm_k3|TARGET_DEVICES += phicomm_k3|' target/linux/bcm53xx/image/Makefile

# 只编译AX5固件
#sed -i 's|^TARGET_DEVICES|# TARGET_DEVICES|g; s|# TARGET_DEVICES += xiaomi_redmi-ax5-jdcloud|TARGET_DEVICES += xiaomi_redmi-ax5-jdcloud|' target/linux/ipq60xx/image/Makefile

sed -i 's|^TARGET_DEVICES|# TARGET_DEVICES|g; s|# TARGET_DEVICES += qihoo_v6|TARGET_DEVICES += qihoo_v6|' target/linux/ipq60xx/image/Makefile
