# Fisher is a plugin manager for Fish—your friendly interactive shell
# > curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
# > fisher install FabioAntunes/fish-nvm
# > fisher install jethrokuan/z

# Homebrew
set PATH /opt/homebrew/bin $PATH

# nvm
set -gx NVM_DIR (brew --prefix nvm)
