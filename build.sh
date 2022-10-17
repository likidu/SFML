#!/bin/bash

SFML=SFML-2.5.1

CONFIG_ARGS=(
  -DCMAKE_BUILD_TYPE=Release
  -DBUILD_SHARED_LIBS=FALSE
  -DSFML_BUILD_DOC=FALSE
  -DSFML_BUILD_NETWORK=FALSE
  -DCMAKE_INSTALL_PREFIX="."
)

echo "Building SFML..."
rm -rf build && mkdir build && cd build || exit 1
emcmake cmake "${CONFIG_ARGS[@]}" .. || exit 1
emmake make sfml-system
emmake make install

echo -e "\n================ Done building SFML ====================\n" 