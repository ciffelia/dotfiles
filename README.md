# dotfiles

## Requirements

### Windows

- scoop
- delta

### macOS / Linux

- zsh
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
# Download chezmoi to ~/bin
sh -c "$(curl -fsLS get.chezmoi.io)"

# Clone this repository
~/bin/chezmoi init https://github.com/ciffelia/dotfiles.git

# See what changes would be made to the home directory
~/bin/chezmoi diff

# Apply the changes
~/bin/chezmoi apply

# Restart zsh (or exit bash and start zsh)
exit

# Now chezmoi has been installed by zinit.
# You can delete chezmoi from ~/bin.
rm ~/bin/chezmoi
```
