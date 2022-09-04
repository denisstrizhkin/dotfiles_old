# Commands history
HISTFILE=~/.cache/zsh_histfile
HISTSIZE=1000
SAVEHIST=1000

# Emacs like editing
bindkey -e

# Completion
autoload -U compinit
compinit

# Prezto init
source "$ZDOTDIR"/.zprezto/init.zsh
