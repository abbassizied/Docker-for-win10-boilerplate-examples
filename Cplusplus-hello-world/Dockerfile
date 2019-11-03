FROM cpp-build-base:0.1.0 AS build
MAINTAINER Abbassi Zied <abbassizied@outlook.fr>
WORKDIR /app
COPY CMakeLists.txt main.cpp ./
RUN cmake . && make
FROM ubuntu:bionic
WORKDIR /opt/hello-world
COPY --from=build /app/helloworld ./
CMD ["./helloworld"]