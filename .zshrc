
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/opt/nvim/"

# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  web-search
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

alias icat="kitty +kitten themes"
alias cl="clear"
alias vi="nvim"
alias zz="nvim ~/.zshrc"
alias kk="nvim ~/.config/kitty/kitty.conf"
alias p="python3"
alias so="source ~/.zshrc"
alias cc="claude code"
alias dd="pnpm dev"
alias bu="pnpm build"
alias rr="npx -y react-doctor@latest ."
alias ls="eza --icons --grid --group-directories-first -la"
alias xx="exit"

# Git =========================================================================
alias g="git"
alias gb="git branch"
alias del="git branch -D"
alias gch="git checkout -b"
alias gs="git switch"
alias ga="git add"
alias gp="git push"
alias gpl="git pull"
alias gcm="git commit -m"
alias gcl="git clone"
alias grm="git rm -rf"
alias rm="rm -rf"
alias lg="lazygit"
alias lad="lazydocker"
alias yy="yazi"
alias tt="tldr"


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/space.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/craver.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/zash.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/tiwahu.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/gruvbox.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/material.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/spaceship.omp.json')"
eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/illusi0n.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/avit.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/grandpa-style.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/emodipt-extend.omp.json')"

source ~/.nvm/nvm.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/baalbade/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
. "/home/baalbade/.deno/env"

# pnpm
export PNPM_HOME="/home/baalbade/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(zoxide init zsh)"

# bun completions
[ -s "/home/baalbade/.bun/_bun" ] && source "/home/baalbade/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

