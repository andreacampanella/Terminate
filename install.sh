#!bash
sudo apt-get update 
sudo apt-get install -y git-core zsh mc vim screen terminator htop openssh-server
#let's install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
#and now the fancy custom fonts
git clone https://github.com/powerline/fonts.git --depth=1
sh fonts/install.sh
rm -rf fonts
#terminator configuration
cp -rf terminator ~/.config/terminator
#install plugins
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
#install zshrc
cp zshrc ~/.zshrc

echo "please log out and in or reboot the system"




