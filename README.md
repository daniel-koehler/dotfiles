# dotfiles

Dotfiles for my linux configuration managed with a bare git repository.

To import the dotfiles simply clone this repository
```
git clone --bare --separate-git-dir=~/dotfiles https://github.com/daniel-koehler/dotfiles.git
source .zshrc
dotfiles config --local status.showUntrackedFiles no
```
