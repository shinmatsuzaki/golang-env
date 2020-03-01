# base image
FROM golang:latest

# update apt and add utility CMD tool
RUN apt-get update && apt-get -y install git tree vim bash curl && \
apt-get clean && rm -rf /var/lib/apt/lists/* && mkdir /work

# work dir
RUN mkdir /go/src/work
WORKDIR /go/src/work

# ADD host side's file to inside container
ADD . /go/src/work

# I would like to use 'll' inside the container
RUN echo 'alias ll="ls -l --color"' >> ~/.bashrc
