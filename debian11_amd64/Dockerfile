FROM debian:bullseye

RUN apt update
RUN apt -y install gcc g++ valgrind cmake 
RUN apt -y install python3 pip
RUN apt -y install nano mc
RUN pip install conan
RUN conan profile detect