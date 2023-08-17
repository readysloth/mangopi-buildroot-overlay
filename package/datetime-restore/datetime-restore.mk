################################################################################
#
# datetime-restore
#
################################################################################

DATETIME_RESTORE_LICENSE = GPL-3.0+

define DATETIME_RESTORE_INSTALL_TARGET_CMDS
	$(INSTALL) -m +rx -D $(DATETIME_RESTORE_PKGDIR)/datetime-restore $(TARGET_DIR)/etc/init.d/datetime-restore
	ln --symbolic --relative $(TARGET_DIR)/etc/{init.d,runlevels/default}/datetime-restore
endef

$(eval $(generic-package))
