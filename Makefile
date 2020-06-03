THEOS_DEVICE_IP = 10.0.0.76

ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = project02

project02_FILES = Tweak.xm
project02_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
SUBPROJECTS += project02prefs
include $(THEOS_MAKE_PATH)/aggregate.mk
