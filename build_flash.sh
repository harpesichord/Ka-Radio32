#!/bin/bash

make partition_table

#python /c/Espressif/cv/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 --port /dev/ttyS3 --baud 115200 
#--before default_reset --after hard_reset write_flash 0x8000 /c/ESP-Software/Ka-Radio32/build/partitions.bin

cd boards
./nvs_partition_generator.sh lolin32pro.csv

