#!/bin/sh

ls /proc/sys/fs/binfmt_misc
sudo mount -t binfmt_misc none /proc/sys/fs/binfmt_misc  #docker 要先自己做這部
ls /proc/sys/fs/binfmt_misc