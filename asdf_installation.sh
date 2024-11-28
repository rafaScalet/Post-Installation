#!/bin/sh

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1

mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

cp ./asdfrc ~/.asdfrc