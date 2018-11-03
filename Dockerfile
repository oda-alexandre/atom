FROM debian:latest

MAINTAINER https://oda-alexandre.github.io

RUN rm -rf /etc/apt/sources.list
RUN echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y --no-install-recommends wget sudo php7.0 python3 python3-setuptools ca-certificates curl fakeroot gconf2 gconf-service git gvfs-bin libasound2 libcap2 libgconf-2-4 libgtk2.0-0 libgtk-3-0 libnotify4 libnss3 libxkbfile1 libxss1 libxtst6 libgl1-mesa-glx libgl1-mesa-dri xdg-utils libcanberra-gtk-module apt-utils

RUN easy_install3 pip
RUN pip install autopep8

RUN wget https://atom.io/download/deb -O ~/atom-amd64.deb
RUN dpkg -i ~/atom-amd64.deb
RUN rm -rf ~/atom-amd64.deb

RUN apt-get --purge autoremove -y wget

RUN useradd -d /home/atom -m atom
RUN passwd -d atom
RUN adduser atom sudo

USER atom

CMD atom -f
