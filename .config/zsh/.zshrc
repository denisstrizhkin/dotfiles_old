# Commands history
HISTFILE=~/.cache/zsh_histfile
HISTSIZE=1000
SAVEHIST=1000

# Emacs like editing
bindkey -e

# Completion
autoload -U compinit
compinit

# Clone antidote if necessary
if ! [[ -e ${ZDOTDIR}/.antidote ]]; then
  git clone https://github.com/mattmc3/antidote.git ${ZDOTDIR}/.antidote
fi

# Source antidote and load plugins from `${ZDOTDIR}/.zsh_plugins.txt`
source ${ZDOTDIR}/.antidote/antidote.zsh
antidote load

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
