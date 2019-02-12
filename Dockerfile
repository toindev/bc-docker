FROM alpine:latest

RUN apk add --no-cache bc

#If this image is needed, then the -l flag is probably needed as well
CMD bc -l

