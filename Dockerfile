FROM ubuntu:latest

# Install dependencies for c++

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y \
       cmake \
       g++ \
       make 


WORKDIR /app
COPY . /app

RUN mkdir -p build && cd build \
    && cmake .. \
    && make

WORKDIR /app/build
    
ENTRYPOINT ["./hello_world"]

