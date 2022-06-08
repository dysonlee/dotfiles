if status is-interactive
    # Commands to run in interactive sessions can go here
    [ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

    alias vim="nvim"
    alias vi="nvim"

    # nvm config
    function nvm
        bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
    end
    set -x NVM_DIR ~/.nvm
    nvm use default --silent
end
