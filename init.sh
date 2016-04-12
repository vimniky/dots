#/bin/bash

echo "startting setup for user `whoami` ...\n"
dotsRoot=$HOME/dots

# setup mongodb
echo 'mongobd ....\n'

mongorc=$HOME/.mongorc.js
if [ ! -L $mongorc  ] ; then
    # if ~/.mongorc.js symbol link doesn't exist , link it !
    ln -s $dotMongorc/.mongorc.js $HOME
    echo "symlink $mongorc done"
else
    echo "symlink $mongorc symlink already exists !\n"
fi


# setup vim
echo 'vim ....\n'
vimrc=$HOME/.vimrc
if [ ! -L $vimrc  ] ; then
    ln -s $dotVimrc/.vimrc $HOME
    echo "symlink $vimrc done"
else
    echo "symlink $HOME/$vimrc  already exists !\n"
fi

vimDir=$HOME/.vim
if [ ! -L $vimDir  ] ; then
    ln -s $dotVimrc/.vim $HOME
    echo "symlink $vimDir done"
    echo "symlink $vimDir done"
else
    echo "symlink $vimDir  already exists !\n"
fi

ideavimrc=$HOME/.ideavimrc
if [ ! -L $ideavimrc ] ; then
    ln -s $dotEditorsrc/.ideavimrc $HOME
    echo "symlink $ideavimrc done"
    echo "symlink $ideavimrc done"
else
    echo "symlink $ideavimrc  already exists !\n"
fi
