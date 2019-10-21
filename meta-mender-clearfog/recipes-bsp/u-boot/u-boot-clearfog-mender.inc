BOOTENV_SIZE = "0x2000"

FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

SRC_URI += "file://0001-Mender-integration-patches.patch"

SRC_URI_remove = "file://0003-Integration-of-Mender-boot-code-into-U-Boot.patch"

COMPATIBLE_MACHINE = "^clearfog(-gtr-(s4|l8))?$"