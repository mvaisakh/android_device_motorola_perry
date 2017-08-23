$(call inherit-product, device/motorola/perry/device_props.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skuh.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skuhf.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skum.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skum.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_qrd_skun.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skun.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_skuk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9306.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9326.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9306.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Audio packages
PRODUCT_PACKAGES += \
    audio.primary.msm8937 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Camera Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/imx219_chromatix.xml :$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx219_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_l5695fa0_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_ov5695_l5695fa0_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/msm8917_mot_perry_camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/msm8917_mot_perry_camera.xml \
    $(LOCAL_PATH)/configs/camera/s5k4h8_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4h8_chromatix.xml

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl

# Camera
PRODUCT_PACKAGES += \
    camera.msm8937 \
    libbson \
    Snap \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8937 \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    hwcomposer.msm8937 \
    memtrack.msm8937 \
    libgenlock \
    libtinyxml

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    gps.msm8937

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \

# Lights
PRODUCT_PACKAGES += \
    lights.msm8937 \
    android.hardware.light@2.0-impl

# LineageActions
PRODUCT_PACKAGES += \
    LineageActions

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/AVRCP.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/configs/keylayout/ft5x06_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/configs/keylayout/qpnp_pon.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/qpnp_pon.kl \
    $(LOCAL_PATH)/configs/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/configs/keylayout/synaptics_rmi4_i2c.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-egis.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-egis.kl \

## IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/AVRCP.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/AVRCP.idc \
    $(LOCAL_PATH)/configs/idc/uinput-egis.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-egis.idc

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_8956.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_8956.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml\
    $(LOCAL_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_8956.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_8956.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Panel Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/panel/qdcm_calib_data_mipi_mot_video_ofilm_720p_499.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_mipi_mot_video_ofilm_720p_499.xml \
    $(LOCAL_PATH)/configs/panel/qdcm_calib_data_mipi_mot_video_tianma_720p_499.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_mipi_mot_video_tianma_720p_499.xml

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.fm.sh \
    wlan_carrier_bin.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mmi.boot.sh \
    init.mmi.laser.sh \
    init.mmi.rc \
    init.mmi.usb.rc \
    init.qcom.rc \
    ueventd.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-perry.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# WiFi
PRODUCT_COPY_FILES += \
    kernel/motorola/msm8937/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/wifi/hostapd_default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/hostapd_default.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# WiFi HAL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wificond \
    tcpdump \
    wcnss_service

# Inherit vendor
$(call inherit-product, vendor/motorola/perry/perry-vendor.mk)
