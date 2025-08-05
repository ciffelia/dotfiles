# Helm
if (( $+commands[helm] )); then
  source <(helm completion zsh)
fi

# kubectl
if (( $+commands[kubectl] )); then
  source <(kubectl completion zsh)
fi

# pdftrim
if (( $+commands[pdftrim] )); then
  source <(pdftrim --generate-completion zsh)
fi

# uv
if (( $+commands[uv] )); then
  source <(uv generate-shell-completion zsh)
fi
if (( $+commands[uvx] )); then
  source <(uvx --generate-shell-completion zsh)
fi
