#!/usr/bin/env fish

function cd_to_git_repository_root -d "Change the current working directory to the root of the current git repository"
    set -l dir (git rev-parse --show-toplevel | string collect)

    if test -n "$dir"
        cd $dir
    end
end
