#!/bin/sh

BASE_DIR=`pwd`

sudo docker run --rm --name mongo -it -p 27017:27017 -d mongo:latest 

