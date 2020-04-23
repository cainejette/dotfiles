#!/bin/bash

git config --global user.name "Caine Jette"
git config --global user.email "cainejette@github.com"
git config --global push.default current

dotdir=$(cd $(dirname $0) && pwd)

for filename in $(find $dotdir -name "*.symlink"); do
  ln -sf $filename ~/.$(basename $filename | sed "s/\.symlink//")
done