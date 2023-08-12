if status is-interactive
    if not functions -q fisher
        curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
        fisher install jorgebucaran/fisher
    end

    mcfly init fish | source

    alias reload='exec "$SHELL" --login'

    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -la'
end
