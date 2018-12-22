FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# AJOUT DES REPOS contrib non-free DANS LE FICHIER /etc/apt/sources.list
RUN rm -rf /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
locales \
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
libcanberra-gtk-module

# SELECTION LANGUE FRANCAISE
ENV LANG fr_FR.UTF-8
RUN echo fr_FR.UTF-8 UTF-8 > /etc/locale.gen && locale-gen

# AJOUT UTILISATEUR
RUN useradd -d /home/atom -m atom && \
passwd -d atom && \
adduser atom sudo

# SELECTION UTILISATEUR
USER atom

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/atom

# INSTALLATION DES PREREQUIS python
RUN sudo easy_install3 pip && \
sudo pip install autopep8

# INSTALLATION DE L'APPLICATION
RUN wget https://atom.io/download/deb -O atom-amd64.deb && \
sudo dpkg -i atom-amd64.deb

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y \
wget && \
rm -rf atom-amd64.deb

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD atom -f
