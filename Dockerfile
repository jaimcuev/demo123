FROM ubuntu:latest
## FROM icr.io/codeengine/alpine

RUN mkdir -p /scripts
COPY script.sh /scripts
WORKDIR /scripts
RUN chmod +x script.sh
RUN ./script.sh