# ATOM

![atom](https://raw.githubusercontent.com/oda-alexandre/atom/master/img/logo-atom.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/atom/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![atom docker build](https://img.shields.io/docker/build/alexandreoda/atom.svg)](https://hub.docker.com/r/alexandreoda/atom)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Atom](https://atom.io/) pour [docker](https://www.docker.com), mis à jour automatiquement dans le [docker hub](https://hub.docker.com/r/alexandreoda/atom/) public.


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name atom -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/atom -e DISPLAY alexandreoda/atom
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/atom/blob/master/LICENSE)
