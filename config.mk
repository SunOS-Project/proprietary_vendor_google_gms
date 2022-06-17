#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Automated
$(call inherit-product, vendor/google/gms/gms-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    GmsCarrierConfigOverlay \
    GmsConfigOverlayASI \
    GmsConfigOverlayCommon \
    GmsConfigOverlayComms \
    GmsConfigOverlayGeotz \
    GmsConfigOverlayGSA \
    GmsConfigOverlayPhotos \
    GmsContactsProviderOverlay \
    GmsSettingsOverlay \
    GmsSettingsProviderOverlay \
    GmsSetupWizardOverlay \
    GmsSystemUIOverlay \
    GmsTelecommOverlay \
    GmsTelephonyOverlay

# Packages
PRODUCT_PACKAGES += \
    PartnerBookmarksProvider

# Properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.gmsversion=12_202204 \
    ro.opa.eligible_device=true \
    ro.setupwizard.rotation_locked=true \
    setupwizard.theme=glif_v3_light

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif
