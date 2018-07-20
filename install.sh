#!bash
#working_dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
#in case we have no arguments, help is needed
if [ -z "$*" ]; then 
    echo 'install.sh -w or --warm to install terminator with warm colour palette'
    echo 'install.sh -c or --cold to install terminator with cold colour palette'
    echo 'install.sh ---cli_only to install in a commandline only env'
    exit 0
fi 

if [ "$1" = "--cli_only" ]; then
	echo "installing comman line only"
	sudo apt-get update 
	sudo apt-get install -y git-core zsh mc vim screen terminator htop openssh-server
else
	sudo apt-get update 
	sudo apt-get install -y git-core zsh mc vim screen htop openssh-server	
fi

#let's set the terminator config

case $1 in
    -w|--warm)
	cp -rf terminator_warm ~/.config/terminator    
    shift # past argument
    ;;
    -c|--cold)
	cp -rf terminator_cold ~/.config/terminator    
    shift # past argument
    ;;    
esac


#let's install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
#and now the fancy custom fonts
git clone https://github.com/powerline/fonts.git --depth=1
sh fonts/install.sh
rm -rf fonts
cp zshrc ~/.zshrc
#install plugins
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions

echo "Please log out and in or reboot the system"




