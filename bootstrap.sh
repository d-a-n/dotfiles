#!/usr/bin/env bash

SCRIPTPATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

rm ~/.zshrc
ln -s $SCRIPTPATH/.zshrc ~/.zshrc