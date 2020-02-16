#!/bin/bash

[ ! -e volumes ] && mkdir -p volumes

[ ! -e volumes/ossn ] && git clone --branch 5.2 https://github.com/opensource-socialnetwork/opensource-socialnetwork.git volumes/ossn

if [ -f local.env ]
then
  echo "Found local.env file, leaving it as it is."
else
  echo "Initializing local.env..."
  touch local.env
  echo "-- Setting HOST_UID to value: $(id -u)"
  echo "HOST_UID=$(id -u)" >> local.env
fi
