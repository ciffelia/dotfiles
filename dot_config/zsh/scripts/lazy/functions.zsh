# ghqで管理しているリポジトリをインクリメンタルサーチし、Enterキーを押下した際に該当フォルダに移動
# cf. https://tech-broccoli.life/articles/engineer/use-fzf
function change-git-directory-with-incremental-search () {
  local WORKDIR=$(ghq list -p | fzf --preview "onefetch --no-art {}" --height 70%)
  [ -z "$WORKDIR" ] && return
  cd $WORKDIR
}

alias g='change-git-directory-with-incremental-search'
