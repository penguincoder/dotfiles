alias dotfiles='git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'
alias nokeyssh="ssh -o PubkeyAuthentication=no"
if [ `uname -s` == 'Linux' ] ; then
  alias ls="ls --color=auto"
fi
if [ `uname -s` == 'BSD' ] ; then
  alias ls="ls -G"
fi
