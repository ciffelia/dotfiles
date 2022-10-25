# dotfiles

## Requirements

- zsh

## Setup

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
~/bin/chezmoi init https://github.com/ciffelia/dotfiles.git

# See what changes would be made to the home directory
~/bin/chezmoi diff

# Apply the changes
~/bin/chezmoi apply
```
