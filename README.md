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

[![pipeline status](https://gitlab.com/oda-alexandre/atom/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/atom/commits/master)


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
