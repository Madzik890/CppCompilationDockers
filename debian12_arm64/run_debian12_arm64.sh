#!/bin/bash

docker container stop debian12arm64
docker container remove debian12arm64
docker run --restart unless-stopped -v /home/msucharski:/home/msucharski:z -v /home/debian12arm64:/root/.conan2/p:z --name debian12arm64 --network host -it debian12_arm64