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

Initialization script sourced from Atlassian: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
