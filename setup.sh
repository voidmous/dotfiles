if [[ -n $(grep "$PWD" ~/.bashrc) ]]; then 
    echo "Already sourced, exit."
    exit
else # if not sourced already
    echo "Source _bashrc"
    echo -e "\n#======== dotfiles/setup.sh ========" >> ~/.bashrc
    echo -e "source $PWD/linux/_bashrc" >> ~/.bashrc
    if [[ "$OSTYPE" == "cygwin" ]]; then
	echo "Source _bashrc.cygin"
        #ln -s $PWD/linux/_bashrc.cygwin ~/.bashrc.cygwin
        echo -e "source $PWD/linux/_bashrc.cygwin" >> ~/.bashrc
    fi
fi
