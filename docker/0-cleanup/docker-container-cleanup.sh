#!/bin/sh
docker container rm -f $(docker container ls -aq)
