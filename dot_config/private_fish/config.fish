if status is-interactive
    # Commands to run in interactive sessions can go here
    [ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

    alias vim="nvim"
    alias vi="nvim"
    alias oldvim="vim"
end
