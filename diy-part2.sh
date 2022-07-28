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
#sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

# Diy
sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root::0:0:99999:7:::/g' ./package/lean/default-settings/files/zzz-default-settings
sed -i '/(<%=pcdata(ver.luciversion)%>)/a\      built by ywt114' ./package/lean/autocore/files/x86/index.htm

cd package/lean
git clone https://github.com/fw876/helloworld
git clone https://github.com/vernesong/OpenClash
git clone https://github.com/xiaorouji/openwrt-passwall
git clone https://github.com/kenzok8/openwrt-packages
mv openwrt-packages/luci-app-passwall/ ./openwrt-passwall/
mv openwrt-packages/luci-app-eqos/ ./
mv openwrt-packages/luci-app-store/ ./
mv openwrt-packages/luci-lib-taskd/ ./
mv openwrt-packages/luci-lib-xterm/ ./
mv openwrt-packages/taskd/ ./
rm -rf openwrt-packages/
git clone https://github.com/nickilchen/luci-app-socat
git clone https://github.com/sbwml/luci-app-alist
git clone https://github.com/yuwentao114/luci-app-gpsysupgrade
git clone https://github.com/jefferymvp/luci-app-koolproxyR
git clone https://github.com/esirplayground/luci-app-poweroff
