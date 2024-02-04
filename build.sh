#!/bin/sh

set -e

sudo -v

sudo apt-get install -y \
    binutils \
    bison \
    gawk \
    gcc \
    gdb \
    gettext \
    make \
    perl \
    python3 \
    python3-pexpect \
    sed \
    texinfo

apt-cache policy \
    binutils \
    bison \
    gawk \
    gcc \
    gdb \
    gettext \
    make \
    perl \
    python3 \
    python3-pexpect \
    sed \
    texinfo

mkdir ./build
mkdir ./install

cd ./build
../configure --prefix=$(realpath "../install") "$@"