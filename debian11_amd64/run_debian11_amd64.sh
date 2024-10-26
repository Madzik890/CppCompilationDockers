#!/bin/bash

docker container remove debian11amd64
docker run -v /home/msucharski:/home/msucharski --name debian11amd64 --network host -it debian11_amd64