#!/usr/bin/env bash

(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  STABLE=$(curl -LS https://dl.k8s.io/release/stable.txt) &&
  curl -fsSLO "https://dl.k8s.io/release/${STABLE}/bin/${OS}/${ARCH}/kubectl" &&
  chmod +x kubectl &&
  cp kubectl  "$HOME/.local/bin/kubectl"
)
