if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ""

function fish_prompt
    # Имя пользователя и хост
    set -l user (whoami)
    set -l host (hostname -s)

    # Цвета
    set_color yellow
    echo -n $user
    set_color normal
    echo -n '@'
    set_color red
    echo -n $host
    set_color normal
    echo -n ' '

    # Текущая директория (сокращённый путь)
    set_color green
    echo -n (prompt_pwd)
    set_color normal
    echo

    # Символ приглашения для обычного пользователя
    set_color green
    echo -n ' $ '
    set_color normal
end

alias y='foot --config=$HOME/.config/foot/foot-yazi.ini yazi'
alias v='nvim'
alias sv='sudo -E nvim'
alias nano='nvim'
alias c='cat'
