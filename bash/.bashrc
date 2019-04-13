#
# ~/.bashrc
#

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Prompt
PS1="[\[\e[1;36m\]\u \W\[\e[0m\]] \[\e]2;\w\a\]"
# PS1="[\[\e[31;32m\]\u \W\[\e[0m\]] "

# Source the aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Use vim
export EDITOR=vim

# Ignore certain files for tab-completion
export FIGNORE=DS_Store:localized

# Path
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# ls colors
LS_COLORS="$LS_COLORS:di=01;32";
export LS_COLORS

# System info when opening new terminal
#neofetch
