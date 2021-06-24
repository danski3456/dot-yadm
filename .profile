# Find operating system

ostype="$OSTYPE"
ISMAC=false
ISLINUX=false
[[ $ostype =~ "darwin" ]] && ISMAC=true
[[ $ostype =~ "linux-gnu" ]] && ISLINUX=true
export ISMAC
export ISLINUX


# Basic XGD configs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Local executables
export PATH="$HOME/.local/bin:$PATH"

# Bash
mkdir -p "$XDG_DATA_HOME/bash"
export HISTIGNORE="s*"
export HISTCONTROL="ignoreboth:erasedups"

# Enable bash completition on OSX
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


# Poetry
export POETRY_VIRTUALENVS_IN_PROJECT=true


# Less history
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

# Pyenv configuration
source "$XDG_CONFIG_HOME/pyenv/pyenv.conf"
if command -v pyenv >/dev/null 2>&1; then
	eval "$(pyenv init --path)"
	eval "$(pyenv virtualenv-init -)"
fi

# Bash history
export HISTFILE="$XDG_DATA_HOME"/bash/history




# Use neovim is avaialbe 
if command -v nvim >/dev/null 2>&1; then
	export VISUAL="nvim"
	export EDITOR="nvim"
fi

LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS


export PATH="$HOME/.poetry/bin:$PATH"

# Bash rc
source "$XDG_CONFIG_HOME/bash/bashrc"

