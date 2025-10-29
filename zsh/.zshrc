# fast errors
case $- in *i*) ;; *) set -euo pipefail ;; esac

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=200000
SAVEHIST=$HISTSIZE
setopt INC_APPEND_HISTORY SHARE_HISTORY HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS PROMPT_SUBST

# paths
export PATH="/opt/homebrew/opt/openssh/bin:/opt/homebrew/bin:$PATH"

# aliases
source "aliases.zsh"

# editor
export EDITOR="zed --wait"
export VISUAL="zed --wait"

# pager
export PAGER=less

# tooling
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

# prompt
PROMPT='%F{cyan}%n@%m%f %F{yellow}%~%f $(git rev-parse --abbrev-ref HEAD 2>/dev/null) %# '
