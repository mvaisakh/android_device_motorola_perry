# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
	rild.libargs=-d /dev/smd0 \
	persist.rild.nitz_plmn= \
	persist.rild.nitz_long_ons_0= \
	persist.rild.nitz_long_ons_1= \
	persist.rild.nitz_long_ons_2= \
	persist.rild.nitz_long_ons_3= \
	persist.rild.nitz_short_ons_0= \
	persist.rild.nitz_short_ons_1= \
	persist.rild.nitz_short_ons_2= \
	persist.rild.nitz_short_ons_3= \
	ril.subscription.types=NV,RUIM \
	DEVICE_PROVISIONED=1

PRODUCT_PROPERTY_OVERRIDES += \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	persist.hwc.mdpcomp.enable=true \
	debug.mdpcomp.logs=0 \
	dalvik.vm.heapsize=36m \
	dev.pm.dyn_samplingrate=1 \
	persist.demo.hdmirotationlock=false \
	debug.enable.sglscale=1

PRODUCT_PROPERTY_OVERRIDES += \
	persist.speaker.prot.enable=false \
	qcom.hw.aac.encoder=true

PRODUCT_PROPERTY_OVERRIDES += \
	persist.cne.feature=1

# system props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
	media.msm8956hw=0 \
	mm.enable.smoothstreaming=true \
	mmp.enable.3g2=true \
	media.aac_51_output_enabled=true \
	mm.enable.qcom_parser=1048575

# system prop for UBWC
PRODUCT_PROPERTY_OVERRIDES += \
	video.disable.ubwc=1

# system prop to disable split mode
PRODUCT_PROPERTY_OVERRIDES += \
	vidc.disable.split.mode=1

# system property to accelerate Progressive Download using STA
PRODUCT_PROPERTY_OVERRIDES += \
	persist.mm.sta.enable=0

#Audio voice concurrency related flags
PRODUCT_PROPERTY_OVERRIDES += \
	voice.playback.conc.disabled=true \
	voice.record.conc.disabled=false \
	voice.voip.conc.disabled=true \
	voice.conc.fallbackpath=deep-buffer

#parser input buffer size(256kb) in byte stream mode
PRODUCT_PROPERTY_OVERRIDES += \
	audio.parser.ip.buffer.size=262144


# system props for the data modules
PRODUCT_PROPERTY_OVERRIDES += \
	ro.use_data_netmgrd=true \
	persist.data.netmgrd.qos.enable=true \
	persist.data.mode=concurrent 

#system props for time-services
PRODUCT_PROPERTY_OVERRIDES += \
	persist.timed.enable=true

# System property for cabl
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0

#
# System props for telephony
# System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=1
#
# System props for bluetooh
# System prop to turn on hfp client
PRODUCT_PROPERTY_OVERRIDES += \
	bluetooth.hfp.client=1

#Simulate sdcard on /data/media
PRODUCT_PROPERTY_OVERRIDES += \
	persist.fuse_sdcard=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qc.sdk.audio.ssr=false \
	ro.qc.sdk.audio.fluencetype=none \
	persist.audio.fluence.voicecall=true \
	persist.audio.fluence.voicerec=false \
	persist.audio.fluence.speaker=true \
	tunnel.audio.encode = false \
	audio.offload.buffer.size.kb=64 \
	audio.offload.min.duration.secs=30 \
	audio.offload.video=true \
	audio.offload.pcm.16bit.enable=true \
	audio.offload.pcm.24bit.enable=true \
	audio.offload.track.enable=true \
	audio.deep_buffer.media=true \
	audio.playback.mch.downsample=true \
	audio.offload.gapless.enabled=true \
	audio.offload.multiple.enabled=false \
	use.qti.sw.alac.decoder=true \
	use.qti.sw.ape.decoder=true \
	audio.safx.pbe.enabled=true \
	audio.pp.asphere.enabled=false \
	audio.dolby.ds2.enabled=true


#disable voice path for PCM VoIP by default
PRODUCT_PROPERTY_OVERRIDES += \
	use.voice.path.for.pcm.voip=false
	ro.config.vc_call_vol_steps=8

#
#System property for FM transmitter
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.fm.transmitter=false

PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.max_starting_bg=8

PRODUCT_PROPERTY_OVERRIDES += \
	persist.hwc.enable_vds=1

PRODUCT_PROPERTY_OVERRIDES += \
	persist.debug.coresight.config=stm-events

#property for vendor specific library
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.at_library=libqti-at.so \
	ro.vendor.gt_library=libqti-gt.so

#property for game detection feature
PRODUCT_PROPERTY_OVERRIDES += \
	debug.enable.gamed=0

PRODUCT_PROPERTY_OVERRIDES += \
	vidc.enc.narrow.searchrange=1

#property to enable fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
	persist.qfp=false


#min/max cpu in core control
PRODUCT_PROPERTY_OVERRIDES += \
	ro.core_ctl_min_cpu=2 \
	ro.core_ctl_max_cpu=4

#HWUI properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=72 \
	ro.hwui.layer_cache_size=48 \
	ro.hwui.r_buffer_cache_size=8 \
	ro.hwui.path_cache_size=32 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=6 \
	ro.hwui.texture_cache_flushrate=0.4 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=2048 \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.bservice_enable=true \
	ro.sys.fw.bservice_limit=5 \
	ro.sys.fw.bservice_age=5000

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.use_trim_settings=true \
	ro.sys.fw.empty_app_percent=50 \
	ro.sys.fw.trim_empty_percent=100 \
	ro.sys.fw.trim_cache_percent=100 \
	ro.sys.fw.trim_enable_memory=2147483648

# Enable Delay Service Restart
PRODUCT_PROPERTY_OVERRIDES += \
	ro.am.reschedule_service=true

#Optimal dex2oat threads for faster app installation
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.dex2oat_thread_count=4

# Create zram disk
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.zram=true

# Create Swap disk, if below sys-prop enabled & also if device has lower (< 1 GB) RAM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.swap=true

# set cutoff voltage to 3200mV
PRODUCT_PROPERTY_OVERRIDES += \
	ro.cutoff_voltage_mv=3200

#set device emmc size
PRODUCT_PROPERTY_OVERRIDES += \
	ro.emmc_size=16GB

#force HAL1 for below packages
PRODUCT_PROPERTY_OVERRIDES += \
	camera.hal1.packagelist=com.skype.raider,com.google.android.talk

#properties for limiting preview size in camera
PRODUCT_PROPERTY_OVERRIDES += \
	camera.display.umax=1920x1080
	camera.display.lmax=1280x720

#set cutoff voltage to 3400mV
PRODUCT_PROPERTY_OVERRIDES += \
	ro.cutoff_voltage_mv=3400
