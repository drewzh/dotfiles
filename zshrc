# Source zgen
source ~/.dotfiles/zgen/zgen.zsh

if ! zgen saved; then
    echo "Saving zgen config..."

    zgen prezto

    # Load Plugins
    zgen prezto completion
    zgen prezto git
    zgen prezto dnf
    zgen prezto ssh
    zgen prezto gnu-utility
    zgen prezto command-not-found
    zgen prezto syntax-highlighting
    zgen prezto node
    zgen prezto directory
    zgen prezto archive
    zgen prezto history-substring-search
fi
