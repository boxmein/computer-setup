#!/bin/sh
set -eu
ansible-galaxy collection install --ignore-errors community.general
ansible-galaxy install --ignore-errors markosamuli.asdf
exec ansible-pull -U https://github.com/boxmein/computer-setup -i hosts local.yml -K
