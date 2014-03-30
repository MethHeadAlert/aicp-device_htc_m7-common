#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifneq ($(filter m7 m7att m7spr m7tmo m7ul m7vzw,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Create firmware links
FIRMWARE_MDM_IMAGES := \
    acdb.mbn \
    apps.mbn \
    dsp1.mbn dsp2.mbn dsp3.mbn \
    efs1.mbn efs2.mbn efs3.mbn \
    htccdma.mbn htcrfnv.mbn htcssmem.mbn \
    mdm_acdb.img \
    rpm.mbn \
    sbl1.mbn \
    sbl2.mbn

ifneq ($(filter m7 m7att m7tmo m7ul,$(TARGET_DEVICE)),)
FIRMWARE_MDM_IMAGES += \
    htc61.mbn htc62.mbn htc63.mbn htc64.mbn htc65.mbn \
    htcnvbak.mbn htcrcust.mbn htcsmem.mbn \
    sbl1_82.mbn sbl1_92.mbn sbl1_96.mbn
endif

ifneq ($(filter m7spr m7vzw,$(TARGET_DEVICE)),)
FIRMWARE_MDM_IMAGES += \
    htccnv.mbn htcnvmfg.mbn htcuserd.mbn
endif

FIRMWARE_MDM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(FIRMWARE_MDM_IMAGES)))
$(FIRMWARE_MDM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MDM Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/mdm/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MDM_SYMLINKS)

FIRMWARE_Q6_IMAGES := \
    q6.b00 q6.b01 q6.b03 q6.b04 q6.b05 q6.b06 q6.mdt

FIRMWARE_Q6_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(FIRMWARE_Q6_IMAGES)))
$(FIRMWARE_Q6_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Q6 Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/q6/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_Q6_SYMLINKS)

endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.bigeyes0x0.trickstermod-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.estrongs.android.pop-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.facebook.katana-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.facebook.orca-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.higherone.mobile.android-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.maxmpz.audioplayer-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.mxtech.videoplayer.ad-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.myyearbook.m-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.outlook.Z7-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.pof.android-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.riteshsahu.CallLogBackupRestore-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.riteshsahu.SMSBackupRestore-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.shazam.android-1
LOCAL_SRC_FILES := apps/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

