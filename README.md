# android_device_xiaomi_cepheus
For building TWRP for Xiaomi Mi 9

TWRP device tree for Xiaomi Mi 9

## Features

Works:

- ADB
- Decryption of /data
- Screen brightness settings
- Correct screenshot color
- MTP
- Flashing (opengapps, roms, images and so on)
- Backup/Restore (Needs more testing)


TO-DO:

- Vibration support
- USB OTG

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/xiaomi/cepheus" name="siankatabg/android_device_xiaomi_cepheus-twrp" remote="github" revision="android-9.0" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_cepheus-eng
mka recoveryimage
```

To test it:

```
fastboot boot out/target/product/cepheus/recovery.img
```

## Other Sources

Kernel Sources: using precompiled stock kernel

## Thanks

- Thanks to @mauronofrio and @PeterCxy for the commits and the base: 
https://github.com/mauronofrio/android_device_xiaomi_cepheus
https://github.com/PeterCxy/android_device_xiaomi_violet-twrp
