#!/bin/sh
set -eu
ansible-galaxy collection install --ignore-errors community.general
ansible-pull -U git@github.com:boxmein/computer-setup -i hosts local.yml
