#!/bin/sh

set -e

cd libxml2-build
sh ../autogen.sh $BASE_CONFIG $CONFIG || cat config.log
make -j$(nproc) V=1 CFLAGS="$CFLAGS -Werror"
make CFLAGS="$CFLAGS -Werror" check
