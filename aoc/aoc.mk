BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/aoc/sepolicy

PRODUCT_PACKAGES += dump_aoc \
		    aocd \
		    aocxd

# If AoC Daemon is not present on this build, load firmware at boot via rc
PRODUCT_COPY_FILES += \
	device/google/gs-common/aoc/conf/init.aoc.daemon.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.aoc.rc

ifneq ($(wildcard vendor/google/whitechapel/aoc/aocx/aidl/aocx/framework_compatibility_matrix.xml),)
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    vendor/google/whitechapel/aoc/aocx/aidl/aocx/framework_compatibility_matrix.xml
endif
