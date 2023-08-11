set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x EDITOR nvim

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

if status is-interactive
    alias reload='exec "$SHELL" --login'

    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -la'

    mcfly init fish | source
end
