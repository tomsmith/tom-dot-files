#!/bin/bash
sDir=$(cd $(dirname "$0"); pwd)

#installs my gitconfig for home use
mv ~/.gitconfig ~/.gitconfig.old
ln -s $sDir/gitconfig ~/.gitconfig

