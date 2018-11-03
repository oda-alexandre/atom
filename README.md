# **<center>Atom</center>**


**INTRODUCTION**

*atom https://atom.io/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

copier/coller dans un terminal :

    mkdir $HOME/atom

    docker run -d --name atom -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}/atom:/home/atom/.atom -e DISPLAY alexandreoda/atom


**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/atom/blob/master/LICENSE)
alexandreoda
