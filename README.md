# dotfiles

## Requirements

### Windows

- scoop
- delta

### macOS / Linux

- zsh
- unzip
- mise
- Locale `en_US.UTF-8` is available.
  - If not, run `sudo locale-gen en_US.UTF-8`.

## Setup

### Windows

```sh
# Install chezmoi
scoop install chezmoi

# Clone this repository
chezmoi init https://github.com/ciffelia/dotfiles.git

# See what changes would be made to the home directory
chezmoi diff

# Apply the changes
chezmoi apply
```

### macOS / Linux

```sh
# Clone this repository
mise exec chezmoi@latest -- chezmoi init https://github.com/ciffelia/dotfiles.git

# See what changes would be made to the home directory
mise exec chezmoi@latest -- chezmoi diff

# Apply the changes
mise exec chezmoi@latest -- chezmoi apply

# Install tools
mise install

# Restart zsh (or exit bash and start zsh)
exit
```
