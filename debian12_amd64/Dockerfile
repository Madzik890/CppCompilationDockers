FROM debian:bookworm

WORKDIR /home/msucharski/Documents

COPY conan_install_and_build.sh /usr/bin

RUN apt update
RUN apt -y install gcc g++ valgrind cmake 
RUN apt -y install python3 pip
RUN apt -y install nano mc
RUN pip install conan
RUN conan profile detect

RUN apt -y install libudev-dev libgl-dev libgl1-mesa-dev libx11-dev libx11-xcb-dev libfontenc-dev libice-dev libsm-dev libxau-dev libxaw7-dev libxcomposite-dev libxcursor-dev libxdamage-dev
RUN apt -y install libxi-dev libxinerama-dev libxkbfile-dev libxmuu-dev libxrandr-dev libxres-dev libxss-dev libxtst-dev libxv-dev libxxf86vm-dev libxcb-glx0-dev libxcb-render0-dev libxcb-render-util0-dev
RUN apt -y install libxcb-xkb-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-randr0-dev libxcb-shape0-dev libxcb-sync-dev libxcb-xfixes0-dev libxcb-xinerama0-dev
RUN apt -y install libxcb-dri3-dev uuid-dev libxcb-cursor-dev libxcb-dri2-0-dev libxcb-dri3-dev libxcb-present-dev libxcb-composite0-dev libxcb-ewmh-dev libxcb-res0-dev
RUN apt -y install libxcb-util-dev libxcb-util0-dev
RUN apt -y install pkg-config

RUN chmod +x /usr/bin/conan_install_and_build.sh