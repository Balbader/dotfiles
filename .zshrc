# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/mnt/nfs/homes/baalbade/sgoinfre/.brew/bin:$PATH"

# ZSH_THEME="balou"
# ZSH_THEME="robbyrussell"

# LVIM ===========================================================
export EDITOR='lvim'
export PATH="$HOME/.local/bin":$PATH

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
	cmdtime
	git
	zsh-autosuggestions
	colored-man-pages
	web-search
	command-time
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
alias nvim="nvim"

# lvim ========================================================================
alias lv="lvim"

# Helix =======================================================================
alias h="hx"

# vimrc && zshrc ==============================================================
alias lconf="lvim ~/.config/lvim/config.lua"
alias vimconf="lvim ~/.vimrc"
alias zconf="lvim ~/.zshrc"
alias kconf="lvim ~/.config/kitty/kitty.conf"
alias sconf="lvim ~/.config/starship.toml"
alias tconf="lvim ~/.config/terminator/config"

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

# Makefile cmds ===============================================================
alias m="make"
alias mf="make fclean"
alias mc="make clean"
alias mr="make re"

# GCC =========================================================================
alias go="gcc -g -Wall -Wextra -Werror -g3"

# Valgrind ====================================================================
alias val="valgrind  --leak-check=full --track-origins=yes --show-leak-kinds=all --show-reachable=yes"

# fsanatize ===================================================================
alias fsan="gcc -fsanitize=address -g3"

source /mnt/nfs/homes/baalbade/sgoinfre/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
