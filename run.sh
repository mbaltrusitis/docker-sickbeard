#!/bin/bash

# only run on a fresh machine where these container names are not used
docker run --name=vsickbeard mbaltrusitis/sickbeard echo 'Initializing volumes'
docker run --name=sickbeard --restart=always -d --volumes-from=vsickbeard \
  -p 8081:8081 mbaltrusitis/sickbeard
