ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1
THEOS_DEVICE_IP = 192.168.0.7

INSTALL_TARGET_PROCESSES = SpringBoard

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET = iphone:16.5:15.0
else ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
TARGET = iphone:16.5:15.0
else
export PREFIX=$(THEOS)/toolchain/Xcode11.xctoolchain/usr/bin/
TARGET = iphone:14.5:12.0
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RaiseLight

RaiseLight_FILES = Tweak.x
RaiseLight_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
