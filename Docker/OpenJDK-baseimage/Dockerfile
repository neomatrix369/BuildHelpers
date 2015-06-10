FROM phusion/baseimage:latest

MAINTAINER @adoptopenjdk

RUN \
  apt-get update && \
  apt-get install -y \
    libxt-dev zip pkg-config libX11-dev libxext-dev \
    libxrender-dev libxtst-dev libasound2-dev libcups2-dev libfreetype6-dev && \
  rm -rf /var/lib/apt/lists/*

RUN \
  apt-get update && \
  apt-get install -y \ 
    mercurial ca-certificates-java build-essential wget \
    unzip ccache g++-4.7-multilib libffi-dev