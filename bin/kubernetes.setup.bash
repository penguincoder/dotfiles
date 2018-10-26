export MINIKUBE_WANTUPDATENOTIFICATION=true
export MINIKUBE_WANTREPORTERRORPROMPT=false
export MINIKUBE_WANTKUBECTLDOWNLOADMSG=false
export MINIKUBE_HOME=$HOME
export MINIKUBE_DRIVER=kvm2
export CHANGE_MINIKUBE_NONE_USER=true
test -d $HOME/.kube || mkdir $HOME/.kube
test -f $HOME/.kube/config || touch $HOME/.kube/config
export KUBECONFIG=$HOME/.kube/config
