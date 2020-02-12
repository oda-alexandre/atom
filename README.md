# ATOM

<img src="https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904435/220px-Atom_editor_logo.svg.png" width="200" height="200"/>

## INDEX

  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/atom/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/atom/commits/master)

## INTRODUCTION

Docker image of :

- [Atom](https://atom.io/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/atom/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/atom/).

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name atom -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/atom -e DISPLAY --privileged --network host alexandreoda/atom```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/atom/blob/master/LICENSE)
