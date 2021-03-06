PRODUCT_AAPT_CONFIG := normal large xhdpi hdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# USB config contains product-specific USB id
PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/init.acer.usb.rc:root/init.acer.usb.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# So init files are copied properly in device_base.mk
PRODUCT_BOOTLOADER := picasso_m

PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/init.picasso_m.rc:root/init.picasso_m.rc \
    device/acer/a510/prebuilt/ramdisk/init.recovery.picasso_m.rc:root/init.recovery.picasso_m.rc \
    device/acer/a510/prebuilt/ramdisk/fstab.acer:root/fstab.acer \
    device/acer/a510/prebuilt/ramdisk/fstab.acer:root/fstab.picasso_m

# lvm files
PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/lvm/etc/lvm.conf:root/lvm/etc/lvm.conf \
    device/acer/a510/prebuilt/ramdisk/lvm/sbin/lvm:root/sbin/lvm \
    device/acer/a510/prebuilt/ramdisk/lvm/sbin/setuplvmsystem.sh:recovery/root/sbin/setuplvmsystem.sh

# Inherit t30-common
$(call inherit-product, device/acer/t30-common/device_base.mk)
