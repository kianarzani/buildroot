################################################################################
#
# $(PACKAGE)
#
################################################################################

PACKAGE = ECAL

$(PACKAGE)_VERSION = 5.11.4
$(PACKAGE)_SOURCE = libfoo-$(LIBFOO_VERSION).tar.gz
$(PACKAGE)_SITE = https://github.com/eclipse-ecal/ecal/archive/refs/tags
$(PACKAGE)_LICENSE = Apache-2.0 license
$(PACKAGE)_LICENSE_FILES = LICENSE.txt
$(PACKAGE)_SUPPORTS_IN_SOURCE_BUILD = NO
$(PACKAGE)_CONF_OPTS = -DHAS_HDF5=OFF \
			 -DHAS_QT5=OFF \
			 -DBUILD_APPS=OFF \
			 -DBUILD_SAMPLES=OFF \
			 -DBUILD_TIME=OFF \
			 -DECAL_INSTALL_SAMPLE_SOURCES=OFF \
			 -DECAL_THIRDPARTY_BUILD_CURL=OFF \
			 -DECAL_THIRDPARTY_BUILD_QWT=OFF \
			 -DECAL_THIRDPARTY_BUILD_YAML-CPP=OFF
 
define $(PACKAGE)_CONFIGURE_CMDS
endef # define $(PACKAGE)_CONFIGURE_CMDS

define $(PACKAGE)_BUILD_CMDS
endef # $(PACKAGE)_BUILD_CMDS

define $(PACKAGE)_INSTALL_STAGING_CMDS
endef # $(PACKAGE)_INSTALL_STAGING_CMDS

define $(PACKAGE)_INSTALL_TARGET_CMDS
endef # $(PACKAGE)_INSTALL_TARGET_CMDS

$(PACKAGE)_INSTALL_STAGING	= YES
$(PACKAGE)_INSTALL_IMAGES	= YES
$(PACKAGE)_INSTALL_TARGET	= YES

$(PACKAGE)_DEPENDENCIES = openssl protobuf

$(eval $(cmake-package))

