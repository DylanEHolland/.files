#!/bin/bash

clone_repo() {
    if [ -d $LOCAL_PYTHON_SRC_DIRECTORY ]; then
        rm -rfv $LOCAL_PYTHON_SRC_DIRECTORY || return 1
    fi;

    git clone $PYREPO \
        $LOCAL_PYTHON_SRC_DIRECTORY \
        --branch $LOCAL_PYTHON_VERSION  \
        --depth 1 || return 1
}

create_build_dir() {
    if [ -d $LOCAL_PYTHON_BUILD_DIRECTORY ]; then
        rm -rfv $LOCAL_PYTHON_BUILD_DIRECTORY || return 1
    fi;
}

configure_build() {
    if create_build_dir; then
        $LOCAL_PYTHON_SRC_DIRECTORY/configure \
            --prefix=$LOCAL_PYTHON_DIRECTORY || return 1;
    fi;
}

build_from_source() {
    if configure_build; then
        make -j12 && make install || return 1;
    fi;
}

if clone_repo; then
    cd $LOCAL_PYTHON_BUILD_DIRECTORY;
    if build_from_source; then
        export PATH="$LOCAL_PYTHON_DIRECTORY:$PATH";
        cd -;
        rm -rf $LOCAL_PYTHON_BUILD_DIRECTORY;
        pip install --upgrade pip;
        which pip;
    fi;
fi;