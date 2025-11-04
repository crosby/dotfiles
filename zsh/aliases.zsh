# Better LS commands
alias ls='eza --git --group-directories-first'
alias ll='eza -l --git --group-directories-first'
alias la='eza -la --git --group-directories-first'
alias lt='eza -T --git'

# Better cat
alias cat='bat --paging=always'

# Zed config encryption/decryption
alias encrypt-zed-config='sops --encrypt --input-type json --output-type json --pgp $PGP_KEY ~/.dotfiles/zed/.config/zed/settings.json > ~/.dotfiles/zed/.config/zed/settings.json.enc'
alias decrypt-zed-config='sops --decrypt --input-type json --output-type json ~/.dotfiles/zed/.config/zed/settings.json.enc > ~/.dotfiles/zed/.config/zed/settings.json'

# Brew
alias bundle="brew bundle --file=~/Brewfile"
