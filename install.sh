#!bash
sudo apt-get install git-core zsh mc vim screen terminator htop openssh-server
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git --depth=1
sh fonts/install.sh
rm -rf fonts
cp -rf terminator ~/.config/terminator
