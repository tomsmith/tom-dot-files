#!/bin/bash
sDir=$(cd $(dirname "$0"); pwd)
echo "script found at:" $sDir

echo "backing up existing dot files..."
mv ~/.bashrc ~/.bashrc.backup
mv ~/.byobu ~/.byobu.backup
mv ~/.config/terminator ~/.config/terminator.backup
mv ~/.profile ~/.profile.backup
mv ~/.screenrc ~/.screenrc.backup
mv ~/.selected_editor ~/.selected_editor.backup

echo "linking to new dot files..."
ln -s $sDir/bashrc ~/.bashrc
ln -s $sDir/byobu ~/.byobu
ln -s $sDir/config/terminator ~/.config/terminator
ln -s $sDir/profile ~/.profile
ln -s $sDir/screenrc ~/.screenrc
ln -s $sDir/selected_editor ~/.selected_editor

echo "dot files installed. huzzah!"

