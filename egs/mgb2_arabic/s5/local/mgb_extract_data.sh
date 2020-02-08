#!/usr/bin/env bash

if [[ ! -e "DB/train.tar.gz" || ! -e "DB/dev.tar.gz" ]]; then
  echo "You need to download the MGB-2 first and copy dev.tar.gz and train.tar.gz to DB directory"
  echo "check: https://arabicspeech.org/mgb2"
  exit 1
fi

if [[ -d train && -d dev && -d test ]]; then
    echo "Directories DB/{train,dev,test} exist. using them."
    exit 0;
fi

pushd DB
for x in *; do tar -xvf $x; done
popd
