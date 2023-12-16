#!/bin/bash
#

kernel="out/arch/arm64/boot/Image.gz"
dtb="out/arch/arm64/boot/dts/qcom/sdmmagpie.dtb"
dtbo="out/arch/arm64/boot/dtbo.img"

ZIPNAME="kim-baikalos-pocof1-ksu-$(date '+%Y%m%d-%H%M').zip"

#python scripts/mkdtboimg.py create /workspace/kimsultan/kernel/android_kernel_xiaomi_sdm845/out/arch/arm64/boot/dtbo.img /workspace/kimsultan/kernel/android_kernel_xiaomi_sdm845/out/arch/arm64/boot/dts/qcom/*.dtbo

#cp $kernel $dtbo ../AnyKernel3
cp $dtb ../AnyKernel3/dtb
cd ../AnyKernel3
zip -r9 "../$ZIPNAME" * -x .git README.md *placeholder

http-server --port 8001 ..
