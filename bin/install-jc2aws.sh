#!/usr/bin/env bash

JC2AWS_INSTALL_PATH=$HOME/.local/bin
sh -c "$(curl -L https://raw.githubusercontent.com/yousysadmin/jc2aws/master/scripts/install.sh)" -- -b "$JC2AWS_INSTALL_PATH"
