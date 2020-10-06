# ATOM

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904435/220px-Atom_editor_logo.svg.png)

- [ATOM](#atom)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [BUILD](#build)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/atom/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/atom/commits/master)

## INTRODUCTION

Docker image of :

- [Atom](https://atom.io/)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/atom/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/atom/).

## PREREQUISITES

Use [docker](https://www.docker.com)

## BUILD

### DOCKER RUN

```\
docker run -d \
--name atom \
--network host \
-e DISPLAY \
-v ${HOME}:/home/atom \
-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
-v /etc/localtime:/etc/localtime:ro \
alexandreoda/atom
```

### DOCKER COMPOSE

```yml
version: "2.0"

services:
  atom:
    container_name: atom
    image: alexandreoda/atom
    restart: "no"
    network_mode: host
    privileged: false
    environment:
      - DISPLAY
    volumes:
      - "${HOME}:/home/atom"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
      - "/etc/localtime:/etc/localtime:ro"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/atom/blob/master/LICENSE)
