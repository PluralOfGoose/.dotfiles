#shebang
#!/bin/bash

#remove .vimrc from home
rm -f ~/.vimrc 

#remove line from bashrc_custom
chmod +x ./etc/bashrc_custom
line=$source ~/.dotfiles/etc/bashrc_custom
sed -i '/source ~\/.dotfiles\/bashrc_custom/d' ~/.bashrc

#remove trash directory
rmdir ~/.TRASH 
