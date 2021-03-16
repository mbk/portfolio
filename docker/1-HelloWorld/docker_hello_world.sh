#!/bin/sh
docker image build --tag hello_world .
docker run --name hello -d -p 8080:80 hello_world:latest
