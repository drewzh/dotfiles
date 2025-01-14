# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load powerlevel10k theme
zinit light romkatv/powerlevel10k

# Load essential plugins
zinit light-mode for \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions \
    zsh-users/zsh-syntax-highlighting \
    zsh-users/zsh-history-substring-search \
    sei40kr/zsh-lazy-nvm

# Load annexes
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# Created by `pipx` on 2024-09-02 13:03:04
export PATH="$PATH:/Users/andrew.higginson/.local/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Key bindings for substring history search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Use the built-in Zsh widget "complete-word" for Tab.
bindkey '^I' complete-word

# Zsh Completion
autoload -Uz compinit
compinit

# Make Tab completions appear in a menu, and allow navigation with arrow keys
zstyle ':completion:*' menu select

# Color directories in blue (di=34), executables in green (ex=32), etc.
# Feel free to tweak these to your liking.
zstyle ':completion:*' list-colors \
  'fi=0:di=34:ln=35:so=31:pi=33:ex=32:bd=34;46:cd=34;43:su=37;41:sg=30;43:tw=30;42:ow=34;42'
  
# Force color output
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Enable color for ls on macOS
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -lAG'

# Tell zsh-autosuggestions that pressing complete-word should accept suggestions.
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS+=(complete-word)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
