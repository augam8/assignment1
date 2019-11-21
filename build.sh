#!/bin/sh

# make a distribution directory
mkdir -p dist
# copy Ruby files to the distribution directory
cp ./zen.rb ./dist
cp ./colorize_demo.rb ./dist
cp ./rubocop.rb ./dist
cp ./tty-box.rb ./dist
cp ./tty-prompt.rb ./dist
# install required gems
gem install tty-prompt
gem install colorize
gem install rubocop
gem install tty-box
gem install tty-font