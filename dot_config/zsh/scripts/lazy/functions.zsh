# ghqで管理しているリポジトリをインクリメンタルサーチし、Enterキーを押下した際に該当フォルダに移動
# cf. https://tech-broccoli.life/articles/engineer/use-fzf
function cd-to-ghq-repository () {
  local ghq_root=$(ghq root)
  local repo=$(ghq list | fzf --preview "onefetch --no-art -- '$ghq_root/{}'" --height 70%)
  [ -z "$repo" ] && return
  cd "$ghq_root/$repo"
}

alias g='cd-to-ghq-repository'

function aws-ssm-start-session-with-incremental-search () {
  local instance_id=$(aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId, State.Name, InstanceType, PrivateIpAddress, Platform || `Linux`, Tags[?Key == `Name`].Value | [0]]' --output text | column -t | fzf --reverse | cut -d ' ' -f 1)
  [ -z "$instance_id" ] && return
  aws ssm start-session --target "$instance_id"
}

alias aws-ss='aws-ssm-start-session-with-incremental-search'
