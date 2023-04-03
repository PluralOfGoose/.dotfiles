#shebang
#!/bin/bash

#Create function
check1=$(uname)

#create linuxsetup.log
touch linuxsetup.log

#if-else statement
if [ uname != 'Linux' ]; then
	echo "error, not linux" > linuxsetup.log | exit 1
fi

#create trash directory
mkdir -p ~/.TRASH

#Change name of .vimrc in home directory if exists
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc
fi

#Redirect etc/vimrc to ~/.vimrc
cat ./etc/vimrc > ~/.vimrc

#write line to .bashrc
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc
	
