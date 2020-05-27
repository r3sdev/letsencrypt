helm install --namespace ingress-nginx ingress-nginx ingress-nginx/ingress-nginx

kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v0.15.0/cert-manager.crds.yaml
helm repo add jetstack https://charts.jetstack.io
kubectl create namespace cert-manager
helm install cert-manager --namespace cert-manager jetstack/cert-manager
