ARG BASE_IMAGE_TAG="8u212-b04-jdk-stretch"
ARG SBT_VERSION="1.3.3" 
ARG SCALA_VERSION="2.13.1" 

FROM mozilla/sbt

WORKDIR /root

ADD . join-backend/

WORKDIR join-backend/

RUN sbt stage

