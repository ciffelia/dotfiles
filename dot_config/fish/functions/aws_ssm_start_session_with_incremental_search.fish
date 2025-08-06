#!/usr/bin/env fish

function aws_ssm_start_session_with_incremental_search -d "Search AWS EC2 instances with fzf and start SSM session"
    set instance_id (aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId, State.Name, InstanceType, PrivateIpAddress, Platform || `Linux`, Tags[?Key == `Name`].Value | [0]]' --output text | column -t | fzf --reverse | cut -d ' ' -f 1)

    if test -n $instance_id
        aws ssm start-session --target $instance_id
    end
end
