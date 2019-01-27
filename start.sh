#!/bin/bash

docker build -t starter .
docker run  --rm -v "$(pwd)"/scripts:/usr/src/app/scripts  starter


