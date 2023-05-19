FROM ubuntu:latest
## FROM icr.io/codeengine/alpine

RUN apt-get update && apt-get install -y curl

RUN mkdir -p /scripts
COPY script.sh /scripts
WORKDIR /scripts
RUN chmod +x script.sh

CMD ./script.sh