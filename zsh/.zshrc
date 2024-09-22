# Katherine's Zsh Config
# Dependencies:
# - https://github.com/zsh-users/zsh-syntax-highlighting
# - https://github.com/zsh-users/zsh-autosuggestions
# - https://github.com/agkozak/zsh-z
# - https://github.com/hlissner/zsh-autopair

# [[ Zsh Settings ]]
# =============

# Editor
export EDITOR='nvim'

# Aliases
alias vim="nvim"
alias v="nvim"
alias nv="nvim"
alias ls="lsd"
alias cat="bat"
alias top="bashtop"
alias htop="bashtop"
alias fetch="fastfetch"
alias neofetch="fastfetch"
alias peaclock="peaclock --config-dir ~/.config/peaclock"

# Disable Vim Mode
bindkey -e
# =============


# [[ Plugins ]]
# =============

# Starship Prompt
eval "$(starship init zsh)"

PLUGINS="$HOME/.config/zsh/plugins"

# Syntax Highlighting
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh

# Frequent Folders
export ZSHZ_DATA="$HOME/.config/zsh/.z_data"
source $PLUGINS/zsh-z/zsh-z.plugin.zsh

# Auto Pairs
source $PLUGINS/zsh-autopair/zsh-autopair.plugin.zsh

autopair-init
# =============


# [[ Customization ]]
# =============

# Highlight tab
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# History
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# Bun Completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
# =============


# [[ Environment Variables ]]
# =============

# Local binary
export PATH="$PATH:$HOME/.bin"

# C / C++ Compiler
export CC=clang
export CXX=clang++

# Pipx
export PATH="$PATH:$HOME/.local/bin"

# Cargo
export PATH="$PATH:$HOME/.cargo/bin"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go
export GOPATH="$HOME/.go"
# =============

# Extension Scripts
# =============

# source $ZDOTDIR/ssh_agent.sh

# =============
