#!/usr/bin/env bash

GOTASK_INSTALL_PATH=$HOME/.local/bin
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -b "$GOTASK_INSTALL_PATH"
