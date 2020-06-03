include $(THEOS)/makefiles/common.mk

TARGET = iphone:clang:13.0:13.0

BUNDLE_NAME = project02prefs

ARCHS = arm64 arm64e

project02prefs_FILES = Project02RootListController.m
project02prefs_INSTALL_PATH = /Library/PreferenceBundles
project02prefs_FRAMEWORKS = UIKit
project02prefs_PRIVATE_FRAMEWORKS = Preferences
project02prefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/project02prefs.plist$(ECHO_END)
