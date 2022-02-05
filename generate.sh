#!/bin/bash

make partition_table

cd boards
./nvs_partition_generator.sh lolin32pro.csv
cd ../

# Ran this in WSL on windows since can't get python3 installed anymore
#cd webpage
#./generate.sh
#cd ..

echo "make flash"
make -j12 app

