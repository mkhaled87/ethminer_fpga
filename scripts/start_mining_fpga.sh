#!/bin/sh

# to get the device id run: ../ethminer/ethminer --list-devices

# configs
ACCOUNT=0x14551935EDf4aF06909336084412dd805aE14b26
WORKER=FPGAs
MINING_POOL=eu1.ethermine.org
POOL_PORT=4444
TARGET_DEVICE_ID=1
GLOBAL_WG_SIZE=512
LOCAL_WG_SIZE=64

# go to root
cd ..

# start mining
./build/ethminer/ethminer -G -P stratum://$ACCOUNT.$WORKER@$MINING_POOL:$POOL_PORT --cl-global-work=$GLOBAL_WG_SIZE --cl-local-work=$LOCAL_WG_SIZE --opencl-device=$TARGET_DEVICE_ID
