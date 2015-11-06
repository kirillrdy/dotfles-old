#!/bin/sh

set -ex

root_dir=$HOME/src/github.com/kirillrdy
mkdir -p $root_dir
cd $root_dir
git clone git@github.com:kirillrdy/nadeshiko.git
git clone git@github.com:kirillrdy/vidos.git
git clone git@github.com:kirillrdy/libkanji.git
git clone git@github.com:kirillrdy/silverkanji.git
