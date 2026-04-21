
Developer Options

# Syntax: rpi-image-gen build [options] -B <build_dir>
# 說明：使用 -B 參數來指定建置與輸出的根目錄 (Build Directory)，取代錯誤的 -O。
rpi-image-gen build -S custom-rtk -c config/debian-image.yaml -B ./output_rtk_rootfs

#                     [-f]             setup, build filesystem, skip image generation.
#                     [-i]             setup, skip building filesystem, generate image(s).
mkdir work-rtk
rpi-image-gen build -S custom-rtk -c config/debian-image.yaml -B ./work-rtk  2>&1 | tee log-rpi-image-gen-build-debian-image.log