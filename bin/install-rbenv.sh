#!/usr/bin/env bash

RBENV_INSTALL_PATH=$HOME/.rbenv

if [ ! -d "$RBENV_INSTALL_PATH" ]; then
  git clone https://github.com/rbenv/rbenv.git "$RBENV_INSTALL_PATH"
  git clone https://github.com/rbenv/ruby-build.git "$RBENV_INSTALL_PATH"/plugins/ruby-build
else
  cd "$RBENV_INSTALL_PATH" && git pull
  cd "$RBENV_INSTALL_PATH"/plugins/ruby-build && git pull
fi
