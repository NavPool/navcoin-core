FROM ubuntu:18.04

COPY ./ /data
WORKDIR /data

RUN apt-get update --fix-missing
RUN apt-get install -y git curl

RUN curl -o- https://raw.githubusercontent.com/navcoin/navcoin-dev-tools/master/ubuntu-18.04-navcoin-core-dev-setup.sh | bash

#RUN apt-get install -y build-essential libcurl3-dev libunbound-dev libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
#RUN apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev libboost-all-dev
#RUN apt-get install -y libzmq3-dev libdb++-dev
#RUN apt-get install -y libgmp-dev libsodium-dev libseccomp-dev libcap-dev libssl-dev
#RUN apt-get install -y git curl

RUN cd depends && make

ENTRYPOINT ["/data/docker/entrypoint.sh"]