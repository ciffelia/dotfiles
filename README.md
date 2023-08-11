# dotfiles

## Requirements

### Windows

- scoop
- delta

### macOS / Linux

- fish
- Homebrew
- bat
- delta
- ghq
- lsd
- mcfly
- neovim
- starship

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
# Install chezmoi
brew install chezmoi

# Clone this repository
chezmoi init https://github.com/ciffelia/dotfiles.git

# See what changes would be made to the home directory
chezmoi diff

# Apply the changes
chezmoi apply
```
