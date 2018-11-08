FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

RUN rm -rf /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
apt-utils \
wget \
git \
curl \
fakeroot \
php7.0 \
python3 \
python3-setuptools \
gconf2 \
gconf-service \
gvfs-bin \
libasound2 \
libcap2 \
libgconf-2-4 \
libgtk2.0-0 \
libgtk-3-0 \
libnotify4 \
libnss3 \
libxkbfile1 \
libxss1 \
libxtst6 \
libgl1-mesa-glx \
libgl1-mesa-dri \
xdg-utils \
libcanberra-gtk-module

RUN useradd -d /home/atom -m atom && \
passwd -d atom && \
adduser atom sudo

USER atom

WORKDIR /home/atom

RUN sudo easy_install3 pip && \
sudo pip install autopep8

RUN wget https://atom.io/download/deb -O atom-amd64.deb && \
sudo dpkg -i atom-amd64.deb && \
rm -rf atom-amd64.deb

RUN sudo apt-get --purge autoremove -y \
wget

CMD atom -f
