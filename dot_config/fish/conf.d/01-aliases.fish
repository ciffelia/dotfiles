#!/usr/bin/env fish

alias reload 'exec fish'

alias ls 'lsd'
alias la 'lsd -a'
alias ll 'lsd -la'

alias c 'z_fzf'
alias g 'cd_to_ghq_repository'
alias t 'cd_to_git_repository_root'
alias aws-ss 'aws_ssm_start_session_with_incremental_search'

abbr --add dotdot --regex '^\.\.+$' --function multicd
