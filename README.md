# Installation

    git clone --bare git@github.com:penguincoder/dotfiles.git
    function config {
      /usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME $@
    }
    mkdir -p .config-backup
    config checkout
    if [ $? = 0 ]; then
      echo "Checked out config.";
      else
        echo "Backing up pre-existing dot files.";
        config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
    fi;
    config checkout
    config config status.showUntrackedFiles no
    config push --set-upstream origin master
    config submodule init
    config submodule update
    cd ~/.fonts && fc-cache -f -v
    sudo add-apt-repository ppa:nextcloud-devs/client && sudo apt-get update && sudo apt-get install nextcloud-client
    sudo apt-get install git vagrant vagrant-libvirt jq vpnc virt-manager virt-top virt-goodies emacs xsltproc fop qbittorrent openvpn python3-setuptools python3-pip python3-yaml python3-wheel apt-transport-https libvirt-clients libvirt-daemon-system qemu-kvm
    pip3 install --user aws-cli saws
    curl -o t.sh https://sh.rustup.rs -sSf && chmod 700 t.sh && ./t.sh --no-modify-path --verbose -y && rm -f t.sh
    . ~/bin/rust.setup.bash
    rustup install nightly
    kerl update releases
    kerl build 21.0 21.0
    kerl install 21.0
    . ~/bin/kerl.setup.bash
    kiex install 1.7.3
    curl https://getmic.ro | bash && sudo cp micro /usr/local/bin && rm -f micro
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    sudo touch /etc/apt/sources.list.d/kubernetes.list
    echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
    sudo apt-get update && sudo apt-get install -y kubectl
    curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo cp minikube /usr/local/bin/ && rm minikube
    wget -O kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64 && chmod +x kops && sudo cp kops /usr/local/bin/ && rm -f kops
    curl -LO https://storage.googleapis.com/kubernetes-helm/helm-v2.10.0-linux-amd64.tar.gz && tar xvzf helm-v2.10.0-linux-amd64.tar.gz && sudo cp linux-amd64/helm /usr/local/bin/ && rm -rf linux-amd64
    curl -Lo docker-machine-driver-kvm2 https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2 && chmod +x docker-machine-driver-kvm2 && sudo cp docker-machine-driver-kvm2 /usr/local/bin/
    curl -LO https://github.com/justjanne/powerline-go/releases/download/v1.11.0/powerline-go-linux-amd64 && chmod +x powerline-go-linux-amd64 && sudo mv powerline-go-linux-amd64 /usr/local/bin/powerline-go

Initialization script sourced from Atlassian: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
