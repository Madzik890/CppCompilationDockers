#!/bin/bash

docker container stop raspbian_arm64
docker container remove raspbian_arm64
docker run -v /home/msucharski:/sdcard:z --name raspbian_arm64 --network host -it raspbian_arm64