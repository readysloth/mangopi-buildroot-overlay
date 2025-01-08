################################################################################
#
# gitea-docker
#
################################################################################

GITEA_DOCKER_LICENSE = GPL-3.0+

define GITEA_DOCKER_INSTALL_TARGET_CMDS
	$(INSTALL) -m u+rx -D \
		-t $(TARGET_DIR)/docker/gitea/ \
		$(GITEA_DOCKER_PKGDIR)/gitea-docker-conf/*.sh
	$(INSTALL) -m +r -D \
		-t $(TARGET_DIR)/docker/gitea/ \
		$(GITEA_DOCKER_PKGDIR)/gitea-docker-conf/*.yml

	$(INSTALL) -m +rx -D \
		-t $(TARGET_DIR)/usr/local/bin/ \
		$(GITEA_DOCKER_PKGDIR)/gitea-docker-conf/gitea
endef

$(eval $(generic-package))
