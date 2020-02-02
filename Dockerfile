FROM       ubuntu:16.04
MAINTAINER propicee

RUN apt-get -y update

RUN apt-get -y install wget

RUN mkdir -p /software

RUN cd /software &&\
 wget "ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-centos_linux64.tar.gz" && \
 tar -zxvf sratoolkit.current-centos_linux64.tar.gz && \
 rm -rf sratoolkit.current-centos_linux64.tar.gz && \
 mv sratoolkit* sra

ENV PATH="$PATH:/software/sra/bin"
CMD tail -f /dev/null
