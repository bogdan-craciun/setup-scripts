## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
## !!! Run this file WITHOUT sudo
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

## Set up ArgoCD

kubectl create namespace argocd

# We are using a custom install file due to issue with CPU/TLS
# see GNUTLS_CPUID_OVERRIDE = 0x1 to fix https for Git:
# weird error was: "error: git-remote-https died of signal 4"
# https://gnutls.org/manual/html_node/Debugging-and-auditing.html
# https://www.youtube.com/watch?v=RL-jsZVc8QQ
# Can't get Git to work in the ArgoCD container otherwise
kubectl apply -n argocd -f argocd-install.yaml

kubectl apply -n argocd -f argocd-patch.yaml

# This should be fine in most cases:
# kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

printf "\n\nWaiting for ArgoCD to install...\n\n"
sleep 8

printf "\n\nSetting ArgoCD (service) to use LoadBalancer mode...\n\n"
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

printf "\n\nRestarting ArgoCD to apply changes...\n\n"
kubectl rollout restart deployment argocd-server -n argocd

printf "\n\nWaiting a few seconds for ArgoCD to be ready...\n\n"
sleep 10

printf "\n\nGetting the initial admin password... this should be it:\n\n"
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
printf "\n\n"
printf "If the previous command returned an error, you can try to run it manually:\n\n"
printf 'kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d'

printf "\n\nYou should now be able to access ArgoCD via its LoadBalancer IP (username is 'admin').\n"
printf "Check list of services for that:\n\n"

kubectl get svc -A
