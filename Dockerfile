
FROM alpine:latest

RUN apk update
RUN apk add --no-cache bash git openssh-client nodejs python3 py3-pip npm yarn pulumi docker
RUN pip3 install awscli --break-system-packages

RUN node --version
RUN npm --version
RUN aws --version
RUN pulumi version
RUN docker -v
RUN ssh -V
