# Plugins
zinit lucid blockf light-mode for \
    @'zsh-users/zsh-autosuggestions' \
    @'zsh-users/zsh-completions' \
    @'zdharma-continuum/fast-syntax-highlighting'

# mcfly
zinit ice lucid \
    as'program' from'gh-r' \
    atload'eval "$(mcfly init zsh)"'
zinit light cantino/mcfly

# Terminal module from prezto
zstyle ':prezto:load' pmodule 'terminal'
zstyle ':prezto:module:terminal:window-title' format '%n@%m: %s'
zstyle ':prezto:module:terminal:tab-title' format '%m: %s'
zstyle ':prezto:module:terminal:multiplexer-title' format '%s'
zinit ice lucid blockf
zinit snippet PZTM::terminal

# Alias
alias reload='exec $SHELL --login'
