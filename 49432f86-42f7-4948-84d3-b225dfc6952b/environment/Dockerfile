FROM registry.codeocean.com/codeocean/r-base:3.5.3-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends software-properties-common \
    && apt-key adv --keyserver "hkp://keyserver.ubuntu.com:80" --recv-keys \
      "0xAD2323F17326AE31401037733E05EBFF05441C52" \
    && add-apt-repository -y "deb http://deb.codeocean.com/rstudio-server-bionic/ ubuntu main" \
    && apt-get purge -y --autoremove software-properties-common \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
      "build-essential=12.4ubuntu1" \
      "libgit2-dev=0.26.0+dfsg.1-1.1ubuntu0.2" \
      "libssl-dev=1.1.0g-2ubuntu4.3" \
      "pkg-config" \
      "r-base=3.6.0-1bionic" \
      "rstudio-server=1.2.1335" \
    && rm -rf /var/lib/apt/lists/*
