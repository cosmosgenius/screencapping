TARGET = iphone:11.2:10.0

include $(THEOS)/makefiles/common.mk
TOOL_NAME = screencapping

$(TOOL_NAME)_INSTALL_PATH = /usr/bin/
$(TOOL_NAME)_FILES = main.mm
$(TOOL_NAME)_CODESIGN_FLAGS = -Sent.xml

# $(TOOL_NAME)_LIBRARIES = substrate
# $(TOOL_NAME)_PRIVATE_FRAMEWORKS := IOMobileFramebuffer

include $(THEOS_MAKE_PATH)/tool.mk

internal-stage::
	$(ECHO_NOTHING)chmod 6755 $(THEOS_STAGING_DIR)/usr/bin/$(TOOL_NAME)$(ECHO_END)
