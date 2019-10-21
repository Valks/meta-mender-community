require recipes-bsp/u-boot/u-boot-clearfog-mender.inc

SRC_URI += "file://console.conf"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

MENDER_UBOOT_AUTO_CONFIGURE = "0"