# My DotFiles
Preparing my development environment with needed tools and configs.

## Preinstall requirements
### MacOS
- python
- unzip
- git
- curl
- wget

### Linux (APT)
- python
- git
- others will be installed during process via apt

## Install
```shell
git clone git@github.com:YouSysAdmin/.dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
./install
```
## Tools
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
### For Rbenv
#### Linux (APT)
```shell
apt-get install autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev
```
#### MacOS
```shell
brew install openssl@3 readline libyaml gmp autoconf
```
