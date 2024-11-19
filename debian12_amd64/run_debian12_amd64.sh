#!/bin/bash

docker container stop debian12amd64
docker container remove debian12amd64
docker run -v /home/msucharski:/home/msucharski:z -v /home/debian12amd64:/root/.conan2/p:z --name debian12amd64 --network host -it debian12_amd64