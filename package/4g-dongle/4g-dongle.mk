################################################################################
#
# 4G-dongle
#
################################################################################

4G_DONGLE_LICENSE = GPL-3.0+

define 4G_DONGLE_INSTALL_TARGET_CMDS
	$(INSTALL) -m +rx -D $(4G_DONGLE_PKGDIR)/4g-dongle $(TARGET_DIR)/etc/init.d/4g-dongle
	ln --symbolic --relative $(TARGET_DIR)/etc/{init.d,runlevels/default}/4g-dongle

	$(INSTALL) -m +r -D $(4G_DONGLE_PKGDIR)/4g-conf/hostapd.conf $(TARGET_DIR)/etc/
	$(INSTALL) -m +r -D $(4G_DONGLE_PKGDIR)/4g-conf/dnsmasq.conf $(TARGET_DIR)/etc/
	$(INSTALL) -m +r -D $(4G_DONGLE_PKGDIR)/4g-conf/nginx.conf $(TARGET_DIR)/etc/nginx
endef

$(eval $(generic-package))
