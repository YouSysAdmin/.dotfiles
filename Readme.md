# My DotFiles
Preparing my development environment with needed tools and configs.

## Preinstall requirements
- python
- unzip
- git
- curl
- wget

## Install
```shell
git clone git@github.com:YouSysAdmin/.dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
# copy here you Brewfile if you want use brew 
# for installation additional software during dotfiles install
./install
```

## Directories

```
.
├── Brewfile.dist         # default brew file
├── bin                   # scripts for install tools, etc 
├── config                # tools and software configs
│   ├── alacritty         # alacritty config files
│   ├── bash              # bash config files
│   ├── editorconfig      # ~/.editorconfig
│   ├── git               # git config files
│   ├── helix             # helix config files
│   ├── shell             # shared shell files [aliases, functions/ init, etc.]
│   ├── zellij            # zellij config files
│   └── zsh               # zsh config files
├── install               # execure for install dot files and tools
└── install.conf.yaml     # dotbot config file        
```

## Usage
Add your files to a ~/.shell directory, after dotfiles installation,
all files from this directory automatically load during start ZSH (additional variables, functions, etc.).

## Tools
### Doesn't install automatically [only configs]
- Alacritty - [A fast, cross-platform, OpenGL terminal emulator](https://github.com/alacritty/alacritty)

### Will be installed automatically
- Helix - [A post-modern modal text editor](https://github.com/helix-editor/helix)
- Lefthook - [Fast and powerful Git hooks manager for any type of projects](https://github.com/evilmartians/lefthook)
- OhMyZSH - [A delightful community-driven framework for managing your zsh configuration](https://github.com/ohmyzsh/ohmyzsh)
  with Powerlevel10k [theme](https://github.com/romkatv/powerlevel10k)
- Go-Task - [A task runner / simpler Make alternative written in Go](https://github.com/go-task/task)
- RBEnv - [Manage your app's Ruby environment](https://github.com/rbenv/rbenv)
- GOEnv - [Like pyenv and rbenv, but for Go](https://github.com/go-nv/goenv)
- NodEnv - [Manage multiple NodeJS versions](https://github.com/nodenv/nodenv)
- JC2AWS - [CLI for retrieve AWS credentials via Jumpcloud SAML](https://github.com/YouSysAdmin/jc2aws)
- Krew - [Find and install kubectl plugins](https://github.com/kubernetes-sigs/krew)
   - kube-ctx / kube-ns - [Faster way to switch between clusters and namespaces in kubectl](https://github.com/ahmetb/kubectx)
   - ~~kube-tap - [Kubectl plugin to interactively proxy Kubernetes Services with ease](https://github.com/soluble-ai/kubetap)~~
     not supported for m1/macos and lately it looks abandoned
- Kubectl - [Kubernetes CLI](https://github.com/kubernetes/kubectl)
- KubeColor - [Colorize your kubectl output](https://github.com/kubecolor/kubecolor)
- TFLint - [A Pluggable Terraform Linter](https://github.com/terraform-linters/tflint)
- TFSec - [TFSec is now part of Trivy](https://github.com/aquasecurity/tfsec)
- TFSwitch - [A command line tool to switch between different versions of terraform](https://github.com/warrensbox/terraform-switcher)
- Zellij - [A terminal workspace with batteries included](https://github.com/zellij-org/zellij)

## Additional packages
### Default packages for installing
#### All OS
```shell
zsh wget curl jq
```

### During Rbenv installing, the next packages will be installed/updated
See `bin/install-rbenv.sh`
#### APT (Debian based Linux)
```shell
autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev
```

#### Pacman (Arch based Linux)
```shell
base-devel rust libffi libyaml openssl zlib
```

#### MacOS (via Brew)
```
openssl@3 readline libyaml gmp autoconf
```
