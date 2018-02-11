#!/usr/bin/env bash

cd prj-one
docker-compose up -d --build

cd ../prj-two
docker-compose up -d --build

cd ../proxy-prj
docker-compose up -d --build

cd ..
