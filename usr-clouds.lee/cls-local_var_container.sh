#!/bin/sh

# ==========================================
# 步驟一：清理現有 Podman 環境與映像檔
# ==========================================

# 深度清理 (安全地移除所有已停止的容器與未使用的映像檔，避免檔案鎖定)
# 語法 (Syntax): podman system prune [選項]
# (-a: all，包含所有未使用的映像檔)
sudo podman system prune -a


# ==========================================
# 步驟二：建立大容量的實體儲存區
# ==========================================

# 建立給 Podman 用的實體大容量目錄
# 語法 (Syntax): mkdir [選項] [目錄名稱]
# (-p: parents，若上層目錄不存在則一併建立)
mkdir -p $HOME/local/var/lib/containers


# ==========================================
# 步驟三：替換系統路徑 (建立捷徑)
# ==========================================

# 移除原有的系統級 Podman 儲存區
# 語法 (Syntax): rm [選項] [檔案或目錄]
# (-r: recursive 遞迴刪除, -f: force 強制刪除)
sudo rm -rf /var/lib/containers

# 建立軟連結(捷徑)，將系統對 /var/lib/containers 的讀寫導向您的家目錄
# 語法 (Syntax): ln -s [目標實體路徑] [捷徑放置路徑]
sudo ln -s $HOME/local/var/lib/containers /var/lib/containers