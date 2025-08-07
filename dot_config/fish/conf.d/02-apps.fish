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

# grc
if status is-interactive; and test -f /etc/grc.fish
    # Redefine PATH as a local variable to avoid modifying the global PATH.
    set -l PATH $PATH

    # Remove Windows directories (/mnt/c/*) from PATH if running on WSL.
    # This reduces the execution time of `type -q nonexistent_command` in grc.fish
    # from approximately 50ms to less than 1ms per invocation, significantly improving
    # shell startup performance.
    if string match -q -- "*microsoft*" (cat /proc/sys/kernel/osrelease)
        for i in (seq (count $PATH) | tac)
            if string match --quiet "/mnt/c/*" -- $PATH[$i]
                set --erase PATH[$i]
            end
        end
    end

    source /etc/grc.fish
end

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
