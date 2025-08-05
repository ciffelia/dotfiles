# bat
# if (( $+commands[bat] )); then
#   source <(bat --completion zsh)
# fi

# chezmoi
if (( $+commands[chezmoi] )); then
  source <(chezmoi completion zsh)
fi

# delta
if (( $+commands[delta] )); then
  source <(delta --generate-completion zsh)
fi

# Helm
if (( $+commands[helm] )); then
  source <(helm completion zsh)
fi

# kubectl
if (( $+commands[kubectl] )); then
  source <(kubectl completion zsh)
fi

# mise
if (( $+commands[mise] )); then
  source <(mise completion zsh)
fi

# onefetch
if (( $+commands[onefetch] )); then
  source <(onefetch --generate zsh)
fi

# pdftrim
if (( $+commands[pdftrim] )); then
  source <(pdftrim --generate-completion zsh)
fi

# rclone
if (( $+commands[rclone] )); then
  source <(rclone completion zsh -)
fi

# uv
if (( $+commands[uv] )); then
  source <(uv generate-shell-completion zsh)
fi
if (( $+commands[uvx] )); then
  source <(uvx --generate-shell-completion zsh)
fi

# yq
if (( $+commands[yq] )); then
  source <(yq shell-completion zsh)
fi
