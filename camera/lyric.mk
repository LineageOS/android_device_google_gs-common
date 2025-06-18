PRODUCT_SOONG_NAMESPACES += \
    hardware/google/camera

$(call soong_config_set,lyric,use_lyric_camera_hal,true)
$(call soong_config_set,google3a_config,gcam_awb,true)
$(call soong_config_set,google3a_config,ghawb_truetone,true)

# Flag controls whether Lyric apex can be located in the dist-directory.
$(call soong_config_set, lyric, dist_lyric_apex, $(RELEASE_PIXEL_DIST_LYRIC_APEX))

# Init-time log settings for Google 3A
PRODUCT_PACKAGES += libg3a_standalone_gabc_rc
PRODUCT_PACKAGES += libg3a_standalone_gaf_rc
PRODUCT_PACKAGES += libg3a_standalone_ghawb_rc

# Vendor APEX which contains the camera HAL
PRODUCT_PACKAGES += com.google.pixel.camera.hal
PRODUCT_PACKAGES += venodr-apex-allowlist-lyric.xml
PRODUCT_PACKAGES += init.camera.set-interrupts-ownership
PRODUCT_PACKAGES += lyric_preview_dis_xml

DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += \
    device/google/gs-common/camera/device_framework_matrix_product.xml

DEVICE_MATRIX_FILE += \
    device/google/gs-common/camera/compatibility_matrix.xml

# sepolicy dir is added in dump.mk.
# Make doesn't deduplicate sepolicy dirs, so including it here causes build errors.
