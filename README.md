# Installation

## Linux Bionic/Tara distributions

    sudo apt-get install git python3 ansible ansible-lint && curl -sL https://raw.githubusercontent.com/penguincoder/dotfiles/master/bin/install-dotfiles.sh | bash && ansible-playbook -i localdev-inventory.yaml linux-bionic-playbook.yaml
