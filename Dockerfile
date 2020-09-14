FROM ubuntu:18.04

#agt-get udate install cmake
WORKDIR /tmp
RUN apt-get update && \
    apt-get upgrade -y&& \
    apt-get install -y wget make git zlib1g-dev libssl-dev gperf  cmake g++  ca-certificates&& \	
    git clone https://github.com/tdlib/td.git && \
    cd td && \
    rm -rf build && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local .. &&\
    cmake --build . --target install &&\
    wget https://golang.org/dl/go1.15.2.linux-amd64.tar.gz &&\
    tar -C /usr/local -xzf go1.15.2.linux-amd64.tar.gz &&\
    cd / &&\
    rm  -rf /tmp &&\
    apt-get purge -y --auto-remove ... &&\
    apt-get clean -y  &&\
ENV PATH=/usr/local/go/bin:$PATH
WORKDIR /


