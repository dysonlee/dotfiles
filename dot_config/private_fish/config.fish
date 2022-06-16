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

# Adapted from https://github.com/fish-shell/fish-shell/issues/4434#issuecomment-332626369
# only run in interactive (not automated SSH for example)
#if status is-interactive
# don't nest inside another tmux
#and not set -q TMUX
  # Adapted from https://unix.stackexchange.com/a/176885/347104
  # Create session 'main' or attach to 'main' if already exists.
  #tmux new-session -A -s main
#end
