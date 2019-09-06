#!/bin/bash

BUILD=/lib/modules/5.2.9-825.native/build
TRUSTY=$BUILD/drivers/trusty

# remove old .ko
function remove_ko() {
    sudo rm -rf $TRUSTY/*.o
    sudo rm -rf $TRUSTY/*.ko
}

# build .ko
function build_ko() {
    cd $BUILD
    sudo make M=./drivers/trusty modules CONFIG_TRUSTY=m CONFIG_TRUSTY_LOG=m CONFIG_TRUSTY_VIRTIO=m CONFIG_TRUSTY_VIRTIO_IPC=m CONFIG_TRUSTY_BACKUP_TIMER=m
}


# insmod .ko
function do_insmod() {
    echo "Insert module $1"
    sudo insmod $TRUSTY/$1
}


# insmod all of trusty .ko
function insmod_ko() {
    do_insmod trusty.ko
    do_insmod trusty-mem.ko
    do_insmod trusty-ipc.ko
    do_insmod trusty-virtio.ko
    do_insmod trusty-log.ko
    do_insmod trusty-wall.ko
    do_insmod trusty-timer.ko
}


remove_ko
build_ko
insmod_ko

