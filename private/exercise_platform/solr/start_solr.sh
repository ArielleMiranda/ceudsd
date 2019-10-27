#!/bin/sh

BASE_DIR=`pwd`

docker run --restart unless-stopped --name solr -d -p 8081:8983 -e SOLR_HEAP=10240m -t solr

