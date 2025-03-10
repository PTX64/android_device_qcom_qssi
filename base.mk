# Board platforms lists to be used for
# TARGET_BOARD_PLATFORM specific featurization
QCOM_BOARD_PLATFORMS += msm8974
QCOM_BOARD_PLATFORMS += msm8610
QCOM_BOARD_PLATFORMS += msm8226
QCOM_BOARD_PLATFORMS += apq8084
QCOM_BOARD_PLATFORMS += mpq8092
QCOM_BOARD_PLATFORMS += msm_bronze
QCOM_BOARD_PLATFORMS += msm8916
QCOM_BOARD_PLATFORMS += msm8916_32
QCOM_BOARD_PLATFORMS += msm8916_32_512
QCOM_BOARD_PLATFORMS += msm8916_64
QCOM_BOARD_PLATFORMS += msm8994
QCOM_BOARD_PLATFORMS += msm8909
QCOM_BOARD_PLATFORMS += msm8909_512
QCOM_BOARD_PLATFORMS += msm8992
QCOM_BOARD_PLATFORMS += msm8996
QCOM_BOARD_PLATFORMS += msm8952
QCOM_BOARD_PLATFORMS += msm8937
QCOM_BOARD_PLATFORMS += msm8953
QCOM_BOARD_PLATFORMS += msm8998
QCOM_BOARD_PLATFORMS += apq8098_latv
QCOM_BOARD_PLATFORMS += sdm660
QCOM_BOARD_PLATFORMS += sdm845
QCOM_BOARD_PLATFORMS += msmnile
QCOM_BOARD_PLATFORMS += sdm710
QCOM_BOARD_PLATFORMS += msmnile_au
QCOM_BOARD_PLATFORMS += qcs605
QCOM_BOARD_PLATFORMS += $(MSMSTEPPE)
QCOM_BOARD_PLATFORMS += $(TRINKET)
QCOM_BOARD_PLATFORMS += kona
QCOM_BOARD_PLATFORMS += atoll
QCOM_BOARD_PLATFORMS += lito
QCOM_BOARD_PLATFORMS += bengal
QCOM_BOARD_PLATFORMS += qssi

QSD8K_BOARD_PLATFORMS := qsd8k

TARGET_USE_VENDOR_CAMERA_EXT := true

BOARD_HAVE_QCOM_FM ?= true

#Camera QC extends API
#ifeq ($(strip $(TARGET_USES_QTIC_EXTENSION)),true)
#PRODUCT_BOOT_JARS += com.qualcomm.qti.camera
#endif

#skip boot jars check
SKIP_BOOT_JARS_CHECK := true


#Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true

#List of targets that use video hw
MSM_VIDC_TARGET_LIST := msm8974 msm8610 msm8226 apq8084 msm8916 msm8994 msm8909 msm8992 msm8996 msm8952 msm8937 msm8953 msm8998 apq8098_latv sdm660 sdm845 sdm710 qcs605 msmnile $(MSMSTEPPE) $(TRINKET) kona atoll lito

#List of targets that use master side content protection
MASTER_SIDE_CP_TARGET_LIST := msm8996 msm8998 sdm660 sdm845 apq8098_latv sdm710 qcs605 msmnile $(MSMSTEPPE) $(TRINKET) kona lito atoll bengal

# Below projects/packages with LOCAL_MODULEs will be used by
# PRODUCT_PACKAGES to build LOCAL_MODULEs that are tagged with
# optional tag, which will not be available on target unless
# explicitly list here. Where project corresponds to the vars here
# in CAPs.

#ALSA
ALSA_HARDWARE := alsa.msm8960
ALSA_HARDWARE += alsa.msm8974
ALSA_HARDWARE += alsa.msm8226
ALSA_HARDWARE += alsa.msm8610
ALSA_HARDWARE += alsa.apq8084

ALSA_UCM := snd_soc_msm
ALSA_UCM += snd_soc_msm_2x
ALSA_UCM += snd_soc_msm_2x_mpq
ALSA_UCM += snd_soc_msm_2x_Fusion3
ALSA_UCM += snd_soc_msm_Sitar
ALSA_UCM += snd_soc_msm_auxpcm
ALSA_UCM += snd_soc_msm_2x_auxpcm
ALSA_UCM += snd_soc_msm_2x_mpq_auxpcm
ALSA_UCM += snd_soc_msm_2x_Fusion3_auxpcm
ALSA_UCM += snd_soc_msm_Sitar_auxpcm
ALSA_UCM += snd_soc_msm_Taiko
ALSA_UCM += snd_soc_msm_Taiko_CDP
ALSA_UCM += snd_soc_msm_Taiko_Fluid
ALSA_UCM += snd_soc_msm_Taiko_liquid
ALSA_UCM += snd_soc_apq_Taiko_DB
ALSA_UCM += snd_soc_msm_I2SFusion
ALSA_UCM += snd_soc_msm_Tapan
ALSA_UCM += snd_soc_msm_TapanLite
ALSA_UCM += snd_soc_msm_Tapan_SKUF
ALSA_UCM += snd_soc_msm_TapanLite_SKUF
ALSA_UCM += snd_soc_msm_8x10_wcd
ALSA_UCM += snd_soc_msm_8x10_wcd_skuab
ALSA_UCM += snd_soc_msm_8x10_wcd_skuaa
ALSA_UCM += snd_soc_msm_samarium_Tapan

#ANGLE
ANGLE := libangle

#APPOPS_POLICY
APPOPS_POLICY := appops_policy.xml

#ATRACE_HAL
ATRACE_HAL := android.hardware.atrace@1.0-service


#tinyalsa test apps
TINY_ALSA_TEST_APPS := tinyplay
TINY_ALSA_TEST_APPS += tinycap
TINY_ALSA_TEST_APPS += tinymix
TINY_ALSA_TEST_APPS += tinypcminfo
TINY_ALSA_TEST_APPS += cplay

#AMPLOADER
AMPLOADER := amploader

#APPS
APPS := QualcommSoftAP
APPS += TSCalibration

#BRCTL
BRCTL := brctl
BRTCL += libbridge

#BSON
BSON := libbson

#C2DColorConvert
C2DCC := libc2dcolorconvert

CHROMIUM := libwebviewchromium
CHROMIUM += libwebviewchromium_loader
CHROMIUM += libwebviewchromium_plat_support

#CIMAX
CIMAX := libcimax_spi

ifneq ($(TARGET_HAS_LOW_RAM),true)
#CM
CM :=CMFileManager
#CM += Trebuchet
endif

#CONNECTIVITY
CONNECTIVITY := libcnefeatureconfig
CONNECTIVITY += services-ext

#CURL
CURL := libcurl
CURL += curl

#DASH
DASH := libdashplayer
DASH += libqcmediaplayer
DASH += qcmediaplayer
DASH += libextmedia_jni

#EXTENDEDMEDIA_EXT
EXTENDEDMEDIA_EXT := libextendedmediaextractor
EXTENDEDMEDIA_EXT += libextendedmediaextractor_jni
EXTENDEDMEDIA_EXT += extendedmediaextractor
EXTENDEDMEDIA_EXT += ExtendedMediaPlayer


#DATA_OS
DATA_OS := librmnetctl

#E2FSPROGS
E2FSPROGS := e2fsck

#EBTABLES
EBTABLES := ebtables
EBTABLES += ethertypes
EBTABLES += libebtc

#FASTPOWERON
FASTPOWERON := FastBoot

#HDMID
HDMID := hdmid

#HOSTAPD
HOSTAPD := hostapd
HOSTAPD += hostapd_cli
HOSTAPD += nt_password_hash
HOSTAPD += hlr_auc_gw
HOSTAPD += test-milenage
HOSTAPD += hostapd.conf
HOSTAPD += hostapd_default.conf
HOSTAPD += hostapd.deny
HOSTAPD += hostapd.accept

#I420COLORCONVERT
I420CC := libI420colorconvert

#INIT
INIT := init.qcom.composition_type.sh
INIT += init.target.8x25.sh
INIT += init.qcom.mdm_links.sh
INIT += init.qcom.modem_links.sh
INIT += init.qcom.sensor.sh
INIT += init.target.rc
INIT += init.qti.ims.sh
INIT += init.qcom.coex.sh
INIT += init.qcom.early_boot.sh
INIT += init.qcom.post_boot.sh
INIT += init.qcom.syspart_fixup.sh
INIT += init.qcom.rc
INIT += init.recovery.qcom.rc
INIT += init.qcom.factory.rc
INIT += init.qcom.sdio.sh
INIT += init.qcom.sh
INIT += init.qcom.class_core.sh
INIT += init.class_main.sh
INIT += init.qcom.wifi.sh
INIT += init.qcom.usb.rc
INIT += init.msm.usb.configfs.rc
INIT += init.qcom.usb.sh
INIT += usf_post_boot.sh
INIT += init.qcom.efs.sync.sh
INIT += ueventd.qcom.rc
INIT += qca6234-service.sh
INIT += ssr_setup
INIT += enable_swap.sh
INIT += init.mdm.sh
INIT += fstab.qcom
INIT += fstab.qti
INIT += init.qcom.sensors.sh
INIT += init.qcom.crashdata.sh
INIT += init.qcom.vendor.rc
INIT += init.target.vendor.rc

#IPROUTE2
IPROUTE2 := ip
IPROUTE2 += libiprouteutil

#IPTABLES
IPTABLES := libiptc
IPTABLES += libext
IPTABLES += iptables


#KEYPAD
KEYPAD := ffa-keypad_qwerty.kcm
KEYPAD += ffa-keypad_numeric.kcm
KEYPAD += fluid-keypad_qwerty.kcm
KEYPAD += fluid-keypad_numeric.kcm
KEYPAD += surf_keypad_qwerty.kcm
KEYPAD += surf_keypad_numeric.kcm
KEYPAD += surf_keypad.kcm
KEYPAD += 7k_ffa_keypad.kcm
KEYPAD += 7x27a_kp.kcm
KEYPAD += keypad_8960_qwerty.kcm
KEYPAD += 7k_ffa_keypad.kl
KEYPAD += 7k_handset.kl
KEYPAD += 7x27a_kp.kl
KEYPAD += 8660_handset.kl
KEYPAD += atmel_mxt_ts.kl
KEYPAD += synaptics_rmi4_i2c.kl
KEYPAD += synaptics_dsx.kl
KEYPAD += synaptics_dsxv26.kl
KEYPAD += cyttsp-i2c.kl
KEYPAD += ft5x06_ts.kl
KEYPAD += ffa-keypad.kl
KEYPAD += fluid-keypad.kl
KEYPAD += gpio-keys.kl
KEYPAD += qpnp_pon.kl
KEYPAD += keypad_8960.kl
KEYPAD += keypad_8960_liquid.kl
KEYPAD += synaptics_rmi4_i2c.kl
KEYPAD += msm_tma300_ts.kl
KEYPAD += philips_remote_ir.kl
KEYPAD += samsung_remote_ir.kl
KEYPAD += surf_keypad.kl
KEYPAD += ue_rf4ce_remote.kl

#KS
KS := ks
KS += qcks
KS += efsks

#LIB_NL
LIB_NL := libnl_2

#LIB_XML2
LIB_XML2 := libxml2

#LIBCAMERA
LIBCAMERA := camera.apq8084
LIBCAMERA += camera.msm8974
LIBCAMERA += camera.msm8226
LIBCAMERA += camera.msm8610
LIBCAMERA += camera.msm8960
LIBCAMERA += camera.msm8660
LIBCAMERA += camera.msm7630_surf
LIBCAMERA += camera.msm7630_fusion
LIBCAMERA += camera.msm7627a
LIBCAMERA += camera.msm8909
LIBCAMERA += camera.msm8916
LIBCAMERA += camera.msm8994
LIBCAMERA += camera.msm8992
LIBCAMERA += camera.msm8996
LIBCAMERA += camera.msm8998
LIBCAMERA += camera.apq8098_latv
LIBCAMERA += camera.sdm660
LIBCAMERA += camera.msm8952
LIBCAMERA += camera.msm8937
LIBCAMERA += camera.msm8953
LIBCAMERA += camera.$(TRINKET)
LIBCAMERA += libcamera
LIBCAMERA += libmmcamera_interface
LIBCAMERA += libmmcamera_interface2
LIBCAMERA += libmmjpeg_interface
LIBCAMERA += libmmlib2d_interface
LIBCAMERA += libqomx_core
LIBCAMERA += mm-qcamera-app
LIBCAMERA += camera_test
LIBCAMERA += org.codeaurora.camera

#LIBCOPYBIT
LIBCOPYBIT := copybit.msm8660
LIBCOPYBIT += copybit.msm8960
LIBCOPYBIT += copybit.msm8974
LIBCOPYBIT += copybit.msm8226
LIBCOPYBIT += copybit.msm8610
LIBCOPYBIT += copybit.msm8909
LIBCOPYBIT += copybit.msm8916
LIBCOPYBIT += copybit.msm8994
LIBCOPYBIT += copybit.msm8992
LIBCOPYBIT += copybit.apq8084
LIBCOPYBIT += copybit.msm7k
LIBCOPYBIT += copybit.qsd8k
LIBCOPYBIT += copybit.msm7630_surf
LIBCOPYBIT += copybit.msm7630_fusion
LIBCOPYBIT += copybit.msm7627_surf
LIBCOPYBIT += copybit.msm7627_6x
LIBCOPYBIT += copybit.msm7627a
LIBCOPYBIT += copybit.msm8996
LIBCOPYBIT += copybit.msm8952
LIBCOPYBIT += copybit.msm8937
LIBCOPYBIT += copybit.msm8953
LIBCOPYBIT += copybit.msm8998
LIBCOPYBIT += copybit.sdm630
LIBCOPYBIT += copybit.sdm660
LIBCOPYBIT += copybit.sda630
LIBCOPYBIT += copybit.apq8098_latv
LIBCOPYBIT += copybit.sdm710
LIBCOPYBIT += copybit.qcs605

#LIBGESTURES
LIBGESTURES := libgestures
LIBGESTURES += gestures.msm8960

#LIBGRALLOC
LIBGRALLOC := gralloc.default
LIBGRALLOC += gralloc.msm8660
LIBGRALLOC += gralloc.msm8960
LIBGRALLOC += gralloc.msm8974
LIBGRALLOC += gralloc.msm8226
LIBGRALLOC += gralloc.msm8610
LIBGRALLOC += gralloc.msm8909
LIBGRALLOC += gralloc.msm8916
LIBGRALLOC += gralloc.msm8994
LIBGRALLOC += gralloc.msm8992
LIBGRALLOC += gralloc.apq8084
LIBGRALLOC += gralloc.mpq8092
LIBGRALLOC += gralloc.msm7k
LIBGRALLOC += gralloc.msm7630_surf
LIBGRALLOC += gralloc.msm7630_fusion
LIBGRALLOC += gralloc.msm7627_surf
LIBGRALLOC += gralloc.msm7627_6x
LIBGRALLOC += gralloc.msm7627a
LIBGRALLOC += gralloc.msm8996
LIBGRALLOC += gralloc.msm8952
LIBGRALLOC += gralloc.msm8937
LIBGRALLOC += gralloc.msm8953
LIBGRALLOC += gralloc.msm8998
LIBGRALLOC += gralloc.msmnile
LIBGRALLOC += gralloc.kona
LIBGRALLOC += gralloc.lito
LIBGRALLOC += gralloc.sdm845
LIBGRALLOC += gralloc.apq8098_latv
LIBGRALLOC += libmemalloc
LIBGRALLOC += gralloc.sdm630
LIBGRALLOC += gralloc.sdm660
LIBGRALLOC += gralloc.sdm710
LIBGRALLOC += gralloc.qcs605
LIBGRALLOC += gralloc.$(MSMSTEPPE)
LIBGRALLOC += gralloc.$(TRINKET)

#memtrack
LIBMEMTRACK := memtrack.default
LIBMEMTRACK += memtrack.msm8974
LIBMEMTRACK += memtrack.msm8226
LIBMEMTRACK += memtrack.msm8909
LIBMEMTRACK += memtrack.msm8916
LIBMEMTRACK += memtrack.msm8994
LIBMEMTRACK += memtrack.msm8610
LIBMEMTRACK += memtrack.apq8084
LIBMEMTRACK += memtrack.mpq8092
LIBMEMTRACK += memtrack.msm8996
LIBMEMTRACK += memtrack.msm8952
LIBMEMTRACK += memtrack.msm8937
LIBMEMTRACK += memtrack.msm8953
LIBMEMTRACK += memtrack.msm8998
LIBMEMTRACK += memtrack.msmnile
LIBMEMTRACK += memtrack.kona
LIBMEMTRACK += memtrack.lito
LIBMEMTRACK += memtrack.sdm660
LIBMEMTRACK += memtrack.sdm845
LIBMEMTRACK += memtrack.apq8098_latv
LIBMEMTRACK += memtrack.sdm710
LIBMEMTRACK += memtrack.qcs605
LIBMEMTRACK += memtrack.$(MSMSTEPPE)
LIBMEMTRACK += memtrack.$(TRINKET)

#LIBLIGHTS
LIBLIGHTS := lights.msm8660
LIBLIGHTS += lights.msm8960
LIBLIGHTS += lights.msm8974
LIBLIGHTS += lights.msm8226
LIBLIGHTS += lights.msm8909
LIBLIGHTS += lights.msm8916
LIBLIGHTS += lights.msm8994
LIBLIGHTS += lights.msm8992
LIBLIGHTS += lights.msm7k
LIBLIGHTS += lights.msm7630_surf
LIBLIGHTS += lights.msm7630_fusion
LIBLIGHTS += lights.msm7627_surf
LIBLIGHTS += lights.msm7627_6x
LIBLIGHTS += lights.msm7627a
LIBLIGHTS += lights.msm8610
LIBLIGHTS += lights.apq8084
LIBLIGHTS += lights.msm8996
LIBLIGHTS += lights.msm8952
LIBLIGHTS += lights.msm8937
LIBLIGHTS += lights.msm8953
LIBLIGHTS += lights.msm8998
LIBLIGHTS += lights.msmnile
LIBLIGHTS += lights.kona
LIBLIGHTS += lights.lito
LIBLIGHTS += lights.sdm660
LIBLIGHTS += lights.sdm845
LIBLIGHTS += lights.apq8098_latv
LIBLIGHTS += lights.sdm710
LIBLIGHTS += lights.qcs605
LIBLIGHTS += lights.$(MSMSTEPPE)
LIBLIGHTS += lights.$(TRINKET)

#LIBHWCOMPOSER
LIBHWCOMPOSER := hwcomposer.msm8660
LIBHWCOMPOSER += hwcomposer.msm8960
LIBHWCOMPOSER += hwcomposer.msm8974
LIBHWCOMPOSER += hwcomposer.msm8226
LIBHWCOMPOSER += hwcomposer.msm8610
LIBHWCOMPOSER += hwcomposer.msm8909
LIBHWCOMPOSER += hwcomposer.msm8916
LIBHWCOMPOSER += hwcomposer.msm8994
LIBHWCOMPOSER += hwcomposer.msm8992
LIBHWCOMPOSER += hwcomposer.apq8084
LIBHWCOMPOSER += hwcomposer.mpq8092
LIBHWCOMPOSER += hwcomposer.msm7k
LIBHWCOMPOSER += hwcomposer.msm7630_surf
LIBHWCOMPOSER += hwcomposer.msm7630_fusion
LIBHWCOMPOSER += hwcomposer.msm7627_surf
LIBHWCOMPOSER += hwcomposer.msm7627_6x
LIBHWCOMPOSER += hwcomposer.msm7627a
LIBHWCOMPOSER += hwcomposer.msm8996
LIBHWCOMPOSER += hwcomposer.msm8952
LIBHWCOMPOSER += hwcomposer.msm8937
LIBHWCOMPOSER += hwcomposer.msm8953
LIBHWCOMPOSER += hwcomposer.msm8998
LIBHWCOMPOSER += hwcomposer.msmnile
LIBHWCOMPOSER += hwcomposer.kona
LIBHWCOMPOSER += hwcomposer.lito
LIBHWCOMPOSER += hwcomposer.sdm660
LIBHWCOMPOSER += hwcomposer.sdm845
LIBHWCOMPOSER += hwcomposer.apq8098_latv
LIBHWCOMPOSER += hwcomposer.sdm710
LIBHWCOMPOSER += hwcomposer.qcs605
LIBHWCOMPOSER += hwcomposer.$(MSMSTEPPE)
LIBHWCOMPOSER += hwcomposer.$(TRINKET)


#LIBOPENCOREHW
LIBOPENCOREHW := libopencorehw

#LIBOVERLAY
LIBOVERLAY := liboverlay
LIBOVERLAY += overlay.default

#LIBGENLOCK
LIBGENLOCK := libgenlock

#LIBPERFLOCK
LIBPERFLOCK := org.codeaurora.Performance

#LIBQCOMUI
LIBQCOMUI := libQcomUI

#LIBQDUTILS
LIBQDUTILS := libqdutils

#LIBQDMETADATA
LIBQDMETADATA := libqdMetaData

#LLVM for RenderScript
#use qcom LLVM
$(call inherit-product-if-exists, external/llvm/llvm-select.mk)

#LOC_API
LOC_API := libloc_api-rpc-qc

#MEDIA_PROFILES
MEDIA_PROFILES := media_profiles.xml


#MM_CORE
MM_CORE := libmm-omxcore
MM_CORE += libOmxCore

#MM_VIDEO
MM_VIDEO := ast-mm-vdec-omx-test
MM_VIDEO += beat
MM_VIDEO += liblasic
MM_VIDEO += libOmxVdec
MM_VIDEO += libOmxVdecHevc
MM_VIDEO += libOmxVenc
MM_VIDEO += libOmxVidEnc
MM_VIDEO += libOmxSwVdec
MM_VIDEO += libOmxSwVencMpeg4
MM_VIDEO += libstagefrighthw
MM_VIDEO += mm-vdec-omx-property-mgr
MM_VIDEO += mm-vdec-omx-test
MM_VIDEO += mm-venc-omx-test
MM_VIDEO += mm-venc-omx-test720p
MM_VIDEO += mm-video-driver-test
MM_VIDEO += mm-video-encdrv-test
MM_VIDEO += libaacwrapper


#OPENCORE
OPENCORE := libomx_aacdec_sharedlibrary
OPENCORE += libomx_avcdec_sharedlibrary
OPENCORE += libomx_m4vdec_sharedlibrary
OPENCORE += libomx_mp3dec_sharedlibrary
OPENCORE += libopencore_author
OPENCORE += libopencore_common
OPENCORE += libopencore_download
OPENCORE += libopencore_downloadreg
OPENCORE += libopencore_mp4local
OPENCORE += libopencore_mp4localreg
OPENCORE += libopencore_net_support
OPENCORE += libopencore_player
OPENCORE += libopencore_rtsp
OPENCORE += libopencore_rtspreg
OPENCORE += libpvplayer_engine
OPENCORE += libpvauthorengine
OPENCORE += pvplayer
OPENCORE += pvplayer_engine_test

#PPP
PPP := ip-up-vpn

PROTOBUF := libprotobuf-cpp-full

#PVOMX
PVOMX := libqcomm_omx
PVOMX += 01_qcomm_omx

#RF4CE
RF4CE := RemoTI_RNP.cfg
RF4CE += rf4ce

#SENSORS_HARDWARE
SENSORS_HARDWARE := sensors.msm7630_surf
SENSORS_HARDWARE += sensors.msm7630_fusion
SENSORS_HARDWARE += sensors.msm8996_auto

#SOFTAP
SOFTAP := libQWiFiSoftApCfg
SOFTAP += libqsap_sdk


#STM LOG
STMLOG := libstm-log

#THERMAL_HAL
THERMAL_HAL := thermal.msm8998
THERMAL_HAL += thermal.sdm845
THERMAL_HAL += thermal.sdm710
THERMAL_HAL += thermal.qcs605
THERMAL_HAL += thermal.sdm660
THERMAL_HAL += thermal.msm8996
THERMAL_HAL += thermal.msm8953
THERMAL_HAL += thermal.msm8937

#TSLIB_EXTERNAL
TSLIB_EXTERNAL := corgi
TSLIB_EXTERNAL += dejitter
TSLIB_EXTERNAL += inputraw
TSLIB_EXTERNAL += linear
TSLIB_EXTERNAL += variance
TSLIB_EXTERNAL += pthres
TSLIB_EXTERNAL += libtslib
TSLIB_EXTERNAL += tsprint
TSLIB_EXTERNAL += tstest
TSLIB_EXTERNAL += tsutils
TSLIB_EXTERNAL += tscalib
TSLIB_EXTERNAL += ts

#VR_HAL
VR_HAL := vr.msm8998
VR_HAL += vr.sdm845

#QRGND
QRGND := qrngd
QRGND += qrngp
QRGND += qrngtest

#WPA
WPA := wpa_supplicant.conf
WPA += wpa_cli
WPA += wpa_supplicant_wcn.conf
WPA += wpa_supplicant_ath6kl.conf
WPA += wpa_supplicant
WPA += hs20-osu-client

#ZLIB
ZLIB := gzip
ZLIB += libunz

#Charger
CHARGER := charger
CHARGER += charger_res_images

#VT_JNI
VT_JNI := libvt_jni
VT_JNI += libimscamera_jni

# VT QTI Permissions
VT_QTI_PERMISSIONS := qti_permissions.xml

#RCS
RCS := rcs_service_aidl
RCS += rcs_service_aidl.xml
RCS += rcs_service_aidl_static
RCS += rcs_service_api
RCS += rcs_service_api.xml

#CRDA
CRDA := crda
CRDA += regdbdump
CRDA += regulatory.bin
CRDA += linville.key.pub.pem
CRDA += init.crda.sh

#WLAN
WLAN := prima_wlan.ko
WLAN += pronto_wlan.ko
WLAN += qca_cld_wlan.ko

#FD_LEAK
FD_LEAK := libc_leak_detector

PRODUCT_PACKAGES := \
    AccountAndSyncSettings \
    Bluetooth \
    DeskClock \
    AlarmProvider \
    Calculator \
    Calendar \
    Camera \
    CertInstaller \
    DrmProvider \
    Email \
    Gallery2 \
    LatinIME \
    Music \
    netutils-wrapper-1.0 \
    Provision \
    Protips \
    QuickSearchBox \
    Settings \
    Sync \
    SystemUI \
    Updater \
    CalendarProvider \
    SyncProvider \
    SoundRecorder \
    IM \
    SnapdragonGallery \
    VideoEditor \
    SnapdragonLauncher \
    QesdkSysService \
    libqesdk_ndk_platform.qti

ifeq ($(TARGET_HAS_LOW_RAM),true)
    DELAUN := Launcher3Go
else
    # Live Wallpapers
    PRODUCT_PACKAGES += \
            LiveWallpapers \
            LiveWallpapersPicker \
            VisualizationWallpapers

    DELAUN := Launcher3
endif

PRODUCT_PACKAGES += $(ALSA_HARDWARE)
PRODUCT_PACKAGES += $(ALSA_UCM)
PRODUCT_PACKAGES += $(ANGLE)
PRODUCT_PACKAGES += $(APPOPS_POLICY)
PRODUCT_PACKAGES += $(ATRACE_HAL)
PRODUCT_PACKAGES += $(TINY_ALSA_TEST_APPS)
PRODUCT_PACKAGES += $(AMPLOADER)
PRODUCT_PACKAGES += $(APPS)
PRODUCT_PACKAGES += $(BRCTL)
PRODUCT_PACKAGES += $(BSON)
PRODUCT_PACKAGES += $(C2DCC)
PRODUCT_PACKAGES += $(CHROMIUM)
PRODUCT_PACKAGES += $(CIMAX)
PRODUCT_PACKAGES += $(CM)
PRODUCT_PACKAGES += $(DELAUN)
PRODUCT_PACKAGES += $(RCS)
PRODUCT_PACKAGES += $(CONNECTIVITY)
PRODUCT_PACKAGES += $(CHARGER)
PRODUCT_PACKAGES += $(CURL)
PRODUCT_PACKAGES += $(DASH)
PRODUCT_PACKAGES += $(DATA_OS)
PRODUCT_PACKAGES += $(E2FSPROGS)
PRODUCT_PACKAGES += $(EBTABLES)
PRODUCT_PACKAGES += $(EXTENDEDMEDIA_EXT)
PRODUCT_PACKAGES += $(FASTPOWERON)
PRODUCT_PACKAGES += $(HDMID)
PRODUCT_PACKAGES += $(HOSTAPD)
PRODUCT_PACKAGES += $(I420CC)
PRODUCT_PACKAGES += $(INIT)
PRODUCT_PACKAGES += $(IPROUTE2)
PRODUCT_PACKAGES += $(IPTABLES)
PRODUCT_PACKAGES += $(KERNEL_TESTS)
PRODUCT_PACKAGES += $(KEYPAD)
PRODUCT_PACKAGES += $(KS)
PRODUCT_PACKAGES += $(LIB_NL)
PRODUCT_PACKAGES += $(LIB_XML2)
PRODUCT_PACKAGES += $(LIBCAMERA)
PRODUCT_PACKAGES += $(LIBGESTURES)
PRODUCT_PACKAGES += $(LIBCOPYBIT)
PRODUCT_PACKAGES += $(LIBGRALLOC)
PRODUCT_PACKAGES += $(LIBMEMTRACK)
PRODUCT_PACKAGES += $(LIBLIGHTS)
PRODUCT_PACKAGES += $(LIBOPENCOREHW)
PRODUCT_PACKAGES += $(LIBOVERLAY)
PRODUCT_PACKAGES += $(LIBHWCOMPOSER)
PRODUCT_PACKAGES += $(LIBGENLOCK)
PRODUCT_PACKAGES += $(LIBPERFLOCK)
PRODUCT_PACKAGES += $(LIBQCOMUI)
PRODUCT_PACKAGES += $(LIBQDUTILS)
PRODUCT_PACKAGES += $(LIBQDMETADATA)
PRODUCT_PACKAGES += $(LIBPOWER)
PRODUCT_PACKAGES += $(LOC_API)
PRODUCT_PACKAGES += $(MEDIA_PROFILES)
PRODUCT_PACKAGES += $(MM_CORE)
PRODUCT_PACKAGES += $(MM_VIDEO)
PRODUCT_PACKAGES += $(OPENCORE)
PRODUCT_PACKAGES += $(PPP)
PRODUCT_PACKAGES += $(PROTOBUF)
PRODUCT_PACKAGES += $(PVOMX)
PRODUCT_PACKAGES += $(RF4CE)
PRODUCT_PACKAGES += $(SENSORS_HARDWARE)
#PRODUCT_PACKAGES += $(SOFTAP)
PRODUCT_PACKAGES += $(STMLOG)
PRODUCT_PACKAGES += $(THERMAL_HAL)
PRODUCT_PACKAGES += $(TSLIB_EXTERNAL)
PRODUCT_PACKAGES += $(VR_HAL)
PRODUCT_PACKAGES += $(QRGND)
PRODUCT_PACKAGES += $(UPDATER)
PRODUCT_PACKAGES += $(WPA)
PRODUCT_PACKAGES += $(ZLIB)
PRODUCT_PACKAGES += $(VT_JNI)
PRODUCT_PACKAGES += $(VT_QTI_PERMISSIONS)
PRODUCT_PACKAGES += $(CRDA)
PRODUCT_PACKAGES += $(WLAN)
PRODUCT_PACKAGES += $(FD_LEAK)

PRODUCT_PACKAGES += move_wifi_data.sh
PRODUCT_PACKAGES += librs_jni
PRODUCT_PACKAGES += libion

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs


# MSM updater library
PRODUCT_PACKAGES += librecovery_updater_msm

# vcard jar
PRODUCT_PACKAGES += vcard

# tcmiface for tcm support
PRODUCT_PACKAGES += tcmiface

# healthd libaray expanded for mode charger
PRODUCT_PACKAGES += libhealthd.msm

#Add init.qcom.test.rc to PRODUCT_PACKAGES_DEBUG list
PRODUCT_PACKAGES_DEBUG += init.qcom.test.rc
PRODUCT_PACKAGES_DEBUG += init.qcom.debug.sh

#enable qesdk commandline tool in debug mode
PRODUCT_PACKAGES_DEBUG += qesdkcmdline

#NANOPB_LIBRARY_NAME := libnanopb-c-2.8.0

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/android.software.verified_boot.xml

ifneq ($(strip $(TARGET_USES_RRO)),true)
# enable overlays to use our version of
# source/resources etc.
DEVICE_PACKAGE_OVERLAYS += device/qcom/common/device/overlay
PRODUCT_PACKAGE_OVERLAYS += device/qcom/common/product/overlay
endif

# include additional build utilities
-include vendor/qcom/opensource/core-utils/build/utils.mk

#Enabling Ring Tones
#include frameworks/base/data/sounds/OriginalAudio.mk

#Enabling video for live effects
-include frameworks/base/data/videos/VideoPackage1.mk

# dm-verity definitions
ifneq ($(BOARD_AVB_ENABLE), true)
   PRODUCT_SYSTEM_VERITY_PARTITION=/dev/block/bootdevice/by-name/system
   ifeq ($(ENABLE_VENDOR_IMAGE), true)
      PRODUCT_VENDOR_VERITY_PARTITION=/dev/block/bootdevice/by-name/vendor
   endif
   $(call inherit-product, build/target/product/verity.mk)
endif

ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES+= \
    ro.adb.secure=1
endif

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

TARGET_FS_CONFIG_GEN := device/qcom/qssi/config.fs

ifeq ($(TARGET_HAS_LOW_RAM),true)
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.vendor.qcomsysd.enabled=0
else
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.vendor.qcomsysd.enabled=1
endif

PRODUCT_PACKAGES_DEBUG += \
    init.qcom.debug.sh \
    init.qcom.debug-sdm660.sh \
    init.qcom.debug-sdm710.sh \
    init.qti.debug-msmnile-apps.sh \
    init.qti.debug-msmnile-modem.sh \
    init.qti.debug-msmnile-slpi.sh \
    init.qti.debug-talos.sh \
    init.qti.debug-msmnile.sh \
    init.qti.debug-kona.sh \
    init.qti.debug-lito.sh \
    init.qti.debug-atoll.sh \
    init.qti.debug-trinket.sh \
    init.qti.debug-bengal.sh \

PRODUCT_PACKAGES += liboemaids_system
PRODUCT_PACKAGES += liboemaids_vendor
PRODUCT_PACKAGES += android.hardware.health@2.0-service
# framework detect libs
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti
PRODUCT_PACKAGES += libqti_vndfwk_detect
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti.vendor
PRODUCT_PACKAGES += libqti_vndfwk_detect.vendor
PRODUCT_PACKAGES += libqti_vndfwk_detect_system
PRODUCT_PACKAGES += libqti_vndfwk_detect_vendor
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti_system
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti_vendor

#add thermal 2.0 hal lib to product packages
PRODUCT_PACKAGES += android.hardware.thermal@2.0

#add RemoteProvisioner to product packages
PRODUCT_PACKAGES += RemoteProvisioner

#soong namespace for qssi vs vendor differentiation
SOONG_CONFIG_NAMESPACES += qssi_vs_vendor
SOONG_CONFIG_qssi_vs_vendor += qssi_or_vendor
SOONG_CONFIG_qssi_vs_vendor_qssi_or_vendor := qssi

SOONG_CONFIG_NAMESPACES += aosp_vs_qva
SOONG_CONFIG_aosp_vs_qva += aosp_or_qva
ifeq ($(TARGET_FWK_SUPPORTS_FULL_VALUEADDS),true)
SOONG_CONFIG_aosp_vs_qva_aosp_or_qva := qva
else
SOONG_CONFIG_aosp_vs_qva_aosp_or_qva := aosp
endif

SOONG_CONFIG_NAMESPACES += bredr_vs_btadva
SOONG_CONFIG_bredr_vs_btadva += bredr_or_btadva

ifneq "$(wildcard vendor/qcom/proprietary/commonsys/bt/bt_adv_audio)" ""
    $(warning bt_adv_audio dir is present)
    SOONG_CONFIG_bredr_vs_btadva_bredr_or_btadva := bredr 
else
    $(warning bt_adv_audio dir is not present)
    SOONG_CONFIG_bredr_vs_btadva_bredr_or_btadva := bredr
endif #ifneq "$(wildcard vendor/qcom/proprietary/commonsys/bt/bt_adv_audio)" ""
