source ~/.dotfiles/antigen/antigen.zsh

# LOAD OH MY ZSH
antigen use oh-my-zsh

# OH MY PLUGINS
antigen bundle git
antigen bundle heroku
antigen bundle nmap
antigen bundle command-not-found
antigen bundle systemd
antigen bundle sudo
antigen bundle node
antigen bundle npm
antigen bundle grunt
antigen bundle docker
antigen bundle adb
antigen bundle history-substring-search

# SYNTAX HIGHLIGHTING
antigen bundle zsh-users/zsh-syntax-highlighting

# THEME
antigen theme agnoster

# APPLY
antigen apply
