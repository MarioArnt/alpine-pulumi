
FROM alpine:latest

RUN apk update
RUN apk add --no-cache bash git openssh-client nodejs npm python3 yarn
RUN apk add --no-cache terraform --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN apk add py3-pip
RUN pip3 install --upgrade pip
RUN pip3 install awscli
RUN node --version
RUN npm --version
RUN terraform --version
RUN aws --version
RUN ssh -V

