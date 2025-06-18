# GXP logging service
PRODUCT_PACKAGES += \
	android.hardware.gxp.logging@service-gxp-logging
# GXP metrics logger library
PRODUCT_PACKAGES += \
	gxp_metrics_logger
# GXP C-API library
PRODUCT_PACKAGES += libgxp

BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/gxp/sepolicy
