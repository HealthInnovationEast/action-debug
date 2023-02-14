#!/bin/bash

set -uxe
set -o pipefail

pip install --upgrade pip

## global install of pre-commit
pip install pre-commit
pre-commit install --install-hooks

(cd /tmp && sudo rm -rf gitflow && git clone https://github.com/datasift/gitflow && cd gitflow && sudo ./install.sh && sudo git hf upgrade)
sudo rm -rf /tmp/gitflow


set +e
# this fails if unstaged changes, however they should only exist when resuming
git hf init -f

exit 0
