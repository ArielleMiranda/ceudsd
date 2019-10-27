#!/bin/sh

docker cp airbnb.json mongo:/tmp/
docker exec -it mongo mongoimport --host=ceudsd.net --port=27017 --bypassDocumentValidation --legacy --collection=airbnb --db=mydatabase --file=/tmp/airbnb.json







