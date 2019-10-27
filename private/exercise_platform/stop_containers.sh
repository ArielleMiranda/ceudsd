#!/bin/sh

BASE_DIR=`pwd`

docker stop ceudsd-mysql
docker stop zeppelin
docker rm ceudsd-mysql
docker rm zeppelin