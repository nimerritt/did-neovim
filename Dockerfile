FROM nimerritt/did-base

MAINTAINER Nicholas Merritt <nimerritt@gmail.com>

RUN pacman -Sy --noconfirm neovim
COPY scripts/configure-neovim.sh /scripts
RUN /scripts/configure-neovim.sh
