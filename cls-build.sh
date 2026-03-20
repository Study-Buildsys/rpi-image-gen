#!/bin/bash

# echo $(id -un) | sudo -S ./rpi-image-gen build -c ./config/bookworm-minbase.yaml  2>&1 | tee log-rpi-image-gen-build.log
./rpi-image-gen build -c ./config/bookworm-minbase.yaml  2>&1 | tee log-rpi-image-gen-build.log

# [關鍵步驟] 將生成的 work 目錄權限改回目前使用者
# 這裡的 $USER 或是 `id -u` / `id -g` 能確保權限正確
# sudo chown -R $(id -u):$(id -g) work/
chown -R $(id -u):$(id -g) work/
echo "權限已修復，現在 BitBake 可以正常讀取並清理檔案了。"