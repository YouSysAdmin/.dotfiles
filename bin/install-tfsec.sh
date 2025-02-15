#!/usr/bin/env bash

export TFSEC_INSTALL_PATH=$HOME/.local/bin
curl -s https://raw.githubusercontent.com/aquasecurity/tfsec/master/scripts/install_linux.sh | bash
