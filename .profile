# Basic XGD configs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Local executables
export PATH="$HOME/.local/bin:$PATH"

# Matplotlib
# export MPLBACKEND="module://mpldock.backend"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Poetry
export POETRY_VIRTUALENVS_IN_PROJECT=true
export PATH="/Users/danski/github/myscripts:$PATH"

# Less history
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history


source "$XDG_CONFIG_HOME/bash/bashrc"

# Bash history
export HISTFILE="$XDG_DATA_HOME"/bash/history
