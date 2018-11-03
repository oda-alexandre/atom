# ATOM

![atom](/logo-atom.png) ![atom](/logo-docker.png)


[![atom docker build](https://img.shields.io/docker/build/alexandreoda/atom.svg)](https://hub.docker.com/r/alexandreoda/atom)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Atom](https://atom.io/) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/atom/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
    mkdir $HOME/atom
```
```
    docker run -d --name atom -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}/atom:/home/atom/.atom -e DISPLAY alexandreoda/atom
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/atom/blob/master/LICENSE)
