FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Add the suitable configuration depending on the boot media.
SRC_URI_append_clearfog = " \
    file://0001-enable-DT-overlays-support.patch \
	file://${BOOT_MEDIA_clearfog}.cfg \
	"