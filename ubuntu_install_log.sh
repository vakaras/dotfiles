# Install and configure shell.
sudo apt-get install zsh zsh-doc
chsh -s $(which zsh)

# TODO: Try out fish
# sudo apt-get install fish

# Install tmux.
sudo apt-get install tmux xclip

# Install VIM.
sudo apt-get install vim-gtk
sudo apt-get install exuberant-ctags

# Install Git.
sudo apt-get install git

# Install development prerequisites.
sudo apt-get install\
  build-essential bzr mercurial libjpeg62-dev ruby-dev\
  gettext subversion libfreetype6-dev python2.7-dev\
  libxslt1-dev libicu-dev ruby python-dev

# For studies.
sudo apt-get install libopenmpi-dev openmpi-doc openmpi-bin
sudo apt-get install vagrant
sudo apt-get install openjdk-7-jdk
sudo apt-get install ant
sudo apt-get install clang-3.5 clang-3.5-doc
sudo apt-get install libboost-all-dev
sudo apt-get install libgirara-gtk3-1
sudo apt-get install zathura

# Install monitoring programs.
sudo apt-get install htop

# Install VirtualBox.
sudo apt-get install virtualbox-4.3

# Install Xmonad
sudo apt-get install xmonad libghc-xmonad-contrib-dev libghc-xmonad-dev
sudo apt-get install feh      # Wallpaper setter.
sudo apt-get install trayer   # System tray.

# Install multimedia programs.
sudo apt-get install mplayer gimp imagemagick
sudo apt-get install lynx


# Install health helpers.
sudo apt-get install workrave
