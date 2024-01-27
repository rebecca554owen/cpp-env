FROM gcc:bookworm
RUN apt update \
    && apt install -y \
    --no-install-recommends \
    cmake \
    wget \
    xz-utils \
    --no-install-recommends \
    && wget https://github.com/boostorg/boost/releases/download/boost-1.84.0/boost-1.84.0.tar.xz \
    && tar -xvf boost-1.84.0.tar.xz \
    && cd boost-1.84.0/ \
    && ./bootstrap.sh \
    && ./b2 install --prefix=/usr
