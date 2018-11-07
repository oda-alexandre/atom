FROM debian:latest

MAINTAINER https://oda-alexandre.github.io

RUN apt-get install -y --no-install-recommends sudo php7.0 python3 python3-setuptools ca-certificates curl fakeroot gconf2 gconf-service git gvfs-bin libasound2 libcap2 libgconf-2-4 libgtk2.0-0 libgtk-3-0 libnotify4 libnss3 libxkbfile1 libxss1 libxtst6 libgl1-mesa-glx libgl1-mesa-dri xdg-utils libcanberra-gtk-module apt-utils gnupg

RUN curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
RUN sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

RUN apt-get update

RUN apt-get install -y --no-install-recommends atom
RUN apt --fix-broken install -y

RUN useradd -d /home/atom -m atom
RUN passwd -d atom
RUN adduser atom sudo

USER atom

CMD atom -f
