#!/bin/bash

python3 -m virtualenv .venv -p `which python3`
./venv/bin/pip3 install neovim
