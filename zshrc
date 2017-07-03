# Source zgen
source ~/.dotfiles/zgen/zgen.zsh

if ! zgen saved; then
    echo "Saving zgen config..."

    zgen prezto

    # Load Plugins
    zgen prezto osx
    zgen prezto completion
    zgen prezto git
    zgen prezto dnf
    zgen prezto ssh
    zgen prezto command-not-found
    zgen prezto node
    zgen prezto directory
    zgen prezto archive
    zgen prezto history-substring-search
    zgen prezto syntax-highlighting
fi

zgen load bhilburn/powerlevel9k powerlevel9k
