#!/bin/bash

function buildTarBall {
    #echo "LBSERROR: no tarball was created"
    #exit 1

    sleep 30

    # create the tarball
    mkdir test-1.0.0
    cd test-1.0.0
    echo "hello world" > test.txt
    cd ..
    tar cjf test.tar.bz2 test-1.0.0
    mv test.tar.bz2 ~/sources
}

mkdir ~/sources

# the shell parser must process non ascii characters
echo "EBG_Elektronik_Sertifika_Hizmet_Sağlayıcısı.pem"

buildTarBall
