# kubectl
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
# NOTE: glibcのバージョンが合わない環境があるのでmuslを使う
zinit ice lucid \
  as'program' from'gh-r' \
  bpick'*-musl.*' \
  pick'delta-*/delta'
zinit light dandavison/delta

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
  ver'v0.9.1' \
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
