#!/bin/bash

function buildTarBall {
    echo "LBSERROR: no tarball was created"
    exit 1
}

mkdir ~/sources

buildTarBall

# tell the LBS that the calling python script can continue
echo "LBSScriptFinished"

