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

# Helm
if (( $+commands[helm] )); then
  source <(helm completion zsh)
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

# neovim
zinit ice lucid \
  as'program' from'gh-r' \
  pick'nvim-linux64/bin/*' \
  nocompletions
zinit light neovim/neovim

# packer.nvim が存在しない場合はダウンロードする
# 一度ダウンロードしたあとは packer.nvim 自身が管理する
if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
  git clone --filter=blob:none https://github.com/wbthomason/packer.nvim \
    $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

# Fast Syntax Highlighting
zinit ice lucid blockf
zinit light zdharma-continuum/fast-syntax-highlighting

# completions
zinit ice lucid blockf \
  atload'zicompinit; zicdreplay'
zinit light zsh-users/zsh-completions

# autosuggestions
zinit ice lucid blockf \
  atload'!_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
