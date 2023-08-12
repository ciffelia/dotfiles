# ghqで管理しているリポジトリをインクリメンタルサーチし、Enterキーを押下した際に該当フォルダに移動
# cf. https://tech-broccoli.life/articles/engineer/use-fzf
function change-git-directory-with-incremental-search () {
  local ghq_root=$(ghq root)
  local repo=$(ghq list | fzf --preview "onefetch --no-art '$ghq_root/{}'" --height 70%)
  [ -z "$repo" ] && return
  cd "$ghq_root/$repo"
}

alias g='change-git-directory-with-incremental-search'
