FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Add the suitable configuration depending on the boot media.
SRC_URI_append_clearfog = " \
    file://0001-enable-DT-overlays-support.patch \
	file://${BOOT_MEDIA_clearfog}.cfg \
	file://0002-Changes-to-allow-extra-configuration-of-bootcmd.patch \
	"

MENDER_BOOTARGS_APPEND ??= ""
MENDER_BOOTCMD_APPEND ??= ""

do_post_mender_defines() {
	cat >> ${S}/include/config_mender_defines.h <<EOF

/* Appended configuration */
#define MENDER_BOOTARGS_APPEND "${MENDER_BOOTARGS_APPEND}"
#define MENDER_BOOTCMD_APPEND "${MENDER_BOOTCMD_APPEND}"
EOF
}

addtask do_provide_mender_defines after do_provide_mender_defines before do_configure