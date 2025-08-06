#!/usr/bin/env fish

set fish_greeting

set -gx LANG en_US.UTF-8
set -gx EDITOR nvim

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx XDG_CACHE_HOME $HOME/.cache

fish_add_path --path $HOME/bin
fish_add_path --path $HOME/.local/bin
fish_add_path --path /usr/local/go/bin
fish_add_path --path $HOME/.cargo/bin

# Snap (workaround for https://qiita.com/sameyasu/items/072882ee92bca54906d8)
if test -f /etc/profile.d/apps-bin-path.sh
    bass source /etc/profile.d/apps-bin-path.sh
end

# mise
if status is-interactive
    mise activate fish | source
else
    mise activate fish --shims | source
end

# Deno
if test -d "$HOME/.deno"
    set -gx DENO_INSTALL $HOME/.deno
    fish_add_path --path $DENO_INSTALL/bin
end

if status is-interactive
    starship init fish | source
end
