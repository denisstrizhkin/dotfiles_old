# PATH
export PATH="$PATH:$HOME"/.config/emacs/bin
export PATH="$PATH:$HOME"/.local/bin

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME"/.local/lib64

# LAMMPS
export LAMMPS_POTENTIALS="$HOME"/.local/share/lammps/potentials

# zsh
export ZDOTDIR="$HOME"/.config/zsh

# Programs
export VISUAL="emacsclient -c"
export EDITOR="$VISUAL"
export TERMINAL=alacritty
export BROWSER=chromium-browser

# Java
export _JAVA_AWT_WM_NONREPARENTING=1

if [ $(tty) = "/dev/tty1" ]; then
	dbus-run-session sway
fi
