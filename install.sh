#!bash
#working_dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

sudo apt-get update 
sudo apt-get install -y git-core zsh mc vim screen terminator htop openssh-server
#let's install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
#and now the fancy custom fonts
git clone https://github.com/powerline/fonts.git --depth=1
sh fonts/install.sh
rm -rf fonts
#terminator configuration and zshrc
cp -rf terminator ~/.config/terminator
cp zshrc ~/.zshrc
#install plugins
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions


echo "please log out and in or reboot the system"




