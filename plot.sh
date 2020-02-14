#!/bin/sh
docker run -i  magnayn/fireplug plot - < $1  > $1.png
