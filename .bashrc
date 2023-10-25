# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# PATH
export PATH="$PATH:$HOME"/.local/bin

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME"/.local/lib64

# LAMMPS
export LAMMPS_POTENTIALS="$HOME"/.local/share/lammps/potentials

# Programs
export VISUAL="vis"
export EDITOR="$VISUAL"
export TERMINAL=foot
export BROWSER=firefox-bin

# Java
export _JAVA_AWT_WM_NONREPARENTING=1

# Config home
export XDG_CONFIG_HOME="$HOME/.config"


# Aliases
alias ls="ls --color"
alias notebook='docker run --rm -p 8888:8888 -v "$(pwd)":/home/jovyan/work jupyter/scipy-notebook'
alias lynx="lynx -vikeys"


# Run sway
if [ $(tty) = "/dev/tty1" ]; then
    Hyprland
fi
