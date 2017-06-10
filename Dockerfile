FROM nimerritt/did-base

MAINTAINER Nicholas Merritt <nimerritt@gmail.com>

RUN apk add --no-cache neovim

ENV NVIM_PATH="/root/.config/nvim"
# Copy init.vim
COPY scripts/init.vim $NVIM_PATH/init.vim

# Install Plugins
COPY scripts/configure-neovim.sh /scripts
RUN /scripts/configure-neovim.sh
