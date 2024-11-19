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

RUN chmod +x /usr/bin/conan_install_and_build.sh