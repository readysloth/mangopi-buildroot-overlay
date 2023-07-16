################################################################################
#
# datetime-restore
#
################################################################################

DATETIME_RESTORE_LICENSE = GPL-3.0+

define DATETIME_RESTORE_INSTALL_TARGET_CMDS
	install -m +x -D $(@D)/datetime-restore $(TARGET_DIR)/etc/init.d/datetime-restore
	ln --symbolic --relative $(TARGET_DIR)/etc/{init.d,runlevels/default}/datetime-restore
endef

$(eval $(generic-package))
