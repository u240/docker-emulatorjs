FROM ghcr.io/linuxserver/baseimage-alpine:3.15 as binbuilder

RUN \
  echo "**** install build packages ****" && \
  apk add \
    curl \
    git \
    go

RUN \
  echo "**** build nestool ****" && \
  mkdir -p /build-out/usr/local/bin && \
  git clone https://github.com/Kreeblah/NES20Tool.git && \
  cd NES20Tool && \
  go build && \
  mv NES20Tool /build-out/usr/local/bin

RUN \
  echo "**** grab binmerge ****" && \
  BINMERGE_RELEASE=$(curl -sX GET "https://api.github.com/repos/putnam/binmerge/releases/latest" \
    | awk '/tag_name/{print $4;exit}' FS='[""]') && \
  curl -o \
    /tmp/binmerge.tar.gz -L \
    "https://github.com/putnam/binmerge/archive/${BINMERGE_RELEASE}.tar.gz" && \
  tar xf \
    /tmp/binmerge.tar.gz -C \
    /tmp/ --strip-components=1 && \
  chmod +x /tmp/binmerge && \
  mv /tmp/binmerge /build-out/usr/local/bin

FROM ghcr.io/linuxserver/baseimage-alpine:3.15 as nodebuilder

ARG EMULATORJS_RELEASE
ARG RETRO_VERSION=1.9.10

RUN \
  echo "**** install build packages ****" && \
  apk add \
    curl \
    nodejs \
    npm \
    p7zip \
    zip

RUN \
  echo "**** grab emulatorjs ****" && \
  mkdir /emulatorjs && \
  if [ -z ${EMULATORJS_RELEASE+x} ]; then \
    EMULATORJS_RELEASE=$(curl -sX GET "https://api.github.com/repos/linuxserver/emulatorjs/releases/latest" \
      | awk '/tag_name/{print $4;exit}' FS='[""]'); \
  fi && \
  curl -o \
    /tmp/emulatorjs.tar.gz -L \
    "https://github.com/linuxserver/emulatorjs/archive/${EMULATORJS_RELEASE}.tar.gz" && \
  tar xf \
    /tmp/emulatorjs.tar.gz -C \
    /emulatorjs/ --strip-components=1

RUN \
  echo "**** grab emulatorjs blobs ****" && \
  curl -o \
    /tmp/emulatorjs-blob.tar.gz -L \
    "https://github.com/thelamer/emulatorjs/archive/main.tar.gz" && \
  tar xf \
    /tmp/emulatorjs-blob.tar.gz -C \
    /emulatorjs/frontend/ --strip-components=1

RUN \
  echo "**** grab libretro blobs ****" && \
  curl -o \
    /tmp/custom-cores.tar.gz -L \
    "https://github.com/linuxserver/libretro-cores/archive/master.tar.gz" && \
  tar xf \
    /tmp/custom-cores.tar.gz -C \
    /emulatorjs/frontend/ --strip-components=1 && \
  rm /emulatorjs/frontend/README.md

RUN \
  echo "**** build emulatorjs ****" && \
  cd /emulatorjs && \
  npm install

# runtime stage
FROM ghcr.io/linuxserver/baseimage-alpine:3.15

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"

RUN \
  echo "**** install runtime packages ****" && \
  apk add --no-cache \
    curl \
    file \
    flac \
    go-ipfs \
    nginx \
    nodejs \
    p7zip \
    python3 \
    sdl2 && \
  mkdir /data && \
  echo "**** grab pre-built chdman ****" && \
  curl -L \
    "https://infura-ipfs.io/ipfs/QmUfYfuoxPgDRc9Mniv1TBXv6LXPRNArAabZo5VnzfZNtP" \
    -o /usr/local/bin/chdman && \
  chmod +x /usr/local/bin/chdman && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/*

# add local files and files from buildstage
COPY --from=binbuilder /build-out/ /
COPY --from=nodebuilder /emulatorjs/ /emulatorjs/
COPY root/ /

# ports
EXPOSE 80 3000
