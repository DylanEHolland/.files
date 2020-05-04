#!/usr/bin/env sh
#   Bootstrap a fedora-based system

ROOT_FS="/tmp/chroot";
PKG="dnf";
OUTPUT_CENTOS_RELEASE="centos-release.x86_64";

create_root_fs() {
    if ! [ -d $ROOT_FS ]; then
        mkdir -pv $ROOT_FS && return 0;
    else
        echo "Directory exists!" && return 1;
    fi;

    return 1
}

if create_root_fs; then
    rpm --root=$ROOT_FS --initdb;
    $PKG --installroot=$ROOT_FS --releasever=/ update;
    $PKG --installroot=$ROOT_FS --releasever=/ $OUTPUT_CENTOS_RELEASE;
else
    echo "Something went wrong";
fi;