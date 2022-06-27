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


