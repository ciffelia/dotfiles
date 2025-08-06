completions_dir=${XDG_DATA_HOME:-$HOME/.local/share}/my-zsh-completions

fpath=($fpath $completions_dir)

function refresh-completions () {
  rm -rf "$completions_dir"
  mkdir -p "$completions_dir"

  if (( $+commands[bat] )); then
    bat --completion zsh > "$completions_dir/_bat"
  fi

  if (( $+commands[chezmoi] )); then
    chezmoi completion zsh > "$completions_dir/_chezmoi"
  fi

  if (( $+commands[cosign] )); then
    cosign completion zsh > "$completions_dir/_cosign"
  fi

  if (( $+commands[delta] )); then
    delta --generate-completion zsh > "$completions_dir/_delta"
  fi

  if [[ -d "$(mise where ghq)" ]]; then
    cp "$(mise where ghq)"/ghq_*/misc/zsh/_ghq "$completions_dir/_ghq"
  fi

  if (( $+commands[helm] )); then
    helm completion zsh > "$completions_dir/_helm"
  fi

  if (( $+commands[kubectl] )); then
    kubectl completion zsh > "$completions_dir/_kubectl"
  fi

  if [[ -d "$(mise where lsd)" ]]; then
    cp "$(mise where lsd)"/lsd-*/autocomplete/_lsd "$completions_dir/_lsd"
  fi

  if (( $+commands[mise] )); then
    mise completion zsh > "$completions_dir/_mise"
  fi

  if (( $+commands[onefetch] )); then
    onefetch --generate zsh > "$completions_dir/_onefetch"
  fi

  if (( $+commands[pdftrim] )); then
    pdftrim --generate-completion zsh > "$completions_dir/_pdftrim"
  fi

  if (( $+commands[rclone] )); then
    rclone completion zsh "$completions_dir/_rclone"
  fi

  if (( $+commands[rg] )); then
    rg --generate=complete-zsh > "$completions_dir/_rg"
  fi

  if (( $+commands[starship] )); then
    starship completions zsh > "$completions_dir/_starship"
  fi

  if (( $+commands[usage] )); then
    usage --completions zsh > "$completions_dir/_usage"
  fi

  if (( $+commands[uv] )); then
    uv generate-shell-completion zsh > "$completions_dir/_uv"
  fi

  if (( $+commands[uvx] )); then
    uvx --generate-shell-completion zsh > "$completions_dir/_uvx"
  fi

  if (( $+commands[yq] )); then
    yq shell-completion zsh > "$completions_dir/_yq"
  fi
}

if [[ ! -e "$completions_dir" ]]; then
  refresh-completions
fi
