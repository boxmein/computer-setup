#!/bin/sh
set -eu
ansible-pull -U git@github.com:boxmein/computer-setup -i hosts local.yml
