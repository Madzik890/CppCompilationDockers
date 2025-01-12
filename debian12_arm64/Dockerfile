FROM amd64/debian:bookworm

WORKDIR /home/msucharski/Documents

RUN mkdir -p /usr/aarch64-linux-gnu/lib && ln -s /usr/aarch64-linux-gnu/lib /usr/lib/aarch64-linux-gnu
RUN dpkg --add-architecture arm64 && apt update && apt upgrade -y && apt update && apt install -y build-essential binutils-multiarch crossbuild-essential-amd64 nano g++-12-aarch64-linux-gnu gcc-12-aarch64-linux-gnu-base cmake vim mc && apt clean
RUN ln -s /usr/bin/aarch64-linux-gnu-g++-12 /usr/bin/aarch64-linux-gnu-g++ && ln -s /usr/bin/aarch64-linux-gnu-gcc-12 /usr/bin/aarch64-linux-gnu-gcc

RUN apt -y install python3 pip
RUN apt -y install nano mc
RUN rm /usr/lib/python3.*/EXTERNALLY-MANAGED
RUN pip install conan
RUN conan profile detect

COPY arm /root/.conan2/profiles 
COPY aarch64-linux-gnu-ldd /usr/bin
COPY conan_install_and_build.sh /usr/bin

RUN chmod +x /usr/bin/conan_install_and_build.sh

RUN apt -y install gcc-12-base:arm64 krb5-locales libc6:arm64 libcom-err2:arm64 libcrypt1:arm64 libgcc-s1:arm64 libgssapi-krb5-2:arm64 libidn2-0:arm64 libk5crypto3:arm64 libkeyutils1:arm64 libkrb5-3:arm64 libkrb5support0:arm64 libnsl2:arm64 libtirpc3:arm64 libunistring2:arm64

RUN apt -y install libgl-dev:arm64 libgl-dev:arm64 xkb-data:arm64 libx11-xcb-dev:arm64 libice-dev:arm64 libx11-dev:arm64 libx11-xcb-dev:arm64 libfontenc-dev:arm64 libice-dev:arm64 libsm-dev:arm64 libxau-dev:arm64 libxaw7-dev:arm64
RUN apt install -y libxcomposite-dev:arm64 libxcursor-dev:arm64 libxdamage-dev:arm64 libxfixes-dev:arm64 libxi-dev:arm64 libxinerama-dev:arm64 libxkbfile-dev:arm64 libxmuu-dev:arm64 libxrandr-dev:arm64 libxrender-dev:arm64 libxres-dev:arm64 libxss-dev:arm64 libxtst-dev:arm64 libxv-dev:arm64 libxxf86vm-dev:arm64 libxcb-glx0-dev:arm64 libxcb-render0-dev:arm64 libxcb-render-util0-dev:arm64 libxcb-xkb-dev:arm64 libxcb-icccm4-dev:arm64 libxcb-image0-dev:arm64 libxcb-keysyms1-dev:arm64 libxcb-randr0-dev:arm64 libxcb-shape0-dev:arm64 libxcb-sync-dev:arm64 libxcb-xfixes0-dev:arm64 libxcb-xinerama0-dev:arm64 libxcb-dri3-dev:arm64 uuid-dev:arm64 libxcb-cursor-dev:arm64 libxcb-dri2-0-dev:arm64 libxcb-present-dev:arm64 libxcb-composite0-dev:arm64 libxcb-ewmh-dev:arm64 libxcb-res0-dev:arm64
RUN apt install -y libxcb-util-dev:arm64 libxcb-util0-dev:arm64
RUN apt install -y pkg-config

RUN apt install -y libgles2-mesa-dev:arm64 libdbus-1-dev:arm64

RUN export PKG_CONFIG_PATH=/usr/lib/aarch64-linux-gnu/pkgconfig/