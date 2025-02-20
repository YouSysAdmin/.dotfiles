#!/usr/bin/env bash

BINDIR="$HOME/.local/bin"
BINARY="zellij"
TMPDIR="$(mktemp -d)"

confirm() {
  read -r -p "${1:-Are you sure? [y/N]} " response
  case "$response" in
  [yY][eE][sS] | [yY])
    true
    ;;
  *)
    false
    ;;
  esac
}

if [ -f "$BINDIR/$BINARY" ]; then
  message_text=$(cat <<-EOF
  Zellij is currently installed.
  If you have any open Zellij sessions right now, you'll need to restart them,
  otherwise, you won't be able to start a new session until all sessions have been restarted.

  Are you sure? [y/N]
EOF
  )

  confirm "$message_text" || exit 0
fi

case $(uname -m) in
    "x86_64"|"aarch64")
        arch=$(uname -m)
    ;;
    "arm64")
        arch="aarch64"
    ;;
    *)
        echo "Unsupported cpu arch: $(uname -m)"
        exit 2
    ;;
esac

case $(uname -s) in
    "Linux")
        sys="unknown-linux-musl"
    ;;
    "Darwin")
        sys="apple-darwin"
    ;;
    *)
        echo "Unsupported system: $(uname -s)"
        exit 2
    ;;
esac

url="https://github.com/zellij-org/zellij/releases/latest/download/zellij-$arch-$sys.tar.gz"
curl --location "$url" | tar -C "$TMPDIR" -xz
if [[ $? -ne 0 ]]
then
    echo
    echo "Extracting binary failed :("
    echo "One probable cause is that a new release just happened and the binary is currently building."
    echo "Maybe try again later? :)"
    exit 1
fi
cp "$TMPDIR/$BINARY" "$BINDIR/$BINARY"
exit
