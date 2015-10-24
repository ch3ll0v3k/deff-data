#!/bin/bash

echo "# GnuTerminalTetris" >> README.md
git init
git add README.md
git commit -m "update"
git remote add origin https://github.com/ch3ll0v3k/ch3ll0v3k.github.io.git
git push -u origin master
