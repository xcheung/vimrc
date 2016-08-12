#!/bin/bash
#
if [ ! -d ~/.vim_runtime ]
then
  mkdir ~/.vim_runtime
fi
#
if [ -f ~/.vimrc ]
then
  TheTime=`date +"%Y%m%d%H%M%s"`
  mv ~/.vimrc ~/.vim_runtime/${TheTime}.vimrc
fi
#
cat vimrcs/tiny.vim > ~/.vimrc
#
exit 0
