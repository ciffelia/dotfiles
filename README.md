# dotfiles

## Requirements

### Windows

- scoop
- delta

### macOS / Linux

- fish
- nix
- home-manager
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
# Enable experimental features
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
sudo systemctl restart nix-daemon

# Download chezmoi to ~/bin
curl -fsLS get.chezmoi.io | sh

# Clone this repository
~/bin/chezmoi init https://github.com/ciffelia/dotfiles.git

# See what changes would be made to the home directory
~/bin/chezmoi diff

# Apply the changes
~/bin/chezmoi apply

# Restart shell
exit

# Now chezmoi has been installed by nim.
# You can delete chezmoi from ~/bin.
rm ~/bin/chezmoi
```
