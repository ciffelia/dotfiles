source "$SCRIPTS_DIR/lazy/setup_apps.zsh"
source "$SCRIPTS_DIR/lazy/functions.zsh"
source "$SCRIPTS_DIR/lazy/local.zsh"

# Fast Syntax Highlighting
zinit ice lucid blockf
zinit light zdharma-continuum/fast-syntax-highlighting

# completions
zinit ice lucid blockf \
  atload'zicompinit; zicdreplay'
zinit light zsh-users/zsh-completions

# autosuggestions
zinit ice lucid blockf \
  atload'!_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
