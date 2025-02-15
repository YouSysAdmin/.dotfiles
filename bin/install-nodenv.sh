#!/usr/bin/env bash

NODENV_INSTALL_PATH=$HOME/.nodenv

if [ ! -d "$NODENV_INSTALL_PATH" ]; then
  git clone https://github.com/nodenv/nodenv.git "$NODENV_INSTALL_PATH"
  git clone https://github.com/nodenv/node-build.git "$NODENV_INSTALL_PATH"/plugins/node-build
else
  cd "$NODENV_INSTALL_PATH" && git pull
  cd "$NODENV_INSTALL_PATH"/plugins/node-build && git pull
fi
