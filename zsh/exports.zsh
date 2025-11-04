export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# color + tools
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# PGP
export PGP_KEY='D589E4F336976716'
export GPG_TTY=$(tty)
