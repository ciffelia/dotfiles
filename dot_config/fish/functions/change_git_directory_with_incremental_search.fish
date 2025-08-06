#!/usr/bin/env fish

function change_git_directory_with_incremental_search -d "Search ghq repositories with fzf and cd to selected one"
    set ghq_root (ghq root)
    set repo (ghq list | fzf --preview "onefetch --no-art -- '$ghq_root/{}'" --height 70%)

    if test -n "$repo"
        cd $ghq_root/$repo
    end
end
