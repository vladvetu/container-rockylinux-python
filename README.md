# container-rockylinux-python
This image extends vladvetu/rockylinux base image with python runtime

This container image is built automatically on repository push.
# Table of Contents
- [container-rockylinux-python](#container-rockylinux-python)
- [Table of Contents](#table-of-contents)
  - [How to Build](#how-to-build)
  - [How to Use](#how-to-use)

## How to Build
If you want to build this image yourself follow this steps:
1. Install [Docker](https://docs.docker.com/get-docker/) or [Podman](https://podman.io/getting-started/installation) container engine
2. `clone` this repository and `cd` into the cloned directory
3. Run one of:
    1. `<docker/podman> build -t rockylinux-pyton:8-py3 .` 
    2. `<docker/podman> build --build-arg=BASE_IMG=docker.io/vladvetu/rockylinux --build-arg=BASE_TAG=8 -t vladvetu/rockylinux-python:8-py3 .` if you want to entend a specific image
4. After the build is successful you can view the image with `<docker/podman> images`
## How to Use
To use the repository image:
1. Install [Docker](https://docs.docker.com/get-docker/) or [Podman](https://podman.io/getting-started/installation) container engine
2. Pull this image from Docker Hub: `<docker/podman> pull docker.io/vladvetu/<replace_me>`
3. Run a container from the pulled image:
   1. Basic: `<docker/podman> run --tty --interactive docker.io/vladvetu/rockylinux-python:latest python3 -V` or use a specific image

> **Important Note**: Running containers with `--privileged` in PRODUCTION should be AVOIDED at any cost. The above examples are for testing purpose ONLY on a isolated environment. Use it at your own risk.