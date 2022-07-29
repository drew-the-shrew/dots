
## Configuration for macos
**Window management**  
[yabai](https://github.com/koekeishiya/yabai) as a tiling manager  
[skhd](https://github.com/koekeishiya/skhd) to manage keyboard shortcuts  
[spacebar](https://github.com/cmacrae/spacebar) for the status bar  

**brewfile**  
Uses brewfile for installing packages and casks

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

Checkout macos branch
`config checkout macos`



### 2. Configure tiling window manager
[Disable System integrity protection](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection)
(make sure to reboot after nvram command)  

Install homebrew  
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`  

Install Brewfile  
`brew bundle --file ~/.cfg/Brewfile` - https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f  

Give accessability permissions  
Open System Preferences.app and navigate to Security & Privacy, then Privacy, then Accessibility. Click the lock icon at the bottom and enter your password to allow changes to the list. Starting with brew services start yabai will prompt the user to allow yabai accessibility permissions. Check the box next to yabai to allow accessibility permissions.

Install script additions  
install the scripting addition  
`sudo yabai --install-sa`  

if macOS Big Sur or Monterey, load the scripting addition manually; follow instructions below to automate on startup  
`sudo yabai --load-sa`  

Setup auto loading scripting addition  
create a new file for writing - visudo uses the vim editor by default.  
go read about this if you have no idea what is going on.  

`sudo visudo -f /private/etc/sudoers.d/yabai`

input the line below into the file you are editing.
replace <yabai> with the path to the yabai binary (output of: which yabai).
replace <user> with your username (output of: whoami). 
replace <hash> with the sha256 hash of the yabai binary (output of: shasum -a 256 $(which yabai)).
this hash must be updated manually after running brew upgrade.
`<user> ALL = (root) NOPASSWD: sha256:<hash> <yabai> --load-sa`

Start the yabai, shkd and spacebar services  
`brew services start yabai`  
`brew services start skhdrc`  
`brew services start spacebar`  

### Install fonts 

### Configure Dock & menu bar
System Preferences > Dock & Menu Bar
Tick Automatically hide and show the Dock
Tick Automatically hide and show the menu bar on desktop

### Install oh-my-zsh  
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

