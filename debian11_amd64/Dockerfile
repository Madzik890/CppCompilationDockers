FROM debian:bullseye

WORKDIR /home/msucharski/Documents

COPY conan_install_and_build.sh /usr/bin

RUN apt update
RUN apt -y install gcc g++ valgrind cmake 
RUN apt -y install python3 pip
RUN apt -y install nano mc
RUN pip install conan
RUN conan profile detect
#RUN conan profile update settings.compiler.libcxx=libstdc++11 default

RUN chmod +x /usr/bin/conan_install_and_build.sh