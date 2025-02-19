#!/usr/bin/env bash

# Base list of packages
#
APT_PACKAGES=(zsh wget curl unzip jq)
PACMAN_PACKAGES=(zsh wget curl unzip jq)
BREW_PACKAGES=(zsh wget curl jq)

# Install Homebrew and additional software if a ~/.dotfiles/Brewfile is present
if [[ "$(uname)" == Darwin* ]] || [[ "$(uname)" == darwin* ]]; then
  if [[ ! -x "$(command -v brew)" ]]; then
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | sh
  fi
  brew install "${BREW_PACKAGES[@]}"
  [[ -f ./Brewfile ]] && brew bundle || exit 0
fi

if [[ "$(uname)" == Linux* ]] || [[ "$(uname)" == linux* ]]; then
  [[ -x "$(command -v pacman)" ]] && sudo pacman -S --needed "${PACMAN_PACKAGES[@]}"
  [[ -x "$(command -v apt)" ]] && sudo apt update && apt "${APT_PACKAGES[@]}"
fi
