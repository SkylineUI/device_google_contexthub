#
# Copyright (C) 2016 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_NANO_VARS)

LOCAL_MODULE := chre_test1
LOCAL_MODULE_TAGS := optional

# Googl + T + 0x9001
LOCAL_NANO_APP_ID := 476f6f676c549001
LOCAL_NANO_APP_VERSION := 0

LOCAL_WHOLE_STATIC_LIBRARIES := \
    libnanochre                 \

LOCAL_STATIC_LIBRARIES :=       \
    libnanolibc                 \
    libnanolibm                 \

LOCAL_SRC_FILES := \
    main.cpp \

include $(BUILD_NANOHUB_APP_EXECUTABLE)
