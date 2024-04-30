
FROM alpine:latest

RUN apk update
RUN apk add --no-cache bash git openssh-client nodejs npm yarn pulumi docker
RUN node --version
RUN npm --version
RUN pulumi version
RUN docker -v
RUN ssh -V

