# --option=abc みたいなやつでも補完
setopt MAGIC_EQUAL_SUBST

# 補完をTab連打ではなく矢印キーで選択する
zstyle ':completion:*' menu select interactive

# Alias
alias reload='exec $SHELL --login'
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -la'

# pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# Plugins
zinit lucid blockf light-mode for \
  @'zsh-users/zsh-autosuggestions' \
  @'zsh-users/zsh-completions' \
  @'zdharma-continuum/fast-syntax-highlighting'

# Docker completions
zinit ice lucid blockf as'completion'
zinit snippet https://github.com/docker/cli/raw/master/contrib/completion/zsh/_docker

# mcfly
zinit ice lucid \
  as'program' from'gh-r' \
  atload'eval "$(mcfly init zsh)"'
zinit light cantino/mcfly

# lsd
zinit ice lucid \
  as'program' from'gh-r' \
  pick'lsd-*/lsd'
zinit light Peltoche/lsd

# bat
zinit ice lucid \
  as'program' from'gh-r' \
  pick'bat-*/bat' \
  cp'bat-*/autocomplete/bat.zsh -> _bat'
zinit light sharkdp/bat

# delta
zinit ice lucid \
  as'program' from'gh-r' \
  pick'delta-*/delta'
zinit light dandavison/delta
