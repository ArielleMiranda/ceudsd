#!/bin/sh

BASE_DIR=`pwd`

docker run --name neo --env NEO4J_AUTH=neo4j/alma --env=dbms.active_database=panama.graphdb --env NEO4J_dbms_memory_heap_maxSize=10240 --env NEO4J_dbms_memory_heap_initialSize=8192 --restart unless-stopped -d -p 8080:7474 -p 7687:7687 -v $BASE_DIR/data:/data -v $BASE_DIR/conf:/conf -v $BASE_DIR/logs:/logs neo4j:3.1



