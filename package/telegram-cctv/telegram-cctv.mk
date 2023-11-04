################################################################################
#
# telegram-cctv
#
################################################################################

TELEGRAM_CCTV_LICENSE = GPL-3.0+
TELEGRAM_CCTV_VERSION = 9e37ca0
TELEGRAM_CCTV_SITE = git@github.com:readysloth/telegram-cctv.git
TELEGRAM_CCTV_SITE_METHOD = git
TELEGRAM_CCTV_CONFIGURE_OPTS = CFLAGS='$(TARGET_CFLAGS) -DTG_BOT_TOKEN="\"${TG_CCTV_TOKEN}\"" -DTG_CHANNEL="\"${TG_CCTV_CHANNEL}\""'

define TELEGRAM_CCTV_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) $(TELEGRAM_CCTV_CONFIGURE_OPTS) -C $(@D)
endef

define TELEGRAM_CCTV_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(@D)/tg-cctv $(TARGET_DIR)/usr/bin
	$(INSTALL) -m +rx -D $(TELEGRAM_CCTV_PKGDIR)/telegram-cctv $(TARGET_DIR)/etc/init.d/telegram-cctv
	ln --symbolic --relative $(TARGET_DIR)/etc/{init.d,runlevels/default}/telegram-cctv
endef

$(eval $(generic-package))
