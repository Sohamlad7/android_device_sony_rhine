#
# This is for TWRP Recovery
# Make sure that files are present at their respective folders
#

# TWRP flags
TW_THEME := portrait_hdpi
TW_HAS_NO_RECOVERY_PARTITION := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_USB_STORAGE := true

# TWRP UI
BOARD_HAS_NO_SELECT_BUTTON := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# TWRP Storage
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_FUSE_EXFAT := true
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TARGET_NO_SEPARATE_RECOVERY := true

# TWRP Crypto
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/bootdevice/by-name/userdata"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/rhine/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab
