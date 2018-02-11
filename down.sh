#!/usr/bin/env bash

cd proxy-prj
docker-compose down

cd ../prj-one
docker-compose down

cd ../prj-two
docker-compose down

cd ..
