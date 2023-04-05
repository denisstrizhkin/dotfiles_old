# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Commands history
HISTFILE=~/.cache/zsh_histfile
HISTSIZE=1000
SAVEHIST=1000

# Vi like editing
bindkey -v

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
