# --option=abc みたいなやつでも補完
setopt MAGIC_EQUAL_SUBST
# 補完をTab連打ではなく矢印キーで選択
zstyle ':completion:*' menu select interactive

# Aliases
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

# kubectl (Kubernetes)
if (( $+commands[kubectl] )); then
  source <(kubectl completion zsh)
fi

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

# chezmoi
zinit ice lucid \
  as'program' from'gh-r' \
  cp'completions/chezmoi.zsh -> _chezmoi'
zinit light twpayne/chezmoi

# Fast Syntax Highlighting
zinit ice lucid blockf
zinit light zdharma-continuum/fast-syntax-highlighting

# autosuggestions
zinit ice lucid blockf \
  atload'!_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# completions
zinit ice lucid blockf \
  atload'zicompinit; zicdreplay'
zinit light zsh-users/zsh-completions
