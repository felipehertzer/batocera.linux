################################################################################
#
# uboot files for rock-4c-plus
#
################################################################################

UBOOT_ROCK_4C_PLUS_VERSION = 1.0
UBOOT_ROCK_4C_PLUS_SOURCE =

define UBOOT_ROCK_4C_PLUS_BUILD_CMDS
endef

define UBOOT_ROCK_4C_PLUS_INSTALL_TARGET_CMDS
	mkdir -p $(BINARIES_DIR)/uboot-rock-4c-plus
	cp $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/boot/uboot-rock-4c-plus/idbloader.img $(BINARIES_DIR)/uboot-rock-4c-plus/idbloader.img
	cp $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/boot/uboot-rock-4c-plus/u-boot.itb $(BINARIES_DIR)/uboot-rock-4c-plus/u-boot.itb
endef

$(eval $(generic-package))