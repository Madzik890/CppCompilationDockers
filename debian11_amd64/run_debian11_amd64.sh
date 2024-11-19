#!/bin/bash

docker container stop debian11amd64
docker container remove debian11amd64
docker run -v /home/msucharski:/home/msucharski:z -v /home/msucharski/debian11_amd64:/root/.conan2:z --name debian11amd64 --network host -it debian11_amd64