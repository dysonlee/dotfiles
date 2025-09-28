# Fisher is a plugin manager for Fish—your friendly interactive shell
# > curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
# > fisher install FabioAntunes/fish-nvm
# > fisher install jethrokuan/z

# Homebrew
set PATH /opt/homebrew/bin $PATH

# nvm
set -gx NVM_DIR (brew --prefix nvm)

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# tmux startup shortcut keys
function t
    set -l session_name main

    tmux has-session -t $session_name > /dev/null 2>&1

    if test $status -eq 0
        tmux attach-session -t $session_name
    else
        tmux new-session -s $session_name
    end
end

# generate uuid and copy to clipboard
function uuid; uuidgen | pbcopy; end

