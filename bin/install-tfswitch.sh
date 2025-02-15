#!/usr/bin/env bash

TFSWITCH_INSTALL_PATH=$HOME/.local/bin
sh -c "$(curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/master/install.sh)" -- -b "$TFSWITCH_INSTALL_PATH"
