FROM phusion/baseimage:latest

MAINTAINER Mani Sarkar (from @adoptopenjdk)

RUN \
  apt-get update && \
  apt-get install -y \
    libxt-dev zip pkg-config libX11-dev libxext-dev \
    libxrender-dev libxtst-dev libasound2-dev libcups2-dev libfreetype6-dev && \
  rm -rf /var/lib/apt/lists/*

RUN \
  apt-get update

RUN \
  apt-get install -y mercurial ca-certificates-java build-essential
  
RUN \
  cd /tmp && \
  hg clone http://hg.openjdk.java.net/jdk9/jdk9 openjdk9 && \ 
  cd openjdk9 && \
  sh ./get_source.sh 

RUN \
  apt-get install -y unzip wget \
  wget http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz \
  unzip jdk-8u45-linux-x64.tar.gz -d /opt/jdk1.8.0 \

RUN \
  bash ./configure --with-cacerts-file=/etc/ssl/certs/java/cacerts --with-boot-jdk=/opt/jdk1.8.0

RUN \  
  make clean images && \
  cp -a build/linux-x86_64-normal-server-release/images/j2sdk-image \
    /opt/openjdk9 

RUN \
  apt-get purge -y --auto-remove mercurial ca-certificates-java build-essential openjdk-7-jdk default-jre && \
  rm -rf /var/lib/apt/lists/* 

RUN \  
  find /opt/openjdk9 -type f -exec chmod a+r {} + && \
  find /opt/openjdk9 -type d -exec chmod a+rx {} +

ENV PATH /opt/openjdk9/bin:$PATH
ENV JAVA_HOME /opt/openjdk9 