test -f /etc/bashrc && . /etc/bashrc || true
test -f /etc/bash_completion && . /etc/bash_completion || true
test -f $HOME/.bash_aliases && . $HOME/.bash_aliases || true

#export AWS_ACCESS_KEY_ID=
#export AWS_SECRET_ACCESS_KEY=
export KOPS_STATE_STORE=s3://consolo-kops-state-store
export MINIKUBE_WANTUPDATENOTIFICATION=true
export MINIKUBE_WANTREPORTERRORPROMPT=false
export MINIKUBE_WANTKUBECTLDOWNLOADMSG=false
export MINIKUBE_HOME=$HOME
export MINIKUBE_DRIVER=kvm2
export CHANGE_MINIKUBE_NONE_USER=true
test -d $HOME/.kube || mkdir $HOME/.kube
test -f $HOME/.kube/config || touch $HOME/.kube/config
export KUBECONFIG=$HOME/.kube/config

export GIT_MERGE_AUTOEDIT=no
export EDITOR=vim
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

test -s $HOME/code/consolo-enterprise-config/src/dev-env/dev-aliases && . $HOME/code/consolo-enterprise-config/src/dev-env/dev-aliases || true

HISTSIZE=5000
HISTFILESIZE=10000
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

for k in $HOME/bin/*.bash ; do . $k ; done

function _update_ps1() {
  PS1="$(powerline-go -error $?)"
}
if [[ $(which powerline-go 2>/dev/null) && "$TERM" != "linux" && "$TERM_PROGRAM" != "vscode" ]]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
else
  PS1='[\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w$(__git_ps1 " (%s)")\[\033[00m\]]\$ '
fi
