FROM debian:stretch-slim

MAINTAINER http://www.oda-alexandre.com/

# VARIABLES D'ENVIRONNEMENT
ENV USER atom
ENV LANG fr_FR.UTF-8

# AJOUT DES REPOS contrib non-free DANS LE FICHIER /etc/apt/sources.list
RUN rm -rf /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \

# INSTALLATION DES PREREQUIS
apt-get update && apt-get install -y --no-install-recommends \
sudo \
locales \
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

# SELECTION DE LA LANGUE FRANCAISE
echo ${LANG} > /etc/locale.gen && locale-gen && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# INSTALLATION DES PREREQUIS python
RUN sudo easy_install3 pip && \
sudo pip install autopep8 && \

# INSTALLATION DE L'APPLICATION
wget https://atom.io/download/deb -O atom-amd64.deb && \
sudo dpkg -i atom-amd64.deb && \

# NETTOYAGE
sudo apt-get --purge autoremove -y \
wget && \
rm -rf atom-amd64.deb

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD atom -f
