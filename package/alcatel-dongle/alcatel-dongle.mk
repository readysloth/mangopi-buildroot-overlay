################################################################################
#
# alcatel-dongle
#
################################################################################

ALCATEL_DONGLE_LICENSE = GPL-3.0+

define ALCATEL_DONGLE_INSTALL_TARGET_CMDS
	$(INSTALL) -m +rx -D $(ALCATEL_DONGLE_PKGDIR)/alcatel-dongle $(TARGET_DIR)/etc/init.d/alcatel-dongle
	ln --symbolic --relative $(TARGET_DIR)/etc/{init.d,runlevels/default}/alcatel-dongle

	$(INSTALL) -m +r -D $(ALCATEL_DONGLE_PKGDIR)/alcatel-conf/hostapd.conf $(TARGET_DIR)/etc/
	$(INSTALL) -m +r -D $(ALCATEL_DONGLE_PKGDIR)/alcatel-conf/dnsmasq.conf $(TARGET_DIR)/etc/
	$(INSTALL) -m +r -D $(ALCATEL_DONGLE_PKGDIR)/alcatel-conf/nginx.conf $(TARGET_DIR)/etc/nginx
endef

$(eval $(generic-package))
