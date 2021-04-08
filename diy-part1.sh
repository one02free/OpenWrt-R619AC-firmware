#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/Mattraks/helloworld.git' feeds.conf.default

# Add a feed source
rm -rf package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git /package/lean/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config
#git clone https://github.com/one02free/luci-app-koolproxyR.git package/lean/luci-app-koolproxyR
git clone https://github.com/project-lede/luci-app-godproxy.git package/lean/luci-app-godproxy
git clone https://github.com/linkease/ddnsto-openwrt.git package/network/services/ddnsto-openwrt
