#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, vendor/huawei/HWPLK/HWPLK-vendor.mk)

PRODUCT_PACKAGE_OVERLAYS += \
	device/huawei/HWPLK/overlay

DEVICE_PACKAGE_OVERLAYS += \
	device/huawei/HWPLK/overlay

# CAMERA
PRODUCT_PACKAGES += \
	Camera2 \
	Snap

# LibShim
PRODUCT_PACKAGES += \
	libshim \
    libshim_icu \
    libshim_other_camera \
    libhw_log \
    libshim_log \
    libshim_algo \
    libshim_hwui \
    libshim_gpsd \

#GPS
PRODUCT_PACKAGES += \
	libtinyxml

#Bluetooth Missing xml files after build
#That's probably not the propper way to do it!
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Thermal engine
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/thermald.xml:system/etc/thermald.xml \
    $(LOCAL_PATH)/prebuilts/thermald_performance.xml:system/etc/thermald_performance.xml

# PERMISSIONS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/prebuilts/permissions/android.hardware.huawei.xml:system/etc/permissions/android.hardware.huawei.xml 

# MEDIA
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_dts_audio.xml:system/etc/media_codecs_dts_audio.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/prebuilts/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml
#    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# HARDWARE
PRODUCT_PACKAGES += \
	lights.hi3635 \
	power.hi3635

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/clatd.conf:system/etc/clatd.conf \
    $(LOCAL_PATH)/prebuilts/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/prebuilts/gpsconfig.xml:system/etc/gpsconfig.xml \
    $(LOCAL_PATH)/prebuilts/gpsconfig_beta.xml:system/etc/gpsconfig_beta.xml \
    $(LOCAL_PATH)/prebuilts/gps47531config_cl.xml:system/etc/gps47531config_cl.xml \
    $(LOCAL_PATH)/prebuilts/gps47531config_cl_beta.xml:system/etc/gps47531config_cl_beta.xml \
    $(LOCAL_PATH)/prebuilts/gps47531config.xml:system/etc/gps47531config.xml

# AUDIO
PRODUCT_PACKAGES += \
	audio.primary.default \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudioutils \
	libaudioroute \
	libtinyalsa \
	tinyplay \
	tinycap \
	tinymix \
	tinypcminfo

# FM RADIO
PRODUCT_PACKAGES += \
	FMRadio

# GELLO
PRODUCT_PACKAGES += \
	Gello

#?
PRODUCT_PACKAGES += \
	flp.default

# WIFI
PRODUCT_PACKAGES += \
	libwpa_client \
	wpa_supplicant \
	hostapd \
	wificond \
	wifilogd

# HWC
PRODUCT_PACKAGES += \
	hwcomposer.hi3635

# RAMDISK
PRODUCT_PACKAGES += \
	init.hi3635.power.sh

BOOT_RAMDISK_SRC = $(LOCAL_PATH)/rootdir
BOOT_RAMDISK_DST = root
PRODUCT_COPY_FILES += \
$(BOOT_RAMDISK_SRC)/fstab.hi3635:$(BOOT_RAMDISK_DST)/fstab.hi3635 \
$(BOOT_RAMDISK_SRC)/etc/custom.init.mods.rc:$(BOOT_RAMDISK_DST)/custom.init.mods.rc \
$(BOOT_RAMDISK_SRC)/etc/custom.init.usb.rc:$(BOOT_RAMDISK_DST)/custom.init.usb.rc \
$(BOOT_RAMDISK_SRC)/etc/init.hi3635.rc:$(BOOT_RAMDISK_DST)/init.hi3635.rc \
$(BOOT_RAMDISK_SRC)/etc/init.recovery.hi3635.rc:$(BOOT_RAMDISK_DST)/init.recovery.hi3635.rc \
$(BOOT_RAMDISK_SRC)/etc/init.recovery.usb.rc:$(BOOT_RAMDISK_DST)/init.recovery.usb.rc \
$(BOOT_RAMDISK_SRC)/etc/ueventd.hi3635.rc:$(BOOT_RAMDISK_DST)/ueventd.hi3635.rc \
$(BOOT_RAMDISK_SRC)/etc/init.hi3635.power.rc:$(BOOT_RAMDISK_DST)/init.hi3635.power.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.audio.rc:$(BOOT_RAMDISK_DST)/vendor.init.audio.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.balong_modem.rc:$(BOOT_RAMDISK_DST)/vendor.init.balong_modem.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.connectivity.bcm4339.rc:$(BOOT_RAMDISK_DST)/vendor.init.connectivity.bcm4339.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.connectivity.gps.rc:$(BOOT_RAMDISK_DST)/vendor.init.connectivity.gps.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.connectivity.rc:$(BOOT_RAMDISK_DST)/vendor.init.connectivity.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.device.rc:$(BOOT_RAMDISK_DST)/vendor.init.device.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.extmodem.rc:$(BOOT_RAMDISK_DST)/vendor.init.extmodem.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.hi3635.rc:$(BOOT_RAMDISK_DST)/vendor.init.hi3635.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.hisi.rc:$(BOOT_RAMDISK_DST)/vendor.init.hisi.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.manufacture.rc:$(BOOT_RAMDISK_DST)/vendor.init.manufacture.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.platform.rc:$(BOOT_RAMDISK_DST)/vendor.init.platform.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.post-fs-data.rc:$(BOOT_RAMDISK_DST)/vendor.init.post-fs-data.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.tee.rc:$(BOOT_RAMDISK_DST)/vendor.init.tee.rc \
$(BOOT_RAMDISK_SRC)/etc/vendor.init.5844.rc:$(BOOT_RAMDISK_DST)/vendor.init.5844.rc \
$(BOOT_RAMDISK_SRC)/sbin/teecd:$(BOOT_RAMDISK_DST)/sbin/teecd \
$(BOOT_RAMDISK_SRC)/sbin/e2fsck_s:$(BOOT_RAMDISK_DST)/sbin/e2fsck_s \
$(BOOT_RAMDISK_SRC)/sbin/emmc_partation:$(BOOT_RAMDISK_DST)/sbin/emmc_partation \
$(BOOT_RAMDISK_SRC)/sbin/hdbd:$(BOOT_RAMDISK_DST)/sbin/hdbd \
$(BOOT_RAMDISK_SRC)/sbin/kmsgcat:$(BOOT_RAMDISK_DST)/sbin/kmsgcat \
$(BOOT_RAMDISK_SRC)/sbin/logctl_service:$(BOOT_RAMDISK_DST)/sbin/logctl_service \
$(BOOT_RAMDISK_SRC)/sbin/ntfs-3gd:$(BOOT_RAMDISK_DST)/sbin/ntfs-3gd \
$(BOOT_RAMDISK_SRC)/sbin/oeminfo_nvm_server:$(BOOT_RAMDISK_DST)/sbin/oeminfo_nvm_server \
$(BOOT_RAMDISK_SRC)/sbin/hw_ueventd:$(BOOT_RAMDISK_DST)/sbin/hw_ueventd \
$(BOOT_RAMDISK_SRC)/sbin/volisnotd:$(BOOT_RAMDISK_DST)/sbin/volisnotd \
$(BOOT_RAMDISK_SRC)/sbin/check_root:$(BOOT_RAMDISK_DST)/sbin/check_root

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.config.hw_perfhub=true \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.build.selinux=0 \
	ro.debuggable=1 \
	ro.allow.mock.location=1 \
	persist.sys.root_access=3 \
	ro.zygote=zygote64_32 \
	persist.logd.logpersistd=logcatd \
	sys.init_log_level=3

# DALVIK AND MEMORY
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
