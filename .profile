# Find operating system

ISMAC=false
ISLINUX=false
[[ $OSTYPE == "darwin*" ]] && ISMAC=true
[[ $OSTYPE == "linux-gnu" ]] && ISLINUX=true
export ISMAC
export ISLINUX


# Basic XGD configs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Local executables
export PATH="$HOME/.local/bin:$PATH"

# Matplotlib
# export MPLBACKEND="module://mpldock.backend"

# Poetry
export POETRY_VIRTUALENVS_IN_PROJECT=true
export PATH="/Users/danski/github/myscripts:$PATH"

# Less history
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history


source "$XDG_CONFIG_HOME/bash/bashrc"

# Bash history
export HISTFILE="$XDG_DATA_HOME"/bash/history


# Use neovim is avaialbe 
if command -v nvim >/dev/null 2>&1; then
	export VISUAL="nvim"
	export EDITOR="nvim"
fi
