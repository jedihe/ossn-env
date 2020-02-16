#!/bin/bash

mkdir -p volumes/ossn volumes/ossn_data

git clone --branch 5.2 https://github.com/opensource-socialnetwork/opensource-socialnetwork.git volumes/ossn

sed -i.bak "s/VAR_HOST_UID/$(id -u)/g" docker-compose.yml && rm docker-compose.yml.bak
