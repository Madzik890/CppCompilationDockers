FROM amd64/debian:bullseye

WORKDIR /home/msucharski/Documents

RUN mkdir -p /usr/aarch64-linux-gnu/lib && ln -s /usr/aarch64-linux-gnu/lib /usr/lib/aarch64-linux-gnu
RUN dpkg --add-architecture arm64 && apt update && apt upgrade -y && apt update && apt install -y build-essential binutils-multiarch crossbuild-essential-amd64 nano g++-10-aarch64-linux-gnu gcc-10-aarch64-linux-gnu-base cmake vim mc && apt clean
RUN ln -s /usr/bin/aarch64-linux-gnu-g++-10 /usr/bin/aarch64-linux-gnu-g++ && ln -s /usr/bin/aarch64-linux-gnu-gcc-10 /usr/bin/aarch64-linux-gnu-gcc

RUN apt -y install python3 pip
RUN apt -y install nano mc
RUN pip install conan
RUN conan profile detect

COPY arm /root/.conan2/profiles 
COPY aarch64-linux-gnu-ldd /usr/bin
COPY conan_install_and_build.sh /usr/bin

COPY libwiringpi-dev_2.50-0ubuntu1_arm64.deb /root
COPY libwiringpi2_2.50-0ubuntu1_arm64.deb /root
COPY wiringpi_2.50-0ubuntu1_arm64.deb /root

RUN chmod +x /usr/bin/conan_install_and_build.sh

RUN apt -y install gcc-10-base:arm64 krb5-locales libc6:arm64 libcom-err2:arm64 libcrypt1:arm64 libgcc-s1:arm64 libgssapi-krb5-2:arm64 libidn2-0:arm64 libk5crypto3:arm64 libkeyutils1:arm64 libkrb5-3:arm64 libkrb5support0:arm64 libnsl2:arm64 libssl1.1:arm64 libtirpc3:arm64 libunistring2:arm64
RUN dpkg -i /root/libwiringpi2_2.50-0ubuntu1_arm64.deb
RUN dpkg -i /root/libwiringpi-dev_2.50-0ubuntu1_arm64.deb
RUN dpkg -i /root/wiringpi_2.50-0ubuntu1_arm64.deb