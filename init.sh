#/bin/bash

echo "startting setup for user `whoami` ...\n"
dotsRoot=$HOME/dots

# setup mongodb
echo 'mongobd ....\n'
dotmongorc=$dotsRoot/mongorc

mongorc=$HOME/.mongorc.js
if [ ! -L $mongorc  ] ; then
    # if ~/.mongorc.js symbol link doesn't exist , link it !
    ln -s $dotmongorc/.mongorc.js $HOME
    echo "symlink $mongorc done"
else
    echo "symlink $mongorc symlink already exists !\n"
fi


# setup vim
echo 'vim ....\n'
dotvimrc=$dotsRoot/vimrc

vimrc=$HOME/.vimrc
if [ ! -L $vimrc  ] ; then
    ln -s $dotvimrc/.vimrc $HOME
    ln -s $dotvimrc/.vim $HOME
    echo "symlink $vimrc done"
else
    echo "symlink $HOME/$vimrc  already exists !\n"
fi

vimDir=$HOME/.vim
if [ ! -L $vimDir  ] ; then
    ln -s $dotvimrc/.vim $HOME
    echo "symlink $vimDir done"
    echo "symlink $vimDir done"
else
    echo "symlink $vimDir  already exists !\n"
fi


