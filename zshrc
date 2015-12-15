# Source zgen
source ~/.dotfiles/zgen/zgen.zsh

if ! zgen saved; then
    echo "Saving zgen config..."

    # Load OMZSH
    zgen oh-my-zsh

    # Setup theme
    zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train

    # Load Plugins
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/heroku
    zgen oh-my-zsh plugins/nmap
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/systemd
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/node
    zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/grunt
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/adb
    zgen oh-my-zsh plugins/history-substring-search

    zgen load unixorn/autoupdate-zgen
    zgen load zsh-users/zsh-syntax-highlighting
fi
