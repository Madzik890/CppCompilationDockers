#!/bin/bash

docker container stop debian11arm64
docker container remove debian11arm64
docker run -v /home/msucharski:/home/msucharski:z -v /home/debian11arm64:/root/.conan2/p:z --name debian11arm64 --network host -it debian11_arm64