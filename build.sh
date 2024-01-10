#/bin/bash

set -xe

docker build -t openwrt_build .

docker run -it --rm \
  --name openwrt_build \
  --memory=15G \
  --memory-swap=15G \
  -v `pwd`/build:/build \
  -v `pwd`/files:/build/files \
  -v `pwd`/scripts:/build/scripts \
  openwrt_build $@

