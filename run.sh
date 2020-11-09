#!/bin/sh
set -eu

if ! command -v ansible >/dev/null 2>/dev/null ||
   ! command -v ansible-galaxy >/dev/null 2>/dev/null ||
   ! command -v ansible-pull >/dev/null 2>/dev/null; then
  echo "Ansible was not detected on the system. Please install ansible:"
  echo "pip3 install --user ansible && export PATH=\$PATH:~/.local/bin"
  exit 1
fi

ansible-galaxy collection install --ignore-errors community.general
ansible-galaxy install --ignore-errors markosamuli.asdf
exec ansible-pull -U https://github.com/boxmein/computer-setup -i hosts local.yml -K
