FROM debian:stretch

RUN sudo apt update && apt install -y \
  cmake \
  zlib1g-dev \
  build-essential \
  checkinstall \
  zlib1g-dev \
  libsodium-dev \
  libssl-dev \
  libsqlite3-dev \
  libasio-dev \
  libcurl4-openssl-dev \
  libsystemd-dev

WORKDIR /gunz

COPY . .

CMD [./build-linux.sh]
