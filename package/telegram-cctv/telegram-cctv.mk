################################################################################
#
# telegram-cctv
#
################################################################################

TELEGRAM_CCTV_LICENSE = GPL-3.0+
TELEGRAM_CCTV_VERSION = master
TELEGRAM_CCTV_SITE_ = git@github.com:readysloth/telegram-cctv.git
TELEGRAM_CCTV_SITE_METHOD = git
TELEGRAM_CCTV_CONFIGURE_OPTS = CFLAGS='$(TARGET_CFLAGS) -DTG_BOT_TOKEN="\"*TOKEN_FROM_BOTFATHER*\"" -DTG_CHANNEL="\"*CHANNEL_ID_OR_NAME*\""'

define TELEGRAM_CCTV_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define TELEGRAM_CCTV_INSTALL_TARGET_CMDS
endef

$(eval $(generic-package))
