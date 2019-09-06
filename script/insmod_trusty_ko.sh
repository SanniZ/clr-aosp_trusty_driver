#!/bin/bash

TRUSTY=drivers/trusty

function do_insmod() {
    echo "Insert module: $TRUSTY/$1"
    sudo insmod $TRUSTY/$1
}


do_insmod trusty.ko
do_insmod trusty-mem.ko
do_insmod trusty-ipc.ko
do_insmod trusty-virtio.ko
do_insmod trusty-log.ko
do_insmod trusty-wall.ko
do_insmod trusty-timer.ko
