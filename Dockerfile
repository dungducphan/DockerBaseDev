FROM ubuntu:latest
RUN mkdir /home/workspace/
WORKDIR /home/workspace/
RUN apt-get update && apt-get upgrade -qy
RUN apt-get install -qy build-essential
RUN apt-get install -qy neovim
RUN apt-get install -qy python3-pip
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade numpy
RUN python3 -m pip install --upgrade scipy
RUN python3 -m pip install --upgrade matplotlib
RUN python3 -m pip install --upgrade pandas

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -qy install krb5-user
RUN apt-get -qy install ssh
COPY .ssh_config /home
RUN cat /home/.ssh_config >> /etc/ssh/ssh_config

RUN apt-get install -qy curl
RUN apt-get install -qy git
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN mkdir -p ~/.config/nvim/
RUN touch ~/.config/nvim/init.vim
COPY init.vim .
RUN cat init.vim >> ~/.config/nvim/init.vim