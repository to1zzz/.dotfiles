if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ""

function fish_prompt
    set -l user (whoami)
    set -l host (hostname -s)

    set_color yellow
    echo -n $user
    set_color normal
    echo -n '@'
    set_color red
    echo -n $host
    set_color normal
    echo -n ' '

    set_color green
    echo -n (prompt_pwd)
    set_color normal
    echo

    set_color green
    echo -n ' $ '
    set_color normal
end

alias y='foot --config=$HOME/.config/foot/foot-yazi.ini yazi'
abbr -a v nvim
abbr -a sv sudo -E nvim
abbr -a shx sudo -E hx

zoxide init fish | source
atuin init fish | source
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
