ARG BASE_IMG=docker.io/vladvetu/rockylinux
ARG BASE_TAG=8

FROM ${BASE_IMG}:${BASE_TAG}
LABEL maintainer="Vlad Vetu"

ENV packages="python3 python3-pip"

RUN dnf --setopt install_weak_deps=false -y install ${packages} \
  && dnf clean all \
  && rm -rf /var/cache/yum