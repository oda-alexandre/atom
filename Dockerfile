FROM alexandreoda/starfighter

LABEL authors https://www.oda-alexandre.com

ENV USER atom
ENV HOME /home/${USER}
ENV APP https://atom.io/download/deb

RUN echo -e '\033[36;1m ******* ADD contrib non-free IN sources.list ******** \033[0m' && \
  rm -rf /etc/apt/sources.list && \
  echo "deb http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb-src http://deb.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb-src http://deb.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list && \
  echo "deb-src http://security.debian.org/debian-security/ stretch/updates main contrib non-free" >> /etc/apt/sources.list

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
  apt update && apt install -y --no-install-recommends \
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
  policykit-1 \
  libcanberra-gtk-module && \
  rm -rf /var/lib/apt/lists/*
  
RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER} && \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR ${HOME}

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m'
COPY ./requirements.txt  ${HOME}/requirements.txt

RUN sudo easy_install3 pip && \
  sudo pip install -r requirements.txt && \
  wget ${APP} -O atom-amd64.deb && \
  sudo dpkg -i atom-amd64.deb && \
  rm -rf atom-amd64.deb requirements.txt && \
  sudo apt-get --purge autoremove -y wget

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD atom -f \