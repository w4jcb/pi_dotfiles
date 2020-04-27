#!/bin/sh

set -ux

cd

if [ ! -d Local-Repo/dotfiles ] ; then
  git clone https://raw.githubusercontent.com/w4jcb/pi_dotfiles/master/install.sh Local-Repo/dotfiles
fi

cd Local-Repo/dotfiles

DIR=${PWD} # folder this file is in
homedir=/home/${USER} #/home/user_name

# dotfiles directory
dotfiledir=${DIR}

# list of files/folders to symlink in ${homedir}
files="vimrc bash_aliases"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
    
# For my customized vim file    
# list of files/folders to symlink in ${homedir}/.vim
files2="custom.vim"

# custom vim directory
customdir=${homedir}/.vim

# create symlinks (will overwrite old dotfiles)
for file in ${files2}; do
    echo "Creating symlink to $file in home/.vim directory."
    ln -sf ${dotfiledir}/${file} ${customdir}/${file}
done

# For my customized Neovim file    
# list of files/folders to symlink in ${homedir}/.config/nvim
files3="init.vim"

# custom vim directory
customdir=${homedir}/.config/nvim

# create symlinks (will overwrite old dotfiles)
for file in ${files3}; do
    echo "Creating symlink to $file in home/.vim directory."
    ln -sf ${dotfiledir}/${file} ${customdir}/${file}
done

# Install packages I can't live without.
xargs -a packages.txt sudo apt-get install
sudo pip install -r requirements.txt

