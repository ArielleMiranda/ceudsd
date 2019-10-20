# NoSQL Exercises

[REDIS](#redis)

[INFLUX](#influx)

[MONGO](#mongo)

[SOLR](#solr)

[NEO4J](#neo4j)

[HOMEWORK](#homework)  

<a name="redis"/>

## REDIS

<a name="influx"/>

#### Links to help you
https://redis-py.readthedocs.io/en/latest/index.html

https://redis.io/commands#

#### Connect to Redis with Python (Use Zeppelin notebook with Python interpreter)
```
import redis
r = redis.Redis(host='dsd-redis.4phq3b.ng.0001.euw1.cache.amazonaws.com', port=6379)
```

#### SET
```
r.set('foo', 'bar')
```

#### GET
```
r.get('foo')
```
#### OVERWRITE WITH EXPIRATION
```
r.set('foo','bar2',ex=5)
```
#### IS IT THERE?
```
r.get('foo')
```

#### SET A NUMBER
```
r.set("something", 10)
r.get('something')
```

#### INCREASE NUMBER VALUE
```
r.incr("something")
r.get('something')
```

#### STORE MULTIPLE KEY-VALUE
```
r.mset({'one': 1, 'two': 2, 'three': 3})
```

#### DISPLAY ALL KEYS STORED IN DB
```
r.keys()
```

#### RETRIEVE MULTIPLE VALUES BY KEY 
```
r.mget('one','three')
```
#### DELETE A VALUE BY KEY
```
r.delete('three')
```
#### CHECK THE EXISTENCE OF A KEY
```
r.exists('one')
```

## INFLUX

#### Links to help you
https://docs.influxdata.com/influxdb/v1.0/query_language/data_exploration/

https://docs.influxdata.com/influxdb/v1.0/query_language/math_operators/

https://docs.influxdata.com/influxdb/v1.0/query_language/functions/


#### Schema exploration
Let’s explore the databases in this Influx DBMS:
```
SHOW DATABASES
```

Notice “NOAA_water_database” database in the list.  Similar list you get, if you use the top banner database selector. Please select “NOAA_water_database” in this banner.

Now, let’s see the tables in this DB. In Influx tables are called “measurements”.

```
SHOW MEASUREMENTS
```

The columns here are called fields and tags. From your perspective, there is not much difference between them (in reality tags can be accessed faster). These 2 commands are listing the column names for all measurements:

```
SHOW FIELD KEYS 
```

```
SHOW TAG KEYS 
```

#### Data Exploration

Simple SELECT:
```
SELECT * FROM h2o_feet
```

LIMIT function:
```
SELECT * FROM h2o_feet LIMIT 5
```

ORDER BY:
```
SELECT * FROM h2o_feet ORDER BY time DESC LIMIT 10
```

SELECT specified columns:
```
SELECT location,water_level FROM h2o_feet LIMIT 10
```

Let’s try a where clause:
```
SELECT *  FROM h2o_feet WHERE location = 'santa_monica' LIMIT 10
```
### INFLUX Exercise 1: HOW MANY “DEGREE” MEASUREMENT POINTS WE HAVE IN H2O_TEMPERATURE?

### INFLUX Exercise 2: LIST THE DISTINCT LEVEL DESCRIPTORS FOR H2O_FEET?


MEAN as aggregation function:

```
SELECT MEAN(water_level) FROM h2o_feet GROUP BY location 
```

### INFLUX Exercise 3: BETWEEN 2015-08-19 AND 2015-08-27 HOW MANY DAILY H2O_FEET MEASUREMENTS WERE DONE IN 'coyote_creek'


#### Advanced Data Exploration

Arithmetic SELECT:
```
SELECT (water_level * 2) + 4 from h2o_feet LIMIT 10
```

Some statistical functions:
```
SELECT SPREAD(water_level) FROM h2o_feet
```
```
SELECT STDDEV(water_level) FROM h2o_feet
```
```
SELECT PERCENTILE(water_level,5) FROM h2o_feet WHERE location = 'coyote_creek'
```

## MONGO

<a name="mongo"/>

#### Connect to MongoDB with Python (Use Zeppelin notebook with Python interpreter)

```
import pymongo
import pprint
mongo = pymongo.MongoClient("mongodb://xxx:27017")
```
#### Select a database and a collection

If database or collection does not exsits, will be created with the first data write (eg. insert line)

```
db = mongo["mydatabase"]
customers = db["customers"]
```

#### List collections stored in the database
```
db.list_collection_names()
```

#### Insert a document
```
id = customers.insert_one({ "name": "John", "address": "Boston Highway 37" }).inserted_id
```

#### Find 

Find the customer inserted by id. Pretty print the result.
```
pprint.pprint(customers.find_one({"_id": id}))
```

Find multiple customers by "name" field. Inverse sort by "address". Limit to 5. In order to print the result we iterating over the result set and pretty print each resulting JSON.


```
for customer in customers.find({"name": "John"}).sort("address",-1).limit(5):
    pprint.pprint(customer)
```

#### Count 

```
customers.count_documents({"name": "John"})
```

#### Distinct

Find the customers called "John" which address starts with "Boston" and print out distinct addresses.

```
for customer in customers.find({"name":"John","address": {"$regex": "^Boston"}}).distinct("address"):
    pprint.pprint(customer)
```

#### Airbnb Sample database
```
airbnb = db["airbnb"]
pprint.pprint(airbnb.find_one())
```

#### Advance filtering

Filter by a deeper JSON field. Print only part of JSON.

```
for listing in airbnb.find({ "address.country": "Spain" }).limit(10):
    pprint.pprint(listing['address']['government_area'])
```

### MONGO Exercise 1: COUNT HOW MANY AIRBNB LISTINGS WE HAVE IN THE SAMPLE DATABASE HAVING "COUNTRY_CODE" "US" OR "ADDRESS.MARKET" STARTWITH "M" (USE MONGODB DOCUMENTATION LIKE https://docs.mongodb.com/manual/)

<a name="solr"/>

## SOLR

#### Links to help you
https://cwiki.apache.org/confluence/display/solr/The+Standard+Query+Parser

http://yonik.com/solr/query-syntax/



#### Simple queries

SOLR has different connectors to programming languages. For simple query testing, we don’t need to program because SOLR is offering so called HTTP Rest interface. These are basically url calls from a browser.

The simplest query (the result is limited by default to 10):
```
http://ceudsd.net:8081/solr/flightdelays/select?q=*:* 
```

[In SQL would be something like this:
`SELECT * FROM flightdelays`]

Same query, but now limited to 3 results:
```
http://ceudsd.net:8081/solr/flightdelays/select?q=*:*&rows=2
```

[In SQL would be something like this:
`SELECT * FROM flightdelays LIMT 3`]

Same query, but the output is CSV:
```
http://ceudsd.net:8081/solr/flightdelays/select?q=*:*&rows=2&wt=csv
```

Same as the first query, but requesting only one field of the document (YEAR):

```
http://ceudsd.net:8081/solr/flightdelays/select?q=*:*&fl=YEAR
```
[In SQL would be something like this:
`SELECT year FROM flightdelays`]

Same as the first query, but requesting only the fields starting with “D”:
```
http://ceudsd.net:8081/solr/flightdelays/select?q=*:*&fl=D*
```

Same as the first query, but requesting two fields of the document (YEAR,ORIG_CITY):
```
http://ceudsd.net:8081/solr/flightdelays/select?q=*:*&fl=YEAR,ORIG_CITY
```
[In SQL would be something like this:
`SELECT year,origin FROM flightdelays`]


Sort by distance in descending order:
```
http://ceudsd.net:8081/solr/flightdelays/select?q=*:*&rows=5&sort=DISTANCE desc
```


#### Ranges 
Return the documents where distance is between 0 and 500, show only DISTANCE,ORIG_CITY,DEST_CITY field.
```
http://ceudsd.net:8081/solr/flightdelays/select?fl=DISTANCE,ORIG_CITY,DEST_CITY&q=DISTANCE:[0 TO 500]
```

Return the documents from this last 5 years, show only time_hour field.

```
http://ceudsd.net:8081/solr/flightdelays/select?fl=DATE&q=DATE:[NOW-10YEARS TO *]
```

#### Fuzzy
Show me the tailnums for tail numbers starting with any character, followed by “2”, followed by 2 any character, followed by "jb"
```
http://ceudsd.net:8081/solr/flightdelays/select?fl=TAIL_NUMBER&q=TAIL_NUMBER:?2??jb
```

Show me destination cities (2 distance) close to "balabany"
```
http://ceudsd.net:8081/solr/flightdelays/select?fl=DEST_CITY&q=DEST_CITY:balabany~2
```

#### Facets
Give me the flights with TAIL_NUMBER = N928SW and return facets for airline and destination airport:
```
http://ceudsd.net:8081/solr/flightdelays/select?facet.field=AIRLINE_str&facet.field=DEST_AIRPORT_str&facet=on&q=TAIL_NUMBER:N928SW
```

#### GEO SPACIAL SEARCH
Give the record within a circular circle defined by center point of 39.85,-104.66 [lat,lon] and diameter of 2 kilometer. Display only ORIG_CITY in the result set and facests for DEST_CITY_str,ORIG_CITY_str.

```
http://ceudsd.net:8081/solr/flightdelays/select?d=2&facet.field=DEST_CITY_str&facet.field=ORIG_CITY_str&facet=on&fl=ORIG_CITY&fq={!geofilt}&pt=39.85,-104.66&q=*:*&sfield=ORIG_LOCATION_p
```

#### SOLR Exercise 1: HOW MANY FLIGHTS HAVE NO ARRIVAL DELAY?





<a name="neo4j"/>

## NEO4J

#### Links to help you

https://neo4j.com/developer/cypher-query-language/

http://neo4j.com/docs/developer-manual/current/cypher/

https://cloudfront-files-1.publicintegrity.org/offshoreleaks/neo4j/guide/index.html

 

#### Simple queries

In Neo4J the SELECT is called MATCH. One of the simplest query is selecting 25 Officer nodes :

```
MATCH (n:Officer) 
RETURN n LIMIT 25
```

[In SQL would be something like this:
`SELECT * FROM Officer AS n LIMIT 5`]

Same SELECT but instead of node the node name is returned:
```
MATCH (n:Entity) 
RETURN n.name LIMIT 25
```
[In SQL would be something like this:
`SELECT name FROM Entity AS n LIMIT 25`]


We can use WHERE clause to filter our result:
```
MATCH (o:Officer)
WHERE o.countries CONTAINS 'Hungary'
RETURN o
```

[In SQL would be something like this:
`SELECT o.countries FROM Officer AS o WHERE o.countries LIKE '%Hungary%'`]



### NEO4J Exercise 1: RETURN THE FIRST 25 ADDRESS NODES

### NEO4J Exercise 2: HOW MANY PROPERTIES AN ADDRESS NODE HAS? 

### NEO4J Exercise 3: RETURN THE FIRST 30 COUNTRIES OF THE ADDRESS NODE

### NEO4J Exercise 4: HOW MANY ADDRESS NODES HAS 'Mexico' OR 'Monaco' IN THEIR ADDRESS PROPERTY?

####  JOINS

Find joint/linked entities with double MATCH, find the officers from Hungary and the Entities linked to them:
```
MATCH (o:Officer) 
WHERE o.countries CONTAINS 'Hungary'
MATCH (o)-[r]-(c:Entity)
RETURN o,r,c
```

[In SQL would be something like this:
`SELECT * 
FROM Officer as o  
INNER JOIN Entity as c 
USING (relationship)
`
]

A variation of the previous one, but here the link type is specified:
```
MATCH (o:Officer) 
WHERE o.countries CONTAINS 'Hungary'
MATCH (o)-[:DIRECTOR_OF]-(c:Entity)
RETURN o,c
```

Find the Officers called "aliyev" and Entities related to them:
```
MATCH (o:Officer) 
WHERE toLower(o.name) CONTAINS "aliyev"
MATCH (o)-[r]-(c:Entity)
RETURN o,r,c
```

### NEO4J Exercise 5: TRANSLATE THIS CYPHER QUERY TO SQL AS CLOSE AS YOU CAN.
```
MATCH (n:Officer) WHERE exists(n.countries)
RETURN n.country_codes, count(*)
ORDER BY count(*) DESC
LIMIT 10
```
What the previous query is returning?

#### Node analytics

Return all node labels
```
MATCH (n)
RETURN DISTINCT labels(n) 
```

Same as before, but using "WITH" 
```
MATCH (n)
WITH labels(n) AS type
RETURN DISTINCT type
```

Show the average degree by node type:
```
MATCH (n)
WITH labels(n) AS type, size( (n)--() ) AS degree
RETURN type, round(avg(degree)) AS avg
```

Calculate the degree and clustering_coefficient of a node:
```
MATCH (a:Officer {name: "Portcullis TrustNet (Samoa) Limited"})--(b)
WITH a, count(DISTINCT b) AS n
MATCH (a)--()-[r]-()--(a)
RETURN n as degree, count(DISTINCT r) AS clustering_coefficient
```

### NEO4J Exercise 6: List the name and degree of the top 10 most connected Officers from Romania.Tell me the no1.


<a name="homework"/>


# HOMEWORK (Optional)

Use the datasets configured for each DB and create queries to solve the following tasks:

* INFLUX: HOW MUCH IS THE AVERAGE H2O TEMPERATURE BY LOCATION ?

* SOLR: HOW MANY “B6” CARRIERS WE GOT IF FILTER IN ONLY THE DESTINATIONS STARTING WITH LETTER “B”?

* NEO4J: FIND THE ENTITIES RELATED TO OFFICERS NAMED “TUDOR” AND ALL NODES RELATED TO THESE ENTITIES.






