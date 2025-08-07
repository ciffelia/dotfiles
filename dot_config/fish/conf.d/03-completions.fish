#!/usr/bin/env fish

set -l completions_dir $XDG_DATA_HOME/dotfiles/fish-completions

if not test -d "$completions_dir"
    refresh_completions
end

if not contains $completions_dir $fish_complete_path
    set -gxp fish_complete_path $completions_dir
end
