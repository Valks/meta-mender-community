FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Add the suitable configuration depending on the boot media.
SRC_URI_append_clearfog = " \
	file://${BOOT_MEDIA_clearfog}.cfg \
	"

do_provide_clearfog_defines() {
	set -x

	# If Clearfog GTR-L8 the bootloader patch isn't necessary.
	if [ ${MACHINE} = "clearfog-gtr-l8" ]; then
		exit 0
	fi

	# Add bootloader script shell variables
    cat > ${S}/clearfog_uboot_target_Kconfig_fragment <<EOF
CLEARFOG_BOOT_MEDIA="${BOOT_MEDIA_clearfog}"
EOF
}

python() {
    bb.build.addtask('do_provide_clearfog_defines', 'do_configure', 'do_patch', d)
}