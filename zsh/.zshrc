# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=200000
SAVEHIST=$HISTSIZE
setopt INC_APPEND_HISTORY SHARE_HISTORY HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS PROMPT_SUBST

# paths
export PATH="/opt/homebrew/opt/openssh/bin:/opt/homebrew/bin:$PATH"

# aliases
source ~/aliases.zsh

# editor
export EDITOR="zed --wait"
export VISUAL="zed --wait"

# pager
export PAGER=less

# SSH
export SSH_AUTH_SOCK="$(launchctl getenv SSH_AUTH_SOCK)"

# tooling
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# prompt
PROMPT='%F{cyan}%n@%m%f %F{yellow}%~%f $(git rev-parse --abbrev-ref HEAD 2>/dev/null) %# '

# theme
source ~/theme.zsh

# exports
source ~/exports.zsh
source ~/secrets.zsh

# ZSH highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
