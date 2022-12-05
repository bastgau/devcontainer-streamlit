#!/bin/bash

sudo chgrp vscode /workspaces/app/.venv
sudo chown vscode /workspaces/app/.venv

git config --global --add safe.directory /workspaces/app
git config --global core.eol lf
git config --global core.autocrlf false

python3 -m venv /workspaces/app/.venv
PATH="/workspaces/app/.venv/bin:$PATH"

source /workspaces/app/.venv/bin/activate
pip install --upgrade pip

pip install -r /workspaces/app/requirements-dev.txt
pip install -r /workspaces/app/requirements.txt
