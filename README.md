# ATOM

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Atom_editor_logo.svg/220px-Atom_editor_logo.svg.png" width="200" height="200"/>


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [PREREQUISITESites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/atom/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/atom/commits/master)


## INTRODUCTION

Docker image of :

- [Atom](https://atom.io/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/android-root-tools/pipelines)

automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/atom/).


## PREREQUISITES

Use [docker](https://www.docker.com)


## INSTALL

```
docker run -d --name atom -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/atom -e DISPLAY alexandreoda/atom
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/atom/blob/master/LICENSE)
