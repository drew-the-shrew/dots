Uses git 
Setup alias
alias config='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'

To avoid recursion issue
echo ".cfg" >> .gitignore

Clone repo into bare
git clone --bare <git-repo-url> $HOME/.cfg

Checkout content
config checkout

Set flag to hide untracked
config config --local status.showUntrackedFiles no

Configuration for macos

Uses yabai as a tiling manager - https://github.com/koekeishiya/yabai
skhd to manage keyboard shortcuts - https://github.com/koekeishiya/skhd
spacebar for the status bar - https://github.com/cmacrae/spacebar

Fonts
TODO

