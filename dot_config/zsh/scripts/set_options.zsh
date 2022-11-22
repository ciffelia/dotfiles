# 履歴をメモリ上に12000件まで保存
HISTSIZE=12000
# 履歴をファイル上に10000件まで保存
SAVEHIST=10000
HISTFILE=~/.zsh_history
# コマンドを実行したときに履歴を書き込む。また、他に起動しているzshが書き込んだ履歴を即座に読み込む。
setopt SHARE_HISTORY
# 履歴にあるコマンドを実行したとき、古い履歴を削除
setopt HIST_IGNORE_ALL_DUPS
# 履歴に保存するとき、余計な空白を削除
setopt HIST_REDUCE_BLANKS

# cdをpushdにする
setopt AUTO_PUSHD

# 日本語ファイル名を正しく表示
setopt PRINT_EIGHT_BIT

# --option=abc みたいなやつでも補完
setopt MAGIC_EQUAL_SUBST
# 補完をTab連打ではなく矢印キーで選択
zstyle ':completion:*' menu select interactive

# Emacs風のキーバインド
bindkey -e
# Ctrl+← and Ctrl+→
bindkey ";5C" forward-word
bindkey ";5D" backward-word
WORDCHARS='*?[]~=&;!#$%^(){}<>'
