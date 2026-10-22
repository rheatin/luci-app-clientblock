include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-clientblock
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=rheatin

LUCI_TITLE:=LuCI app for client access control
LUCI_DEPENDS:=+luci-base +rpcd +nftables +firewall4 +coreutils +coreutils-sleep +bash
LUCI_PKGARCH:=all

define Package/luci-app-clientblock/conffiles
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
$(eval $(call BuildPackage,luci-app-clientblock))
