PRODUCT_PACKAGES += \
  sscoredump \

# When neither AOSP nor factory targets
ifeq (,$(filter aosp_% factory_% lineage_%, $(TARGET_PRODUCT)))
  PRODUCT_PACKAGES += SSRestartDetector
endif

BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/ramdump_and_coredump/sepolicy

# sscoredump
PRODUCT_PROPERTY_OVERRIDES += vendor.debug.ssrdump.type=sscoredump
