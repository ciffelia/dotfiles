# Helm
if (( $+commands[helm] )); then
  source <(helm completion zsh)
fi

# kubectl
if (( $+commands[kubectl] )); then
  source <(kubectl completion zsh)
fi

# bat
zinit ice lucid \
  as'program' from'gh-r' \
  pick'bat-*/bat' \
  cp'bat-*/autocomplete/bat.zsh -> _bat'
zinit light sharkdp/bat

# checksec
zinit ice lucid \
  as'program' \
  pick'checksec'
zinit light slimm609/checksec.sh

# chezmoi
zinit ice lucid \
  as'program' from'gh-r' \
  bpick'chezmoi_*.tar.gz' \
  cp'completions/chezmoi.zsh -> _chezmoi'
zinit light twpayne/chezmoi

# Cilium CLI
zinit ice lucid \
  as'program' from'gh-r'
zinit light cilium/cilium-cli

# Cilium Hubble CLI
zinit ice lucid \
  as'program' from'gh-r'
zinit light cilium/hubble

# delta
zinit ice lucid \
  as'program' from'gh-r' \
  pick'delta-*/delta' \
  atclone'./delta-*/delta --generate-completion zsh > _delta' \
  atpull'%atclone'
zinit light dandavison/delta

# difftastic
zinit ice lucid \
  as'program' from'gh-r'
zinit light Wilfred/difftastic

# fzf
zinit ice lucid \
  as'program' from'gh-r' \
  ver'0.48.0'
zinit light junegunn/fzf

zinit ice lucid \
  id-as'junegunn/fzf/shell' \
  as'null' \
  ver'0.48.0' \
  multisrc'shell/{completion,key-bindings}.zsh'
zinit light junegunn/fzf

# cf. https://tech-broccoli.life/articles/engineer/use-fzf
export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --border \
  --preview-window 'right:50%' \
  --bind 'ctrl-/:change-preview-window(80%|hidden|)' \
  --bind 'shift-up:preview-half-page-up,shift-down:preview-half-page-down'"

# ghq
zinit ice lucid \
  as'program' from'gh-r' \
  pick'ghq_*/ghq'
zinit light x-motemen/ghq

# kubeseal (Sealed Secrets)
zinit ice lucid \
  as'program' from'gh-r' \
  ver'v0.27.1'
zinit light bitnami-labs/sealed-secrets

# lsd
zinit ice lucid \
  as'program' from'gh-r' \
  pick'lsd-*/lsd'
zinit light lsd-rs/lsd

# mcfly
zinit ice lucid \
  as'program' from'gh-r' \
  bpick'*-x86_64-*' \
  atload'eval "$(mcfly init zsh)"'
zinit light cantino/mcfly

# neovim
zinit ice lucid \
  as'program' from'gh-r' \
  pick'nvim-*/bin/nvim' \
  nocompletions
zinit light neovim/neovim

# packer.nvim が存在しない場合はダウンロードする
# 一度ダウンロードしたあとは packer.nvim 自身が管理してくれる
if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
  git clone --filter=blob:none https://github.com/wbthomason/packer.nvim.git \
    $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

# onefetch
zinit ice lucid \
  as'program' from'gh-r' \
  atclone'./onefetch --generate zsh > _onefetch' \
  atpull'%atclone'
zinit light o2sh/onefetch

# rclone
zinit ice lucid \
  as'program' from'gh-r' \
  pick'rclone-*/rclone' \
  atclone'./rclone-*/rclone completion zsh _rclone' \
  atpull'%atclone'
zinit light rclone/rclone

# ripgrep
zinit ice lucid \
  as'program' from'gh-r' \
  pick'ripgrep-*/rg'
zinit light BurntSushi/ripgrep

# tfenv
export TFENV_CONFIG_DIR=${XDG_CONFIG_HOME:-$HOME/.config}/tfenv
zinit ice lucid \
  as'program' \
  ver'v3.0.0' \
  pick'bin/*'
zinit light tfutils/tfenv

# yq
zinit ice lucid \
  as'program' from'gh-r' \
  mv'yq_* -> yq' \
  atclone'./yq shell-completion zsh > _yq' \
  atpull'%atclone'
zinit light mikefarah/yq
