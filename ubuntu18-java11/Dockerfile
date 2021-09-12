# Base docker image for Ubuntu 18.04 to run applications with Java 11
FROM ubuntu:18.04
USER root

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN apt-get install wget -y
RUN wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
RUN tar -xzvf *.tar.gz
ENV JAVA_VERSION="jdk-11.0.2"
RUN mv $JAVA_VERSION /usr/local/share/
RUN rm *.tar.gz
ENV JAVA_HOME=/usr/local/share/$JAVA_VERSION
ENV PATH="$JAVA_HOME/bin:$PATH"