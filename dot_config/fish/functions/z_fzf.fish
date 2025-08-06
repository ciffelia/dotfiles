#!/usr/bin/env fish

function z_fzf -d "Search frecent directories using z and cd to selected one"
    set -l dir (z --list | sort -rn | cut -c 12- | fzf --preview "lsd -lA --color always --icon always -- {}" --height 70%)

    if test -n "$dir"
        commandline " cd $dir"
        commandline -f repaint
        commandline -f execute
    end
end
