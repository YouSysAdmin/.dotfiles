#!/usr/bin/env bash

RBENV_INSTALL_PATH=$HOME/.rbenv
APT_PACKAGES=(autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev)
PACMAN_PACKAGES=(base-devel rust libffi libyaml openssl zlib)
BREW_PACKAGES=(openssl@3 readline libyaml gmp autoconf)

if [ ! -d "$RBENV_INSTALL_PATH" ]; then

  if [[ "$(uname)" == Darwin* ]] || [[ "$(uname)" == darwin* ]]; then
    if [[ ! -x "$(command -v brew)" ]]; then
      curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | sh
    fi
    brew install "${BREW_PACKAGES[@]}"
  fi

  if [[ "$(uname)" == Linux* ]] || [[ "$(uname)" == linux* ]]; then
    [[ -x "$(command -v pacman)" ]] && sudo pacman -S --needed "${PACMAN_PACKAGES[@]}"
    [[ -x "$(command -v apt)" ]] && sudo apt update && apt "${APT_PACKAGES[@]}"
  fi

  git clone https://github.com/rbenv/rbenv.git "$RBENV_INSTALL_PATH"
  git clone https://github.com/rbenv/ruby-build.git "$RBENV_INSTALL_PATH"/plugins/ruby-build
else
  cd "$RBENV_INSTALL_PATH" && git pull
  cd "$RBENV_INSTALL_PATH"/plugins/ruby-build && git pull
fi
