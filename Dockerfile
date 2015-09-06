FROM buildpack-deps:xenial
MAINTAINER  Derrick Petzold "docker@petzold.io"

ADD . /src
WORKDIR /src

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      lsb-release \
      python3.5 \
      libpython3.5-dev \
    && rm -rf /var/lib/apt/lists/*  \
    && apt-get -yqq clean

RUN curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
RUN python3.5 get-pip.py
