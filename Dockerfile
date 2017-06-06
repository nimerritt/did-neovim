FROM base/archlinux

MAINTAINER Nicholas Merritt <nimerritt@gmail.com>

RUN pacman -Sy --no-confirm neovim
