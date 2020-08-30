include $(THEOS)/makefiles/common.mk

export TARGET = iphone:clang:11.2:11.0
export ARCHS = arm64

BUNDLE_NAME = TestModule
TestModule_BUNDLE_EXTENSION = bundle
TestModule_FILES = TestModule.m
TestModule_PRIVATE_FRAMEWORKS = ControlCenterUIKit
TestModule_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"
