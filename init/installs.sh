#!/bin/bash

#install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# install rvm
\curl -L https://get.rvm.io | bash -s stable --ruby
# set rvm for this shell
source "$HOME/.rvm/scripts/rvm"

