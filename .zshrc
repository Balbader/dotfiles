# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"
export TERM=xterm-256color

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# lvim ========================================================================
export EDITOR='lvim'
export PATH=$PATH:$HOME/.local/bin

ZSH_THEME="powerlevel10k/powerlevel10k"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	web-search
)

source $ZSH/oh-my-zsh.sh

# Example aliases

# Tmux ========================================================================
alias tm="tmux"
alias tmns="tmux new -s"
alias tmnsd="tmux new -d -s"
alias tml="tmux ls"
alias tma="tmux a"
alias tmk="tmux kill-ses"

# nvim ========================================================================
alias n="nvim"

# vimrc && zshrc ==============================================================
alias vimconf="vim ~/.vimrc"
alias zconf="vim ~/.zshrc"

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

# GCC =========================================================================
alias go="gcc -Wall -Wextra -Werror"

# Valgrind ====================================================================
alias val="valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all --show-reachable=yes"

# fsanatize ===================================================================
alias fsan="gcc -fsanatize=address -g2"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source /Users/basilalbader/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
