# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#Remove padding between right prompt and screen
ZLE_RPROMPT_INDENT=0

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

### zsh Plugins ###
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jeffreytse/zsh-vi-mode

antigen theme romkatv/powerlevel10k

antigen apply

# Set vi keybindings
set -o vi

# Git shortcuts
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gg="git log --graph --oneline"

# Set default editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"
export GIT_EDITOR=vim

#Minikube
alias kubectl="minikube kubectl --"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
