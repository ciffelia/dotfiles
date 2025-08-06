# dotfiles

## Requirements

### Windows

- chezmoi
- delta

### macOS / Linux

- fish
- mise
- Locale `en_US.UTF-8` is available.
  - If not, run `sudo locale-gen en_US.UTF-8`.

## Setup

### Windows

```sh
# Install chezmoi and delta
scoop install chezmoi delta

# Clone this repository
chezmoi init https://github.com/ciffelia/dotfiles.git

# See what changes would be made to the home directory
chezmoi diff

# Apply the changes
chezmoi apply
```

### macOS / Linux

```sh
# Install mise
curl https://mise.run | sh

# Clone this repository
mise exec chezmoi@latest -- chezmoi init https://github.com/ciffelia/dotfiles.git

# See what changes would be made to the home directory
mise exec chezmoi@latest -- chezmoi diff

# Apply the changes
mise exec chezmoi@latest -- chezmoi apply

# Restart fish (or exit bash and start fish)
exit
```
