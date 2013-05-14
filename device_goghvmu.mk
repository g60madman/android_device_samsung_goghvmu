$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/goghvmu/goghvmu-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/goghvmu/overlay
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

LOCAL_PATH := device/samsung/goghvmu

$(call inherit-product, build/target/product/full.mk)

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_NAME := full_goghvmu
PRODUCT_DEVICE := goghvmu
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SPH-L300

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Charger
PRODUCT_PACKAGES += charger \
	charger_res_images

# QRNGD
PRODUCT_PACKAGES += \
	qrngd \
	qrngdtest

#bluetooth
PRODUCT_PACKAGES += \
	hciconfig \
	hcitool
	
# Samsung camera
PRODUCT_PACKAGES += \
	libexifa \
	libjpega
	
# hardware/libhardware/modules/usbaudio
PRODUCT_PACKAGES += \
    audio.usb.default
    
# external/bluetooth/bluez/audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

# NFC package	
PRODUCT_PACKAGES += \
	nfc.msm8960 \
	libnfc \
	libnfc_jni \
	Nfc \
	Tag \
	com.android.nfc_extras
	
# hardware/qcom/audio/alsa_sound
PRODUCT_PACKAGES += \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
    audio_policy.conf


# hardware/qcom/display
PRODUCT_PACKAGES += \
	copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    libnativehelper \
    liboverlay \
    libqdutils \
    libtilerenderer \
    lights.msm8960
   
# hardware/qcom/audio/libalsa-intf
PRODUCT_PACKAGES += \
	libalsa-intf \
	snd_soc_msm_2x
	
# hardware/qcom/gps
PRODUCT_PACKAGES += \
	gps.$(BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE)

# hardware/ril
#PRODUCT_PACKAGES += \
#	rild
	
# hardware/qcom/media/mm-audio
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc

# hardware/qcom/media
PRODUCT_PACKAGES += \
	libstagefrighthw \
	libI420colorconvert

# frameworks/native/opengl
PRODUCT_PACKAGES += \
	egl.cfg \
	libGLES_android \
	libETC1 \
	libGLESv1_CM \
	libGLESv2 \
	libEGL
	
# hardware/libhardware
PRODUCT_PACKAGES += \
	audio.primary.default \
	audio_policy.stub \
	libhardware
	
# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    setup_fs

#misc
PRODUCT_PACKAGES += \
	tcpdump \
	Torch
	    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory
    
# NFCEE access control
PRODUCT_COPY_FILES += $(LOCAL_PATH)/config/nfcee_access.xml:system/etc/nfcee_access.xml

#audio
#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/config/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x
	

# keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
	$(LOCAL_PATH)/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
	$(LOCAL_PATH)/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
	$(LOCAL_PATH)/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
	$(LOCAL_PATH)/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
	$(LOCAL_PATH)/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
	$(LOCAL_PATH)/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
	$(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
	$(LOCAL_PATH)/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

#scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/scripts/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/scripts/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
	$(LOCAL_PATH)/scripts/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	$(LOCAL_PATH)/scripts/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	$(LOCAL_PATH)/scripts/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/scripts/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	$(LOCAL_PATH)/scripts/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	$(LOCAL_PATH)/scripts/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	$(LOCAL_PATH)/scripts/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
	$(LOCAL_PATH)/scripts/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
	$(LOCAL_PATH)/scripts/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
	$(LOCAL_PATH)/scripts/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh

#init
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/default.prop:root/default.prop \
	$(LOCAL_PATH)/root/fstab.qcom:root/fstab.qcom \
	$(LOCAL_PATH)/root/init:root/init \
	$(LOCAL_PATH)/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	$(LOCAL_PATH)/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	$(LOCAL_PATH)/root/init.qcom.rc:root/init.qcom.rc \
	$(LOCAL_PATH)/root/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
	$(LOCAL_PATH)/root/init.rc:root/init.rc \
	$(LOCAL_PATH)/root/init.target.rc:root/init.target.rc \
	$(LOCAL_PATH)/root/initlogo.rle:root/initlogo.rle \
	$(LOCAL_PATH)/root/ueventd.qcom.rc:root/ueventd.qcom.rc
	
#config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \


PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/modules/prima/cfg80211.ko:system/lib/modules/prima/cfg80211.ko \
	$(LOCAL_PATH)/modules/prima/prima_wlan.ko:system/lib/modules/prima/prima_wlan.ko

# Needed to reset bootmode when leaving recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/icu/icudt48l.dat:system/usr/icu/icudt48l.dat
			
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
