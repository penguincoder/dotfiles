# Installation

## Linux Bionic/Tara distributions

    sudo apt-get install python3 ansible ansible-lint && curl -sL https://github.com/penguincoder/dotfiles/master/bin/install-dotfiles.sh | bash && ansible-playbook -i localdev-inventory.yaml linux-bionic-playbook.yaml
