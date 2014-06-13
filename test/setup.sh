#!/bin/bash

function buildTarBall {
    #echo "LBSERROR: no tarball was created"
    #exit 1

    # create the tarball
    mkdir test-1.0.0
    cd test-1.0.0
    echo "hello world" > test.txt
    cd ..
    tar cjf test.tar.bz2 test-1.0.0
    mv test.tar.bz2 ~/sources
}

mkdir ~/sources

buildTarBall

# tell the LBS that the calling python script can continue
echo "LBSScriptFinished"

