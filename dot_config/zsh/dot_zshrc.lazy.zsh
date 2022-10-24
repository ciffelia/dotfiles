# 補完をTab連打ではなく矢印キーで選択する
zstyle ':completion:*' menu select interactive

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

# Alias
alias reload='exec $SHELL --login'
