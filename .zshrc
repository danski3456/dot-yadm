export PATH=$HOME/.local/bin:$PATH

## Vim mode
#bindkey -v

## Prompt
#autoload -U compinit colors vcs_info
#colors
#compinit

autoload -Uz promptinit
promptinit
prompt fade white grey blue

autoload -Uz compinit && compinit

## Aliases
#
alias ls="ls -G"
alias l="ls -lah"
alias rm="trash"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

## Git
alias g="git"
alias lg=lazygit

# Neovim
alias v="nvim"
alias vim="nvim"

alias Rz="source ~/.zshrc"
alias tmux="tmux -f ${HOME}/.config/tmux/tmux.conf"
alias git-tree="git log --graph --abbrev-commit --pretty=oneline"

## Python

alias S="source venv/bin/activate"
alias ipy="ipython --matplotlib=tk --no-confirm-exit --no-banner --quick --InteractiveShellApp.extensions=\"['autoreload']\" --InteractiveShellApp.exec_lines=\"['%autoreload 2', 'import os,sys']\""
