# Install and configure shell.
sudo add-apt-repository ppa:fish-shell/nightly-master
sudo apt-get update
sudo apt-get install fish
chsh -s /usr/bin/fish

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
sudo apt-get install graphviz
sudo apt-get install gnuplot
sudo apt-get install pandoc

# Install monitoring programs.
sudo apt-get install htop
sudo apt-get install iotop

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
sudo apt-get install workrave redshift
