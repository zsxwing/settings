#!/bin/sh

# set user information
git config --global user.name zsxwing
git config --global user.email zsxwing@gmail.com

# set alias
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -l HEAD'
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

git config --global alias.sc "svn dcommit"
git config --global alias.sr "svn rebase"

git config --global core.editor emacs

git config --global color.ui true

