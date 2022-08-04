
## Configuration for linux 
**Window management**  

**git bare repository**  
git bare repo to manage dotfiles

### 1. Clone dotfiles into bare repo
Setup alias
`alias config='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

To avoid recursion issue
`echo ".cfg" >> .gitignore`

Clone repo into bare
`git clone --bare https://github.com/theshrewformallyknownasdrew/dots.git $HOME/.cfg`

Checkout content
`config checkout`

Set flag to hide untracked
`config config --local status.showUntrackedFiles no`

Checkout linux branch
`config checkout linux`



### 2. Configure tiling window manager
### Install fonts 


### Install oh-my-zsh  
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

