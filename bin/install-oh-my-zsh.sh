#!/usr/bin/env bash

OHMYZSH_INSTALL_PATH=$HOME/.oh-my-zsh

if [ ! -d "$OHMYZSH_INSTALL_PATH" ]; then
  git clone https://github.com/ohmyzsh/ohmyzsh.git "$OHMYZSH_INSTALL_PATH"
  git clone https://github.com/romkatv/powerlevel10k.git "$OHMYZSH_INSTALL_PATH/custom/themes/powerlevel10k"
else
  cd "$OHMYZSH_INSTALL_PATH" && git pull
  cd "$OHMYZSH_INSTALL_PATH/custom/themes/powerlevel10k" && git pull
fi
