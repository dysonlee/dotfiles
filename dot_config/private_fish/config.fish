# Fisher related
# A plugin manager for Fish—the friendly interactive shell.
# * NVM support, make sure you have NVM installed first.
# > fisher install FabioAntunes/fish-nvm edc/bass
# * z tracks the directories you visit
# > fisher install jethrokuan/z
#
# Macports support
# > fish_add_path /opt/local/bin

if status is-interactive
    # nvm config
    function nvm
        bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
    end
    set -x NVM_DIR ~/.nvm
    nvm use default --silent

    alias vim="nvim"
end

