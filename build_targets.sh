#!/bin/bash

cd brics/
./generate_jar.sh
cd ..

cd generex/
./generate_jar.sh
cd ..

cd mutrex/
./generate_jar.sh

cd regldg
make clean && make
cd ..

