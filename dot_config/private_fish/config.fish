# Fisher is a plugin manager for Fish—your friendly interactive shell
# > curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
# > fisher install FabioAntunes/fish-nvm edc/bass
# > fisher install jethrokuan/z

# Homebrew
set PATH /opt/homebrew/bin $PATH

# Rust
set PATH $HOME/.cargo/bin $PATH

# Nvm
if status is-interactive
    # nvm config
    function nvm
        bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
    end
    set -x NVM_DIR ~/.nvm
    nvm use default --silent

    alias vim="nvim"
end
