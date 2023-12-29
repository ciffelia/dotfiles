# kubectl
if (( $+commands[kubectl] )); then
  source <(kubectl completion zsh)
fi

# Helm
if (( $+commands[helm] )); then
  source <(helm completion zsh)
fi

# fzf
zinit ice lucid \
  as'program' from'gh-r' \
  ver'0.44.1'
zinit light junegunn/fzf

zinit ice lucid \
  id-as'junegunn/fzf/shell' \
  as'null' \
  ver'0.44.1' \
  pick'shell/completion.zsh' \
  src'shell/key-bindings.zsh'
zinit light junegunn/fzf

# cf. https://tech-broccoli.life/articles/engineer/use-fzf
export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --border \
  --preview-window 'right:50%' \
  --bind 'ctrl-/:change-preview-window(80%|hidden|)' \
  --bind 'shift-up:preview-half-page-up,shift-down:preview-half-page-down'"

# onefetch
zinit ice lucid \
  as'program' from'gh-r' \
  atclone'./onefetch --generate zsh > _onefetch' \
  atpull"%atclone"
zinit light o2sh/onefetch

# mcfly
zinit ice lucid \
  as'program' from'gh-r' \
  bpick'*-x86_64-*' \
  atload'eval "$(mcfly init zsh)"'
zinit light cantino/mcfly

# lsd
zinit ice lucid \
  as'program' from'gh-r' \
  pick'lsd-*/lsd'
zinit light lsd-rs/lsd

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

# difftastic
zinit ice lucid \
  as'program' from'gh-r'
zinit light Wilfred/difftastic

# chezmoi
zinit ice lucid \
  as'program' from'gh-r' \
  bpick'chezmoi_*.tar.gz' \
  cp'completions/chezmoi.zsh -> _chezmoi'
zinit light twpayne/chezmoi

# neovim
# NOTE: GitHubのlatest releaseがバージョンタグではなく"stable"タグを指している。zinit updateができなくて困るのでバージョンタグを指定している。
zinit ice lucid \
  as'program' from'gh-r' \
  ver'v0.9.4' \
  pick'nvim-*/bin/nvim' \
  nocompletions
zinit light neovim/neovim

# ghq
zinit ice lucid \
  as'program' from'gh-r' \
  pick'ghq_*/ghq'
zinit light x-motemen/ghq

# packer.nvim が存在しない場合はダウンロードする
# 一度ダウンロードしたあとは packer.nvim 自身が管理してくれる
if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
  git clone --filter=blob:none https://github.com/wbthomason/packer.nvim.git \
    $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
fi
