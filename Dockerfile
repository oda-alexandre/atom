# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER atom

# ADD contrib non-free IN /etc/apt/sources.list
RUN rm -rf /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \

# INSTALL PACKAGES
apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
apt-utils \
wget \
git \
curl \
fakeroot \
php \
composer \
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
libcanberra-gtk-module && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECT USER
USER ${USER}

# SELECT WORKING SPACE
WORKDIR /home/${USER}

# INSTALL PACKAGES python
RUN sudo easy_install3 pip && \
sudo pip install autopep8 && \

# INSTALL APP
wget https://atom.io/download/deb -O atom-amd64.deb && \
sudo dpkg -i atom-amd64.deb && \

# CLEANING
sudo apt-get --purge autoremove -y \
wget && \
rm -rf atom-amd64.deb

# START THE CONTAINER
CMD atom -f \
