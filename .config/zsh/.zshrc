# apply QT theme with qt5ct and qt6ct
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

# PATH
export PATH="$PATH:$HOME"/.local/bin

# Java
export _JAVA_AWT_WM_NONREPARENTING=1

# Run Hyprland
if [ $(tty) = "/dev/tty1" ]; then
    Hyprland
fi

# Clone antidote if necessary
# if ! [[ -e ${ZDOTDIR}/.antidote ]]; then
#   git clone https://github.com/mattmc3/antidote.git ${ZDOTDIR}/.antidote
# fi

# Source antidote and load plugins from `${ZDOTDIR}/.zsh_plugins.txt`
# source ${ZDOTDIR}/.antidote/antidote.zsh
# antidote load

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
