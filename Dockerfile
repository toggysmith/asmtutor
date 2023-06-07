FROM --platform=linux/386 alpine:3.18.0
RUN apk update && apk add nasm binutils
WORKDIR /app
COPY . .
