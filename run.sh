#!/bin/sh
set -eu
ansible-galaxy collection install --ignore-errors community.general markosamuli.asdf
ansible-pull -U git@github.com:boxmein/computer-setup -i hosts local.yml
