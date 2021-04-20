export PATH=$HOME/.local/bin:$PATH

source_if_exists () {
	[[ -f "$1" ]] && source "$1"
}

source_if_exists "$HOME/.config/alias"

# History 
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space




## Vim mode
bindkey -v

# Search History
bindkey "^R" history-incremental-search-backward

# Prompt
autoload -Uz promptinit
promptinit
prompt fade white grey blue

# Basic completition
autoload -Uz compinit && compinit

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
