#!/bin/bash

pushd `dirname $0` > /dev/null
DOTFILES_PATH=`pwd -P`
pushd > /dev/null

cd $DOTFILES_PATH

cp -fr `find . -maxdepth 1 -not -iregex '.\|./.git' -iname '.*'` ~/
