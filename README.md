# docker-crane-coscli

[![ci](https://github.com/quangthe/docker-crane-coscli/actions/workflows/build-docker.yaml/badge.svg)](https://github.com/quangthe/docker-crane-coscli/actions/workflows/build-docker.yaml)
[![Docker Stars](https://img.shields.io/docker/stars/pcloud/crane-coscli.svg?style=flat)](https://hub.docker.com/r/pcloud/crane-coscli/)
[![Docker Pulls](https://img.shields.io/docker/pulls/pcloud/crane-coscli.svg?style=flat)](https://hub.docker.com/r/pcloud/crane-coscli/)

An utility image with [Crane](https://github.com/google/go-containerregistry/blob/main/cmd/crane/doc/crane.md) and [COSCLI](https://www.tencentcloud.com/document/product/436/43249)

## Build and run

Local build
```shell
docker build  --build-arg COSCLI_VERSION=v0.20.0-beta  -t pcloud/crane-coscli .
```

Check COS version release here: [https://github.com/tencentyun/coscli/releases/](https://github.com/tencentyun/coscli/releases/)

Local run
```shell
docker run --rm -it pcloud/crane-coscli
```

```text
/ # coscli --version
coscli version v0.20.0-beta

/ # crane version
ea19b579661d99bc753c92e93730b8aab6ecd31b
```

## Use with CICD

### Gitlab CICD

```yaml
stages:
- build

my-job:
  stage: build
  image:
    name: pcloud/crane-coscli
    entrypoint: [""]
  script:
  - coscli --version
  - crane version
```