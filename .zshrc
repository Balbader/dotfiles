# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin":$PATH

# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# LVIM ===========================================================
export EDITOR='lvim'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 30

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
	git
	zsh-autosuggestions
	colored-man-pages
	web-search
)

# Message color.
ZSH_COMMAND_TIME_COLOR="cyan"

# Message to display (set to "" for disable).
ZSH_COMMAND_TIME_MSG="Execution time: %s sec"

source $ZSH/oh-my-zsh.sh

# User configuration ==========================================================

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='lvim'
fi

# Display images in the terminal ==============================================
alias icat="kitty +kitten themes"

# Tmux ========================================================================
alias tm="tmux"
alias tmns="tmux new -s"
alias tmnsd="tmux new -d -s"
alias tml="tmux ls"
alias tma="tmux a"
alias tmk="tmux kill-ses"

# nvim ========================================================================
alias vi="nvim"

# Helix =======================================================================
alias h="hx"

# vimrc && zshrc ==============================================================
alias vimconf="nvim ~/.vimrc"
alias zconf="nvim ~/.zshrc"
alias kconf="nvim ~/.config/kitty/kitty.conf"
alias sconf="nvim ~/.config/spaceship.zsh"
alias tconf="nvim ~/.config/terminator/config"

# Git =========================================================================
alias g="git"
alias ga="git add"
alias gp="git push"
alias gpl="git pull"
alias gcm="git commit -m"
alias gcl="git clone"
alias grm="git rm -rf"
alias rm="rm -rf"
alias cl="clear"
alias lg="lazygit"
alias lad="lazydocker"

# Makefile cmds ===============================================================
alias m="make"
alias mf="make fclean"
alias mc="make clean"
alias mr="make re"

# Yazi ========================================================================
alias yy="yazi"

# GCC =========================================================================
# alias go="gcc -g -Wall -Wextra -Werror -g3"

# Valgrind ====================================================================
alias val="valgrind  --leak-check=full --track-origins=yes --show-leak-kinds=all --show-reachable=yes"

# fsanatize ===================================================================
alias fsan="gcc -fsanitize=address -g3"

# eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source "$HOME/.zsh/spaceship/spaceship.zsh"
source /Users/basilalbader/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/Users/basilalbader/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="/Users/basilalbader/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
