#!/usr/bin/env bash

GOENV_INSTALL_PATH=$HOME/.goenv

if [ ! -d "$GOENV_INSTALL_PATH" ]; then
  git clone https://github.com/go-nv/goenv.git "$GOENV_INSTALL_PATH"
else
  cd "$GOENV_INSTALL_PATH" && git pull
fi
