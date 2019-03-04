# ATOM

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Atom_editor_logo.svg/220px-Atom_editor_logo.svg.png"/>

[![dockeri.co](https://dockeri.co/image/alexandreoda/atom)](https://hub.docker.com/r/alexandreoda/atom)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/atom.svg)](https://microbadger.com/images/alexandreoda/atom)
[![size](https://images.microbadger.com/badges/image/alexandreoda/atom.svg)](https://microbadger.com/images/alexandreoda/atom")
[![build](https://img.shields.io/docker/build/alexandreoda/atom.svg)](https://hub.docker.com/r/alexandreoda/atom)
[![automated](https://img.shields.io/docker/automated/alexandreoda/atom.svg)](https://hub.docker.com/r/alexandreoda/atom)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [Atom](https://atom.io/)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/atom/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name atom -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/atom -e DISPLAY alexandreoda/atom
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/atom/blob/master/LICENSE)
