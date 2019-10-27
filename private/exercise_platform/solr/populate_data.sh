#!/bin/sh


#ez a regu schema
#docker exec -it --user=solr solr bin/solr create -c dsdcore -n data_driven_schema_configs
#docker cp flights.csv solr:/opt/solr
#docker exec -it --user=solr solr bin/post -c dsdcore flights.csv


docker exec -it --user=solr solr bin/solr create -c flightdelays -n data_driven_schema_configs
docker cp flightdelays.csv solr:/opt/solr
docker exec -it --user=solr solr bin/post -c flightdelays flightdelays.csv

