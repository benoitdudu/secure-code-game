#!/bin/bash
set -e

SCRIPT_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")") 

cd ${SCRIPT_DIR}
mkdir -p build
cd build

gcc -o hack  ${SCRIPT_DIR}/hack.c
gcc -o tests ${SCRIPT_DIR}/tests.c

echo -e "HACK\n"
./hack

echo -e "\n\n\nTESTS\n"
./tests

