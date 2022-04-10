#!/bin/bash

gclang=prebuilts/clang/host/linux-x86/gabuters-clang
native=vendor/nusantara

if [ ! -d $gclang ]; then
echo "Gabuters clang is empty! cloning.."
git clone https://github.com/Gabuters-Dev/gabuters-clang $gclang
else
echo "Gabuters clang exist, skipping.."
fi

if [ ! -d $native ]; then
echo "skipping.. This is not Nusantara-ROM"
else
echo "Building Nusantara-ROM.."
rm -rf frameworks/native
git clone https://github.com/mgs28-mh/frameworks_native -b 11_r48 frameworks/native
fi

git clone https://github.com/Gabuters-Dev/vendor_xiaomi_dirac -b part vendor/xiaomi/part
