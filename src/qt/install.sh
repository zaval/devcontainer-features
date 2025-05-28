#!/bin/bash

# Maintainer: Dmytrii Zavalnyi

QT_VERSION="${VERSION:-"6.9.0"}"

if [[ $QT_VERSION != 6* ]]
then
    echo "This script is only for installing Qt 6.x versions."
    exit 1
fi

set -e

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

export DEBIAN_FRONTEND=noninteractive
cd $HOME
apt-get update && apt-get install -y --no-install-recommends libgl-dev libegl-dev  libfontconfig1-dev  libinput-dev 
git clone git://code.qt.io/qt/qt5.git --branch ${QT_VERSION} --depth=1 qt6 && cd qt6/

./init-repository --module-subset=${MODULES:-"qtbase,qtdeclarative"}
mkdir qt6-build && cd qt6-build/
../configure -prefix /usr/local

cmake --build . --parallel $(nproc) 
cmake --install .

cd $HOME
rm -rf qt6
