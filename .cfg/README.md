
## Configuration for linux 

### Install prereq  
TODO: Make a script to do this  
**Window management**  
install bspwm  
install polybar  

**shell**  
install alacritty  
install oh-my-zsh `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`  
install pure; `git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"` https://github.com/sindresorhus/pure  
install fzf; `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install`  

**general**  
install pavucontrol  
install sublime  
install feh  

### Clone dotfiles into bare repo
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

### Install fonts 

`mkdir -p "~/.local/share/fonts/"`  
Then move the font files to that directory; 
`mv "~/Downloads/ComicNeue-Regular.ttf" "~/.local/share/fonts"`

Updating font cache
fc-cache -fv "~/.local/share/fonts/"

### Configure tiling window manager
You'll probably need to adjust the bspwm config depending on your screen layout etc - you can find your screen name by using xrandr


