#!/usr/bin/env bash

dir="$(mktemp -d)"

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
curl --location "$url" | tar -C "$dir" -xz
if [[ $? -ne 0 ]]
then
    echo
    echo "Extracting binary failed :("
    echo "One probable cause is that a new release just happened and the binary is currently building."
    echo "Maybe try again later? :)"
    exit 1
fi
cp "$dir/zellij" $HOME/.local/bin/zellij
exit
