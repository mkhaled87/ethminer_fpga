#!/bin/sh

# go to root
cd ..

# update repo
git pull
git submodule update --init --recursive

# notes
echo "On MacOS: install ethash: clone https://github.com/chfast/ethash, build as usual with cmake, make, sudo make install"
echo "On MacOS: Intall JSONCPP manually: brew uninstall jsoncpp, clone repo (https://github.com/open-source-parsers/jsoncpp), cmake -DBUILD_STATIC_LIBS=ON -DBUILD_SHARED_LIBS=OFF .., make, sudo make install !"
echo "On MacOS: Manuall tell CMAKE about OpenSSL instalation (used below): -DOPENSSL_ROOT_DIR=/openssl/install/path/"
echo "On MAcOS: Any other missing lib can be installed with brew"

# delete old project build and create new one
rm -rf build
mkdir build
cd build

# configure with cmake :: OpenCL only (system), no hunter
cmake .. -DHUNTER_ENABLED=OFF -DETHASHCL=ON -DETHASHCUDA=OFF -DAPICORE=OFF -DBINKERN=ON -DETHDBUS=OFF -DUSE_SYS_OPENCL=ON -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl/

# build
cmake --build .

