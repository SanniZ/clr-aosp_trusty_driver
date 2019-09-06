#!/bin/bash

sudo rm drivers/trusty/*.ko
sudo rm drivers/trusty/*.o

sudo make M=./drivers/trusty modules RETPOLINE CONFIG_TRUSTY=m CONFIG_TRUSTY_LOG=m CONFIG_TRUSTY_VIRTIO=m CONFIG_TRUSTY_VIRTIO_IPC=m CONFIG_TRUSTY_BACKUP_TIMER=m
