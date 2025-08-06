#!/usr/bin/env fish

# fzf
if status is-interactive
    fzf --fish | source
end

# fzf configuration
# cf. https://tech-broccoli.life/articles/engineer/use-fzf
set -gx FZF_DEFAULT_OPTS "--height 50% --layout=reverse --border \
--preview-window 'right:50%' \
--bind 'ctrl-/:change-preview-window(80%|hidden|)' \
--bind 'shift-up:preview-half-page-up,shift-down:preview-half-page-down'"

# mcfly
if status is-interactive
    mcfly init fish | source
end

# Neovim
# packer.nvim が存在しない場合はダウンロードする
# 一度ダウンロードしたあとは packer.nvim 自身が管理してくれる
if not test -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
    git clone --filter=blob:none https://github.com/wbthomason/packer.nvim.git \
        $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
end
