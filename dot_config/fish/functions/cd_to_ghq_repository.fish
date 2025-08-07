#!/usr/bin/env fish

function cd_to_ghq_repository -d "Search repositories managed by ghq and cd to selected one"
    set -l ghq_root (ghq root)
    set -l repo (ghq list | fzf --preview "onefetch --no-art -- '$ghq_root/{}'" --height 70%)

    if test -n "$repo"
        cd $ghq_root/$repo
    end
end
