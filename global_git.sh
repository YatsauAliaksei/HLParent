#!/bin/bash
COMMAND=$@
MODULES=(Crypto P2PMessage P2PMessageSystem HyperledgerJ)
BASE_DIR=`pwd`

for module in ${MODULES[@]}; do
    cd ../$module
    git $COMMAND
    cd $BASE_DIR
done

exit 0
